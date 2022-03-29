library GetMoveDocs;

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters. }

uses
  System.SysUtils,
  System.Classes,
  VCL.Dialogs,
  UPluginAPI in '..\Src\Plugins\API\Headers\UPluginAPI.pas',
  UDm in 'UDm.pas' {DM: TDataModule},
  UObjects in 'UObjects.pas',
  UMoveDocumentServicesImpl in 'UMoveDocumentServicesImpl.pas',
  UUtils in '..\Src\Plugins\API\Headers\UUtils.pas';

{$R *.res}

type
  //TArrayString = array of WideString;
  TPlugin = class(TInterfacedObject,INPlugin)
  private
    FApi : INApi;
    FAkts : TArrayAct;
  public
    function ConnectBase(p_ConString: WideString; p_User: WideString;
      p_Passwd: WideString; p_lib : WideString): WideString;
    destructor Destroy; override;
    function GetActList: TArrayAct;
    function RunAct(p_Act: IAct): WideString;
    procedure Init(p_API: INApi);
  end;

function Init(const ACore: INApi): INPlugin; safecall;
begin
  InitLog;
  DM := TDM.Create(nil);
  LogMsg('TPlugin','Создан DM');
  Result := TPlugin.Create;
  LogMsg('TPlugin','Создан Plugin');
  Result.Init(ACore);
  LogMsg('TPlugin','Инициализация прошла');
end;

exports
{  Connect name SPluginBaseFuncName,
  ListFunctions name SPluginListFuncName,
  MakeAct name SPluginActFuncName,}
  Init name SPluginInitFuncName;
 // Done name SPluginDoneFuncName;
{ TPlugin }

function TPlugin.ConnectBase(p_ConString, p_User,
  p_Passwd: WideString; p_lib : WideString): WideString;
begin
  LogMsg('TPlugin','Начинаем подключаться к базе');
  if Assigned(DM) then
  begin
    dm.pFIBDatabase.LibraryName := p_lib;
    LogMsg('TPlugin','Строка подключения ' + p_ConString);
    dm.pFIBDatabase.DbName := p_ConString;
    dm.pFIBDatabase.ConnectParams.UserName := p_User;
    dm.pFIBDatabase.ConnectParams.Password := p_Passwd;
    LogMsg('TPlugin','Параметры подключения определены');
    try
      LogMsg('TPlugin','Подключение');
      dm.pFIBDatabase.Connected := true;
       LogMsg('TPlugin','Подключились');
        LogMsg('TPlugin','Стартуем транзакцию');
      dm.pFIBDatabase.DefaultTransaction.Active := true;
      LogMsg('TPlugin','Транзакция стартовала');
    finally

    end;
  end;
end;

destructor TPlugin.Destroy;
begin
  FApi := nil;
  FreeAndNIL(DM);
  inherited;
end;

function TPlugin.GetActList: TArrayAct;
begin
  result := FAkts;
end;

procedure TPlugin.Init(p_API: INApi);
var
  vl_act : IAct;
  vl_count : integer;
begin
  LogMsg('TPlugin','Читаем ссылку на API');
  self.FApi := p_API;
  LogMsg('TPlugin','Ссылка прочитана');
  LogMsg('TPlugin','Добавляем событие "Журнал"');
  vl_Act.FActCaption := 'Журнал перемещений';
  vl_act.FActGrp := 'Журналы';
  vl_act.FActName := 'MoveDocJournal';
  vl_act.FPeriod_sec := 0;
  vl_count := Length(self.FAkts);
  inc(vl_count);
  SetLength(self.FAkts,vl_count);
  self.FAkts[vl_count-1] := vl_act;
  LogMsg('TPlugin','Событие добавлено');
  LogMsg('TPlugin','Добавляем событие "Передать перемещение"');
  vl_Act.FActCaption := 'Передать перемещения';
  vl_act.FActGrp := 'Web';
  vl_act.FActName := 'MoveDocSync';
  vl_act.FPeriod_sec := 1;
  vl_count := Length(self.FAkts);
  inc(vl_count);
  SetLength(self.FAkts,vl_count);
  self.FAkts[vl_count-1] := vl_act;
  LogMsg('TPlugin','Событие добавлено');
end;

function TPlugin.RunAct(p_Act: IAct): WideString;
var
  vl_result : RResult;
begin
//  FApi.SendMsg(p_Act);
  if p_Act.FActName = 'MoveDocSync' then
  begin
    with TMoveDocJournal.Create do
    begin
      vl_result := GetDocsFromService;
      Result := vl_result.FMessage;
      free;
    end;
  end;
  if p_Act.FActName = 'MoveDocJournal' then
  begin
    with TMoveDocJournal.Create do
    begin
      ShowJournal;
      free;
    end;
  end;
  result := p_act.FActCaption;
end;

begin
end.
