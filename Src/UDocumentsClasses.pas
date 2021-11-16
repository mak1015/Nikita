unit UDocumentsClasses;

interface

uses
  UNsiClass, Forms;



type
  TDocPosition = record
    f_good: TNsiGood;
    f_quant: integer;
    f_price: currency;
    f_price_val: currency;
    f_summ: currency;
    f_discount_prc: currency;
    f_discount_sum: currency;
    f_descr: string;
  end;

  TResultSoap = record
    f_result  : integer;
    f_message : String;
  end;

type
  TQueueElementType = (docOut,docIn,docMove);

type
  TDocPositionList = array of TDocPosition;

type
  /// <summary>
  /// Обработчик SOAP очереди
  ///  </summary>
  TWEBQueue = class
    private
      f_id   : integer;
      f_guid : String;
      f_obj_id    : integer;
      f_type  : TQueueElementType;
    public
      constructor Create(p_id : integer;p_obj_type : String; p_obj_id : integer; p_guid : string);
      procedure SendDoc;
      procedure SaveResult(p_result : String; p_message : String);
  end;

type
  /// <summary>
  /// Расходный документ
  /// </summary>
  TOutDocument = class
  private
    /// <summary> Номер </summary>
    f_number: String;
    /// <summary> Дата </summary>
    f_date: Tdate;
    /// <summary> ГУИД </summary>
    f_guid: String;
    /// <summary> Описание </summary>
    f_descr: String;
    /// <summary> Партнер </summary>
    f_partner: TNsiPartner;
    /// <summary> Склад </summary>
    f_sklad: TNsiSklad;
    /// <summary> Тип документа </summary>
    f_type: integer;
    /// <summary> Состояние документа </summary>
    f_state: integer;
    /// <summary> Автор </summary>
    f_user: String;
    /// <summary> Тело документа </summary>
    f_positions: TDocPositionList;
  public
    /// <summary> Синхронизация документа с центральной базой </summary>
    function Synchcronyze: TResultSoap;
    /// <summary> Установить номер документа </summary>
    procedure SetF_number(p_number: string);
    /// <summary> Установить описание </summary>
    procedure SetF_descr(p_descr: string);
    /// <summary> Установить ГУИД </summary>
    procedure SetF_guid(p_guid: string);
    /// <summary> Установить партнера </summary>
    procedure SetF_partner(p_partner: TNsiPartner);
    /// <summary> Установить склад </summary>
    procedure SetF_sklad(p_sklad: TNsiSklad);
    /// <summary> Установить тип </summary>
    procedure SetF_type(p_type: integer);
    /// <summary> Установить состояние </summary>
    procedure SetF_state(p_state: integer);
    /// <summary> Установить дату </summary>
    procedure SetF_date(p_date: Tdate);
    /// <summary> Установить автора </summary>
    procedure SetF_user(p_user: String);
    /// <summary> Добавить строку документа </summary>
    procedure SetF_psition(p_position: TDocPosition);

  end;

implementation

uses OutDocumentServicesImpl1, Soap.XSBuiltIns, SYSUtils, udm,
  UDocClass;

{ TOutDocument }

procedure TOutDocument.SetF_date(p_date: Tdate);
begin
  f_date := p_date;
end;

procedure TOutDocument.SetF_descr(p_descr: string);
begin
  f_descr := p_descr;
end;

procedure TOutDocument.SetF_guid(p_guid: string);
begin
  f_guid := p_guid;
end;

procedure TOutDocument.SetF_number(p_number: string);
begin
  f_number := p_number;
end;

procedure TOutDocument.SetF_partner(p_partner: TNsiPartner);
begin
  f_partner := p_partner;
end;

procedure TOutDocument.SetF_psition(p_position: TDocPosition);
var
  vl_index: integer;
begin
  vl_index := length(self.f_positions);
  SetLength(self.f_positions, vl_index + 1);
  self.f_positions[vl_index] := p_position;
end;

procedure TOutDocument.SetF_sklad(p_sklad: TNsiSklad);
begin
  f_sklad := p_sklad;
end;

procedure TOutDocument.SetF_state(p_state: integer);
begin
  f_state := p_state;
end;

procedure TOutDocument.SetF_type(p_type: integer);
begin
  f_type := p_type;
end;

procedure TOutDocument.SetF_user(p_user: String);
begin
  f_user := p_user;
