inherited TreeNomWithParamsAndPrefixAndSuffixForm: TTreeNomWithParamsAndPrefixAndSuffixForm
  Caption = 'TreeNomWithParamsAndPrefixAndSuffixEditForm'
  PixelsPerInch = 96
  TextHeight = 13
  inherited clbMain: TCoolBar
    Bands = <
      item
        Control = cbParents
        ImageIndex = -1
        MinHeight = 22
        MinWidth = 150
        Width = 161
      end
      item
        Break = False
        Control = tlbButtons
        ImageIndex = -1
        MinHeight = 22
        MinWidth = 77
        Width = 147
      end
      item
        Break = False
        Control = pnlNavChildren
        ImageIndex = -1
        MinHeight = 22
        MinWidth = 180
        Width = 258
      end>
    inherited pnlNavChildren: TPanel
      Left = 321
      Width = 245
      inherited navChildren: TDBColorNavigator
        Hints.Strings = ()
      end
      inherited tlbEditChildren: TToolBar
        Width = 157
        Images = dmMain.ilActions
      end
    end
    inherited tlbButtons: TToolBar
      Left = 172
      Width = 135
    end
    inherited cbParents: TTreeParentsComboBox
      Width = 157
    end
  end
  inherited pnlDetails: TPanel
    inherited frTreeNodeParams: TfrTreeNodeParams
      inherited grdParams: TAbmesDBGrid
        Columns = <
          item
            EditButtons = <>
            FieldName = 'NODE_PARAM_ORDER_NO'
            Footers = <>
            Title.Alignment = taRightJustify
            Title.Caption = #1053#1072#1088#1077#1076#1073#1072
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'NODE_PARAM_NAME'
            Footers = <>
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 93
          end
          item
            EditButtons = <>
            FieldName = 'PARAM_VALUE'
            Footers = <>
            Title.Caption = #1057#1090#1086#1081#1085#1086#1089#1090
            Width = 120
          end>
      end
    end
  end
  inherited pnlFind: TPanel
    inherited pnlQuickFind: TPanel
      inherited pnlQuickFindClient: TPanel
        inherited pnlFindNavigator: TPanel
          inherited navFind: TDBColorNavigator
            Hints.Strings = ()
          end
        end
      end
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = 'TreeNomWithParamsAndPrefixAndSuffixEditForm'
    end
  end
  inherited cdsNodeChildren: TAbmesClientDataSet
    object cdsNodeChildrenNAME_PREFIX: TAbmesWideStringField [6]
      FieldName = 'NAME_PREFIX'
      OnSetText = cdsNodeChildrenNAME_PREFIXSetText
      Size = 50
    end
    object cdsNodeChildrenNAME_SUFFIX: TAbmesWideStringField [7]
      FieldName = 'NAME_SUFFIX'
      Size = 50
    end
  end
end
