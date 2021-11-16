// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://10.8.0.18:8080/WebApplicationTima/OutDocumentServicesImpl?wsdl
//  >Import : http://10.8.0.18:8080/WebApplicationTima/OutDocumentServicesImpl?wsdl>0
//  >Import : http://10.8.0.18:8080/WebApplicationTima/OutDocumentServicesImpl?xsd=1
// Encoding : UTF-8
// Version  : 1.0
// (02.10.2019 21:02:48 - - $Rev: 90173 $)
// ************************************************************************ //

unit OutDocumentServicesImpl1;

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
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:float           - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]

  partner              = class;                 { "http://services.tima.com/"[GblCplx] }
  serviceResult        = class;                 { "http://services.tima.com/"[GblCplx] }
  sklad                = class;                 { "http://services.tima.com/"[GblCplx] }
  documentPos          = class;                 { "http://services.tima.com/"[GblCplx] }
  outDocument          = class;                 { "http://services.tima.com/"[GblCplx] }
  good                 = class;                 { "http://services.tima.com/"[GblCplx] }
  price                = class;                 { "http://services.tima.com/"[GblCplx] }
  skidka               = class;                 { "http://services.tima.com/"[GblCplx] }

  {$SCOPEDENUMS ON}
  { "http://services.tima.com/"[GblSmpl] }
  sResult = (OK, ERROR);

  {$SCOPEDENUMS OFF}

  Array_Of_documentPos = array of documentPos;   { "http://services.tima.com/"[GblUbnd] }


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
    Ff_kpp: string;
    Ff_kpp_Specified: boolean;
    Ff_name: string;
    Ff_name_Specified: boolean;
    procedure Setf_address(Index: Integer; const Astring: string);
    function  f_address_Specified(Index: Integer): boolean;
    procedure Setf_inn(Index: Integer; const Astring: string);
    function  f_inn_Specified(Index: Integer): boolean;
    procedure Setf_kpp(Index: Integer; const Astring: string);
    function  f_kpp_Specified(Index: Integer): boolean;
    procedure Setf_name(Index: Integer; const Astring: string);
    function  f_name_Specified(Index: Integer): boolean;
  published
    property f_address: string  Index (IS_OPTN or IS_UNQL) read Ff_address write Setf_address stored f_address_Specified;
    property f_inn:     string  Index (IS_OPTN or IS_UNQL) read Ff_inn write Setf_inn stored f_inn_Specified;
    property f_kpp:     string  Index (IS_OPTN or IS_UNQL) read Ff_kpp write Setf_kpp stored f_kpp_Specified;
    property f_name:    string  Index (IS_OPTN or IS_UNQL) read Ff_name write Setf_name stored f_name_Specified;
  end;

  Array_Of_string = array of string;            { "http://www.w3.org/2001/XMLSchema"[GblUbnd] }


  // ************************************************************************ //
  // XML       : serviceResult, global, <complexType>
  // Namespace : http://services.tima.com/
  // ************************************************************************ //
  serviceResult = class(TRemotable)
  private
    Fmeaasge: string;
    Fmeaasge_Specified: boolean;
    Fresult: sResult;
    Fresult_Specified: boolean;
    procedure Setmeaasge(Index: Integer; const Astring: string);
    function  meaasge_Specified(Index: Integer): boolean;
    procedure Setresult(Index: Integer; const AsResult: sResult);
    function  result_Specified(Index: Integer): boolean;
  published
    property meaasge: string   Index (IS_OPTN or IS_UNQL) read Fmeaasge write Setmeaasge stored meaasge_Specified;
    property result:  sResult  Index (IS_OPTN or IS_UNQL) read Fresult write Setresult stored result_Specified;
  end;



  // ************************************************************************ //
  // XML       : sklad, global, <complexType>
  // Namespace : http://services.tima.com/
  // ************************************************************************ //
  sklad = class(TRemotable)
  private
    Ff_name: string;
    Ff_name_Specified: boolean;
    Ff_prefix: string;
    Ff_prefix_Specified: boolean;
    procedure Setf_name(Index: Integer; const Astring: string);
    function  f_name_Specified(Index: Integer): boolean;
    procedure Setf_prefix(Index: Integer; const Astring: string);
    function  f_prefix_Specified(Index: Integer): boolean;
  published
    property f_name:   string  Index (IS_OPTN or IS_UNQL) read Ff_name write Setf_name stored f_name_Specified;
    property f_prefix: string  Index (IS_OPTN or IS_UNQL) read Ff_prefix write Setf_prefix stored f_prefix_Specified;
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
  // XML       : outDocument, global, <complexType>
  // Namespace : http://services.tima.com/
  // ************************************************************************ //
  outDocument = class(TRemotable)
  private
    Ff_date: string;
    Ff_date_Specified: boolean;
    Ff_discountCard: string;
    Ff_discountCard_Specified: boolean;
    Ff_discountSum: Single;
    Ff_guid: string;
    Ff_guid_Specified: boolean;
    Ff_kkmNum: string;
    Ff_kkmNum_Specified: boolean;
    Ff_number: string;
    Ff_number_Specified: boolean;
    Ff_partner: partner;
    Ff_partner_Specified: boolean;
    Ff_pdNum: string;
    Ff_pdNum_Specified: boolean;
    Ff_positions: Array_Of_documentPos;
    Ff_positions_Specified: boolean;
    Ff_price: price;
    Ff_price_Specified: boolean;
    Ff_property: string;
    Ff_property_Specified: boolean;
    Ff_skidka: skidka;
    Ff_skidka_Specified: boolean;
    Ff_sklad: sklad;
    Ff_sklad_Specified: boolean;
    Ff_state: Integer;
    Ff_type: Integer;
    Ff_user: string;
    Ff_user_Specified: boolean;
    procedure Setf_date(Index: Integer; const Astring: string);
    function  f_date_Specified(Index: Integer): boolean;
    procedure Setf_discountCard(Index: Integer; const Astring: string);
    function  f_discountCard_Specified(Index: Integer): boolean;
    procedure Setf_guid(Index: Integer; const Astring: string);
    function  f_guid_Specified(Index: Integer): boolean;
    procedure Setf_kkmNum(Index: Integer; const Astring: string);
    function  f_kkmNum_Specified(Index: Integer): boolean;
    procedure Setf_number(Index: Integer; const Astring: string);
    function  f_number_Specified(Index: Integer): boolean;
    procedure Setf_partner(Index: Integer; const Apartner: partner);
    function  f_partner_Specified(Index: Integer): boolean;
    procedure Setf_pdNum(Index: Integer; const Astring: string);
    function  f_pdNum_Specified(Index: Integer): boolean;
    procedure Setf_positions(Index: Integer; const AArray_Of_documentPos: Array_Of_documentPos);
    function  f_positions_Specified(Index: Integer): boolean;
    procedure Setf_price(Index: Integer; const Aprice: price);
    function  f_price_Specified(Index: Integer): boolean;
    procedure Setf_property(Index: Integer; const Astring: string);
    function  f_property_Specified(Index: Integer): boolean;
    procedure Setf_skidka(Index: Integer; const Askidka: skidka);
    function  f_skidka_Specified(Index: Integer): boolean;
    procedure Setf_sklad(Index: Integer; const Asklad: sklad);
    function  f_sklad_Specified(Index: Integer): boolean;
    procedure Setf_user(Index: Integer; const Astring: string);
    function  f_user_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property f_date:         string                Index (IS_OPTN or IS_UNQL) read Ff_date write Setf_date stored f_date_Specified;
    property f_discountCard: string                Index (IS_OPTN or IS_UNQL) read Ff_discountCard write Setf_discountCard stored f_discountCard_Specified;
    property f_discountSum:  Single                Index (IS_UNQL) read Ff_discountSum write Ff_discountSum;
    property f_guid:         string                Index (IS_OPTN or IS_UNQL) read Ff_guid write Setf_guid stored f_guid_Specified;
    property f_kkmNum:       string                Index (IS_OPTN or IS_UNQL) read Ff_kkmNum write Setf_kkmNum stored f_kkmNum_Specified;
    property f_number:       string                Index (IS_OPTN or IS_UNQL) read Ff_number write Setf_number stored f_number_Specified;
    property f_partner:      partner               Index (IS_OPTN or IS_UNQL) read Ff_partner write Setf_partner stored f_partner_Specified;
    property f_pdNum:        string                Index (IS_OPTN or IS_UNQL) read Ff_pdNum write Setf_pdNum stored f_pdNum_Specified;
    property f_positions:    Array_Of_documentPos  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Ff_positions write Setf_positions stored f_positions_Specified;
    property f_price:        price                 Index (IS_OPTN or IS_UNQL) read Ff_price write Setf_price stored f_price_Specified;
    property f_property:     string                Index (IS_OPTN or IS_UNQL) read Ff_property write Setf_property stored f_property_Specified;
    property f_skidka:       skidka                Index (IS_OPTN or IS_UNQL) read Ff_skidka write Setf_skidka stored f_skidka_Specified;
    property f_sklad:        sklad                 Index (IS_OPTN or IS_UNQL) read Ff_sklad write Setf_sklad stored f_sklad_Specified;
    property f_state:        Integer               Index (IS_UNQL) read Ff_state write Ff_state;
    property f_type:         Integer               Index (IS_UNQL) read Ff_type write Ff_type;
    property f_user:         string                Index (IS_OPTN or IS_UNQL) read Ff_user write Setf_user stored f_user_Specified;
  end;



  // ************************************************************************ //
  // XML       : good, global, <complexType>
  // Namespace : http://services.tima.com/
  // ************************************************************************ //
  good = class(TRemotable)
  private
    Ff_article: string;
    Ff_article_Specified: boolean;
    Ff_barter: Boolean;
    Ff_dopInfo: string;
    Ff_dopInfo_Specified: boolean;
    Ff_good_type: Integer;
    Ff_id: Integer;
    Ff_name: string;
    Ff_name_Specified: boolean;
    Ff_partner: partner;
    Ff_partner_Specified: boolean;
    Ff_scancodes: Array_Of_string;
    Ff_scancodes_Specified: boolean;
    procedure Setf_article(Index: Integer; const Astring: string);
    function  f_article_Specified(Index: Integer): boolean;
    procedure Setf_dopInfo(Index: Integer; const Astring: string);
    function  f_dopInfo_Specified(Index: Integer): boolean;
    procedure Setf_name(Index: Integer; const Astring: string);
    function  f_name_Specified(Index: Integer): boolean;
    procedure Setf_partner(Index: Integer; const Apartner: partner);
    function  f_partner_Specified(Index: Integer): boolean;
    procedure Setf_scancodes(Index: Integer; const AArray_Of_string: Array_Of_string);
    function  f_scancodes_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property f_article:   string           Index (IS_OPTN or IS_UNQL) read Ff_article write Setf_article stored f_article_Specified;
    property f_barter:    Boolean          Index (IS_UNQL) read Ff_barter write Ff_barter;
    property f_dopInfo:   string           Index (IS_OPTN or IS_UNQL) read Ff_dopInfo write Setf_dopInfo stored f_dopInfo_Specified;
    property f_good_type: Integer          Index (IS_UNQL) read Ff_good_type write Ff_good_type;
    property f_id:        Integer          Index (IS_UNQL) read Ff_id write Ff_id;
    property f_name:      string           Index (IS_OPTN or IS_UNQL) read Ff_name write Setf_name stored f_name_Specified;
    property f_partner:   partner          Index (IS_OPTN or IS_UNQL) read Ff_partner write Setf_partner stored f_partner_Specified;
    property f_scancodes: Array_Of_string  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Ff_scancodes write Setf_scancodes stored f_scancodes_Specified;
  end;



  // ************************************************************************ //
  // XML       : price, global, <complexType>
  // Namespace : http://services.tima.com/
  // ************************************************************************ //
  price = class(TRemotable)
  private
    Ff_name: string;
    Ff_name_Specified: boolean;
    procedure Setf_name(Index: Integer; const Astring: string);
    function  f_name_Specified(Index: Integer): boolean;
  published
    property f_name: string  Index (IS_OPTN or IS_UNQL) read Ff_name write Setf_name stored f_name_Specified;
  end;



  // ************************************************************************ //
  // XML       : skidka, global, <complexType>
  // Namespace : http://services.tima.com/
  // ************************************************************************ //
  skidka = class(TRemotable)
  private
    Ff_name: string;
    Ff_name_Specified: boolean;
    procedure Setf_name(Index: Integer; const Astring: string);
    function  f_name_Specified(Index: Integer): boolean;
  published
    property f_name: string  Index (IS_OPTN or IS_UNQL) read Ff_name write Setf_name stored f_name_Specified;
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
    function  SaveDoc(const document: outDocument): serviceResult; stdcall;
  end;

