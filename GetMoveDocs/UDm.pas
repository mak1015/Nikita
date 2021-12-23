unit UDm;

interface

uses
  System.SysUtils, System.Classes, FIBDatabase, pFIBDatabase, Data.DB,
  FIBDataSet, pFIBDataSet;

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
