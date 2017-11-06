inherited TreeNomWithParamsForm: TTreeNomWithParamsForm
  Caption = 'TreeNomWithParamsForm'
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  inherited sptMain: TSplitter
    Top = 26
    Height = 275
    ExplicitTop = 26
    ExplicitHeight = 275
  end
  inherited pnlTree: TPanel
    Top = 26
    Height = 275
    ExplicitTop = 26
    ExplicitHeight = 275
    inherited tvTree: TTreeView
      Height = 275
      ExplicitHeight = 275
    end
  end
  inherited clbMain: TCoolBar
    Height = 26
    Bands = <
      item
        Control = cbParents
        ImageIndex = -1
        MinHeight = 22
        MinWidth = 150
        Width = 165
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
        Width = 254
      end>
    ExplicitHeight = 26
    inherited pnlNavChildren: TPanel
      Left = 325
      Top = 0
      Width = 241
      ExplicitLeft = 325
      ExplicitTop = 0
      ExplicitWidth = 241
      inherited navChildren: TDBColorNavigator
        Hints.Strings = ()
      end
      inherited tlbEditChildren: TToolBar
        Width = 153
        ExplicitWidth = 153
      end
    end
    inherited tlbButtons: TToolBar
      Left = 176
      Width = 134
      ExplicitLeft = 176
      ExplicitWidth = 134
      inherited sepOne: TToolButton
        Left = 0
        Wrap = True
        ExplicitLeft = 0
      end
      inherited btnUpperLevel: TToolButton
        Left = 0
        Top = 30
        ExplicitLeft = 0
        ExplicitTop = 30
      end
      inherited btnFilterParams: TToolButton
        Left = 23
        Top = 30
        ExplicitLeft = 23
        ExplicitTop = 30
      end
      inherited btnOpen: TToolButton
        Left = 46
        Top = 30
        ExplicitLeft = 46
        ExplicitTop = 30
      end
      inherited sepTwo: TToolButton
        Left = 69
        Top = 30
        ExplicitLeft = 69
        ExplicitTop = 30
      end
      inherited btnPrintSubTree: TToolButton
        Left = 77
        Top = 30
        ExplicitLeft = 77
        ExplicitTop = 30
      end
      inherited sepThree: TToolButton
        Left = 100
        Top = 30
        ExplicitLeft = 100
        ExplicitTop = 30
      end
      inherited btnCopy: TToolButton
        Left = 108
        Top = 30
        ExplicitLeft = 108
        ExplicitTop = 30
      end
    end
    inherited cbParents: TTreeParentsComboBox
      Width = 161
      ExplicitWidth = 161
    end
  end
  inherited pnlDetails: TPanel
    Top = 26
    Height = 275
    ExplicitTop = 26
    ExplicitHeight = 275
    inherited sptParams: TSplitter
      Top = 157
      ExplicitTop = 157
    end
    inherited grdChildren: TAbmesDBGrid
      Height = 140
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
          Title.Alignment = taRightJustify
        end>
    end
    inherited frTreeNodeParams: TfrTreeNodeParams
      Top = 159
      ExplicitTop = 159
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = 'TreeNomWithParamsForm'
    end
    inherited actFilterParams: TAction
      Visible = True
    end
  end
  inherited cdsNodeChildren: TAbmesClientDataSet
    FetchOnDemand = False
    BeforeApplyUpdates = cdsNodeChildrenBeforeApplyUpdates
    object cdsNodeChildrenCHANGE_DATE_TIME: TAbmesSQLTimeStampField [6]
      FieldName = 'CHANGE_DATE_TIME'
      ProviderFlags = []
    end
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
  inherited cdsPrintTree: TAbmesClientDataSet
    object cdsPrintTreeNODE_PARAM_NAMES: TAbmesWideStringField [10]
      FieldName = 'NODE_PARAM_NAMES'
      Visible = False
      Size = 4000
    end
    object cdsPrintTreeNODE_PARAM_VALUES: TAbmesWideStringField [11]
      FieldName = 'NODE_PARAM_VALUES'
      Visible = False
      Size = 4000
    end
  end
  object cdsTreeNodeParams: TAbmesClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftFloat
        Name = 'NODE_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvFilterNodeParams'
    Left = 8
    Top = 152
    object cdsTreeNodeParamsNODE_PARAM_CODE: TAbmesFloatField
      FieldName = 'NODE_PARAM_CODE'
    end
  end
end