function GetOutDocumentServicesImpl(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): OutDocumentServicesImpl;


implementation
  uses System.SysUtils;

function GetOutDocumentServicesImpl(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): OutDocumentServicesImpl;
const
  defWSDL = 'https://10.8.0.1:8443/WebApplicationTima/OutDocumentServicesImpl?wsdl';
  defURL  = 'https://10.8.0.1:8443/WebApplicationTima/OutDocumentServicesImpl';
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

procedure partner.Setf_kpp(Index: Integer; const Astring: string);
begin
  Ff_kpp := Astring;
  Ff_kpp_Specified := True;
end;

function partner.f_kpp_Specified(Index: Integer): boolean;
begin
  Result := Ff_kpp_Specified;
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

procedure serviceResult.Setmeaasge(Index: Integer; const Astring: string);
begin
  Fmeaasge := Astring;
  Fmeaasge_Specified := True;
end;

function serviceResult.meaasge_Specified(Index: Integer): boolean;
begin
  Result := Fmeaasge_Specified;
end;

procedure serviceResult.Setresult(Index: Integer; const AsResult: sResult);
begin
  Fresult := AsResult;
  Fresult_Specified := True;
end;

function serviceResult.result_Specified(Index: Integer): boolean;
begin
  Result := Fresult_Specified;
