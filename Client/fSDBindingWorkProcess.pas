unit fSDBindingWorkProcess;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fFieldEditFrame, Db, ImgList, ActnList, JvToolEdit, JvDBControls, StdCtrls,
  Mask, DBCtrls, fBaseFrame, fDBFrame, System.Actions;

type
  TfrSDBindingWorkProcess = class(TFieldEditFrame)
    edtWorkOrderNo: TDBEdit;
    lblWorkOrderNo: TLabel;
  private
    { Private declarations }
  protected
    procedure NewReadOnlySet; override;
  public
    procedure Initialize; override;
    procedure HideFrame; override;
  end;

implementation

{$R *.DFM}

{ TfrSDBindingWorkProces }

procedure TfrSDBindingWorkProcess.Initialize;
begin
  // ako niakoi uspee da mi obiasni zashto kato iztria label1i reve
  // 'ancestor for Label1 not found' shte go cherpia. call me. Hacko
  // zatui e taia uuuuuuuugly krypka. prosto mi pisna na onaia rabota da razglejdam .dfm-ta  i t.n.
  //Label1.Left:= edtWorkOrderNo.Left;
  inherited;
  FieldNames:= 'DEPT_CODE; WORK_ORDER_NO';  
end;

procedure TfrSDBindingWorkProcess.HideFrame;
begin
  actClearFieldValues.Execute;
  inherited;
end;

procedure TfrSDBindingWorkProcess.NewReadOnlySet;
begin
  inherited;
  edtWorkOrderNo.ReadOnly:= ReadOnly;
end;

end.
