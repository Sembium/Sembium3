unit fXModelUnapprove;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fSpecAndXModelUnapproveAbstract, DB, AbmesFields, DBClient,
  AbmesClientDataSet, JvButtons, ActnList, Mask, DBCtrls, JvDBLookup,
  StdCtrls, Buttons, ExtCtrls, JvComponent, JvCaptionButton;

type
  TfmXModelUnapprove = class(TfmSpecAndXModelUnapproveAbstract)
    procedure cdsUnapproveMethodsAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

resourcestring
  SLineStagesAndOperationsDocs = 'МИИО на Етапите и Операциите по Реда на МОДЕЛ-а';

procedure TfmXModelUnapprove.cdsUnapproveMethodsAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  AddUnapproveMethod(umLineStagesAndOperationsDocs, SLineStagesAndOperationsDocs);
end;

end.