end;

procedure sklad.Setf_name(Index: Integer; const Astring: string);
begin
  Ff_name := Astring;
  Ff_name_Specified := True;
end;

function sklad.f_name_Specified(Index: Integer): boolean;
begin
  Result := Ff_name_Specified;
end;

procedure sklad.Setf_prefix(Index: Integer; const Astring: string);
begin
  Ff_prefix := Astring;
  Ff_prefix_Specified := True;
end;

function sklad.f_prefix_Specified(Index: Integer): boolean;
begin
  Result := Ff_prefix_Specified;
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

destructor outDocument.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Ff_positions)-1 do
    System.SysUtils.FreeAndNil(Ff_positions[I]);
  System.SetLength(Ff_positions, 0);
  System.SysUtils.FreeAndNil(Ff_partner);
  System.SysUtils.FreeAndNil(Ff_price);
  System.SysUtils.FreeAndNil(Ff_skidka);
  System.SysUtils.FreeAndNil(Ff_sklad);
  inherited Destroy;
end;

procedure outDocument.Setf_date(Index: Integer; const Astring: string);
begin
  Ff_date := Astring;
  Ff_date_Specified := True;
end;

function outDocument.f_date_Specified(Index: Integer): boolean;
begin
  Result := Ff_date_Specified;
end;

