unit UQueueProc;

interface

uses
  System.Classes;

type
  TQueueProc = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
  end;

implementation

  uses uDm,UDocumentsClasses;
{ 
  Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);  

  and UpdateCaption could look like,

    procedure TQueueProc.UpdateCaption;
    begin
      Form1.Caption := 'Updated in a thread';
    end; 
    
    or 
    
    Synchronize( 
      procedure 
      begin
        Form1.Caption := 'Updated in thread via an anonymous method' 
      end
      )
    );
    
  where an anonymous method is passed.
  
  Similarly, the developer can call the Queue method with similar parameters as 
  above, instead passing another TThread class as the first parameter, putting
  the calling thread in a queue with the other thread.
    
}

{ TQueueProc }

procedure TQueueProc.Execute;
begin
  { Place thread code here }
//  FreeOnTerminate:=true;
  dm.TimerRefreshNsiGood.Enabled:=false;
  dm.dsWebQueueSel.Active:=false;
  dm.dsWebQueueSel.Active:=true;
  while not dm.dsWebQueueSel.Eof do
  begin
    with TWEBQueue.Create(
      dm.dsWebQueueSelF_ID.AsInteger,
      dm.dsWebQueueSelF_OBJ_TYPE.AsString,dm.dsWebQueueSelF_OBJ_ID.AsInteger,dm.dsWebQueueSelF_GUID.AsString) do
    begin
      SendDoc;
      free;
    end;
    dm.dsWebQueueSel.Next;
  end;
  dm.TimerRefreshNsiGood.Enabled:=true;
end;

end.
