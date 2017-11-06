unit fTimeFieldEditFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFieldEditFrame, DB, ActnList, AbmesFields, DBClient,
  AbmesClientDataSet, StdCtrls, Mask, DBCtrlsEh, System.Actions;

type
  TfrTimeFieldEditFrame = class(TFieldEditFrame)
    cdsTime: TAbmesClientDataSet;
    cdsTimeTHE_TIME: TAbmesSQLTimeStampField;
    dsTime: TDataSource;
    edtTime: TDBDateTimeEditEh;
    procedure actFrameUpdate(Sender: TObject);
    procedure cdsTimeTHE_TIMEChange(Sender: TField);
    procedure edtTimeChange(Sender: TObject);
  private
    FInDataChange: Boolean;
    FInitialUpdated: Boolean;
  protected
    procedure DataChange(Sender: TObject); override;
    procedure UpdateData(Sender: TObject); override;
  public
    constructor Create(AOwner: TComponent); override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
  end;

implementation

uses
  uColorConsts, uUtils;

{$R *.dfm}

{ TfrTimeFieldEditFrame }

procedure TfrTimeFieldEditFrame.OpenDataSets;
begin
  with cdsTime do
    if not Active then
      begin
        CreateDataSet;
        Append;
      end;
  inherited;
end;

procedure TfrTimeFieldEditFrame.CloseDataSets;
begin
  cdsTime.Close;
  inherited;
end;

procedure TfrTimeFieldEditFrame.DataChange(Sender: TObject);
begin
  inherited DataChange(Sender);

  if not SettingModified and
     not SettingEdit and
     (FieldCount > 0) and
     Assigned(Fields[0]) then
    begin
      FInDataChange:= True;
      try
        if not cdsTime.Active then
          begin
            cdsTime.CreateDataSet;
            cdsTime.Append;
          end;

        cdsTimeTHE_TIME.AsVariant:= Fields[0].AsVariant;

      finally
        FInDataChange:= False;
      end;  { try }
    end;  { if }
end;

procedure TfrTimeFieldEditFrame.UpdateData(Sender: TObject);
begin
  inherited UpdateData(Sender);

  Assert(cdsTime.Active);
  Assert(FieldCount > 0);
  Assert(Assigned(Fields[0]));
  Assert(Assigned(Fields[0].DataSet));

  cdsTime.UpdateRecord;
  
  try
    CheckEditMode(Fields[0].DataSet);

    if cdsTimeTHE_TIME.IsNull then
      Fields[0].Clear
    else
      Fields[0].AsDateTime:= Frac(cdsTimeTHE_TIME.AsDateTime);
  except
    Reset;
    raise;
  end;  { try }
end;

procedure TfrTimeFieldEditFrame.actFrameUpdate(Sender: TObject);
var
  ro: Boolean;
begin
  inherited;

  if not FInitialUpdated then
    begin
      FInitialUpdated:= True;
      DataChange(Self);
    end;

  ro:=
    not (
      not ReadOnly and
      Assigned(dsData.DataSet) and
      dsData.DataSet.Active and
      (dsData.DataSet.CanModify) and
      Assigned(Fields[0]) and
      Fields[0].CanModify
    );

  edtTime.ReadOnly:= ro;
  edtTime.Color:= DateReadOnlyColors[ro];
end;

procedure TfrTimeFieldEditFrame.cdsTimeTHE_TIMEChange(Sender: TField);
begin
  if not FInDataChange then
    try
      FInDataChange:= True;
      ForceUpdateRecord;
    finally
      FInDataChange:= False;
    end;  { try }
end;

constructor TfrTimeFieldEditFrame.Create(AOwner: TComponent);
begin
  inherited;
  Width:= edtTime.Width;
end;

procedure TfrTimeFieldEditFrame.edtTimeChange(Sender: TObject);
begin
  inherited;
  Modified;
end;

end.
