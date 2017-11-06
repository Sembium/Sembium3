unit fSpecUnapprove;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fSpecAndXModelUnapproveAbstract, DB, AbmesFields, DBClient,
  AbmesClientDataSet, JvButtons, ActnList, StdCtrls, Buttons, ExtCtrls,
  JvDBLookup, Mask, DBCtrls, JvComponent, JvCaptionButton;

type
  TfmSpecUnapprove = class(TfmSpecAndXModelUnapproveAbstract)
    procedure cdsUnapproveMethodsAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

resourcestring
  SLineStagesAndOperationsDocs = 'МИИО на Етапите и Операциите по Реда на текущия Вариант на МОДЕЛ-а';
  SMainDeptModelLineStagesAndOperationsDocs = 'МИИО на Етапите и Операциите по Реда на всички партиди';
  SAllModelVariantsLineStagesAndOperationsDocs = 'МИИО на Етапите и Операциите по Реда на всички Варианти на МОДЕЛ-а';

procedure TfmSpecUnapprove.cdsUnapproveMethodsAfterOpen(DataSet: TDataSet);
begin
  inherited;

  AddUnapproveMethod(umLineStagesAndOperationsDocs, SLineStagesAndOperationsDocs);
  AddUnapproveMethod(umMainDeptModelLineStagesAndOperationsDocs, SMainDeptModelLineStagesAndOperationsDocs);
  AddUnapproveMethod(umAllModelVariantsLineStagesAndOperationsDocs, SAllModelVariantsLineStagesAndOperationsDocs);
end;

end.
