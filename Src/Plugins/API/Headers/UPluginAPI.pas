unit UPluginAPI;

interface

type
  IAct = record
    FActName : WIdeString;
    FActGrp : WideString;
    FActCaption : WideString;
    FActParams : WideString;
    FPeriod_sec : integer;
  end;

  RActor = record
    FActorId : WideString;
    FActorName : WideString;
  end;

  RDate = record
    Fday : integer;
    FMonth : integer;
    FYear : integer;
  end;

  RDocString = record
    FGood : WideString;
    FCount : integer;
    FPriceVal : Currency;
    FPriceSrc : Currency;
  end;

  TArrayGoods = array of RDocString;

  RDocHead = record
    FDcoId   : WideString;
    FDocNumber : WideString;
    FDocDate : WideString;
    FDocType : WideString;
    FDocState : WideString;
    FDocSum : Currency;
    FDocCount : Integer;
    FSender : RActor;
    FRecipient : RActor;
  end;


  TArrayAct = array of IAct;

  INApi = interface
    ['{8ADF0148-41BE-47E7-8300-1943F9EFB7FD}']
    function SendMsg(p_Message : WideString) : WideString;
  end;

  INPlugin = interface
    ['{1580B6FD-68E0-43BA-85EF-66CA4858B35A}']
    procedure Init(p_API : INApi);
    function GetActList : TArrayAct;
    function RunAct(p_Act : IAct) : WideString;
    function ConnectBase(p_ConString,p_User,p_Passwd : WideString) :WideString;
  end;
  ///  <summary>
  ///  Документ движения товара
  ///  </summary>

  IDocument = interface
  ['{519EE63C-A44D-4CBF-BDA8-2309FD188823}']
    function GetDocHead : RDocHead;
    procedure SetDocHead(p_DocHead : RdocHead);
    property F_docHead : RDocHead read GetDochead write SetDocHead;
    function GetStrings : TArrayGoods;
    procedure SetStrings (p_Strings : TArrayGoods);
    property F_docStrings : TArrayGoods read GetStrings write SetStrings;
    procedure GetDocument(p_id : integer);
    function SetDocument : boolean;
  end;

  TArrayDocs = array of IDocument;

  IDocJournal = interface
    ['{D39FDC2E-8C7C-425E-ACC7-71554FB95DE5}']
    function GetList(p_start, p_end: RDate) : TArrayDocs;
  end;

  TInitPluginFunc = function(const ACore: INApi): INPlugin; safecall;
//  TConnPluginFunc = function(AConString, AUser, APasswd : WideString) : Boolean; safecall;
//  TActNamePluginFunc = function : TArrayString; safecall;
//  TActPluginFunc = function(AActionName : WideString) : WideString; safecall;
  TDonePluginFunc = procedure; safecall;


const
  SPluginInitFuncName = '2AEF13180A1E4197BEDF5BDC530BE712';
  SPluginDoneFuncName = SPluginInitFuncName + '_done';
  SPluginBaseFuncName = SPluginInitFuncName + '_base';
  SPluginActFuncName = SPluginInitFuncName + '_act';
  SPluginListFuncName = SPluginInitFuncName + '_list';
  SPluginExt          = '.MyAppPlugin';

implementation

end.
