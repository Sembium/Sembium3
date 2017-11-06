inherited BaseSaleForm: TBaseSaleForm
  Left = 240
  Top = 142
  Caption = 'BaseSaleForm'
  ClientHeight = 497
  ClientWidth = 769
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 454
    Width = 769
    Height = 43
    TabOrder = 2
    inherited pnlOKCancel: TPanel
      Left = 501
      Height = 43
      TabOrder = 4
      inherited btnOK: TBitBtn
        Top = 10
      end
      inherited btnCancel: TBitBtn
        Top = 10
      end
    end
    inherited pnlClose: TPanel
      Left = 412
      Height = 43
      TabOrder = 3
      inherited btnClose: TBitBtn
        Top = 10
      end
    end
    inherited pnlApply: TPanel
      Left = 680
      Height = 43
      TabOrder = 5
      Visible = False
      inherited btnApply: TBitBtn
        Top = 10
      end
    end
    object pnlConcludeSale: TPanel
      Left = 0
      Top = 0
      Width = 115
      Height = 43
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object btnConcludeSale: TBitBtn
        Left = 8
        Top = 10
        Width = 105
        Height = 25
        Action = actConcludeSale
        Caption = #1055#1088#1080#1082#1083#1102#1095#1074#1072#1085#1077
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
          000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBD
          BD00BDBDBD000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00000000007B7B7B007B7B7B00BDBDBD007B7B7B00000000007B7B
          7B00BDBDBD007B7B7B007B7B7B0000000000FF00FF00FF00FF00FF00FF00FF00
          FF0000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD007B7B7B00000000007B7B
          7B00BDBDBD00BDBDBD00BDBDBD00BDBDBD0000000000FF00FF00FF00FF00FF00
          FF00000000007B7B7B007B7B7B007B7B7B00BDBDBD00BDBDBD0000000000BDBD
          BD00BDBDBD007B7B7B007B7B7B007B7B7B0000000000FF00FF00FF00FF00FF00
          FF0000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD0000000000000000000000
          0000BDBDBD00BDBDBD00BDBDBD00BDBDBD0000000000FF00FF00FF00FF00FF00
          FF00000000007B7B7B007B7B7B007B7B7B007B7B7B0000000000000000000000
          00007B7B7B007B7B7B007B7B7B007B7B7B0000000000FF00FF00FF00FF00FF00
          FF0000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
          BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD0000000000FF00FF00FF00FF00FF00
          FF00FF00FF000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000BDBDBD0000000000FF00FF00FF00FF00FF00
          FF0000000000BDBDBD0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000BDBDBD0000000000FF00FF00FF00FF00FF00
          FF0000000000BDBDBD0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000BDBDBD0000000000FF00FF00FF00FF00FF00
          FF0000000000BDBDBD0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF007B7B7B007B7B7B00BDBDBD0000000000000000000000
          0000BDBDBD007B7B7B007B7B7B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0000000000BDBDBD00BDBDBD00BDBDBD00BDBD
          BD00BDBDBD0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
          000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        Spacing = -1
        TabOrder = 0
      end
    end
    object pnlAnnulSale: TPanel
      Left = 115
      Top = 0
      Width = 115
      Height = 43
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 1
      object btnAnnulSale: TBitBtn
        Left = 8
        Top = 10
        Width = 105
        Height = 25
        Action = actAnnulSale
        Caption = #1040#1085#1091#1083#1080#1088#1072#1085#1077'...'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF0000000000000000000000000000000000000000000000
          0000000000000000000000000000FFFF0000FFFF0000FFFF0000FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF000000000000000000FFFF
          FF0000FFFF00FFFFFF0000FFFF0000000000FFFF0000FFFF0000FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FFFFFF000000000000FFFF00FFFFFF0000FF
          FF000000000000FFFF00FFFFFF0000FFFF0000000000FFFF0000FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF0000000000000000000000
          000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF000000000000FF
          FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FF00FF00FF00
          FF00FF00FF00000000000000000000000000000000000000000000FFFF00FFFF
          FF0000000000FFFFFF0000FFFF00FFFFFF0000FFFF0000000000000000000000
          000000000000FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFFFF000000
          0000FFFFFF0000FFFF000000000000FFFF00FFFFFF0000000000FFFF00000000
          0000FFFFFF0000FFFF0000000000000000000000000000000000000000000000
          0000000000000000000000FFFF00FFFFFF000000000000000000FFFF00000000
          000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
          FF0000FFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFF00000000
          0000FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
          0000000000000000000000000000FFFFFF00FFFFFF0000000000FFFF00000000
          000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
          FF0000FFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFF00000000
          0000FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
          000000000000FFFFFF0000000000000000000000000000000000FFFF00000000
          000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
          0000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
          0000FF00FF00000000000000000000000000000000000000000000000000FFFF
          FF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000000000000000000000000000000000000000
          0000000000000000000000000000FF00FF00FF00FF00FF00FF00}
        Spacing = -1
        TabOrder = 0
      end
    end
    object pnlConcludeInfo: TPanel
      Left = 230
      Top = 0
      Width = 122
      Height = 43
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 2
      object lblFinishDate: TLabel
        Left = 8
        Top = 3
        Width = 111
        Height = 13
        Caption = #1044#1072#1090#1072' '#1085#1072' '#1087#1088#1080#1082#1083#1102#1095#1074#1072#1085#1077
      end
      inline frFinishDate: TfrDateFieldEditFrame
        Left = 8
        Top = 17
        Width = 105
        Height = 21
        Constraints.MaxHeight = 21
        Constraints.MaxWidth = 105
        Constraints.MinHeight = 21
        Constraints.MinWidth = 105
        TabOrder = 0
        TabStop = True
      end
    end
    object pnlPrintButton: TPanel
      Left = 322
      Top = 0
      Width = 90
      Height = 43
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 6
      Visible = False
      object btnPrint: TBitBtn
        Left = 0
        Top = 10
        Width = 81
        Height = 25
        Action = actPrint
        Caption = #1055#1077#1095#1072#1090
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000FF00FF0000000000C6C6
          C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
          C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000C6C6
          C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
          C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000FFFF
          FF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
          FF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C6000000000000000000C6C6
          C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6
          C600FFFFFF00C6C6C600FFFFFF000000FF00FFFFFF000000000000000000FFFF
          FF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
          FF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C60000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000000000FFFFFF0000000000000000000000000000000000FFFF
          FF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000000000FFFFFF000000000000000000FFFFFF00000000000000
          0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
          FF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000000000FFFFFF0000000000C6C6C600FFFFFF0000000000FFFF
          FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00000000000000000000000000000000000000000000000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        Spacing = -1
        TabOrder = 0
      end
    end
    object pnlPrintCheckBox: TPanel
      Left = 259
      Top = 0
      Width = 63
      Height = 43
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 7
      Visible = False
      object chbPrint: TCheckBox
        Left = 8
        Top = 14
        Width = 97
        Height = 17
        Caption = #1055#1077#1095#1072#1090
        TabOrder = 0
      end
    end
  end
  object pnlSaleCommonData: TPanel [1]
    Left = 8
    Top = 8
    Width = 753
    Height = 105
    TabOrder = 0
  end
  object pnlTimeLine: TPanel [2]
    Left = 8
    Top = 120
    Width = 753
    Height = 145
    BevelOuter = bvLowered
    Color = 14540253
    TabOrder = 1
    object saTimeLine: TAbmesArrow
      Left = 18
      Top = 15
      Width = 725
      Height = 43
      Points = <
        item
          X = 0
          Y = 21
          ArrowType = atNone
        end
        item
          X = 725
          Y = 21
          ArrowType = atForward
        end>
      Pen.Color = 8620357
      Pen.Width = 9
      HeadLength = 30
      HeadWidth = 20
    end
    object shpTimeStart: TShape
      Left = 13
      Top = 15
      Width = 6
      Height = 44
      Brush.Color = 8620357
      Pen.Style = psClear
    end
    object saToday: TAbmesArrow
      Left = 360
      Top = 6
      Width = 15
      Height = 26
      Hint = #1044#1085#1077#1089
      ShowHint = True
      ParentShowHint = False
      Points = <
        item
          X = 15
          Y = 1
          ArrowType = atNone
        end
        item
          X = 7
          Y = 1
          ArrowType = atNone
        end
        item
          X = 7
          Y = 26
          ArrowType = atForward
        end>
      Pen.Color = 11427583
      Pen.Width = 3
      HeadLength = 15
      HeadWidth = 10
    end
    object saProductionStartPlanDate: TAbmesArrow
      Left = 232
      Top = 41
      Width = 15
      Height = 57
      Hint = #1055#1083'. '#1076#1072#1090#1072' '#1079#1072' '#1085#1072#1095'. '#1085#1072' '#1087#1088#1086#1080#1079#1074'.'
      ShowHint = True
      ParentShowHint = False
      Points = <
        item
          X = 7
          Y = 0
          ArrowType = atBackward
        end
        item
          X = 7
          Y = 57
          ArrowType = atNone
        end>
      Pen.Color = 1276190
      Pen.Width = 3
      HeadLength = 15
      HeadWidth = 10
    end
    object saShipmentStorePlanEnterEndDate: TAbmesArrow
      Left = 448
      Top = 41
      Width = 15
      Height = 70
      Hint = #1055#1083'. '#1076#1072#1090#1072' '#1079#1072' '#1087#1086#1089#1090'. '#1074' '#1057#1055#1043#1055' '#1079#1072' '#1077#1082#1089#1087'.'
      ShowHint = True
      ParentShowHint = False
      Points = <
        item
          X = 7
          Y = 0
          ArrowType = atBackward
        end
        item
          X = 7
          Y = 70
          ArrowType = atNone
        end>
      Pen.Color = 8438150
      Pen.Width = 3
      HeadLength = 15
      HeadWidth = 10
    end
    object tShipmentStorePlanEnterEndDate: TDBText
      Left = 376
      Top = 111
      Width = 160
      Height = 13
      Hint = #1050#1088#1072#1081#1085#1072' '#1087#1083#1072#1085#1086#1074#1072' '#1076#1072#1090#1072' '#1079#1072' '#1087#1086#1089#1090#1098#1087#1074#1072#1085#1077' '#1074' '#1057#1055#1043#1055
      AutoSize = True
      Color = 14540253
      DataField = '_ENTER_SH_STORE_PLAN_END_DATE_SHOW'
      DataSource = dsData
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8438150
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object tProductionStartPlanDate: TDBText
      Left = 180
      Top = 98
      Width = 120
      Height = 13
      Hint = #1055#1083'. '#1076#1072#1090#1072' '#1079#1072' '#1085#1072#1095'. '#1085#1072' '#1087#1088#1086#1080#1079#1074'.'
      AutoSize = True
      Color = 14540253
      DataField = '_PRODUCTION_START_PLAN_DATE_SHOW'
      DataSource = dsData
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 1276190
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object shpProductionStartPlanDateLateness: TShape
      Left = 239
      Top = 38
      Width = 226
      Height = 4
      Hint = #1047#1072#1082#1098#1089#1085#1077#1085#1080#1077' '#1085#1072' '#1089#1090#1072#1088#1090' '#1085#1072' '#1054#1055#1042
      Brush.Color = 213
      ParentShowHint = False
      Pen.Style = psClear
      ShowHint = True
    end
    object shpShipmentStorePlanEnterEndDateLateness: TShape
      Left = 455
      Top = 35
      Width = 114
      Height = 4
      Hint = #1047#1072#1082#1098#1089#1085#1077#1085#1080#1077' '#1085#1072' '#1087#1086#1089#1090#1098#1087#1083#1077#1085#1080#1077' '#1074' '#1057#1043#1055
      Brush.Color = 7697919
      ParentShowHint = False
      Pen.Style = psClear
      ShowHint = True
    end
    object lToday: TDBText
      Left = 379
      Top = 1
      Width = 32
      Height = 13
      Hint = #1044#1085#1077#1089
      AutoSize = True
      Color = clBtnFace
      DataField = '_TODAY'
      DataSource = dsData
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11427583
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      Transparent = True
      ShowHint = True
    end
  end
  inherited alActions: TActionList
    Top = 32
    inherited actForm: TAction
      Caption = 'BaseSaleForm'
    end
    object actConcludeSale: TAction
      Caption = #1055#1088#1080#1082#1083#1102#1095#1074#1072#1085#1077
      ImageIndex = 17
      OnExecute = actConcludeSaleExecute
    end
    object actAnnulSale: TAction
      Caption = #1040#1085#1091#1083#1080#1088#1072#1085#1077'...'
      ImageIndex = 16
      OnExecute = actAnnulSaleExecute
    end
    object actModelStatus: TAction
      Caption = #1057#1083#1077#1076#1077#1085#1077'...'
      Hint = #1057#1083#1077#1076#1077#1085#1077' '#1085#1072' '#1056'-'#1052#1054#1044#1045#1083'-'#1072
      OnExecute = actModelStatusExecute
      OnUpdate = actModelStatusUpdate
    end
    object actModelCapacityStatus: TAction
      Caption = #1048#1054' '#1040#1085#1072#1083#1080#1079'...'
      Hint = #1048#1085#1078#1077#1085#1077#1088#1085#1086'-'#1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1086#1085#1077#1085' '#1040#1085#1072#1083#1080#1079' '#1085#1072' '#1056'-'#1052#1054#1044#1045#1083'-'#1072' '#1087#1086' ID '#1054#1055#1042
      OnExecute = actModelCapacityStatusExecute
      OnUpdate = actModelCapacityStatusUpdate
    end
    object actToggleQuantityDiffMeasure: TAction
      GroupIndex = 1
      Hint = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' / '#1055#1088#1086#1094#1077#1085#1090
      ImageIndex = 119
      OnExecute = actToggleQuantityDiffMeasureExecute
    end
    object actInvestedValueDiffMeasure: TAction
      GroupIndex = 2
      Hint = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' / '#1055#1088#1086#1094#1077#1085#1090
      ImageIndex = 119
      OnExecute = actInvestedValueDiffMeasureExecute
    end
    object actWastingSaleModelStatus: TAction
      Caption = #1057#1083#1077#1076#1077#1085#1077'...'
      ImageIndex = 18
      OnExecute = actWastingSaleModelStatusExecute
      OnUpdate = actWastingSaleModelStatusUpdate
    end
    object actWasteCompensatorProductionOrders: TAction
      Caption = #1057#1098#1087#1098#1090#1089#1090#1074#1072#1097#1080'...'
      ImageIndex = 11
      OnExecute = actWasteCompensatorProductionOrdersExecute
      OnUpdate = actWasteCompensatorProductionOrdersUpdate
    end
    object actShowWastingSale: TAction
      Hint = #1055#1086#1082#1072#1079#1074#1072' '#1054#1089#1085#1086#1074#1077#1085' '#1054#1055#1042
      ImageIndex = 101
      OnExecute = actShowWastingSaleExecute
      OnUpdate = actShowWastingSaleUpdate
    end
  end
  inherited dsData: TDataSource
    OnDataChange = dsDataDataChange
  end
  inherited cdsData: TAbmesClientDataSet
    AfterOpen = cdsDataAfterOpen
    BeforeClose = cdsDataBeforeClose
    BeforePost = cdsDataBeforePost
    OnCalcFields = cdsDataCalcFields
    object cdsDataSALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_BRANCH_CODE'
    end
    object cdsDataSALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_CODE'
    end
    object cdsDataSALE_GROUP_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_GROUP_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInWhere]
    end
    object cdsDataSALE_GROUP_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_GROUP_OBJECT_CODE'
      ProviderFlags = [pfInWhere]
    end
    object cdsDataSALE_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_ORDER_TYPE_CODE'
      ProviderFlags = [pfInWhere]
    end
    object cdsDataREQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'REQUEST_BRANCH_CODE'
      ProviderFlags = [pfInWhere]
    end
    object cdsDataREQUEST_NO: TAbmesFloatField
      FieldName = 'REQUEST_NO'
      ProviderFlags = [pfInWhere]
    end
    object cdsDataREQUEST_LINE_NO: TAbmesFloatField
      FieldName = 'REQUEST_LINE_NO'
      ProviderFlags = [pfInWhere]
    end
    object cdsDataMANAGER_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'MANAGER_EMPLOYEE_CODE'
    end
    object cdsDataCLIENT_COMPANY_CODE: TAbmesFloatField
      FieldName = 'CLIENT_COMPANY_CODE'
    end
    object cdsDataCLIENT_REQUEST_NO: TAbmesWideStringField
      FieldName = 'CLIENT_REQUEST_NO'
      Size = 30
    end
    object cdsDataREQUEST_SEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'REQUEST_SEND_DATE'
      ProviderFlags = [pfInWhere]
    end
    object cdsDataREQUEST_REGISTER_DATE: TAbmesSQLTimeStampField
      FieldName = 'REQUEST_REGISTER_DATE'
      ProviderFlags = [pfInWhere]
    end
    object cdsDataOFFER_SEND_PLAN_DATE: TAbmesSQLTimeStampField
      FieldName = 'OFFER_SEND_PLAN_DATE'
      ProviderFlags = [pfInWhere]
    end
    object cdsDataOFFER_SEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'OFFER_SEND_DATE'
      ProviderFlags = [pfInWhere]
    end
    object cdsDataOFFER_ANSWER_PLAN_DATE: TAbmesSQLTimeStampField
      FieldName = 'OFFER_ANSWER_PLAN_DATE'
      ProviderFlags = [pfInWhere]
    end
    object cdsDataOFFER_ANSWER_DATE: TAbmesSQLTimeStampField
      FieldName = 'OFFER_ANSWER_DATE'
      ProviderFlags = [pfInWhere]
    end
    object cdsDataDECISION_PLAN_DATE: TAbmesSQLTimeStampField
      FieldName = 'DECISION_PLAN_DATE'
      ProviderFlags = [pfInWhere]
    end
    object cdsDataDECISION_DATE: TAbmesSQLTimeStampField
      FieldName = 'DECISION_DATE'
      ProviderFlags = [pfInWhere]
    end
    object cdsDataDECISION_TYPE_CODE: TAbmesFloatField
      FieldName = 'DECISION_TYPE_CODE'
      ProviderFlags = [pfInWhere]
    end
    object cdsDataPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      OnChange = cdsDataPRODUCT_CODEChange
    end
    object cdsDataQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
      DisplayFormat = ',0.###'
      EditFormat = '0.###'
    end
    object cdsDataMANUFACTURE_QUANTITY: TAbmesFloatField
      FieldName = 'MANUFACTURE_QUANTITY'
      OnChange = cdsDataMANUFACTURE_QUANTITYChange
      MaxValue = 1000000000000.000000000000000000
    end
    object cdsDataMANUFACTURE_DECISION_EXPECTED: TAbmesFloatField
      FieldName = 'MANUFACTURE_DECISION_EXPECTED'
      FieldValueType = fvtBoolean
    end
    object cdsDataSINGLE_WEIGHT: TAbmesFloatField
      FieldName = 'SINGLE_WEIGHT'
      ProviderFlags = [pfInWhere]
    end
    object cdsDataCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
    end
    object cdsDataSINGLE_PRICE: TAbmesFloatField
      FieldName = 'SINGLE_PRICE'
      DisplayFormat = ',0.00'
    end
    object cdsDataOUR_OFFER_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'OUR_OFFER_SINGLE_PRICE'
      ProviderFlags = [pfInWhere]
    end
    object cdsDataCL_OFFER_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'CL_OFFER_SINGLE_PRICE'
      ProviderFlags = [pfInWhere]
    end
    object cdsDataCL_OFFER_RECEIVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CL_OFFER_RECEIVE_DATE'
      ProviderFlags = [pfInWhere]
    end
    object cdsDataOUR_OFFER_RECEIVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'OUR_OFFER_RECEIVE_DATE'
      ProviderFlags = [pfInWhere]
    end
    object cdsDataRECEIVE_PLACE_OFFICE_CODE: TAbmesFloatField
      FieldName = 'RECEIVE_PLACE_OFFICE_CODE'
      ProviderFlags = [pfInWhere]
    end
    object cdsDataIS_VENDOR_TRANSPORT: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'IS_VENDOR_TRANSPORT'
      DisplayBoolValues = #1053#1080#1077';'#1050#1083#1080#1077#1085#1090
      FieldValueType = fvtBoolean
    end
    object cdsDataSHIPMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'SHIPMENT_TYPE_CODE'
      ProviderFlags = [pfInWhere]
    end
    object cdsDataCUSTOMHOUSE_CODE: TAbmesFloatField
      FieldName = 'CUSTOMHOUSE_CODE'
      ProviderFlags = [pfInWhere]
    end
    object cdsDataNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      ProviderFlags = [pfInWhere]
      Size = 250
    end
    object cdsDataML_STATE_CODE: TAbmesFloatField
      FieldName = 'ML_STATE_CODE'
    end
    object cdsDataSALE_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_BRANCH_CODE'
    end
    object cdsDataSALE_NO: TAbmesFloatField
      FieldName = 'SALE_NO'
    end
    object cdsDataSALE_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_TYPE_CODE'
    end
    object cdsDataOKIDU_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'OKIDU_EMPLOYEE_CODE'
    end
    object cdsDataSOS_OKIDU: TAbmesFloatField
      FieldName = 'SOS_OKIDU'
      FieldValueType = fvtBoolean
    end
    object cdsDataSHIPMENT_DATE: TAbmesSQLTimeStampField
      FieldName = 'SHIPMENT_DATE'
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object cdsDataSHIPMENT_STORE_CODE: TAbmesFloatField
      FieldName = 'SHIPMENT_STORE_CODE'
      OnChange = cdsDataSHIPMENT_STORE_CODEChange
    end
    object cdsDataENTER_SH_STORE_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1053#1072#1095#1072#1083#1085#1072' '#1076#1072#1090#1072' '#1079#1072' '#1087#1086#1089#1090#1098#1087#1074#1072#1085#1077' '#1074' '#1057#1055#1043#1055
      FieldName = 'ENTER_SH_STORE_PLAN_BEGIN_DATE'
      OnChange = cdsDataENTER_SH_STORE_PLAN_BEGIN_DATEChange
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object cdsDataENTER_SH_STORE_PLAN_END_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1050#1088#1072#1081#1085#1072' '#1076#1072#1090#1072' '#1079#1072' '#1087#1086#1089#1090#1098#1087#1074#1072#1085#1077' '#1074' '#1057#1055#1043#1055
      FieldName = 'ENTER_SH_STORE_PLAN_END_DATE'
      OnChange = cdsDataENTER_SH_STORE_PLAN_END_DATEChange
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object cdsDataPRODUCTION_DEPT_CODE: TAbmesFloatField
      FieldName = 'PRODUCTION_DEPT_CODE'
      OnChange = cdsDataPRODUCTION_DEPT_CODEChange
    end
    object cdsDataPRODUCTION_DEPT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCTION_DEPT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object cdsDataPRODUCTION_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'PRODUCTION_DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object cdsDataIS_ML_ENTRUSTED: TAbmesFloatField
      FieldName = 'IS_ML_ENTRUSTED'
      ProviderFlags = [pfInWhere]
    end
    object cdsDataIS_ML_NOT_NEEDED: TAbmesFloatField
      FieldName = 'IS_ML_NOT_NEEDED'
      ProviderFlags = [pfInWhere]
    end
    object cdsDataANNUL_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ANNUL_EMPLOYEE_CODE'
    end
    object cdsDataANNUL_DATE: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_DATE'
    end
    object cdsDataANNUL_TIME: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_TIME'
    end
    object cdsDataFINISH_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'FINISH_EMPLOYEE_CODE'
    end
    object cdsDataFINISH_DATE: TAbmesSQLTimeStampField
      FieldName = 'FINISH_DATE'
    end
    object cdsDataFINISH_TIME: TAbmesSQLTimeStampField
      FieldName = 'FINISH_TIME'
    end
    object cdsDataCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
      ProviderFlags = [pfInWhere]
    end
    object cdsDataCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object cdsDataCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
      ProviderFlags = [pfInWhere]
    end
    object cdsDataCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object cdsDataCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object cdsDataCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object cdsDataPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 50
    end
    object cdsDataSALE_LAST_CHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'SALE_LAST_CHANGE_DATE'
    end
    object cdsDataSHIPMENT_STORE_CURR_QUANTITY: TAbmesFloatField
      FieldName = 'SHIPMENT_STORE_CURR_QUANTITY'
      DisplayFormat = ',0.###'
    end
    object cdsDataLAST_SHIPMENT_STORE_IN_DATE: TAbmesSQLTimeStampField
      FieldName = 'LAST_SHIPMENT_STORE_IN_DATE'
    end
    object cdsDataPRODUCTION_START_PLAN_DATE: TAbmesSQLTimeStampField
      FieldName = 'PRODUCTION_START_PLAN_DATE'
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object cdsDataPLANNED_INVESTED_SEC_PRICE: TAbmesFloatField
      FieldName = 'PLANNED_INVESTED_SEC_PRICE'
      DisplayFormat = ',0.00'
    end
    object cdsDataACCOUNT_INVESTED_SEC_PRICE: TAbmesFloatField
      FieldName = 'ACCOUNT_INVESTED_SEC_PRICE'
      DisplayFormat = ',0.00'
    end
    object cdsDataFIRST_OUT_DATE: TAbmesSQLTimeStampField
      FieldName = 'FIRST_OUT_DATE'
    end
    object cdsDataOUR_OFFER_QUANTITY: TAbmesFloatField
      FieldName = 'OUR_OFFER_QUANTITY'
    end
    object cdsDataCL_OFFER_QUANTITY: TAbmesFloatField
      FieldName = 'CL_OFFER_QUANTITY'
    end
    object cdsDataACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_COEF'
    end
    object cdsDataPLANNED_STORE_DEAL_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PLANNED_STORE_DEAL_BRANCH_CODE'
      ProviderFlags = [pfInWhere]
    end
    object cdsDataPLANNED_STORE_DEAL_CODE: TAbmesFloatField
      FieldName = 'PLANNED_STORE_DEAL_CODE'
      ProviderFlags = [pfInWhere]
    end
    object cdsDataPSD_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'PSD_PRIORITY_CODE'
      ProviderFlags = [pfInWhere]
    end
    object cdsDataPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object cdsData_ENTER_SH_STORE_PLAN_PERIOD_PART: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_ENTER_SH_STORE_PLAN_PERIOD_PART'
      OnGetText = cdsData_ENTER_SH_STORE_PLAN_PERIOD_PARTGetText
      Calculated = True
    end
    object cdsData_COMPLETED_QUANTITY_PART: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_COMPLETED_QUANTITY_PART'
      OnGetText = cdsData_ENTER_SH_STORE_PLAN_PERIOD_PARTGetText
      Calculated = True
    end
    object cdsDataMODEL_SPEC_VERSION_NO: TAbmesFloatField
      FieldName = 'MODEL_SPEC_VERSION_NO'
    end
    object cdsDataMODEL_SPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'MODEL_SPEC_MODEL_VARIANT_NO'
      OnChange = cdsDataMODEL_SPEC_MODEL_VARIANT_NOChange
    end
    object cdsDataMODEL_CREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'MODEL_CREATE_DATE'
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object cdsDataML_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_BRANCH_CODE'
      ProviderFlags = []
    end
    object cdsDataML_OBJECT_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_CODE'
      ProviderFlags = []
    end
    object cdsDataIS_OPERATIONS_MODEL: TAbmesFloatField
      FieldName = 'IS_OPERATIONS_MODEL'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object cdsDataMODEL_ACCOMPLISHMENT_COEF: TAbmesFloatField
      FieldName = 'MODEL_ACCOMPLISHMENT_COEF'
    end
    object cdsDataPRODUCTION_WORKDAYS: TAbmesFloatField
      FieldName = 'PRODUCTION_WORKDAYS'
    end
    object cdsDataENTER_RESULT_STORE_WORKDAYS: TAbmesFloatField
      FieldName = 'ENTER_RESULT_STORE_WORKDAYS'
    end
    object cdsData_HAS_MODEL: TBooleanField
      FieldKind = fkCalculated
      FieldName = '_HAS_MODEL'
      Calculated = True
    end
    object cdsData_SALE_BRANCH_NO: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_SALE_BRANCH_NO'
      LookupDataSet = cdsBranches
      LookupKeyFields = 'BRANCH_CODE'
      LookupResultField = 'BRANCH_NO'
      KeyFields = 'SALE_BRANCH_CODE'
      Lookup = True
    end
    object cdsData_PRODUCTION_START_PLAN_DATE_SHOW: TAbmesSQLTimeStampField
      FieldKind = fkCalculated
      FieldName = '_PRODUCTION_START_PLAN_DATE_SHOW'
      Calculated = True
    end
    object cdsData_ENTER_SH_STORE_PLAN_END_DATE_SHOW: TAbmesSQLTimeStampField
      FieldKind = fkCalculated
      FieldName = '_ENTER_SH_STORE_PLAN_END_DATE_SHOW'
      Calculated = True
    end
    object cdsData_TODAY: TAbmesSQLTimeStampField
      FieldKind = fkCalculated
      FieldName = '_TODAY'
      Calculated = True
    end
    object cdsData_ML_STATE_ABBREV: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_ML_STATE_ABBREV'
      Size = 5
      Calculated = True
    end
    object cdsData_ML_STATE_FULL_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_ML_STATE_FULL_NAME'
      Size = 100
      Calculated = True
    end
    object cdsData_ML_STATE_COLOR: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_ML_STATE_COLOR'
      FieldValueType = fvtInteger
      Calculated = True
    end
    object cdsDataSHIPMENT_STORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'SHIPMENT_STORE_IDENTIFIER'
      Size = 46
    end
    object cdsDataWORK_PRIORITY_CODE: TAbmesFloatField
      Alignment = taLeftJustify
      DisplayLabel = #1054#1087#1077#1088#1072#1090#1080#1074#1077#1085' '#1055#1088#1080#1086#1088#1080#1090#1077#1090
      DisplayWidth = 10
      FieldName = 'WORK_PRIORITY_CODE'
    end
    object cdsDataMODEL_DEVELOPMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'MODEL_DEVELOPMENT_TYPE_CODE'
    end
    object cdsData_INVESTED_PRICE_DIFF_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_INVESTED_PRICE_DIFF_PERCENT'
      DisplayFormat = '0'
      Calculated = True
    end
    object cdsDataMIN_MLL_STORE_DEAL_DATE: TAbmesSQLTimeStampField
      FieldName = 'MIN_MLL_STORE_DEAL_DATE'
    end
    object cdsData_PRODUCTION_START_DATE_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_PRODUCTION_START_DATE_DIFF'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsDataINITIAL_TREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'INITIAL_TREATMENT_WORKDAYS'
    end
    object cdsDataSTART_STAGE_COEF: TAbmesFloatField
      FieldName = 'START_STAGE_COEF'
    end
    object cdsDataSTART_AFTER_LIMITING_DAYS: TAbmesFloatField
      FieldName = 'START_AFTER_LIMITING_DAYS'
    end
    object cdsDataREAL_PRODUCTION_WORKDAYS: TAbmesFloatField
      FieldName = 'REAL_PRODUCTION_WORKDAYS'
    end
    object cdsDataMAX_OP_DATE_POSITIVE_DIFF: TAbmesFloatField
      FieldName = 'MAX_OP_DATE_POSITIVE_DIFF'
    end
    object cdsDataMIN_OP_DATE_NEGATIVE_DIFF: TAbmesFloatField
      FieldName = 'MIN_OP_DATE_NEGATIVE_DIFF'
    end
    object cdsData_ENTER_SH_STORE_DATE_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_ENTER_SH_STORE_DATE_DIFF'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsDataMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
    end
    object cdsData_MEASURE_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_MEASURE_ABBREV'
      LookupDataSet = cdsMeasures
      LookupKeyFields = 'MEASURE_CODE'
      LookupResultField = 'MEASURE_ABBREV'
      KeyFields = 'MEASURE_CODE'
      Size = 5
      Lookup = True
    end
    object cdsData_REMAINING_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_REMAINING_QUANTITY'
      Calculated = True
    end
    object cdsData_REMAINING_QUANTITY_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_REMAINING_QUANTITY_PERCENT'
      DisplayFormat = '0'
      Calculated = True
    end
    object cdsData_PERCENT_TEXT: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_PERCENT_TEXT'
      Size = 5
      Calculated = True
    end
    object cdsData_INVESTED_VALUE_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_INVESTED_VALUE_DIFF'
      DisplayFormat = ',0.##'
      Calculated = True
    end
    object cdsData_STRUCT_STATUS: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_STRUCT_STATUS'
      Calculated = True
    end
    object cdsDataMODEL_OPERATIONS_STATUS_CODE: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'MODEL_OPERATIONS_STATUS_CODE'
      OnGetText = cdsDataMODEL_OPERATIONS_STATUS_CODEGetText
    end
    object cdsDataWASTING_SALE_OBJ_BRANCH_CODE: TAbmesFloatField
      FieldName = 'WASTING_SALE_OBJ_BRANCH_CODE'
    end
    object cdsDataWASTING_SALE_OBJ_CODE: TAbmesFloatField
      FieldName = 'WASTING_SALE_OBJ_CODE'
    end
    object cdsDataIS_WASTE_COMPENSATING_ORDER: TAbmesFloatField
      FieldName = 'IS_WASTE_COMPENSATING_ORDER'
      DisplayBoolValues = #1057#1098#1087#1098#1090#1089#1090#1074#1072#1097';'#1054#1089#1085#1086#1074#1077#1085
      FieldValueType = fvtBoolean
    end
    object cdsDataWASTING_SALE_BRANCH_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' '#1043#1083#1072#1074#1085#1086' '#1085#1072' '#1054#1055#1042' '#1054#1089#1085#1086#1074#1077#1085
      FieldName = 'WASTING_SALE_BRANCH_CODE'
    end
    object cdsDataWASTING_SALE_NO: TAbmesFloatField
      DisplayLabel = 'No '#1085#1072' '#1054#1055#1042' '#1054#1089#1085#1086#1074#1077#1085
      FieldName = 'WASTING_SALE_NO'
    end
    object cdsDataWASTING_ML_OJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'WASTING_ML_OJECT_BRANCH_CODE'
      ProviderFlags = []
    end
    object cdsDataWASTING_ML_OJECT_CODE: TAbmesFloatField
      FieldName = 'WASTING_ML_OJECT_CODE'
      ProviderFlags = []
    end
    object cdsDataWASTE_COMPENSATOR_COUNT: TAbmesFloatField
      FieldName = 'WASTE_COMPENSATOR_COUNT'
    end
    object cdsDataHAS_WASTE: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'HAS_WASTE'
      DisplayBoolValues = '!;'
      FieldValueType = fvtBoolean
    end
    object cdsData_MODEL_DEVELOPMENT_TYPE_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_MODEL_DEVELOPMENT_TYPE_ABBREV'
      LookupDataSet = cdsModelDevelopmentTypes
      LookupKeyFields = 'MODEL_DEVELOPMENT_TYPE_CODE'
      LookupResultField = 'MODEL_DEVELOPMENT_TYPE_ABBREV'
      KeyFields = 'MODEL_DEVELOPMENT_TYPE_CODE'
      Size = 100
      Lookup = True
    end
    object cdsDataWASTING_SALE_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'WASTING_SALE_ORDER_TYPE_CODE'
    end
  end
  object cdsBranches: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompany
    Filter = '(IS_LOCAL_BRANCH <> 0) and (IS_INACTIVE = 0)'
    Params = <>
    ProviderName = 'prvBranches'
    BeforeOpen = cdsBranchesBeforeOpen
    Left = 288
    object cdsBranchesBRANCH_CODE: TAbmesFloatField
      FieldName = 'BRANCH_CODE'
    end
    object cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField
      FieldName = 'BRANCH_IDENTIFIER'
      Size = 255
    end
    object cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField
      FieldName = 'BRANCH_CODE_AND_NAME'
      Size = 255
    end
    object cdsBranchesIS_LOCAL_BRANCH: TAbmesFloatField
      FieldName = 'IS_LOCAL_BRANCH'
    end
    object cdsBranchesBRANCH_NO: TAbmesFloatField
      FieldName = 'BRANCH_NO'
    end
    object cdsBranchesIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
    end
  end
  object cdsSpecModelVariants: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conSales
    Params = <
      item
        DataType = ftFloat
        Name = 'AUTHORIZATION_OF_OPERATIONS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end>
    ProviderName = 'prvSpecModelVariants'
    OnCalcFields = cdsSpecModelVariantsCalcFields
    OnFilterRecord = cdsSpecModelVariantsFilterRecord
    Left = 320
    object cdsSpecModelVariantsSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
    end
    object cdsSpecModelVariantsMAIN_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'MAIN_DEPT_IDENTIFIER'
      Size = 46
    end
    object cdsSpecModelVariantsSPEC_VERSION_NO: TAbmesFloatField
      FieldName = 'SPEC_VERSION_NO'
    end
    object cdsSpecModelVariantsPRODUCTION_WORKDAYS: TAbmesFloatField
      FieldName = 'PRODUCTION_WORKDAYS'
    end
    object cdsSpecModelVariantsENTER_RESULT_STORE_WORKDAYS: TAbmesFloatField
      FieldName = 'ENTER_RESULT_STORE_WORKDAYS'
    end
    object cdsSpecModelVariantsRESULT_STORE_CODE: TAbmesFloatField
      FieldName = 'RESULT_STORE_CODE'
    end
    object cdsSpecModelVariantsMAIN_DEPT_CODE: TAbmesFloatField
      FieldName = 'MAIN_DEPT_CODE'
    end
    object cdsSpecModelVariantsMIN_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'MIN_TECH_QUANTITY'
    end
    object cdsSpecModelVariantsMAX_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'MAX_TECH_QUANTITY'
    end
    object cdsSpecModelVariantsMODEL_VARIANT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'MODEL_VARIANT_IDENTIFIER'
      Size = 91
    end
    object cdsSpecModelVariantsMIN_WORK_QUANTITY: TAbmesFloatField
      FieldName = 'MIN_WORK_QUANTITY'
    end
    object cdsSpecModelVariantsMAX_WORK_QUANTITY: TAbmesFloatField
      FieldName = 'MAX_WORK_QUANTITY'
    end
    object cdsSpecModelVariantsIS_EST_VARIANT: TAbmesFloatField
      Alignment = taLeftJustify
      DisplayWidth = 10
      FieldName = 'IS_EST_VARIANT'
      Required = True
      DisplayBoolValues = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1077#1085';'
      FieldValueType = fvtBoolean
    end
    object cdsSpecModelVariantsNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object cdsSpecModelVariants_SHOW_IDENTIFIER: TAbmesWideStringField
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = '_SHOW_IDENTIFIER'
      Size = 50
      Calculated = True
    end
  end
  object dsSpecModelVariants: TDataSource
    DataSet = cdsSpecModelVariants
    Left = 248
    Top = 32
  end
  object cdsWorkPriorities: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvWorkPriorities'
    Left = 320
    Top = 344
    object cdsWorkPrioritiesWORK_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'WORK_PRIORITY_CODE'
    end
    object cdsWorkPrioritiesWORK_PRIORITY_NO: TAbmesFloatField
      DisplayWidth = 2
      FieldName = 'WORK_PRIORITY_NO'
    end
    object cdsWorkPrioritiesWORK_PRIORITY_NAME: TAbmesWideStringField
      FieldName = 'WORK_PRIORITY_NAME'
      Size = 50
    end
  end
  object dsWorkPriorities: TDataSource
    DataSet = cdsWorkPriorities
    Left = 320
    Top = 376
  end
  object cdsModelDevelopmentTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conSales
    Params = <>
    ProviderName = 'prvModelDevelopmentTypes'
    Left = 256
    Top = 304
    object prvModelDevelopmentTypesMODEL_DEVELOPMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'MODEL_DEVELOPMENT_TYPE_CODE'
      Required = True
    end
    object prvModelDevelopmentTypesMODEL_DEVELOPMENT_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'MODEL_DEVELOPMENT_TYPE_ABBREV'
      Size = 100
    end
    object prvModelDevelopmentTypesMODEL_DEVELOPMENT_TYPE_NAME: TAbmesWideStringField
      FieldName = 'MODEL_DEVELOPMENT_TYPE_NAME'
      Size = 100
    end
  end
  object dsModelDevelopmentTypes: TDataSource
    DataSet = cdsModelDevelopmentTypes
    Left = 288
    Top = 304
  end
  object cdsMeasures: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvMeasures'
    Left = 400
    Top = 320
    object cdsMeasuresMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
      Required = True
    end
    object cdsMeasuresMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Required = True
      Size = 5
    end
  end
  object cdsSpecStructStatus: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conSpecifications
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_LINE_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvSpecStructStatus'
    BeforeOpen = cdsSpecStructStatusBeforeOpen
    OnCalcFields = cdsStructStatusCalcFields
    Left = 32
    Top = 200
    object cdsSpecStructStatusLEVEL_NO: TAbmesFloatField
      FieldName = 'LEVEL_NO'
    end
    object cdsSpecStructStatusLEVEL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'LEVEL_IS_COMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsSpecStructStatusMAX_LEVEL_NO: TAbmesFloatField
      FieldName = 'MAX_LEVEL_NO'
    end
    object cdsSpecStructStatusHAS_MISSING_CHILDREN: TAbmesFloatField
      FieldName = 'HAS_MISSING_CHILDREN'
      FieldValueType = fvtBoolean
    end
    object cdsSpecStructStatus_DISPLAY_TEXT: TAbmesWideStringField
      Alignment = taCenter
      FieldKind = fkCalculated
      FieldName = '_DISPLAY_TEXT'
      Calculated = True
    end
  end
  object cdsXModelStructStatus: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conXModels
    Params = <
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvXModelStructStatus'
    OnCalcFields = cdsStructStatusCalcFields
    Left = 62
    Top = 200
    object cdsXModelStructStatusLEVEL_NO: TAbmesFloatField
      FieldName = 'LEVEL_NO'
    end
    object cdsXModelStructStatusLEVEL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'LEVEL_IS_COMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsXModelStructStatusMAX_LEVEL_NO: TAbmesFloatField
      FieldName = 'MAX_LEVEL_NO'
    end
    object cdsXModelStructStatusHAS_MISSING_CHILDREN: TAbmesFloatField
      FieldName = 'HAS_MISSING_CHILDREN'
      FieldValueType = fvtBoolean
    end
    object cdsXModelStructStatus_DISPLAY_TEXT: TAbmesWideStringField
      Alignment = taCenter
      FieldKind = fkCalculated
      FieldName = '_DISPLAY_TEXT'
      Calculated = True
    end
  end
  object dsStructStatus: TDataSource
    DataSet = cdsXModelStructStatus
    Left = 94
    Top = 200
  end
  object dsBranches: TDataSource
    DataSet = cdsBranches
    Left = 288
    Top = 32
  end
  object cdsWasteCompensatorsParams: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 721
    Top = 223
    object cdsWasteCompensatorsParamsIS_WASTE_COMPENSATOR_STATUS: TAbmesFloatField
      FieldName = 'IS_WASTE_COMPENSATOR_STATUS'
    end
    object cdsWasteCompensatorsParamsWASTING_SALE_BRANCH_CODE: TAbmesFloatField
      FieldName = 'WASTING_SALE_BRANCH_CODE'
    end
    object cdsWasteCompensatorsParamsWASTING_SALE_NO: TAbmesFloatField
      FieldName = 'WASTING_SALE_NO'
    end
    object cdsWasteCompensatorsParamsMIN_ML_STATE_CODE: TAbmesFloatField
      FieldName = 'MIN_ML_STATE_CODE'
    end
    object cdsWasteCompensatorsParamsMAX_ML_STATE_CODE: TAbmesFloatField
      FieldName = 'MAX_ML_STATE_CODE'
    end
  end
  object cdsML: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 664
    Top = 288
    object cdsMLML_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_BRANCH_CODE'
    end
    object cdsMLML_OBJECT_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_CODE'
    end
  end
  object cdsSaleAndML: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conSales
    Params = <
      item
        DataType = ftFloat
        Name = 'SALE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_NO'
        ParamType = ptInput
      end>
    ProviderName = 'prvSaleAndML'
    Left = 696
    Top = 288
    object cdsSaleAndMLSALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_BRANCH_CODE'
    end
    object cdsSaleAndMLSALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_CODE'
    end
    object cdsSaleAndMLML_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_BRANCH_CODE'
    end
    object cdsSaleAndMLML_OBJECT_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_CODE'
    end
    object cdsSaleAndMLSALE_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_ORDER_TYPE_CODE'
      Required = True
    end
  end
  object cdsWastingSaleParams: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 688
    Top = 224
    object cdsWastingSaleParamsSALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_BRANCH_CODE'
    end
    object cdsWastingSaleParamsSALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_CODE'
    end
  end
end
