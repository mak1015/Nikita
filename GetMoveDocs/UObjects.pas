unit UObjects;

interface

uses
  UPluginAPI, SysUtils, DateUtils, Windows;
/// <summary>
/// Склад
/// </summary>
type TSklad = class
  public
    FSklad : RSklad;
    constructor CreateSklad(p_id : integer);
end;
  ///  <summary>
  ///  Документ перемещения
  ///  </summary>
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
    procedure GetDocumentByGuid(p_guid : string);
    procedure GetDocument(p_id : integer);
    function SetDocument : boolean;
    function GetDocState : RDocState;
    procedure SetDocState (p_doc_State : RDocState);
    property F_DocState : RDocState read GetDocState write SetDocState;

end;
/// <summary>
///  Журнал перемещений
/// </summary>
type TMoveDocJournal = class(TInterfacedObject,IDocJournal)
  private
    FSelfSklad : TSklad;
    FDocList : array of TMoveDoc;
  public
    constructor Create;
    function GetList(p_start, p_end: RDate) : TArrayDocs;
    function GetDocsFromService : RResult;
    procedure ShowJournal;
    procedure GetDocsFromW;
end;






implementation

uses
  udm, UMoveDocumentServicesImpl, vcl.Dialogs;



function GetDate(p_date : RDate): TDateTime;
var
  vl_format : TFormatSettings;
begin
  vl_format := TFormatSettings.Create;
  vl_format.ShortDateFormat := 'd.m.yyyy';
  result := StrToDate(
    IntToStr(p_date.Fday)+'.'+
    IntToStr(p_date.FMonth)+'.'+
    IntToStr(p_date.FYear)
    ,vl_format);
end;

function SetDate(p_date : TDateTime) : RDate;
begin
  result.Fday := DayOf(p_date);
  result.FMonth := MonthOf(p_date);
  result.FYear := YearOf(p_date);
end;


{ TMoveDoc }

function TMoveDoc.GetDocHead: RDocHead;
begin
  Result := FDocHead;
end;

function TMoveDoc.GetDocState: RDocState;
begin

end;

procedure TMoveDoc.GetDocument(p_id: integer);
begin

end;

procedure TMoveDoc.GetDocumentByGuid(p_guid : string);
var
  vl_id : integer;
