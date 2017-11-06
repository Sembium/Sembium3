inherited fmXModelOperationsInvestedValues: TfmXModelOperationsInvestedValues
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMain: TPanel
    inherited pnlGrid: TPanel
      inherited pnlNavigator: TPanel
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
    end
    inherited pnlTop: TPanel
      inherited gbStage: TGroupBox
        inherited lblSMVSType: TLabel
          Visible = False
        end
        inherited gbDept: TGroupBox
          inherited edtStageNo: TDBEdit
            DataField = 'ML_MODEL_STAGE_NO'
          end
        end
        inherited cbSMVSType: TJvDBLookupCombo
          DataField = ''
          DataSource = nil
          Visible = False
        end
      end
      inherited gbPrices: TGroupBox
        Width = 281
        ExplicitWidth = 281
        inherited txtSpecProductTechMeasureAbbrev: TDBText
          DataField = '_RESULT_PRODUCT_TECH_MEASURE_ABBREV'
        end
        inherited lblInvestedValueDate: TLabel
          Visible = False
        end
        inherited edtInvestedValuesDate: TJvEdit
          Visible = False
        end
      end
    end
  end
end