end;

function TOutDocument.Synchcronyze: TResultSoap;
var
  vl_OutDocumentServicesImpl: OutDocumentServicesImpl;
  vl_doc: outDocument;
  vl_result: serviceResult;
  vl_cnt: integer;
  vl_positions: Array_Of_documentPos;

begin
  vl_OutDocumentServicesImpl := getOutDocumentServicesImpl(false,'',dm.HTTPRIO1);
  vl_doc := outDocument.Create;
  vl_doc.f_guid := f_guid;
  vl_doc.f_number := f_number;
  vl_doc.f_type := f_type;
  vl_doc.f_state := f_state;
  vl_doc.f_partner := partner.Create();
  vl_doc.f_partner.f_inn := f_partner.GetInn;
  vl_doc.f_partner.f_name := f_partner.getName;
  vl_doc.f_partner.f_address := f_partner.GetAddress;
  vl_doc.f_user := f_user;
  vl_doc.f_sklad := sklad.Create;
  vl_doc.f_sklad.f_prefix:=f_sklad.GetPrefix;

   vl_doc.f_date:=FormatDateTime('DD.MM.YYYY',f_date);
  SetLength(vl_positions, length(self.f_positions));
  for vl_cnt := 0 to length(f_positions) - 1 do
  begin
    vl_positions[vl_cnt] := documentPos.Create();
    vl_positions[vl_cnt].f_quant := f_positions[vl_cnt].f_quant;
    vl_positions[vl_cnt].f_price := f_positions[vl_cnt].f_price;
    vl_positions[vl_cnt].f_price_val := f_positions[vl_cnt].f_price_val;
    vl_positions[vl_cnt].f_good := good.Create();
    vl_positions[vl_cnt].f_good.f_article := f_positions[vl_cnt]
      .f_good.GetArticle();
  end;
  vl_doc.f_positions := vl_positions;
  try
    vl_result := vl_OutDocumentServicesImpl.SaveDoc(vl_doc);
  except
    on E: Exception do
    begin
      vl_result:=serviceResult.Create;
      vl_result.result:=sresult.ERROR;
      vl_result.meaasge:=e.Message;
    end;
  end;
  vl_doc.Free;
  vl_OutDocumentServicesImpl._Release;
  result.f_message:=vl_result.meaasge;
  case vl_result.result of
    OutDocumentServicesImpl1.sResult.OK:
      result.f_result:=1;
    OutDocumentServicesImpl1.sResult.ERROR:
      result.f_result:=0;
  end;

end;

{ TWEBQueue }

constructor TWEBQueue.Create(p_id : integer;p_obj_type: String; p_obj_id: integer;
  p_guid: string);
begin
  self.f_id:=p_id;
  self.f_obj_id:=p_obj_id;
  if p_obj_type='T_DOC_OUT' then
    self.f_type:=docOut;
  self.f_guid:=p_guid;
end;

procedure TWEBQueue.SaveResult(p_result, p_message: String);
begin
  dm.spWebQueueSetResult.Params.ClearValues;
  dm.spWebQueueSetResult.ParamByName('P_ID').AsInteger:=self.f_id;
  dm.spWebQueueSetResult.ParamByName('P_RESULT').AsInteger:=StrToInt(p_result);
  dm.spWebQueueSetResult.ParamByName('P_MESSAGE').AsString:=p_message;
  dm.spWebQueueSetResult.ExecuteImmediate;
  dm.spWebQueueSetResult.Transaction.CommitRetaining;
end;

procedure TWEBQueue.SendDoc;
var
  vl_result : TResultSoap;
  vl_doc  : TOutDoc;
begin
  dm.spWebQueueSetResult.Params.ClearValues;
  dm.spWebQueueSetResult.ParamByName('P_ID').AsInteger:=self.f_id;
  dm.spWebQueueSetResult.ExecuteImmediate;
  case f_type of
    docOut:
      begin
        vl_doc:=TOutDoc.Create(self.f_obj_id);
        vl_doc.doc_type:=1;
        dm.spWebQueueSetResult.Transaction.CommitRetaining;
        vl_doc.InitFromDB;
        vl_result:=vl_doc.Synchcronyze;
        SaveResult(IntToStr(vl_result.f_result),vl_result.f_message);
      end;
  end;
end;

end.