begin
  dm.dsGetDocGUID.Active := false;
  dm.dsGetDocGUID.ParamByName('P_GUID').Value := p_guid;
  dm.dsGetDocGUID.Active := true;
  dm.dsGetDoc.Active := false;
  dm.dsGetDoc.ParamByName('p_doc_id').Value := dm.dsGetDocGUID.FieldByName('F_ID').Value;
  dm.dsGetDoc.Active := true;
  self.FDocHead.FDocId := dm.dsGetDocF_ID.AsInteger;
  self.FDocHead.FDocNumber := dm.dsGetDocF_NUMBER.AsString;
  self.FDocHead.FDocDate := SetDate(dm.dsGetDocF_DATE.AsDateTime);
  self.FDocHead.FDocSum := dm.dsGetDocF_DOC_SUM.AsCurrency;
  self.FDocHead.FDocUid := dm.dsGetDocF_GUID.AsString;
  dm.dsGetDoc.Active := false;
  if (self.FDocHead.FSkladFrom.FPrefix <> '') then
  begin
    dm.dsImportSklad.Active := false;
    dm.dsImportSklad.ParamByName('p_code').Value := self.FDocHead.FSkladFrom.FPrefix;
    dm.dsImportSklad.ParamByName('p_name').Value := self.FDocHead.FSkladFrom.FName;
    dm.dsImportSklad.Active := true;
    self.FDocHead.FSkladFrom.FId := dm.dsImportSklad.FieldByName('F_ID').Value;
  end
  else
    self.FDocHead.FSkladFrom.FId := 0;

  if (self.FDocHead.FSkladTO.FPrefix <> '') then
  begin
    dm.dsImportSklad.Active := false;
    dm.dsImportSklad.ParamByName('p_code').Value := self.FDocHead.FSkladTo.FPrefix;
    dm.dsImportSklad.ParamByName('p_name').Value := self.FDocHead.FSkladTo.FName;
    dm.dsImportSklad.Active := true;
    self.FDocHead.FSkladTo.FId := dm.dsImportSklad.FieldByName('F_ID').Value;
  end;

  {
  self.FDocHead.FSender.FActorId := dm.dsGetDocF_SKLAD_FROM_PREFIX.Value;
  self.FDocHead.FSender.FActorName := dm.dsGetDocF_SKLAD_FROM_NAME.Value;
  self.FDocHead.FRecipient.FActorId := dm.dsGetDocF_SKLAD_TO_PREFIX.Value;
  self.FDocHead.FRecipient.FActorName := dm.dsGetDocF_SKLAD_TO_NAME.Value;
  }
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
  self.FDocHead.FDocNumber := p_DocHead.FDocNumber;
  self.FDocHead.FDocDate := p_DocHead.FDocDate;
  self.FDocHead.FDocUid := p_DocHead.FDocUid;
  self.FDocHead.FDocInfo := p_DocHead.FDocInfo;
  self.FDocHead.FSkladFrom := p_DocHead.FskladFrom;
  self.FDocHead.FSkladTo := p_DocHead.FskladTo;
  if p_DocHead.FDocUid <> '' then
    self.GetDocumentByGuid(p_DocHead.FDocUid)
  else
  begin
    self.GetDocumentByGuid('-10')
  end;

  //
  if not dm.dsGetDoc.Active then
  begin
    dm.dsGetDoc.Active := false;
    dm.dsGetDoc.ParamByName('p_doc_id').Value := self.FDocHead.FDocId;
    dm.dsGetDoc.Active := true;
  end;
  dm.dsGetDoc.Edit;
  dm.dsGetDocF_ID.Value := self.FDocHead.FDocId;
  dm.dsGetDocF_NUMBER.Value := p_DocHead.FDocNumber;
  dm.dsGetDocF_DATE.Value := GetDate(p_DocHead.FDocDate);
  dm.dsGetDocF_GUID.Value := p_DocHead.FDocUid;
  dm.dsGetDocF_DOP_INFO.Value := self.FDocHead.FDocInfo;
  if self.FDocHead.FSkladFrom.FId > 0 then
    dm.dsGetDocF_SKLAD_FROM.value := self.FDocHead.FSkladFrom.FId
  else
    dm.dsGetDocF_SKLAD_FROM.Clear;
  if self.FDocHead.FSkladTo.FId > 0 then
    dm.dsGetDocF_SKLAD_TO.value := self.FDocHead.FSkladTo.FId
  else
    dm.dsGetDocF_SKLAD_TO.Clear;
  dm.dsGetDoc.Post;
//  dm.dsGetDoc.Transaction.CommitRetaining;
end;


procedure TMoveDoc.SetDocState(p_doc_State: RDocState);
begin
  self.FDocHead.FDocState := p_doc_State;
  dm.spChangeState.ParamByName('P_ID').Value := self.FDocHead.FDocId;
  dm.spChangeState.ParamByName('P_STATE').Value := p_doc_State.FCode;
  dm.spChangeState.ExecProc;
end;

function TMoveDoc.SetDocument: boolean;
begin

end;

procedure TMoveDoc.SetStrings(p_Strings: TArrayGoods);
var
  vl_index,vl_index2 : integer;
