unit fPrcDataFilterFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFieldEditFrame, DB, ActnList, fBaseFrame, fDBFrame, fTreeNodeFieldEditFrame, fTreeOnlyNodeFieldEditFrame,
  fProcessFunctionFieldEditFrame, fProcessFunctionFieldEditFrameBald, fProcessBaseOperationFieldEditFrame,
  fProcessBaseOperationFieldEditFrameBald, fProcessKnowlFieldEditFrame, fProcessKnowlFieldEditFrameBald, StdCtrls,
  fProcessConcreteOperationFieldEditFrame, fProcessConcreteOperationFieldEditFrameBald, fEnumFieldEditFrame,
  fProcessActionFieldEditFrame, fProcessActionFieldEditFrameBald, ExtCtrls, Buttons, AbmesFields,
  DBClient, AbmesClientDataSet;

type
  TfrPrcDataFilterFrame = class(TDBFrame)
    lblProcessBaseAction: TLabel;
    lblProcessConcreteAction: TLabel;
    lblProcessConcreteOperation: TLabel;
    lblProcessBaseOperation: TLabel;
    lblProcessKnowl: TLabel;
    lblProcessFunc: TLabel;
    imgMain: TImage;
    actChoosePrcData: TAction;
    btnChoosePrcData: TBitBtn;
    cdsChosenPrcData: TAbmesClientDataSet;
    cdsChosenPrcDataPRC_FUNC_CODE: TAbmesFloatField;
    cdsChosenPrcDataPRC_KNOWL_CODE: TAbmesFloatField;
    cdsChosenPrcDataPRC_BASE_OP_CODE: TAbmesFloatField;
    cdsChosenPrcDataPRC_BASE_ACTION_CODE: TAbmesFloatField;
    frProcessBaseAction: TfrProcessActionFieldEditFrameBald;
    frProcessConcreteAction: TfrProcessActionFieldEditFrameBald;
    frProcessFunction: TfrProcessFunctionFieldEditFrameBald;
    frProcessKnowl: TfrProcessKnowlFieldEditFrameBald;
    frProcessBaseOperation: TfrProcessBaseOperationFieldEditFrameBald;
    frProcessConcreteOperation: TfrProcessConcreteOperationFieldEditFrameBald;
    procedure actChoosePrcDataExecute(Sender: TObject);
  private
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
  end;

implementation

uses
  fOrganisationPrcData, uUtils, uClientTypes, uPrcUtils, dMain;

{$R *.dfm}

{ TfrPrcDataFilterFrame }

procedure TfrPrcDataFilterFrame.actChoosePrcDataExecute(Sender: TObject);
begin
  inherited;
  cdsChosenPrcData.TempCreateDataSet/
    procedure
    var
      f: TField;
    begin
      if TfmOrganisationPrcData.ShowForm(nil, cdsChosenPrcData, emInsert) then
        for f in cdsChosenPrcData.Fields do
          if Assigned(dsData.DataSet.FindField(f.FieldName)) then
            dsData.DataSet.FieldByName(f.FieldName).Assign(f);
    end;
end;

constructor TfrPrcDataFilterFrame.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);

  frProcessBaseAction.FieldNames:= 'PRC_BASE_ACTION_CODE';
  frProcessBaseAction.ShowAllWhenEmpty:= True;
  frProcessBaseAction.ProcessActionType:= patBase;

  frProcessConcreteAction.FieldNames:= 'PRC_CONCRETE_ACTION_CODE';
  frProcessConcreteAction.ShowAllWhenEmpty:= True;
  frProcessConcreteAction.ProcessActionType:= patConcrete;

  frProcessFunction.DocButtonVisible:= False;
  frProcessFunction.ShowAllWhenEmpty:= True;

  frProcessKnowl.DocButtonVisible:= False;
  frProcessKnowl.ShowAllWhenEmpty:= True;

  frProcessBaseOperation.DocButtonVisible:= False;
  frProcessBaseOperation.ShowAllWhenEmpty:= True;

  frProcessConcreteOperation.DocButtonVisible:= False;
  frProcessConcreteOperation.ShowAllWhenEmpty:= True;

  imgMain.Picture.Assign(dmMain.ilPrcDataFilter.Picture);
end;

end.
