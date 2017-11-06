inherited fmModelsInvestedValuesIVFilter: TfmModelsInvestedValuesIVFilter
  ActiveControl = nil
  ExplicitWidth = 727
  ExplicitHeight = 382
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlData: TPanel
    inherited rgAggregated: TDBRadioGroup [0]
      DataSource = nil
      Visible = False
      ExplicitHeight = 62
    end
    inherited gbCurrency: TGroupBox [1]
      ExplicitHeight = 62
    end
    inherited rgInvestedValueType: TDBRadioGroup [2]
    end
    inherited gbQuantity: TGroupBox [3]
      Left = 8
      Width = 377
      ExplicitLeft = 8
      ExplicitWidth = 377
      ExplicitHeight = 62
      inherited lblQuantity: TLabel
        Visible = False
      end
      inherited txtTechMeasureAbbrev: TDBText
        DataSource = nil
        Visible = False
      end
      inherited edtQuantity: TDBEdit
        DataSource = nil
        Visible = False
      end
      inherited rgInvestedValueSingle: TJvDBRadioPanel
        Top = 15
        Width = 373
        Height = 38
        Align = alTop
        Items.Strings = (
          #1047#1072' '#1094#1103#1083#1086#1090#1086' '#1082'-'#1074#1086' '#1087#1086' '#1054#1055
          #1047#1072' '#1077#1076#1080#1085#1080#1094#1072' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090)
        Values.Strings = (
          #1055
          '1')
        ExplicitTop = 15
        ExplicitWidth = 373
        ExplicitHeight = 38
      end
    end
  end
  inherited pnlBottomButtons: TPanel
    ExplicitTop = 322
  end
end
