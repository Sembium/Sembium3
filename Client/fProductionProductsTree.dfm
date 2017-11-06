inherited fmProductionProductsTree: TfmProductionProductsTree
  Left = 296
  Top = 282
  Caption = #1059#1087#1088#1072#1074#1083#1103#1077#1084#1080' '#1054#1073#1077#1082#1090#1080' - '#1058#1080#1083#1086#1074#1086' '#1086#1073#1077#1079#1087#1077#1095#1072#1074#1072#1085#1080
  PixelsPerInch = 96
  TextHeight = 13
  inherited sptMain: TSplitter
    Top = 27
    Height = 432
  end
  inherited pnlTree: TPanel
    Top = 27
    Height = 432
    inherited tvTree: TTreeView
      Height = 432
    end
  end
  inherited clbMain: TCoolBar
    Height = 27
    Bands = <
      item
        Control = cbParents
        ImageIndex = -1
        MinHeight = 22
        MinWidth = 150
        Width = 418
      end
      item
        Break = False
        Control = tlbButtons
        ImageIndex = -1
        MinHeight = 23
        MinWidth = 260
        Width = 367
      end
      item
        Break = False
        Control = pnlNavChildren
        ImageIndex = -1
        MinHeight = 23
        MinWidth = 198
        Width = 211
      end>
    inherited pnlNavChildren: TPanel
      Left = 798
      Width = 202
      Height = 23
      inherited navChildren: TDBColorNavigator
        Height = 23
        Hints.Strings = ()
      end
      inherited tlbEditChildren: TToolBar
        Left = 111
        Height = 23
        ButtonHeight = 23
      end
      inherited tlbDocs: TToolBar
        Left = 180
        Height = 23
        ButtonHeight = 23
        TabOrder = 3
      end
      object tlbViewProductionProduct: TToolBar
        Left = 88
        Top = 0
        Width = 23
        Height = 23
        Align = alLeft
        AutoSize = True
        ButtonHeight = 23
        Caption = 'tlbViewProductionProduct'
        Images = dmMain.ilActions
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        object btnViewProductionProduct: TToolButton
          Left = 0
          Top = 0
          Action = actViewProductionProduct
        end
      end
    end
    inherited tlbButtons: TToolBar
      Left = 429
      Width = 354
      Height = 23
      AutoSize = True
      ButtonHeight = 23
      inherited sepOne: TToolButton
        Down = True
      end
      inherited btnFilterParams: TToolButton
        Action = nil
        Down = True
        Visible = False
      end
      inherited sepTwo: TToolButton
        Down = True
      end
      inherited btnPrintSubTree: TToolButton
        Left = 154
      end
      inherited btnExcelExport: TToolButton
        Left = 200
      end
      inherited sepThree: TToolButton
        Left = 223
        Down = True
      end
      inherited btnCopy: TToolButton
        Left = 231
      end
      object btnFilterParams2: TToolButton
        Left = 269
        Top = 0
        Action = actFilterParams
      end
      object btnShowNotProductionProducts: TToolButton
        Left = 292
        Top = 0
        Action = actShowNotProductionProducts
      end
    end
    inherited cbParents: TTreeParentsComboBox
      Left = 0
      Width = 414
    end
  end
  inherited pnlDetails: TPanel
    Top = 27
    Height = 432
    inherited sptParams: TSplitter
      Top = 310
    end
    inherited grdChildren: TAbmesDBGrid
      Height = 293
      PopupMenu = pmChildren
      Columns = <
        item
          EditButtons = <>
          FieldName = 'NODE_NAME'
          Footers = <>
          Title.Caption = 'id '#1083#1086#1075#1080#1095#1077#1089#1082#1080
          Width = 313
        end
        item
          Alignment = taLeftJustify
          EditButtons = <>
          FieldName = 'NODE_NO'
          Footers = <>
          Title.Caption = 'id '#1094#1080#1092#1088#1086#1074
          Width = 76
        end>
    end
    inherited frTreeNodeParams: TfrTreeNodeParams
      Top = 312
      inherited pnlCaption: TPanel
        inherited tlbDocs: TToolBar
          Left = 287
        end
        inherited pnlCaptionLeft: TPanel
          Width = 285
        end
        inherited tlbShowNotDefined: TToolBar
          Left = 520
        end
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
        inherited pnlFindResultStatus: TPanel
          Width = 286
        end
      end
    end
  end
  inherited alActions: TActionList
    Top = 290
    inherited actForm: TAction
      Caption = #1059#1087#1088#1072#1074#1083#1103#1077#1084#1080' '#1054#1073#1077#1082#1090#1080' - '#1058#1080#1083#1086#1074#1086' '#1086#1073#1077#1079#1087#1077#1095#1072#1074#1072#1085#1080
    end
    object actViewProductionProduct: TAction
      Caption = #1055#1088#1077#1075#1083#1077#1076'...'
      Hint = #1055#1088#1077#1075#1083#1077#1076
      ImageIndex = 6
      ShortCut = 32
      OnExecute = actViewProductionProductExecute
      OnUpdate = actViewProductionProductUpdate
    end
    object actShowNotProductionProducts: TAction
      Hint = #1053#1077#1090#1080#1083#1086#1074#1086' '#1086#1073#1077#1079#1087#1077#1095#1072#1074#1072#1085#1080
      ImageIndex = 50
      ShortCut = 16459
      OnExecute = actShowInactiveExecute
    end
  end
  inherited cdsTreeToNode: TAbmesClientDataSet
    ConnectionBroker = dmMain.conProductionProductsTree
  end
  inherited cdsTreeNodeChildren: TAbmesClientDataSet
    ConnectionBroker = dmMain.conProductionProductsTree
  end
  inherited cdsNodeChildren: TAbmesClientDataSet
    ConnectionBroker = dmMain.conProductionProductsTree
    Filter = ''
    Filtered = True
    OnFilterRecord = cdsNodeChildrenFilterRecord
    object cdsNodeChildrenIS_PRODUCTION_PRODUCT: TAbmesFloatField
      FieldName = 'IS_PRODUCTION_PRODUCT'
      FieldValueType = fvtBoolean
    end
  end
  inherited cdsTreeNode: TAbmesClientDataSet
    ConnectionBroker = dmMain.conProductionProductsTree
  end
  inherited cdsPrintTree: TAbmesClientDataSet
    ConnectionBroker = dmMain.conProductionProductsTree
    inherited cdsPrintTreeHAS_CHILDREN: TAbmesFloatField
      Visible = False
    end
    object cdsPrintTreeIS_PRODUCTION_PRODUCT: TAbmesFloatField [9]
      DisplayLabel = #1045' '#1090#1080#1083#1086#1074#1086' '#1086#1073#1077#1079#1087#1077#1095#1072#1074#1072#1085
      FieldName = 'IS_PRODUCTION_PRODUCT'
    end
    inherited cdsPrintTreeIS_INACTIVE: TAbmesFloatField
      Visible = False
    end
    inherited cdsPrintTree_IMAGE_INDEX: TAbmesFloatField
      Visible = False
    end
    inherited cdsPrintTreeIS_THOROUGHLY_ENGINEERED: TAbmesFloatField
      Visible = False
    end
    inherited cdsPrintTreeCOMMON_STATUS_CODE: TAbmesFloatField
      Visible = False
    end
  end
  inherited cdsFind: TAbmesClientDataSet
    ConnectionBroker = dmMain.conProductionProductsTree
  end
  object pmChildren: TPopupMenu
    Images = dmMain.ilActions
    Left = 539
    Top = 50
    object miOpenChild: TMenuItem
      Action = actOpen
      Default = True
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object miViewProductionProduct: TMenuItem
      Action = actViewProductionProduct
    end
  end
end
