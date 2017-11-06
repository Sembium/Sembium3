unit fProductSetFieldEditFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEnumFieldEditFrame, DB, AbmesFields, DBClient, AbmesClientDataSet, ActnList,
  JvExControls, JvDBLookup, StdCtrls, Mask, DBCtrls;

type
  TfrProductSetFieldEditFrame = class(TEnumFieldEditFrame)
    cdsEnumItemsPRODUCT_SET_CODE: TAbmesFloatField;
    cdsEnumItemsPRODUCT_SET_NO: TAbmesFloatField;
    cdsEnumItemsPRODUCT_SET_NAME: TAbmesWideStringField;
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
  SProductSetCaption = 'Обектов набор';

{ TfrProductSetFieldEditFrame }

class function TfrProductSetFieldEditFrame.EnumItemCodeFieldName: string;
begin
  Result:= 'PRODUCT_SET_CODE';
end;

class function TfrProductSetFieldEditFrame.EnumItemNoFieldName: string;
begin
  Result:= 'PRODUCT_SET_NO';
end;

class function TfrProductSetFieldEditFrame.EnumItemNameFieldName: string;
begin
  Result:= 'PRODUCT_SET_NAME';
end;

function TfrProductSetFieldEditFrame.GetEnumItemCaption: string;
begin
  Result:= SProductSetCaption;
end;

end.
