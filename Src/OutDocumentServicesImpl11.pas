// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://10.8.0.18:8080/WebApplicationTima/OutDocumentServicesImpl?wsdl
//  >Import : http://10.8.0.18:8080/WebApplicationTima/OutDocumentServicesImpl?wsdl>0
//  >Import : http://10.8.0.18:8080/WebApplicationTima/OutDocumentServicesImpl?xsd=1
// Encoding : UTF-8
// Version  : 1.0
// (20.09.2019 10:13:45 - - $Rev: 90173 $)
// ************************************************************************ //

unit OutDocumentServicesImpl11;

interface

uses Soap.InvokeRegistry, Soap.SOAPHTTPClient, System.Types, Soap.XSBuiltIns;

const
  IS_OPTN = $0001;
  IS_UNBD = $0002;
  IS_NLBL = $0004;
  IS_UNQL = $0008;


type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:float           - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:dateTime        - "http://www.w3.org/2001/XMLSchema"[Gbl]

  outDocument          = class;                 { "http://services.tima.com/"[GblCplx] }
  good                 = class;                 { "http://services.tima.com/"[GblCplx] }
  documentPos          = class;                 { "http://services.tima.com/"[GblCplx] }
  partner              = class;                 { "http://services.tima.com/"[GblCplx] }

  Array_Of_documentPos = array of documentPos;   { "http://services.tima.com/"[GblUbnd] }
  Array_Of_string = array of string;            { "http://www.w3.org/2001/XMLSchema"[GblUbnd] }


  // ************************************************************************ //
  // XML       : outDocument, global, <complexType>
  // Namespace : http://services.tima.com/
  // ************************************************************************ //
  outDocument = class(TRemotable)
  private
    Ff_date: TXSDateTime;
    Ff_date_Specified: boolean;
    Ff_guid: string;
    Ff_guid_Specified: boolean;
    Ff_number: string;
    Ff_number_Specified: boolean;
    Ff_partner: partner;
    Ff_partner_Specified: boolean;
    Ff_positions: Array_Of_documentPos;
    Ff_positions_Specified: boolean;
    procedure Setf_date(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  f_date_Specified(Index: Integer): boolean;
    procedure Setf_guid(Index: Integer; const Astring: string);
    function  f_guid_Specified(Index: Integer): boolean;
    procedure Setf_number(Index: Integer; const Astring: string);
    function  f_number_Specified(Index: Integer): boolean;
    procedure Setf_partner(Index: Integer; const Apartner: partner);
    function  f_partner_Specified(Index: Integer): boolean;
    procedure Setf_positions(Index: Integer; const AArray_Of_documentPos: Array_Of_documentPos);
    function  f_positions_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property f_date:      TXSDateTime           Index (IS_OPTN or IS_UNQL) read Ff_date write Setf_date stored f_date_Specified;
    property f_guid:      string                Index (IS_OPTN or IS_UNQL) read Ff_guid write Setf_guid stored f_guid_Specified;
    property f_number:    string                Index (IS_OPTN or IS_UNQL) read Ff_number write Setf_number stored f_number_Specified;
    property f_partner:   partner               Index (IS_OPTN or IS_UNQL) read Ff_partner write Setf_partner stored f_partner_Specified;
    property f_positions: Array_Of_documentPos  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Ff_positions write Setf_positions stored f_positions_Specified;
  end;



  // ************************************************************************ //
  // XML       : good, global, <complexType>
  // Namespace : http://services.tima.com/
  // ************************************************************************ //
  good = class(TRemotable)
  private
    Ff_article: string;
    Ff_article_Specified: boolean;
    Ff_name: string;
    Ff_name_Specified: boolean;
    Ff_scancodes: Array_Of_string;
    Ff_scancodes_Specified: boolean;
    procedure Setf_article(Index: Integer; const Astring: string);
    function  f_article_Specified(Index: Integer): boolean;
    procedure Setf_name(Index: Integer; const Astring: string);
    function  f_name_Specified(Index: Integer): boolean;
    procedure Setf_scancodes(Index: Integer; const AArray_Of_string: Array_Of_string);
    function  f_scancodes_Specified(Index: Integer): boolean;
  published
    property f_article:   string           Index (IS_OPTN or IS_UNQL) read Ff_article write Setf_article stored f_article_Specified;
    property f_name:      string           Index (IS_OPTN or IS_UNQL) read Ff_name write Setf_name stored f_name_Specified;
    property f_scancodes: Array_Of_string  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Ff_scancodes write Setf_scancodes stored f_scancodes_Specified;
  end;



  // ************************************************************************ //
  // XML       : documentPos, global, <complexType>
  // Namespace : http://services.tima.com/
  // ************************************************************************ //
  documentPos = class(TRemotable)
  private
    Ff_good: good;
    Ff_good_Specified: boolean;
    Ff_id: Integer;
    Ff_pos: Integer;
    Ff_price: Single;
    Ff_price_val: Single;
    Ff_quant: Single;
    procedure Setf_good(Index: Integer; const Agood: good);
    function  f_good_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property f_good:      good     Index (IS_OPTN or IS_UNQL) read Ff_good write Setf_good stored f_good_Specified;
    property f_id:        Integer  Index (IS_UNQL) read Ff_id write Ff_id;
    property f_pos:       Integer  Index (IS_UNQL) read Ff_pos write Ff_pos;
    property f_price:     Single   Index (IS_UNQL) read Ff_price write Ff_price;
    property f_price_val: Single   Index (IS_UNQL) read Ff_price_val write Ff_price_val;
    property f_quant:     Single   Index (IS_UNQL) read Ff_quant write Ff_quant;
  end;



  // ************************************************************************ //
  // XML       : partner, global, <complexType>
  // Namespace : http://services.tima.com/
  // ************************************************************************ //
  partner = class(TRemotable)
  private
    Ff_address: string;
    Ff_address_Specified: boolean;
    Ff_inn: string;
    Ff_inn_Specified: boolean;
    Ff_name: string;
    Ff_name_Specified: boolean;
    procedure Setf_address(Index: Integer; const Astring: string);
    function  f_address_Specified(Index: Integer): boolean;
    procedure Setf_inn(Index: Integer; const Astring: string);
    function  f_inn_Specified(Index: Integer): boolean;
    procedure Setf_name(Index: Integer; const Astring: string);
    function  f_name_Specified(Index: Integer): boolean;
  published
    property f_address: string  Index (IS_OPTN or IS_UNQL) read Ff_address write Setf_address stored f_address_Specified;
    property f_inn:     string  Index (IS_OPTN or IS_UNQL) read Ff_inn write Setf_inn stored f_inn_Specified;
    property f_name:    string  Index (IS_OPTN or IS_UNQL) read Ff_name write Setf_name stored f_name_Specified;
  end;


  // ************************************************************************ //
  // Namespace : http://services.tima.com/
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : OutDocumentServicesImplPortBinding
  // service   : DocWebService
  // port      : OutDocumentServicesImplPort
  // URL       : http://10.8.0.18:8080/WebApplicationTima/OutDocumentServicesImpl
  // ************************************************************************ //
  OutDocumentServicesImpl = interface(IInvokable)
  ['{618731EF-B2A2-D4E6-DD84-26AB82185A6C}']
    function  SaveDoc(const document: outDocument): string; stdcall;
  end;

function GetOutDocumentServicesImpl(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): OutDocumentServicesImpl;


implementation
  uses System.SysUtils;

function GetOutDocumentServicesImpl(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): OutDocumentServicesImpl;
const
  defWSDL = 'http://10.8.0.18:8080/WebApplicationTima/OutDocumentServicesImpl?wsdl';
  defURL  = 'http://10.8.0.18:8080/WebApplicationTima/OutDocumentServicesImpl';
  defSvc  = 'DocWebService';
  defPrt  = 'OutDocumentServicesImplPort';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as OutDocumentServicesImpl);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


