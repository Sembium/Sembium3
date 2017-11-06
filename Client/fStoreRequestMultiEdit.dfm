inherited fmStoreRequestMultiEdit: TfmStoreRequestMultiEdit
  Left = 242
  Top = 171
  Caption = #1055#1083#1072#1085#1086#1074#1080' %s '#1085#1072' %ProductClassAbbrev% '#1079#1072' '#1079#1072#1103#1074#1103#1074#1072#1085#1077
  ClientHeight = 369
  ClientWidth = 993
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 334
    Width = 993
    inherited pnlOKCancel: TPanel
      Left = 725
      TabOrder = 5
    end
    inherited pnlClose: TPanel
      Left = 636
      TabOrder = 4
    end
    inherited pnlApply: TPanel
      Left = 904
      TabOrder = 6
      Visible = False
    end
    object btnDeleteData: TBitBtn
      Left = 120
      Top = 2
      Width = 105
      Height = 25
      Action = actDelRecord
      Caption = #1048#1079#1090#1088#1080#1074#1072#1085#1077'...'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF000000
        FF000000FF000000FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        FF000000FF000000FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
        FF00FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
        0000FF000000FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
        0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
        0000FF000000FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      Spacing = -1
      TabOrder = 1
    end
    object btnEditData: TBitBtn
      Left = 8
      Top = 2
      Width = 105
      Height = 25
      Action = actEditRecord
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077'...'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
        0000FF00FF000000000000000000000000000000000000000000FFFFFF00FFFF
        FF0000000000FFFFFF000000000000000000FFFFFF0000000000FFFF00000000
        00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF00000000
        000000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFF00000000
        0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
        0000FFFFFF000000000000000000FFFFFF00FFFFFF0000000000FFFF00000000
        000000FFFF00FFFFFF0000FFFF00FFFFFF000000000000000000000000000000
        00000000000000FFFF0000000000FFFFFF00FFFFFF0000000000FFFF00000000
        0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
        FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFF00000000
        000000FFFF00FFFFFF0000000000000000000000000000000000000000000000
        000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
        00000000000000FFFF00FFFFFF0000FFFF00000000000000000000FFFF000000
        0000FFFFFF00FFFFFF000000000000000000FFFFFF0000000000FF00FF00FF00
        FF00FF00FF000000000000000000000000000000000000FFFF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000000000000FFFF0000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF000000000000FFFF0000000000FFFFFF00FFFFFF000000
        000000000000FFFFFF0000000000FFFFFF00FFFFFF0000000000FF00FF00FF00
        FF00FF00FF000000000000FFFF000000000000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00
        FF00000000000000FF0000000000FF00FF0000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FF00FF00FF00FF000000000000000000000000000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00}
      Spacing = -1
      TabOrder = 0
    end
    object btnOtherStoreRequests: TBitBtn
      Left = 258
      Top = 2
      Width = 127
      Height = 25
      Action = actOtherStoreRequests
      Caption = #1044#1088#1091#1075#1080' '#1079#1072#1103#1074#1082#1080'...'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000000000000000000000000000000000000000000000000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00000000000000FF000000FF000000FF000000FF000000FF000000FF000000
        FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        00000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
        FF00000000000000840000000000FF00FF00FF00FF00FF00FF00000000000000
        0000000084000000840000008400000084000000840000008400000084000000
        840000000000000084000000840000000000FF00FF00FF00FF00000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000084000000840000000000FF00FF00FF00FF000000
        00007B7B7B0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF0000000000FFFFFF0000000000000084000000840000000000FF00FF00FF00
        FF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF0000000000FFFFFF00FFFFFF00000000000000840000000000FF00FF00FF00
        FF00FF00FF0000000000FFFFFF00FFFFFF007B7B7B0000000000000000000000
        000000000000BDBDBD00BDBDBD00FFFFFF000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00000000000000000000000000BDBDBD00BDBDBD00BDBD
        BD00BDBDBD00BDBDBD00BDBDBD00FFFFFF000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00000000000000000000000000000000000000
        0000000000000000000000000000FFFFFF0000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF0000000000000000000000
        0000FFFFFF00FFFFFF00000000000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF007B7B7B000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      ParentShowHint = False
      ShowHint = True
      Spacing = -1
      TabOrder = 2
    end
    object btnPlannedStoreDeal: TBitBtn
      Left = 392
      Top = 2
      Width = 105
      Height = 25
      Action = actPlannedStoreDeal
      Caption = #1055#1088#1077#1075#1083#1077#1076'...'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
        0000FF00FF000000000000000000000000000000000000000000FFFFFF00FFFF
        FF0000000000FFFFFF000000000000000000FFFFFF0000000000FFFF00000000
        00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF00000000
        000000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFF00000000
        0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
        0000FFFFFF000000000000000000FFFFFF00FFFFFF0000000000FFFF00000000
        000000FFFF00FFFFFF0000FFFF00FFFFFF000000000000000000000000000000
        00000000000000FFFF0000000000FFFFFF00FFFFFF0000000000FFFF00000000
        0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
        FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFF00000000
        000000FFFF00FFFFFF0000000000000000000000000000000000000000000000
        000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
        00000000000000FFFF00FFFFFF0000FFFF00000000000000000000FFFF000000
        0000FFFFFF00FFFFFF000000000000000000FFFFFF0000000000FF00FF00FF00
        FF00FF00FF000000000000000000000000000000000000FFFF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000000000000FFFF0000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF000000000000FFFF0000000000FFFFFF00FFFFFF000000
        000000000000FFFFFF0000000000FFFFFF00FFFFFF0000000000FF00FF00FF00
        FF00FF00FF000000000000FFFF000000000000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00
        FF00000000000000FF0000000000FF00FF0000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FF00FF00FF00FF000000000000000000000000000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00}
      TabOrder = 3
    end
  end
  inherited pnlMain: TPanel
    Width = 993
    Height = 334
    inherited pnlGrid: TPanel
      Width = 977
      Height = 318
      inherited pnlNavigator: TPanel
        Width = 977
        object btnSetAllRequestQuantity: TSpeedButton [0]
          Left = 872
          Top = 6
          Width = 56
          Height = 19
          Action = actSetAllRequestQuantity
          Flat = True
          Layout = blGlyphTop
        end
        inherited pnlFilterButton: TPanel
          Left = 144
          Width = 25
        end
        inherited navData: TDBColorNavigator
          Width = 144
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete, nbEdit]
          Hints.Strings = ()
        end
        inherited tlbTopGridButtons: TToolBar
          Left = 169
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 977
        Height = 294
        UseMultiTitle = True
        VTitleMargin = 6
        OnGetCellParams = grdDataGetCellParams
        Columns = <
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'IN_OUT'
            Footers = <>
            Title.Caption = #1042#1080#1076
            Title.Orientation = tohVertical
            Width = 15
          end
          item
            EditButtons = <>
            FieldName = 'BND_PROCESS_ABBREV'
            Footers = <>
            Title.Caption = #1055#1088#1086#1094#1077#1089#1085#1072' '#1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090'|'#1042#1080#1076
            Width = 72
          end
          item
            EditButtons = <>
            FieldName = 'PROCESS_OBJECT_IDENTIFIER'
            Footers = <>
            Title.Caption = #1055#1088#1086#1094#1077#1089#1085#1072' '#1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090'|ID'
            Width = 86
          end
          item
            EditButtons = <>
            FieldName = 'PRIORITY_FULL_NAME'
            Footers = <>
            Title.Caption = #1055#1088'.'
            Title.Orientation = tohVertical
            Width = 16
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'WORK_PRIORITY_NO'
            Footers = <>
            Title.Caption = #1054#1087'. '#1055#1088'.'
            Title.Hint = #1054#1087#1077#1088#1072#1090#1080#1074#1077#1085' '#1055#1088#1080#1086#1088#1080#1090#1077#1090
            Width = 25
          end
          item
            EditButtons = <>
            FieldName = 'PRODUCT_NAME'
            Footers = <>
            Title.Caption = '%ProductClassName%|id '#1083#1086#1075#1080#1095#1077#1089#1082#1080
            Width = 150
          end
          item
            EditButtons = <>
            FieldName = 'PRODUCT_NO'
            Footers = <>
            Title.Alignment = taRightJustify
            Title.Caption = '%ProductClassName%|id '#1094#1080#1092#1088#1086#1074
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'STORE_IDENTIFIER'
            Footers = <>
            Width = 60
          end
          item
            Color = 16115403
            EditButtons = <>
            FieldName = 'STORE_DEAL_BEGIN_DATE'
            Footers = <>
            Title.Caption = #1055#1083#1072#1085#1086#1074' '#1042#1088#1084#1048#1085#1090
            Width = 124
          end
          item
            EditButtons = <>
            FieldName = 'PLAN_QUANTITY'
            Footers = <>
            Title.Alignment = taRightJustify
            Title.Caption = #1055#1083'. '#1082'-'#1074#1086
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'COMPLETED_QUANTITY'
            Footers = <>
            Title.Alignment = taRightJustify
            Title.Caption = #1054#1090#1095'. '#1082'-'#1074#1086
            Width = 54
          end
          item
            EditButtons = <>
            FieldName = 'OTHER_REQUESTED_QUANTITY'
            Footers = <>
            Title.Alignment = taRightJustify
            Title.Caption = #1047'-'#1085#1086' '#1082'-'#1074#1086
            Width = 54
          end
          item
            EditButtons = <>
            FieldName = 'REMAINING_QUANTITY'
            Footers = <>
            Title.Alignment = taRightJustify
            Title.Caption = #1054#1089#1090'. '#1082'-'#1074#1086
            Width = 54
          end
          item
            Color = 15198955
            EditButtons = <>
            FieldName = 'REQUEST_QUANTITY'
            Footers = <>
            Title.Alignment = taRightJustify
            Title.Caption = #1050'-'#1074#1086
            Width = 54
          end
          item
            Color = 15198955
            EditButtons = <>
            FieldName = 'MEASURE_ABBREV'
            Footers = <>
            Width = 29
          end>
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conStoreRequests
    FieldDefs = <
      item
        Name = 'PLANNED_STORE_DEAL_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PLANNED_STORE_DEAL_CODE'
        DataType = ftFloat
      end
      item
        Name = 'BND_PROCESS_ABBREV'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'PROCESS_OBJECT_IDENTIFIER'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'PRIORITY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRIORITY_NO'
        DataType = ftFloat
      end
      item
        Name = 'PRIORITY_FULL_NAME'
        DataType = ftWideString
        Size = 94
      end
      item
        Name = 'WORK_PRIORITY_NO'
        DataType = ftFloat
      end
      item
        Name = 'BND_PROCESS_OBJECT_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'BND_PROCESS_OBJECT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'STORE_DEAL_BEGIN_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'STORE_DEAL_END_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'PRODUCT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'PRODUCT_NO'
        DataType = ftFloat
      end
      item
        Name = 'MEASURE_ABBREV'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'ACCOUNT_MEASURE_COEF'
        DataType = ftFloat
      end
      item
        Name = 'STORE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'STORE_IDENTIFIER'
        DataType = ftWideString
        Size = 46
      end
      item
        Name = 'PSD_DEPT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PLAN_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'COMPLETED_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'OTHER_REQUESTED_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'REMAINING_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'REQUEST_QUANTITY'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'idxDefault'
        Fields = 
          'PRIORITY_NO;WORK_PRIORITY_NO;BND_PROCESS_ABBREV;PROCESS_OBJECT_I' +
          'DENTIFIER'
      end>
    IndexName = 'idxDefault'
    Params = <
      item
        DataType = ftFloat
        Name = 'STORE_REQUEST_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_REQUEST_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_REQUEST_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_REQUEST_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IN_OUT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IN_OUT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STORE_DEAL_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STORE_DEAL_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STORE_DEAL_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STORE_DEAL_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_ACCOUNT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_ACCOUNT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'BND_PROCESS'
        ParamType = ptInput
      end>
    ProviderName = 'prvStoreRequestPlannedStoreDeals'
    object cdsGridDataPLANNED_STORE_DEAL_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PLANNED_STORE_DEAL_BRANCH_CODE'
      ReadOnly = True
    end
    object cdsGridDataPLANNED_STORE_DEAL_CODE: TAbmesFloatField
      FieldName = 'PLANNED_STORE_DEAL_CODE'
      ReadOnly = True
    end
    object cdsGridDataBND_PROCESS_ABBREV: TAbmesWideStringField
      FieldName = 'BND_PROCESS_ABBREV'
      Size = 100
    end
    object cdsGridDataPROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField
      DisplayLabel = #1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090
      FieldName = 'PROCESS_OBJECT_IDENTIFIER'
      ReadOnly = True
      Size = 50
    end
    object cdsGridDataPRIORITY_CODE: TAbmesFloatField
      FieldName = 'PRIORITY_CODE'
    end
    object cdsGridDataPRIORITY_NO: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'PRIORITY_NO'
    end
    object cdsGridDataPRIORITY_FULL_NAME: TAbmesWideStringField
      FieldName = 'PRIORITY_FULL_NAME'
      Size = 94
    end
    object cdsGridDataWORK_PRIORITY_NO: TAbmesFloatField
      FieldName = 'WORK_PRIORITY_NO'
    end
    object cdsGridDataBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_BRANCH_CODE'
    end
    object cdsGridDataBND_PROCESS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_CODE'
    end
    object cdsGridDataSTORE_DEAL_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'STORE_DEAL_BEGIN_DATE'
      OnGetText = cdsGridDataSTORE_DEAL_BEGIN_DATEGetText
    end
    object cdsGridDataSTORE_DEAL_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'STORE_DEAL_END_DATE'
    end
    object cdsGridDataPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      ReadOnly = True
    end
    object cdsGridDataPRODUCT_NAME: TAbmesWideStringField
      DisplayLabel = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object cdsGridDataPRODUCT_NO: TAbmesFloatField
      DisplayLabel = 'No'
      FieldName = 'PRODUCT_NO'
    end
    object cdsGridDataMEASURE_ABBREV: TAbmesWideStringField
      Alignment = taCenter
      DisplayLabel = #1052'.'#1077#1076'.'
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object cdsGridDataSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
      ReadOnly = True
    end
    object cdsGridDataSTORE_IDENTIFIER: TAbmesWideStringField
      DisplayLabel = #1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086
      FieldName = 'STORE_IDENTIFIER'
      ProviderFlags = []
      Size = 45
    end
    object cdsGridDataPLAN_QUANTITY: TAbmesFloatField
      DisplayLabel = #1055#1083#1072#1085#1080#1088#1072#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'PLAN_QUANTITY'
      ReadOnly = True
      DisplayFormat = ',0.######'
    end
    object cdsGridDataCOMPLETED_QUANTITY: TAbmesFloatField
      DisplayLabel = #1048#1079#1090#1077#1075#1083#1077#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'COMPLETED_QUANTITY'
      ReadOnly = True
      DisplayFormat = ',0.######'
    end
    object cdsGridDataREMAINING_QUANTITY: TAbmesFloatField
      DisplayLabel = #1054#1089#1090#1072#1074#1072#1097#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'REMAINING_QUANTITY'
      ReadOnly = True
      DisplayFormat = ',0.######'
    end
    object cdsGridDataOTHER_REQUESTED_QUANTITY: TAbmesFloatField
      DisplayLabel = #1047#1072#1103#1074#1077#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'OTHER_REQUESTED_QUANTITY'
      ReadOnly = True
      DisplayFormat = ',0.######'
    end
    object cdsGridDataREQUEST_QUANTITY: TAbmesFloatField
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'REQUEST_QUANTITY'
      DisplayFormat = ',0.######'
    end
    object cdsGridData_PRIORITY_COLOR: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_PRIORITY_COLOR'
      LookupDataSet = cdsPriorities
      LookupKeyFields = 'PRIORITY_CODE'
      LookupResultField = 'PRIORITY_COLOR'
      KeyFields = 'PRIORITY_CODE'
      Lookup = True
    end
    object cdsGridData_PRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_PRIORITY_BACKGROUND_COLOR'
      LookupDataSet = cdsPriorities
      LookupKeyFields = 'PRIORITY_CODE'
      LookupResultField = 'PRIORITY_BACKGROUND_COLOR'
      KeyFields = 'PRIORITY_CODE'
      Lookup = True
    end
    object cdsGridDataACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_COEF'
      ProviderFlags = []
    end
    object cdsGridDataPSD_DEPT_CODE: TAbmesFloatField
      FieldName = 'PSD_DEPT_CODE'
      ProviderFlags = []
    end
    object cdsGridDataIN_OUT: TAbmesFloatField
      FieldName = 'IN_OUT'
      OnGetText = cdsGridDataIN_OUTGetText
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1055#1083#1072#1085#1086#1074#1080' %s '#1085#1072' %ProductClassAbbrev% '#1079#1072' '#1079#1072#1103#1074#1103#1074#1072#1085#1077
    end
    inherited actFilter: TAction
      Visible = True
    end
    object actOtherStoreRequests: TAction
      Caption = #1044#1088#1091#1075#1080' '#1079#1072#1103#1074#1082#1080'...'
      Hint = #1044#1088#1091#1075#1080' '#1079#1072#1103#1074#1082#1080', '#1082#1086#1080#1090#1086' '#1089#1072' '#1079#1072#1103#1074#1080#1083#1080' '#1087#1086' '#1090#1086#1074#1072' '#1087#1083#1072#1085#1086#1074#1086' '#1076#1074#1080#1078#1077#1085#1080#1077
      ImageIndex = 35
      OnExecute = actOtherStoreRequestsExecute
      OnUpdate = actOtherStoreRequestsUpdate
    end
    object actPlannedStoreDeal: TAction
      Caption = #1055#1088#1077#1075#1083#1077#1076'...'
      Hint = #1055#1088#1077#1075#1083#1077#1076
      ImageIndex = 6
      OnExecute = actPlannedStoreDealExecute
      OnUpdate = actPlannedStoreDealUpdate
    end
    object actSetAllRequestQuantity: TAction
      ImageIndex = 44
      OnExecute = actSetAllRequestQuantityExecute
      OnUpdate = actSetAllRequestQuantityUpdate
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    AfterOpen = pdsGridDataParamsAfterOpen
    OnCalcFields = pdsGridDataParamsCalcFields
    object pdsGridDataParamsPRODUCT_CODE: TAbmesFloatField
      DisplayLabel = '%ProductClassName%'
      FieldName = 'PRODUCT_CODE'
      OnChange = pdsGridDataParamsPRODUCT_CODEChange
    end
    object pdsGridDataParamsPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object pdsGridDataParamsPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
      ProviderFlags = []
    end
    object pdsGridDataParamsSTORE_DEAL_BEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1055#1083#1072#1085#1086#1074' '#1042#1088#1084#1048#1085#1090' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'STORE_DEAL_BEGIN_DATE'
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object pdsGridDataParamsSTORE_DEAL_END_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1055#1083#1072#1085#1086#1074' '#1042#1088#1084#1048#1085#1090' - '#1050#1088#1072#1081
      FieldName = 'STORE_DEAL_END_DATE'
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object pdsGridDataParamsSTORE_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086
      FieldName = 'STORE_CODE'
    end
    object pdsGridDataParamsDEPT_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055
      FieldName = 'DEPT_CODE'
    end
    object pdsGridDataParamsBND_PROCESS: TAbmesWideStringField
      DisplayLabel = #1055#1088#1086#1094#1077#1089#1085#1072' '#1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090
      FieldName = 'BND_PROCESS'
      Size = 4000
    end
    object pdsGridDataParamsSTORE_REQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'STORE_REQUEST_BRANCH_CODE'
      ProviderFlags = []
    end
    object pdsGridDataParamsSTORE_REQUEST_CODE: TAbmesFloatField
      FieldName = 'STORE_REQUEST_CODE'
      ProviderFlags = []
    end
    object pdsGridDataParamsIN_OUT: TAbmesFloatField
      FieldName = 'IN_OUT'
      ProviderFlags = []
    end
    object pdsGridDataParamsPARTNER_CODE: TAbmesFloatField
      FieldName = 'PARTNER_CODE'
      ProviderFlags = []
    end
    object pdsGridDataParamsPARTNER_ACCOUNT_CODE: TAbmesFloatField
      FieldName = 'PARTNER_ACCOUNT_CODE'
      ProviderFlags = []
    end
    object pdsGridDataParams_PRODUCT_CLASS_CODE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_PRODUCT_CLASS_CODE'
      Calculated = True
    end
  end
  object cdsBranches: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompany
    Params = <>
    ProviderName = 'prvBranches'
    Left = 136
    Top = 144
    object cdsBranchesBRANCH_CODE: TAbmesFloatField
      FieldName = 'BRANCH_CODE'
    end
    object cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField
      FieldName = 'BRANCH_CODE_AND_NAME'
      Size = 255
    end
    object cdsBranchesBRANCH_NO: TAbmesFloatField
      FieldName = 'BRANCH_NO'
    end
  end
  object cdsPriorities: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvPriorities'
    Left = 168
    Top = 144
    object cdsPrioritiesPRIORITY_CODE: TAbmesFloatField
      FieldName = 'PRIORITY_CODE'
    end
    object cdsPrioritiesPRIORITY_NAME: TAbmesWideStringField
      FieldName = 'PRIORITY_NAME'
      Size = 50
    end
    object cdsPrioritiesPRIORITY_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_COLOR'
    end
    object cdsPrioritiesPRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_BACKGROUND_COLOR'
    end
  end
end
