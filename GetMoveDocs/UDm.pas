unit UDm;

interface

uses
  System.SysUtils, System.Classes, FIBDatabase, pFIBDatabase;

type
  TDM = class(TDataModule)
    pFIBDatabase: TpFIBDatabase;
    pFIBTransaction: TpFIBTransaction;
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
