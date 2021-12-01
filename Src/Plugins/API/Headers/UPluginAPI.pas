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
