unit UDm;

interface

uses
  System.SysUtils, System.Classes, FIBDatabase, pFIBDatabase, Data.DB,
  FIBDataSet, pFIBDataSet, Soap.InvokeRegistry, Soap.Rio, Soap.SOAPHTTPClient,
  FIBQuery, pFIBQuery, pFIBStoredProc;

type
  TDM = class(TDataModule)
    pFIBDatabase: TpFIBDatabase;
    pFIBTransaction: TpFIBTransaction;
    dsGetDoc: TpFIBDataSet;
    dsGetDocF_ID: TFIBBCDField;
    dsGetDocF_SKLAD_FROM: TFIBBCDField;
    dsGetDocF_SKLAD_TO: TFIBBCDField;
    dsGetDocF_NUMBER: TFIBStringField;
    dsGetDocF_DATE: TFIBDateField;
    dsGetDocF_STATE: TFIBBCDField;
    dsGetDocF_STATE_NAME: TFIBStringField;
    dsGetDocF_SKLAD_FROM_PREFIX: TFIBStringField;
    dsGetDocF_SKLAD_FROM_NAME: TFIBStringField;
    dsGetDocF_SKLAD_FROM_INN: TFIBStringField;
    dsGetDocF_SKLAD_FROM_F_NAME: TFIBStringField;
    dsGetDocF_SKLAD_FROM_KPP: TFIBStringField;
    dsGetDocF_SKLAD_TO_PREFIX: TFIBStringField;
    dsGetDocF_SKLAD_TO_NAME: TFIBStringField;
    dsGetDocF_SKLAD_TO_INN: TFIBStringField;
    dsGetDocF_SKLAD_TO_F_NAME: TFIBStringField;
    dsGetDocF_SKLAD_TO_KPP: TFIBStringField;
    dsGetDocF_PRICE: TFIBBCDField;
    dsGetDocF_PRICE_NAME: TFIBStringField;
    dsGetDocF_DOC_SUM: TFIBBCDField;
    dsGetDocF_TYPE: TFIBBCDField;
    dsGetDocF_DOP_INFO: TFIBStringField;
    dsGetDocF_USER: TFIBStringField;
    dsGetDocF_TYPE_NAME: TFIBStringField;
    dsGetDocF_GUID: TFIBStringField;
    dsGetDocStrings: TpFIBDataSet;
    dsGetDocStringsF_ID: TFIBBCDField;
    dsGetDocStringsF_DOC_MOVE: TFIBBCDField;
    dsGetDocStringsF_GOOD_NAME: TFIBStringField;
    dsGetDocStringsF_GOOD_DOP_INFO: TFIBStringField;
    dsGetDocStringsF_SCANCODE: TFIBStringField;
    dsGetDocStringsF_ED_IZM_SHORT_NAME: TFIBStringField;
    dsGetDocStringsF_ED_IZM_NAME: TFIBStringField;
    dsGetDocStringsF_ARTICLE: TFIBStringField;
    dsGetDocStringsF_GOOD: TFIBBCDField;
    dsGetDocStringsF_PRICE: TFIBBCDField;
    dsGetDocStringsF_CNT: TFIBBCDField;
    dsGetDocStringsF_PRICE_VAL: TFIBBCDField;
    dsGetDocStringsF_SUM: TFIBFloatField;
    dsGetDocStringsF_SKLAD_OST: TFIBFloatField;
    dsGetDocStringsF_SKLAD_TO_OST: TFIBFloatField;
    dsGetDocStringsF_GOOD_GRP_COLOR: TFIBStringField;
    dsGetDocStringsF_DESCR: TFIBStringField;
    HTTPRIO1: THTTPRIO;
    dsSQL: TpFIBDataSet;
    dsSklad: TpFIBDataSet;
    dsSkladF_ID: TFIBBCDField;
    dsSkladF_NAME: TFIBStringField;
    dsSkladF_ADDRES: TFIBStringField;
    dsSkladF_PARTNER: TFIBBCDField;
    dsSkladF_PARTNER_NAME: TFIBStringField;
    dsSkladF_PARTNER_INN: TFIBStringField;
    dsSkladF_PARTNER_KPP: TFIBStringField;
    dsSkladF_PARTNER_ADRES: TFIBStringField;
    dsSkladF_PARTNER_BANK: TFIBStringField;
    dsSkladF_PARTNER_BANK_ADRES: TFIBStringField;
    dsSkladF_PARTNER_BANK_RSCH: TFIBStringField;
    dsSkladF_PARTNER_BANK_KSCH: TFIBStringField;
    dsSkladF_PARTNER_BANK_BIK: TFIBStringField;
    dsSkladF_XML: TFIBStringField;
    dsSkladF_PRICE_IN: TFIBBCDField;
    dsSkladF_PRICE_OUT: TFIBBCDField;
    dsSkladF_PRICE_IN_NAME: TFIBStringField;
    dsSkladF_PRICE_OUT_NAME: TFIBStringField;
    dsSkladF_PARTNER_ROZN: TFIBBCDField;
    dsSkladF_PARTNER_ROZN_NAME: TFIBStringField;
    dsSkladF_PREFIX: TFIBStringField;
    dsGetDocGUID: TpFIBDataSet;
    dsImportSklad: TpFIBDataSet;
    dsImportGood: TpFIBDataSet;
    dsImportScancode: TpFIBDataSet;
    spInsDocStr: TpFIBStoredProc;
    spChangeState: TpFIBStoredProc;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

end.
