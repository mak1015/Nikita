unit uPassWord;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, {PropFilerEh, PropStorageEh,} cxPropertiesStore,IniFiles, ExtCtrls,
  cxClasses, Vcl.ComCtrls, Winapi.ShlObj, cxShellCommon, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxShellComboBox;

type
  TPasswordDlg = class(TForm)
    Label1: TLabel;
    Password: TEdit;
    OKBtn: TButton;
    CancelBtn: TButton;
    EdUser: TEdit;
    EdBase: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    cxPropertiesStore: TcxPropertiesStore;
    RadioGroup1: TRadioGroup;
    Atol: TRadioButton;
    Strih: TRadioButton;
    LangSelect: TComboBox;
    cxShellComboBox: TcxShellComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure EdBaseDblClick(Sender: TObject);
    procedure cxShellComboBoxDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PasswordDlg: TPasswordDlg;

implementation
  uses uPublic;
{$R *.dfm}

procedure TPasswordDlg.cxShellComboBoxDblClick(Sender: TObject);
begin
  if not cxShellComboBox.Enabled then
    cxShellComboBox.Enabled := true;
end;

procedure TPasswordDlg.EdBaseDblClick(Sender: TObject);
begin
  EdBase.Enabled:=true;
  cxShellComboBox.Enabled := true;
end;

procedure TPasswordDlg.FormCreate(Sender: TObject);
var
  inifile : TiniFile;
  Dict : TIniFile;

begin
{  IniPropStorageManEh.IniFileName:=
    ExtractFilePath(Application.ExeName)+'\nikita.ini';
}
  inifile:=TIniFile.Create(prg_path+'\nikita.ini');
  Dict:=TIniFile.Create(Prg_path+'\'+TranslateFile);
  Dict.ReadSections(LangSelect.Items);
  LangSelect.Items.Add('ÐÓÑ');
  cxPropertiesStore.RestoreFrom;
  try
    edBAse.Text:=inifile.ReadString('LOGIN','BASE','');
  except
    edBAse.Text:='';
  end;
  cxShellComboBox.AbsolutePath := inifile.ReadString('PLUGIN','PluginPath',Prg_path + 'Plugins');
  iniFile.Free;
  Dict.free;
end;

procedure TPasswordDlg.FormDestroy(Sender: TObject);
var
  inifile : TiniFile;
begin
  inifile:=TIniFile.Create(prg_path+'\nikita.ini');
  try
    inifile.WriteString('LOGIN','BASE',edBAse.Text);
    inifile.WriteString('PLUGIN','PluginPath',cxShellComboBox.AbsolutePath);
  finally

  end;
  iniFile.Free;
end;

end.
 
