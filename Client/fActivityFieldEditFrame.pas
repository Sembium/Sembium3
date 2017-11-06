unit fActivityFieldEditFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEnumFieldEditFrame, DB, AbmesFields, DBClient, AbmesClientDataSet,
  ActnList, JvExControls, JvDBLookup, StdCtrls, Mask, DBCtrls;

type
  TfrActivityFieldEditFrame = class(TEnumFieldEditFrame)
    cdsEnumItemsACTIVITY_CODE: TAbmesFloatField;
    cdsEnumItemsACTIVITY_NO: TAbmesFloatField;
    cdsEnumItemsACTIVITY_NAME: TAbmesWideStringField;
  private
    { Private declarations }
  protected
    class function EnumItemCodeFieldName: string; override;
    class function EnumItemNameFieldName: string; override;
    class function EnumItemNoFieldName: string; override;
    function GetEnumItemCaption: string; override;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

resourcestring
  SActivityCaption = 'Информационна Отговорност';

{ TfrActivityFieldEditFrame }

class function TfrActivityFieldEditFrame.EnumItemCodeFieldName: string;
begin
  Result:= 'ACTIVITY_CODE';
end;

class function TfrActivityFieldEditFrame.EnumItemNoFieldName: string;
begin
  Result:= 'ACTIVITY_NO';
end;

class function TfrActivityFieldEditFrame.EnumItemNameFieldName: string;
begin
  Result:= 'ACTIVITY_NAME';
end;

function TfrActivityFieldEditFrame.GetEnumItemCaption: string;
begin
  Result:= SActivityCaption;
end;

end.