destructor outDocument.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Ff_positions)-1 do
    System.SysUtils.FreeAndNil(Ff_positions[I]);
  System.SetLength(Ff_positions, 0);
  System.SysUtils.FreeAndNil(Ff_date);
  System.SysUtils.FreeAndNil(Ff_partner);
  inherited Destroy;
end;

procedure outDocument.Setf_date(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  Ff_date := ATXSDateTime;
  Ff_date_Specified := True;
end;

function outDocument.f_date_Specified(Index: Integer): boolean;
begin
  Result := Ff_date_Specified;
end;

procedure outDocument.Setf_guid(Index: Integer; const Astring: string);
begin
  Ff_guid := Astring;
  Ff_guid_Specified := True;
end;

function outDocument.f_guid_Specified(Index: Integer): boolean;
begin
  Result := Ff_guid_Specified;
end;

procedure outDocument.Setf_number(Index: Integer; const Astring: string);
begin
  Ff_number := Astring;
  Ff_number_Specified := True;
end;

function outDocument.f_number_Specified(Index: Integer): boolean;
begin
  Result := Ff_number_Specified;
end;

procedure outDocument.Setf_partner(Index: Integer; const Apartner: partner);
begin
  Ff_partner := Apartner;
  Ff_partner_Specified := True;
end;

function outDocument.f_partner_Specified(Index: Integer): boolean;
begin
  Result := Ff_partner_Specified;
end;

procedure outDocument.Setf_positions(Index: Integer; const AArray_Of_documentPos: Array_Of_documentPos);
begin
  Ff_positions := AArray_Of_documentPos;
  Ff_positions_Specified := True;
end;

function outDocument.f_positions_Specified(Index: Integer): boolean;
begin
  Result := Ff_positions_Specified;
end;

procedure good.Setf_article(Index: Integer; const Astring: string);
begin
  Ff_article := Astring;
  Ff_article_Specified := True;
end;

function good.f_article_Specified(Index: Integer): boolean;
begin
  Result := Ff_article_Specified;
end;

procedure good.Setf_name(Index: Integer; const Astring: string);
begin
  Ff_name := Astring;
  Ff_name_Specified := True;
end;

function good.f_name_Specified(Index: Integer): boolean;
begin
  Result := Ff_name_Specified;
end;

procedure good.Setf_scancodes(Index: Integer; const AArray_Of_string: Array_Of_string);
begin
  Ff_scancodes := AArray_Of_string;
  Ff_scancodes_Specified := True;
end;

function good.f_scancodes_Specified(Index: Integer): boolean;
begin
  Result := Ff_scancodes_Specified;
end;

destructor documentPos.Destroy;
begin
  System.SysUtils.FreeAndNil(Ff_good);
  inherited Destroy;
end;

procedure documentPos.Setf_good(Index: Integer; const Agood: good);
begin
  Ff_good := Agood;
  Ff_good_Specified := True;
end;

function documentPos.f_good_Specified(Index: Integer): boolean;
begin
  Result := Ff_good_Specified;
end;

procedure partner.Setf_address(Index: Integer; const Astring: string);
begin
  Ff_address := Astring;
  Ff_address_Specified := True;
end;

function partner.f_address_Specified(Index: Integer): boolean;
begin
  Result := Ff_address_Specified;
end;

procedure partner.Setf_inn(Index: Integer; const Astring: string);
begin
  Ff_inn := Astring;
  Ff_inn_Specified := True;
end;

function partner.f_inn_Specified(Index: Integer): boolean;
begin
  Result := Ff_inn_Specified;
end;

procedure partner.Setf_name(Index: Integer; const Astring: string);
begin
  Ff_name := Astring;
  Ff_name_Specified := True;
end;

function partner.f_name_Specified(Index: Integer): boolean;
begin
  Result := Ff_name_Specified;
end;

initialization
  { OutDocumentServicesImpl }
  InvRegistry.RegisterInterface(TypeInfo(OutDocumentServicesImpl), 'http://services.tima.com/', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(OutDocumentServicesImpl), '');
  InvRegistry.RegisterInvokeOptions(TypeInfo(OutDocumentServicesImpl), ioDocument);
  { OutDocumentServicesImpl.SaveDoc }
  InvRegistry.RegisterMethodInfo(TypeInfo(OutDocumentServicesImpl), 'SaveDoc', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(OutDocumentServicesImpl), 'SaveDoc', 'document', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(OutDocumentServicesImpl), 'SaveDoc', 'return', '',
                                '', IS_UNQL);
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_documentPos), 'http://services.tima.com/', 'Array_Of_documentPos');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_string), 'http://www.w3.org/2001/XMLSchema', 'Array_Of_string');
  RemClassRegistry.RegisterXSClass(outDocument, 'http://services.tima.com/', 'outDocument');
  RemClassRegistry.RegisterXSClass(good, 'http://services.tima.com/', 'good');
  RemClassRegistry.RegisterXSClass(documentPos, 'http://services.tima.com/', 'documentPos');
  RemClassRegistry.RegisterXSClass(partner, 'http://services.tima.com/', 'partner');

end.