procedure outDocument.Setf_discountCard(Index: Integer; const Astring: string);
begin
  Ff_discountCard := Astring;
  Ff_discountCard_Specified := True;
end;

function outDocument.f_discountCard_Specified(Index: Integer): boolean;
begin
  Result := Ff_discountCard_Specified;
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

procedure outDocument.Setf_kkmNum(Index: Integer; const Astring: string);
begin
  Ff_kkmNum := Astring;
  Ff_kkmNum_Specified := True;
end;

function outDocument.f_kkmNum_Specified(Index: Integer): boolean;
begin
  Result := Ff_kkmNum_Specified;
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

procedure outDocument.Setf_pdNum(Index: Integer; const Astring: string);
begin
  Ff_pdNum := Astring;
  Ff_pdNum_Specified := True;
end;

function outDocument.f_pdNum_Specified(Index: Integer): boolean;
begin
  Result := Ff_pdNum_Specified;
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

procedure outDocument.Setf_price(Index: Integer; const Aprice: price);
begin
  Ff_price := Aprice;
  Ff_price_Specified := True;
end;

function outDocument.f_price_Specified(Index: Integer): boolean;
begin
  Result := Ff_price_Specified;
end;

procedure outDocument.Setf_property(Index: Integer; const Astring: string);
begin
  Ff_property := Astring;
  Ff_property_Specified := True;