begin
  dm.spInsDocStr.ParamByName('f_doc_move').Value := self.FDocHead.FDocId;
  self.FDocHead.FDocSum := 0;
  self.FDocHead.FDocCount := 0;
  Finalize(self.FDocStrings);
  setLength(self.FDocStrings,Length(p_Strings));
  for vl_index := 0 to Length(p_Strings) - 1 do
  begin
    with self.FDocStrings[vl_index] do
    begin
      FGood.FGoodArticle := p_Strings[vl_index].FGood.FGoodArticle;
      FGood.FGoodName := p_Strings[vl_index].FGood.FGoodName;
      FGood.FGoodInfo := p_Strings[vl_index].FGood.FGoodInfo;
      FCount := p_Strings[vl_index].FCount;
      self.FDocHead.FDocCount := self.FDocHead.FDocCount + FCount;
      FPriceVal := p_Strings[vl_index].FPriceVal;
      FPriceSrc := p_Strings[vl_index].FPriceSrc;
      self.FDocHead.FDocSum := self.FDocHead.FDocSum + (FCount * FPriceVal);
      if (FGood.FGoodArticle <> '') and (FGood.FGoodId = 0) then
      begin
        dm.dsImportGood.active := false;
        dm.dsImportGood.ParamByName('F_ARTICLE').value := FGood.FGoodArticle;
        dm.dsImportGood.ParamByName('F_NAME').value := FGood.FGoodName;
        dm.dsImportGood.ParamByName('F_DOP_INFO').value := FGood.FGoodInfo;
        dm.dsImportGood.active := true;
        FGood.FGoodId := dm.dsImportGood.FieldByName('F_GOOD_ID').Value;
      end;
      setLength(FGood.FScancodes,Length(p_Strings[vl_index].FGood.FScancodes));
      for vl_index2 := 0 to Length(p_Strings[vl_index].FGood.FScancodes)-1 do
      begin
        FGood.FScancodes[vl_index2] := p_Strings[vl_index].FGood.FScancodes[vl_index2];
        dm.dsImportScancode.active := false;
        dm.dsImportScancode.ParamByName('F_SCANCODE').value := FGood.FScancodes[vl_index2];
        dm.dsImportScancode.ParamByName('F_GOOD').value := FGood.FGoodId;
        dm.dsImportScancode.active := true;
      end;
      dm.spInsDocStr.ParamByName('f_GOOD').Value := FGood.FGoodId;
      dm.spInsDocStr.ParamByName('f_CNT').Value := FCount;
      dm.spInsDocStr.ParamByName('f_PRICE_VAL').Value := FPriceVal;
      dm.spInsDocStr.ExecProc;
    end;
  end;

end;

{ TMoveDocJournal }

constructor TMoveDocJournal.Create;
begin
  dm.dsSQL.Active := false;
  dm.dsSQL.SQLs.SelectSQL.Clear;
  dm.dsSQL.SQLs.SelectSQL.Add('select PARAM_VALUE from SP_GET_SYS_PARAM(''default_sklad'')');
  dm.dsSQL.Active := true;
  self.FSelfSklad := TSklad.CreateSklad(dm.dsSQL.FieldByName('PARAM_VALUE').Value);
  //ShowMessage(self.FSelfSklad.FSklad.FName);
end;

function TMoveDocJournal.GetDocsFromService: RResult;
var
  vl_result : RResult;
begin
  GetDocsFromW;
  Result := vl_result;
end;

procedure TMoveDocJournal.GetDocsFromW;
var
  vl_MoveDocumentServicesImpl: MoveDocumentServicesImpl;
  vl_doc_list : GetListDocResponse;
  vl_index,vl_index2,vl_index3 : integer;
  vl_doc : MoveDocument;
  vl_SaveDoc : TMoveDoc;
  vl_doc_head : RDocHead;
  vl_doc_body : TArrayGoods;
  vl_state : RDocState;
  vl_WebResult : serviceResult;
