unit UObjects;

interface

uses
  UPluginAPI;

  ///  <summary>
  ///  Документ перемещения
  ///  </summary>
  ///
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
    function GetDocsFromService : RResult;
    procedure ShowJournal;
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
  dm.dsGetDoc.ParamByName('p_doc_id').Value := p_id;
  dm.dsGetDoc.Active := true;
  self.FDocHead.FDocId := dm.dsGetDocF_ID.Value;
  self.FDocHead.FDocNumber := dm.dsGetDocF_NUMBER.Value;
  self.FDocHead.FDocDate := dm.dsGetDocF_DATE.AsString;
  self.FDocHead.FDocSum := dm.dsGetDocF_DOC_SUM.Value;
  self.FDocHead.FDocUid := dm.dsGetDocF_GUID.Value;
  self.FDocHead.FSender.FActorId := dm.dsGetDocF_SKLAD_FROM_PREFIX.Value;
  self.FDocHead.FSender.FActorName := dm.dsGetDocF_SKLAD_FROM_NAME.Value;
  self.FDocHead.FRecipient.FActorId := dm.dsGetDocF_SKLAD_TO_PREFIX.Value;
  self.FDocHead.FRecipient.FActorName := dm.dsGetDocF_SKLAD_TO_NAME.Value;
end;

function TMoveDoc.GetStrings: TArrayGoods;
var
  vl_counter : integer;
begin
  dm.dsGetDocStrings.Active := false;
  dm.dsGetDocStrings.ParamByName('DOC_id').Value := self.FDocHead.FDocId;
  dm.dsGetDocStrings.Active := true;
  vl_counter := 0;
  SetLength(self.FDocStrings,0);
  dm.dsGetDocStrings.First;
  while not dm.dsGetDocStrings.Eof do
  begin
    SetLength(self.FDocStrings,vl_counter+1);
    self.FDocStrings[vl_counter].FGood.FGoodArticle := dm.dsGetDocStringsF_ARTICLE.Value;
    self.FDocStrings[vl_counter-1].FGood.FGoodId := dm.dsGetDocStringsF_Good.Value;
    self.FDocStrings[vl_counter].FGood.FGoodName := dm.dsGetDocStringsF_Good_Name.Value;
    self.FDocStrings[vl_counter].FGood.FGoodInfo := dm.dsGetDocStringsF_GOOD_DOP_INFO.Value;
    self.FDocStrings[vl_counter].FCount := dm.dsGetDocStringsF_CNT.Value;
    self.FDocStrings[vl_counter].FPriceVal := dm.dsGetDocStringsF_PRICE_VAL.Value;
    dm.dsGetDocStrings.Next;
    vl_counter := vl_counter + 1;
  end;

end;

procedure TMoveDoc.SetDocHead(p_DocHead: RdocHead);
begin
  if p_DocHead.FDocId > 0 then
    self.GetDocument(p_DocHead.FDocId)
  else
  begin
    self.GetDocument(-10)
  end;
  self.FDocHead.FDocNumber := p_DocHead.FDocNumber;
  self.FDocHead.FDocDate := p_DocHead.FDocDate;
  self.FDocHead.FDocUid := p_DocHead.FDocUid;
  self.FDocHead.FDocInfo := p_DocHead.FDocInfo;

  //
  dm.dsGetDoc.Edit;
  dm.dsGetDocF_NUMBER.Value := p_DocHead.FDocNumber;
  dm.dsGetDocF_DATE.Value := p_DocHead.FDocDate;
  dm.dsGetDocF_GUID.Value := p_DocHead.FDocUid;
  dm.dsGetDocF_DOP_INFO.Value := self.FDocHead.FDocInfo;
  dm.dsGetDoc.Post;
  dm.dsGetDoc.Transaction.CommitRetaining;
end;

function TMoveDoc.SetDocument: boolean;
begin

end;

procedure TMoveDoc.SetStrings(p_Strings: TArrayGoods);
begin

end;

{ TMoveDocJournal }

function TMoveDocJournal.GetDocsFromService: RResult;
var
  vl_result : RResult;
begin
  Result := vl_result;
end;

function TMoveDocJournal.GetList(p_start, p_end: RDate): TArrayDocs;
begin

end;

procedure TMoveDocJournal.ShowJournal;
begin

end;

end.
