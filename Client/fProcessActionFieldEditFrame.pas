unit fProcessActionFieldEditFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEnumFieldEditFrame, DB, AbmesFields, DBClient, AbmesClientDataSet,
  ActnList, JvExControls, JvDBLookup, StdCtrls, Mask, DBCtrls, uPrcUtils;

type
  TfrProcessActionFieldEditFrame = class(TEnumFieldEditFrame)
    cdsEnumItemsPRC_ACTION_CODE: TAbmesFloatField;
    cdsEnumItemsPRC_ACTION_NO: TAbmesFloatField;
    cdsEnumItemsPRC_ACTION_NAME: TAbmesWideStringField;
    procedure cdsEnumItemsBeforeOpen(DataSet: TDataSet);
  private
    FProcessActionType: TProcessActionType;
  protected
    class function EnumItemCodeFieldName: string; override;
    class function EnumItemNameFieldName: string; override;
    class function EnumItemNoFieldName: string; override;
    function GetEnumItemCaption: string; override;
  public
    property ProcessActionType: TProcessActionType read FProcessActionType write FProcessActionType;
  end;

implementation

uses
  uUtils;

{$R *.dfm}

resourcestring
  SProcessActionCaption = 'Познавателна Функция';

{ TfrProcessActionFieldEditFrame }

procedure TfrProcessActionFieldEditFrame.cdsEnumItemsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsEnumItems.Params.ParamByName('PROCESS_ACTION_TYPE').AsVarInteger:= ProcessActionTypeToInt(ProcessActionType);
end;

class function TfrProcessActionFieldEditFrame.EnumItemCodeFieldName: string;
begin
  Result:= 'PRC_ACTION_CODE';
end;

class function TfrProcessActionFieldEditFrame.EnumItemNameFieldName: string;
begin
  Result:= 'PRC_ACTION_NAME';
end;

class function TfrProcessActionFieldEditFrame.EnumItemNoFieldName: string;
begin
  Result:= 'PRC_ACTION_NO';
end;

function TfrProcessActionFieldEditFrame.GetEnumItemCaption: string;
begin
  Result:= SProcessActionCaption;
end;

end.