begin
  vl_MoveDocumentServicesImpl := GetMoveDocumentServicesImpl(false,'',dm.HTTPRIO1);
  vl_doc_list := vl_MoveDocumentServicesImpl.GetListDoc(self.FSelfSklad.FSklad.FPrefix);
  vl_MoveDocumentServicesImpl._Release;
  for vl_index := 0 to length(vl_doc_list)-1 do
  begin
    try
      vl_doc := vl_MoveDocumentServicesImpl.GetDoc(vl_doc_list[vl_index]);
      vl_SaveDoc := TMoveDoc.Create;
      vl_doc_head.FDocNumber := vl_doc.f_number;
      // vl_doc_head.FDocId := vl_doc.f_id;
      vl_doc_head.FDocUid := vl_doc.f_guid;
      vl_doc_head.FDocInfo := vl_doc.f_descr;
      // vl_doc_head.FDocType := vl_doc.f_type;
      vl_doc_head.FDocDate.FYear := vl_doc.f_docDate.f_year;
      vl_doc_head.FDocDate.FMonth := vl_doc.f_docDate.f_month;
      vl_doc_head.FDocDate.Fday := vl_doc.f_docDate.f_day;
      vl_doc_head.FSkladFrom.FPrefix := vl_doc.f_sklad_from.f_prefix;
      vl_doc_head.FSkladFrom.FName := vl_doc.f_sklad_from.f_name;
      vl_doc_head.FSkladTo.FPrefix := vl_doc.f_sklad_to.f_prefix;
      vl_doc_head.FSkladTo.FName := vl_doc.f_sklad_to.f_name;
      // ShowMessage(vl_doc.f_number);
      vl_SaveDoc.SetDocHead(vl_doc_head);
      Finalize(vl_doc_body);
      SetLength(vl_doc_body, Length(vl_doc.f_positions));
      for vl_index2 := 0 to Length(vl_doc.f_positions) - 1 do
      begin
        vl_doc_body[vl_index2].FGood.FGoodArticle := vl_doc.f_positions
          [vl_index2].f_good.f_article;
        vl_doc_body[vl_index2].FGood.FGoodName := vl_doc.f_positions[vl_index2]
          .f_good.f_name;
        vl_doc_body[vl_index2].FGood.FGoodInfo := vl_doc.f_positions[vl_index2]
          .f_good.f_dopInfo;
        vl_doc_body[vl_index2].FCount := round(vl_doc.f_positions[vl_index2].f_quant);
        vl_doc_body[vl_index2].FPriceVal := vl_doc.f_positions[vl_index2].f_price_val;
        SetLength(vl_doc_body[vl_index2].FGood.FScancodes,
          Length(vl_doc.f_positions[vl_index2].f_good.f_scancodes));
        for vl_index3 := 0 to Length(vl_doc.f_positions[vl_index2]
          .f_good.f_scancodes) - 1 do
        begin
          vl_doc_body[vl_index2].FGood.FScancodes[vl_index3] :=
            vl_doc.f_positions[vl_index2].f_good.f_scancodes[vl_index3];
        end;
      end;
      vl_SaveDoc.SetStrings(vl_doc_body);
      vl_WebResult := vl_MoveDocumentServicesImpl.CheckDoc(vl_SaveDoc.FDocHead.FDocUid,vl_SaveDoc.FDocHead.FDocCount,vl_SaveDoc.FDocHead.FDocSum);
      if vl_WebResult.result <> sResult.OK then
        dm.pFIBTransaction.RollbackRetaining
      else
      begin
        vl_state.FCode := vl_doc.f_state;
        vl_WebResult := vl_MoveDocumentServicesImpl.SetStateDoc(vl_doc_head.FDocUid,SState.GETED);
        if vl_WebResult.result <> sResult.OK then
          dm.pFIBTransaction.RollbackRetaining
        else
        begin
          vl_SaveDoc.SetDocState(vl_state);
          dm.pFIBTransaction.CommitRetaining;
        end;
      end;
      vl_SaveDoc.Free;
    except
      if dm.pFIBTransaction.Active then
        dm.pFIBTransaction.RollbackRetaining;
      // finally
      if Assigned(vl_SaveDoc) then
        vl_SaveDoc.Free;
    end;
  end;
end;

function TMoveDocJournal.GetList(p_start, p_end: RDate): TArrayDocs;
begin

end;

procedure TMoveDocJournal.ShowJournal;
begin

end;

{ TSklad }

constructor TSklad.CreateSklad(p_id: integer);
begin
  self.FSklad.FId := p_id;
  dm.dsSklad.active := false;
  dm.dsSklad.ParamByName('P_ID').Value := p_id;
  dm.dsSklad.active := true;
  self.FSklad.FName := dm.dsSklad.FieldByName('F_NAME').AsString;
  self.FSklad.FPrefix := dm.dsSklad.FieldByName('F_PREFIX').AsString;
  dm.dsSklad.active := false;
end;

end.