end;

function outDocument.f_property_Specified(Index: Integer): boolean;
begin
  Result := Ff_property_Specified;
end;

procedure outDocument.Setf_skidka(Index: Integer; const Askidka: skidka);
begin
  Ff_skidka := Askidka;
  Ff_skidka_Specified := True;
end;

function outDocument.f_skidka_Specified(Index: Integer): boolean;
begin
  Result := Ff_skidka_Specified;
end;

procedure outDocument.Setf_sklad(Index: Integer; const Asklad: sklad);
begin
  Ff_sklad := Asklad;
  Ff_sklad_Specified := True;
end;

function outDocument.f_sklad_Specified(Index: Integer): boolean;
begin
  Result := Ff_sklad_Specified;
end;

procedure outDocument.Setf_user(Index: Integer; const Astring: string);
begin
  Ff_user := Astring;
  Ff_user_Specified := True;
end;

function outDocument.f_user_Specified(Index: Integer): boolean;
begin
  Result := Ff_user_Specified;
end;

destructor good.Destroy;
begin
  System.SysUtils.FreeAndNil(Ff_partner);
  inherited Destroy;
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

procedure good.Setf_dopInfo(Index: Integer; const Astring: string);
begin
  Ff_dopInfo := Astring;
  Ff_dopInfo_Specified := True;
end;

function good.f_dopInfo_Specified(Index: Integer): boolean;
begin
  Result := Ff_dopInfo_Specified;
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

procedure good.Setf_partner(Index: Integer; const Apartner: partner);
begin
  Ff_partner := Apartner;
  Ff_partner_Specified := True;
end;

function good.f_partner_Specified(Index: Integer): boolean;
begin
  Result := Ff_partner_Specified;
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

procedure price.Setf_name(Index: Integer; const Astring: string);
begin
  Ff_name := Astring;
  Ff_name_Specified := True;
end;

function price.f_name_Specified(Index: Integer): boolean;
begin
  Result := Ff_name_Specified;
end;

procedure skidka.Setf_name(Index: Integer; const Astring: string);
begin
  Ff_name := Astring;
  Ff_name_Specified := True;
end;

function skidka.f_name_Specified(Index: Integer): boolean;
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
  RemClassRegistry.RegisterXSInfo(TypeInfo(sResult), 'http://services.tima.com/', 'sResult');
  RemClassRegistry.RegisterXSClass(partner, 'http://services.tima.com/', 'partner');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_string), 'http://www.w3.org/2001/XMLSchema', 'Array_Of_string');
  RemClassRegistry.RegisterXSClass(serviceResult, 'http://services.tima.com/', 'serviceResult');
  RemClassRegistry.RegisterXSClass(sklad, 'http://services.tima.com/', 'sklad');
  RemClassRegistry.RegisterXSClass(documentPos, 'http://services.tima.com/', 'documentPos');
  RemClassRegistry.RegisterXSClass(outDocument, 'http://services.tima.com/', 'outDocument');
  RemClassRegistry.RegisterXSClass(good, 'http://services.tima.com/', 'good');
  RemClassRegistry.RegisterXSClass(price, 'http://services.tima.com/', 'price');
  RemClassRegistry.RegisterXSClass(skidka, 'http://services.tima.com/', 'skidka');

end.