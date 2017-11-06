inherited fmDeptDetailFlowToolNeeds: TfmDeptDetailFlowToolNeeds
  Caption = #1054#1087#1077#1088#1072#1094#1080#1086#1085#1085#1080' '#1050#1086#1084#1087#1083#1077#1082#1090#1086#1074#1072#1097#1080' '#1056#1077#1089#1091#1088#1089#1080' - %StructPartsInTool%'
  ClientHeight = 362
  ClientWidth = 667
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 327
    Width = 667
    inherited pnlOKCancel: TPanel
      Left = 399
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 310
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 578
      Visible = False
    end
    object btnResultToolNeeds: TBitBtn
      Left = 8
      Top = 2
      Width = 145
      Height = 25
      Action = actResultToolNeeds
      Caption = #1042#1082#1083#1102#1095#1074#1072#1085#1077' '#1074' %ToolType%...'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 3
    end
  end
  inherited pnlMain: TPanel
    Width = 667
    Height = 327
    inherited pnlGrid: TPanel
      Width = 651
      Height = 311
      inherited pnlNavigator: TPanel
        Width = 651
        inherited pnlFilterButton: TPanel
          Left = 96
        end
        inherited navData: TDBColorNavigator
          Width = 96
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Hints.Strings = ()
        end
        inherited tlbTopGridButtons: TToolBar
          Left = 120
          Width = 224
          ButtonHeight = 22
          object sepBeforeDoc: TToolButton
            Left = 56
            Top = 0
            Width = 8
            Caption = 'sepBeforeDoc'
            ImageIndex = 3
            Style = tbsSeparator
          end
          object lblDoc: TLabel
            Left = 64
            Top = 0
            Width = 99
            Height = 22
            Caption = ' %StructPartInTool% '
            Layout = tlCenter
          end
          object btnDoc: TSpeedButton
            Left = 163
            Top = 0
            Width = 37
            Height = 22
            Action = actDoc
            Flat = True
            ParentShowHint = False
            ShowHint = True
            Transparent = False
          end
          object btnSpecDocStatus: TToolButton
            Left = 200
            Top = 0
            Action = actSpecDocStatus
          end
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 651
        Height = 287
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'PRODUCT_NAME'
            Footers = <>
            Title.Caption = '%StructPartInTool%|id '#1083#1086#1075#1080#1095#1077#1089#1082#1080
            Width = 307
          end
          item
            EditButtons = <>
            FieldName = 'PRODUCT_NO'
            Footers = <>
            Title.Caption = '%StructPartInTool%|id '#1094#1080#1092#1088#1086#1074
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'OPERATION_COUNT'
            Footers = <>
            Title.Caption = #1041#1088#1086#1081' '#1086#1087#1077#1088#1072#1094#1080#1080
            Width = 53
          end
          item
            EditButtons = <>
            FieldName = 'DETAIL_COUNT'
            Footers = <>
            Title.Caption = #1041#1088#1086#1081' '#1050#1057#1063' '#1086#1090' '#1055#1086#1090#1086#1082#1072
            Width = 53
          end
          item
            EditButtons = <>
            FieldName = 'MODEL_COUNT'
            Footers = <>
            Title.Caption = #1041#1088#1086#1081' '#1052#1054#1044#1045#1083'-'#1080
            Width = 53
          end
          item
            EditButtons = <>
            FieldName = 'CAPACITY_BUSY_HOURS'
            Footers = <>
            Title.Caption = #1042#1088#1077#1084#1077#1074#1072' '#1053#1072#1090#1086#1074#1072#1088#1077#1085#1086#1089#1090' ('#1095'.)'
            Width = 77
          end>
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conNeeds
    FieldDefs = <
      item
        Name = 'PRODUCT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_NO'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'PRODUCT_HAS_DOC'
        DataType = ftFloat
      end
      item
        Name = 'CAPACITY_BUSY_HOURS'
        DataType = ftFloat
      end
      item
        Name = 'OPERATION_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'MODEL_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'DETAIL_COUNT'
        DataType = ftFloat
      end>
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DETAIL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DETAIL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DETAIL_GROUP_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DETAIL_GROUP_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TOOL_DETAIL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TOOL_DETAIL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TOOL_MATERIAL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TOOL_MATERIAL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS_3'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_COMMON_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_COMMON_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_PRP_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FLOW_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_DETAIL_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TOOL_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TOOL_STRUCT_PART_TYPE'
        ParamType = ptInput
      end>
    ProviderName = 'prvDeptDetailFlowToolNeeds'
    OnCalcFields = cdsGridDataCalcFields
    BeforeGetRecords = cdsGridDataBeforeGetRecords
    object cdsGridDataPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object cdsGridDataPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object cdsGridDataPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object cdsGridDataPRODUCT_HAS_DOC: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOC'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataCAPACITY_BUSY_HOURS: TAbmesFloatField
      FieldName = 'CAPACITY_BUSY_HOURS'
      DisplayFormat = ',0.#'
    end
    object cdsGridDataOPERATION_COUNT: TAbmesFloatField
      FieldName = 'OPERATION_COUNT'
      DisplayFormat = ',0'
    end
    object cdsGridDataMODEL_COUNT: TAbmesFloatField
      FieldName = 'MODEL_COUNT'
      DisplayFormat = ',0'
    end
    object cdsGridDataDETAIL_COUNT: TAbmesFloatField
      FieldName = 'DETAIL_COUNT'
      DisplayFormat = ',0'
    end
    object cdsGridDataTOOL_DETAIL_CODE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'TOOL_DETAIL_CODE'
      Calculated = True
    end
    object cdsGridDataTOOL_MATERIAL_CODE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'TOOL_MATERIAL_CODE'
      Calculated = True
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1054#1087#1077#1088#1072#1094#1080#1086#1085#1085#1080' '#1050#1086#1084#1087#1083#1077#1082#1090#1086#1074#1072#1097#1080' '#1056#1077#1089#1091#1088#1089#1080' - %StructPartsInTool%'
    end
    object actResultToolNeeds: TAction
      Caption = #1042#1082#1083#1102#1095#1074#1072#1085#1077' '#1074' %ToolType%...'
      OnExecute = actResultToolNeedsExecute
      OnUpdate = actResultToolNeedsUpdate
    end
    object actSpecDocStatus: TAction
      Caption = 'actSpecDocStatus'
      Hint = #1057#1090#1088#1091#1082#1090#1091#1088#1085#1080' '#1080' '#1052#1072#1088#1096#1088#1091#1090#1085#1080' '#1052#1048#1048#1054
      ImageIndex = 113
      OnExecute = actSpecDocStatusExecute
      OnUpdate = actSpecDocStatusUpdate
    end
  end
  object alDoc: TActionList
    Images = dmMain.ilDocs
    Left = 352
    object actDoc: TAction
      Hint = #1052#1048#1048#1054' '#1085#1072' %StructPartInTool%'
      OnExecute = actDocExecute
      OnUpdate = actDocUpdate
    end
  end
end
