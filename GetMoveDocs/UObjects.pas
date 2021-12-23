unit UObjects;

interface

uses
  UPluginAPI;

///<summary>
///  Перемещение
///</summary>
type TMoveDoc = class(TInterfacedObject, IDocument)
  private
    FDocHead : RDocHead;
    FDocStrings : TArrayGoods;
  public

    function GetDocHead : RDocHead;
    procedure SetDocHead(p_DocHead : RdocHead);
    property F_docHead : RDocHead read GetDochead write SetDocHead;
    function GetStrings : TArrayGoods;
    procedure SetStrings (p_Strings : TArrayGoods);
    property F_docStrings : TArrayGoods read GetStrings write SetStrings;
    procedure GetDocument(p_id : integer);
    function SetDocument : boolean;
end;
/// <summary>
///  Журнал перемещений
///  </summary>
type TMoveDocJournal = class(TInterfacedObject,IDocJournal)
  private
    FDocList : array of TMoveDoc;
  public
    function GetList(p_start, p_end: RDate) : TArrayDocs;
end;

implementation

uses
  udm;
{ TMoveDoc }

function TMoveDoc.GetDocHead: RDocHead;
begin
  Result := FDocHead;
end;

procedure TMoveDoc.GetDocument(p_id: integer);
begin
  dm.dsGetDoc.Active := false;
  dm.dsGetDoc.ParamByName('p_id').Value := p_id;
  dm.dsGetDoc.Active := true;
  self.FDocHead.FDocNumber := dm.dsGetDocF_NUMBER.Value;
  self.FDocHead.FDocDate := dm.dsGetDocF_DATE.AsString;
  self.FDocHead.FDocSum := dm.dsGetDocF_DOC_SUM.Value;
  self.FDocHead.FSender.FActorId := dm.dsGetDocF_SKLAD_FROM_PREFIX.Value;
  self.FDocHead.FSender.FActorName := dm.dsGetDocF_SKLAD_FROM_NAME.Value;
  self.FDocHead.FRecipient.FActorId := dm.dsGetDocF_SKLAD_TO_PREFIX.Value;
  self.FDocHead.FRecipient.FActorName := dm.dsGetDocF_SKLAD_TO_NAME.Value;
end;

function TMoveDoc.GetStrings: TArrayGoods;
begin

end;

procedure TMoveDoc.SetDocHead(p_DocHead: RdocHead);
begin

end;

function TMoveDoc.SetDocument: boolean;
begin

end;

procedure TMoveDoc.SetStrings(p_Strings: TArrayGoods);
begin

end;

{ TMoveDocJournal }

function TMoveDocJournal.GetList(p_start, p_end: RDate): TArrayDocs;
begin

end;

end.
