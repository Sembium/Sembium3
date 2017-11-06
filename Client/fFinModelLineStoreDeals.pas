unit fFinModelLineStoreDeals;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBaseFrame, ActnList, StdCtrls, Buttons, DB, AbmesFields, DBClient, AbmesClientDataSet,
  System.Actions;

type
  TfrRealFinModelLineStoreDeals = class(TBaseFrame)
    btnStoreDeals: TBitBtn;
    actStoreDeals: TAction;
    cdsParams: TAbmesClientDataSet;
    cdsParamsBND_PROCESS_CODE: TAbmesFloatField;
    cdsParamsBND_PROCESS: TAbmesWideStringField;
    cdsParamsIS_STORNO: TAbmesFloatField;
    cdsParamsSTART_DATE: TAbmesSQLTimeStampField;
    cdsParamsEND_DATE: TAbmesSQLTimeStampField;
    cdsBinding: TAbmesClientDataSet;
    cdsBindingBND_PROCESS_CODE: TAbmesFloatField;
    cdsBindingFIN_ORDER_BRANCH_CODE: TAbmesFloatField;
    cdsBindingFIN_ORDER_NO: TAbmesFloatField;
    cdsBindingFIN_MODEL_LINE_TYPE_CODE: TAbmesFloatField;
    cdsBindingFIN_MODEL_LINE_NO: TAbmesFloatField;
    cdsRFMLStoreDealsParams: TAbmesClientDataSet;
    cdsRFMLStoreDealsParamsBND_PROCESS_CODE: TAbmesFloatField;
    cdsRFMLStoreDealsParamsIS_STORNO: TAbmesFloatField;
    cdsRFMLStoreDealsParamsSTART_DATE: TAbmesSQLTimeStampField;
    cdsRFMLStoreDealsParamsEND_DATE: TAbmesSQLTimeStampField;
    cdsRFMLStoreDealsParamsFIN_ORDER_BRANCH_CODE: TAbmesFloatField;
    cdsRFMLStoreDealsParamsFIN_ORDER_NO: TAbmesFloatField;
    cdsRFMLStoreDealsParamsFIN_MODEL_LINE_TYPE_CODE: TAbmesFloatField;
    cdsRFMLStoreDealsParamsFIN_MODEL_LINE_NO: TAbmesFloatField;
    procedure actStoreDealsExecute(Sender: TObject);
    procedure actStoreDealsUpdate(Sender: TObject);
  private
    FRFMLObjectBranchCodeField: TField;
    FRFMLObjectCodeField: TField;
  public
    property RFMLObjectBranchCodeField: TField read FRFMLObjectBranchCodeField write FRFMLObjectBranchCodeField;
    property RFMLObjectCodeField: TField read FRFMLObjectCodeField write FRFMLObjectCodeField;
  end;

implementation

uses
  uUserActivityConsts, uUtils, fStoreDeals, uClientTypes, uProducts;

{$R *.dfm}

procedure TfrRealFinModelLineStoreDeals.actStoreDealsExecute(Sender: TObject);
begin
  inherited;
  Assert(RFMLObjectBranchCodeField.DataSet = RFMLObjectCodeField.DataSet);

  LoginContext.CheckUserActivity(uaFinStoreDeals);

  cdsRFMLStoreDealsParams.Params.ParamByName('RFML_OBJECT_BRANCH_CODE').Assign(RFMLObjectBranchCodeField);
  cdsRFMLStoreDealsParams.Params.ParamByName('RFML_OBJECT_CODE').Assign(RFMLObjectCodeField);
  cdsRFMLStoreDealsParams.TempOpen/
    cdsParams.TempCreateDataSet/
      procedure begin
        cdsParams.SafeAppend/
          procedure begin
            cdsParams.AssignFields(cdsRFMLStoreDealsParams);
            cdsBinding.TempCreateDataSet/
              procedure begin
                cdsBinding.SafeAppend/
                  procedure begin
                    cdsBinding.AssignFields(cdsRFMLStoreDealsParams);
                  end;

                cdsParamsBND_PROCESS.AsString:= cdsBinding.XMLData;
              end;
          end;

        TfmStoreDeals.ShowForm(dmDocClient, cdsParams, emReadOnly, doNone, False, pcFinancial);
      end;
end;

procedure TfrRealFinModelLineStoreDeals.actStoreDealsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= Assigned(RFMLObjectCodeField) and not RFMLObjectCodeField.DataSet.IsEmpty;
end;

end.
