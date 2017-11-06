inherited TreeSelectForm: TTreeSelectForm
  Caption = 'TreeSelectForm'
  PixelsPerInch = 96
  TextHeight = 13
  inherited clbMain: TCoolBar
    Bands = <
      item
        Control = cbParents
        ImageIndex = -1
        MinHeight = 22
        MinWidth = 150
        Text = 'Location'
        Width = 208
      end
      item
        Break = False
        Control = tlbButtons
        ImageIndex = -1
        MinHeight = 22
        MinWidth = 152
        Width = 204
      end
      item
        Break = False
        Control = pnlNavChildren
        ImageIndex = -1
        MinHeight = 22
        MinWidth = 88
        Width = 188
      end>
    inherited pnlNavChildren: TPanel
      Left = 425
      Width = 179
      inherited navChildren: TDBColorNavigator
        Hints.Strings = ()
      end
    end
    inherited tlbButtons: TToolBar
      Left = 219
      Width = 191
      inherited sepTwo: TToolButton
        Left = 0
        Wrap = True
      end
      inherited btnExcelExport: TToolButton
        Left = 0
        Top = 30
      end
      inherited btnPrintSubTree: TToolButton
        Left = 23
        Top = 30
      end
      inherited sepThree: TToolButton
        Left = 46
        Top = 30
      end
      inherited btnCopy: TToolButton
        Left = 54
        Top = 30
        DropdownMenu = pmCopy
        Style = tbsDropDown
      end
    end
    inherited cbParents: TTreeParentsComboBox
      Left = 49
      Width = 155
    end
  end
  inherited pnlDetails: TPanel
    TabOrder = 1
    inherited grdChildren: TAbmesDBGrid
      Columns = <
        item
          EditButtons = <>
          FieldName = 'NODE_NAME'
          Footers = <>
          Width = 230
        end
        item
          EditButtons = <>
          FieldName = 'NODE_NO'
          Footers = <>
        end>
    end
    inherited pnlHeader: TPanel
      inherited hcChildren: THeaderControl
        Width = 321
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
      Caption = 'TreeSelectForm'
    end
    inherited actCopyToClipboard: TAction
      Hint = #1050#1086#1087#1080#1088#1072#1085#1077' '#1085#1086#1084#1077#1088#1072' '#1074' '#1073#1091#1092#1077#1088#1072
    end
  end
  inherited cdsNodeChildren: TAbmesClientDataSet
    Left = 264
    object cdsNodeChildrenNODE_NO: TAbmesFloatField [4]
      DisplayLabel = #1053#1086#1084#1077#1088
      FieldName = 'NODE_NO'
    end
  end
  inherited dsNodeChildren: TDataSource
    Left = 296
  end
  inherited cdsTreeNode: TAbmesClientDataSet
    Params = <
      item
        DataType = ftFloat
        Name = 'NODE_ID'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftFloat
        Name = 'NODE_ID'
        ParamType = ptInput
        Value = 0
      end>
  end
end
