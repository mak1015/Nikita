unit UFrmNsiPartner;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPrototype, RzPanel, RzButton, ExtCtrls, udm, cxStyles,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, FIBDataSet,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid, pFIBDataSet,
  Menus, RzStatus, RzForms, frxExportRTF, frxExportXML, frxExportXLS,
  frxExportHTML, frxClass, frxExportPDF, frxCross, frxBarcode, frxDCtrl,
  frxDesgn, frxFIBComponents, cxPropertiesStore, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TFrmNsiPartner = class(TFrmPrototype)
    dsNsiPartner: TpFIBDataSet;
    srNsiPartner: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dsNsiPartnerF_ID: TFIBBCDField;
    dsNsiPartnerF_NAME: TFIBStringField;
    dsNsiPartnerF_U_NAME: TFIBStringField;
    dsNsiPartnerF_U_ADDRES: TFIBStringField;
    dsNsiPartnerF_INN: TFIBStringField;
    dsNsiPartnerF_KPP: TFIBStringField;
    cxGrid1DBTableView1F_ID: TcxGridDBColumn;
    cxGrid1DBTableView1F_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1F_U_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1F_U_ADDRES: TcxGridDBColumn;
    cxGrid1DBTableView1F_INN: TcxGridDBColumn;
    cxGrid1DBTableView1F_KPP: TcxGridDBColumn;
    procedure BtnNewClick(Sender: TObject);
    procedure BtnRefreshClick(Sender: TObject);
    procedure BtnEditClick(Sender: TObject);
    procedure BtnOpenClick(Sender: TObject);
  private
    { Private declarations }
    procedure EditPartner;
  public
    { Public declarations }
  end;

var
  FrmNsiPartner: TFrmNsiPartner;

implementation

uses
  UFrmNsiParnerEdit, uPublic;
{$R *.dfm}

procedure TFrmNsiPartner.BtnEditClick(Sender: TObject);
begin
  inherited;
  EditPartner;
end;

procedure TFrmNsiPartner.BtnNewClick(Sender: TObject);
begin
  inherited;
  with TFrmNsiParnerEdit.Create(self) do
  begin
    dsEditNsiPartner.ParamByName('NSI_ID').value:=-10;
    dsEditNsiPartner.Active:=true;
    if ShowAsDialog then
    begin
      if dsEditNsiPartner.State in [dsEdit,dsInsert] then
      begin
        dsEditNsiPartner.Post;
      end;
      dsEditNsiPartner.Transaction.CommitRetaining;
    end;
    free;
  end;
end;

procedure TFrmNsiPartner.BtnOpenClick(Sender: TObject);
begin
  inherited;
  StartImport(@dsNsiPartner);
end;

procedure TFrmNsiPartner.BtnRefreshClick(Sender: TObject);
begin
  inherited;
  refreshDS(dsNsiPartner);
end;

procedure TFrmNsiPartner.EditPartner;
begin
  with TFrmNsiParnerEdit.Create(self) do
  begin
    dsEditNsiPartner.ParamByName('NSI_ID').Value:=dsNsiPartnerF_ID.Value;
    dsEditNsiPartner.Active:=true;
    if ShowAsDialog then
    begin
      if dsEditNsiPartner.State in [dsEdit,dsInsert] then
      begin
        dsEditNsiPartner.Post;
      end;
      dsEditNsiPartner.Transaction.CommitRetaining;
      refreshDS(dsNsiPartner);
    end;
    free;
  end;
end;

end.
