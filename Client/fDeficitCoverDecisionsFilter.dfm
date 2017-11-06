inherited fmDeficitCoverDecisionsFilter: TfmDeficitCoverDecisionsFilter
  Left = 240
  Top = 144
  ActiveControl = lcbBranch
  Caption = 
    '%s '#1085#1072' '#1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1055#1072#1082#1077#1090#1080' '#1044#1080#1072#1083#1086#1079#1080' '#1089' '#1044#1086#1089#1090#1072#1074#1095#1080#1094#1080' %ForOrOf% %Provisi' +
    'on%'
  ClientHeight = 524
  ClientWidth = 490
  PixelsPerInch = 96
  TextHeight = 13
  object gbSubjective: TGroupBox [0]
    Left = 8
    Top = 88
    Width = 473
    Height = 257
    TabOrder = 7
    inline frChosenCompanies: TfrCompanyFilter
      Left = 8
      Top = 16
      Width = 457
      Height = 233
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      inherited grpTreeNodeFilter: TGroupBox
        Width = 457
        inherited pnlChosenCompanies: TPanel
          Width = 209
          inherited grdChosenCompanies: TAbmesDBGrid
            Width = 209
            FooterFont.Name = 'Microsoft Sans Serif'
            TitleFont.Name = 'Microsoft Sans Serif'
            Columns = <
              item
                EditButtons = <>
                FieldName = 'COMPANY_NO'
                Footers = <>
                Title.Caption = #1050#1086#1076
                Width = 47
              end
              item
                EditButtons = <>
                FieldName = 'SHORT_NAME'
                Footers = <>
                Width = 128
              end>
          end
        end
        inherited pnlButtons: TPanel
          Left = 218
        end
        inherited pnlNotChosenCompanies: TPanel
          Left = 240
          Width = 209
          inherited grdNotChosenCompanies: TAbmesDBGrid
            Width = 209
            FooterFont.Name = 'Microsoft Sans Serif'
            TitleFont.Name = 'Microsoft Sans Serif'
            Columns = <
              item
                EditButtons = <>
                FieldName = 'COMPANY_NO'
                Footers = <>
                Title.Caption = #1050#1086#1076
                Width = 47
              end
              item
                EditButtons = <>
                FieldName = 'SHORT_NAME'
                Footers = <>
                Width = 128
              end>
          end
        end
        inherited pnlBottom: TPanel
          Top = 184
          Width = 453
          Height = 47
          inherited lblCommonStatus: TLabel
            Left = 382
            Width = 45
          end
          inherited cbCommonStatuses: TJvDBLookupCombo
            Left = 382
          end
        end
      end
      inherited pnlBaseFilter: TPanel
        Left = 240
      end
      inherited cdsCommonStatuses: TAbmesClientDataSet
        Top = 142
      end
      inherited dsCommonStatuses: TDataSource
        Top = 142
      end
    end
  end
  inherited pnlBottomButtons: TPanel
    Top = 489
    Width = 490
    TabOrder = 5
    inherited pnlOKCancel: TPanel
      Left = 222
    end
    inherited pnlClose: TPanel
      Left = 133
    end
    inherited pnlApply: TPanel
      Left = 401
    end
  end
  object grpId: TGroupBox [2]
    Left = 144
    Top = 8
    Width = 337
    Height = 65
    Caption = ' ID '#1055#1044#1044' '
    TabOrder = 1
    object lblBranch: TLabel
      Left = 72
      Top = 16
      Width = 51
      Height = 13
      Caption = #1058#1055' '#1043#1083'.'
    end
    object lblRPD: TLabel
      Left = 136
      Top = 16
      Width = 43
      Height = 13
      Caption = #1055#1044#1044' No'
    end
    object lblDeliveryDealType: TLabel
      Left = 8
      Top = 16
      Width = 19
      Height = 13
      Caption = #1058#1080#1087
    end
    object lblAspect: TLabel
      Left = 264
      Top = 16
      Width = 36
      Height = 13
      Caption = #1040#1089#1087#1077#1082#1090
    end
    object lblStreamType: TLabel
      Left = 200
      Top = 16
      Width = 31
      Height = 13
      Caption = #1055#1086#1090#1086#1082
    end
    object edtRPD: TDBEdit
      Left = 136
      Top = 32
      Width = 57
      Height = 21
      DataField = 'DCD_CODE'
      DataSource = dsData
      TabOrder = 2
    end
    object lcbBranch: TJvDBLookupCombo
      Left = 72
      Top = 32
      Width = 57
      Height = 21
      DropDownWidth = 200
      DeleteKeyClear = False
      DataField = 'DCD_BRANCH_CODE'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089' >'
      LookupField = 'BRANCH_CODE'
      LookupDisplay = 'BRANCH_CODE_AND_NAME'
      LookupSource = dsBranches
      TabOrder = 1
    end
    object cbDeliveryDealType: TJvDBLookupCombo
      Left = 8
      Top = 32
      Width = 49
      Height = 21
      DropDownWidth = 350
      DeleteKeyClear = False
      DataField = 'DELIVERY_DEAL_TYPE_CODE'
      DataSource = dsData
      LookupField = 'BORDER_DEAL_TYPE_CODE'
      LookupDisplay = 'BORDER_DEAL_TYPE_ABBREV;BORDER_DEAL_TYPE_NAME'
      LookupSource = dsDeliveryDealTypes
      TabOrder = 0
    end
    object cbAspect: TJvDBLookupCombo
      Left = 264
      Top = 32
      Width = 65
      Height = 21
      DeleteKeyClear = False
      DataField = 'ASPECT_TYPE_CODE'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089' >'
      LookupField = 'ASPECT_TYPE_CODE'
      LookupDisplay = 'ASPECT_TYPE_ABBREV'
      LookupSource = dsAspectTypes
      TabOrder = 3
    end
    object cbStreamType: TJvDBLookupCombo
      Left = 200
      Top = 32
      Width = 57
      Height = 21
      DeleteKeyClear = False
      DataField = 'STREAM_TYPE_CODE'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089' >'
      LookupField = 'STREAM_TYPE_CODE'
      LookupDisplay = 'STREAM_TYPE_ABBREV;STREAM_TYPE_NAME'
      LookupSource = dsStreamTypes
      TabOrder = 4
    end
  end
  inline frVPDEmployee: TfrEmployeeFieldEditFrameLabeled [3]
    Left = 8
    Top = 416
    Width = 473
    Height = 65
    Constraints.MaxHeight = 65
    Constraints.MinHeight = 65
    TabOrder = 4
    TabStop = True
    inherited gbEmployee: TGroupBox
      Width = 473
      Caption = ' '#1042#1086#1076#1077#1097' '#1055#1072#1082#1077#1090' '#1044#1080#1072#1083#1086#1079#1080' '#1089' '#1044#1086#1089#1090#1072#1074#1095#1080#1094#1080' '
      inherited pnlEmployeeName: TPanel
        Width = 398
        inherited pnlRightButtons: TPanel
          Left = 362
        end
        inherited pnlEmpoyeeNameInner: TPanel
          Width = 362
          inherited edtEmployeeName: TDBEdit
            Width = 363
          end
          inherited cbEmployee: TJvDBLookupCombo
            Width = 361
          end
        end
      end
      inherited pnlPaddingRight: TPanel
        Left = 463
      end
      inherited pnlLabels: TPanel
        Width = 469
        inherited lblCode: TLabel
          Width = 19
        end
        inherited lblName: TLabel
          Width = 22
        end
      end
    end
  end
  object gbOfferDate: TGroupBox [4]
    Left = 248
    Top = 352
    Width = 233
    Height = 57
    Caption = ' '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1055#1083'.'#1076#1072#1090#1072' '#1079#1072' '#1056#1077#1096#1077#1085#1080#1077
    TabOrder = 3
    inline frOfferDateInterval: TfrDateIntervalFrame
      Left = 40
      Top = 24
      Width = 145
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 145
      Constraints.MinHeight = 21
      Constraints.MinWidth = 145
      TabOrder = 0
      TabStop = True
    end
  end
  object gbDeficitCoverDate: TGroupBox [5]
    Left = 8
    Top = 352
    Width = 233
    Height = 57
    Caption = ' '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1086#1090#1088#1080#1094#1072#1090#1077#1083#1085#1072' '#1085#1072#1083#1080#1095#1085#1086#1089#1090' '
    TabOrder = 2
    inline frDeficitCoverDateInterval: TfrDateIntervalFrame
      Left = 40
      Top = 24
      Width = 145
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 145
      Constraints.MinHeight = 21
      Constraints.MinWidth = 145
      TabOrder = 0
      TabStop = True
    end
  end
  object gbStatus: TGroupBox [6]
    Left = 8
    Top = 8
    Width = 129
    Height = 65
    Caption = ' '#1057#1090#1072#1090#1091#1089' '
    TabOrder = 0
    object lblStatusDash: TLabel
      Left = 59
      Top = 35
      Width = 9
      Height = 13
      Caption = '---'
    end
    object cbMinStatus: TJvDBLookupCombo
      Left = 8
      Top = 32
      Width = 49
      Height = 21
      DropDownWidth = 400
      DeleteKeyClear = False
      DataField = 'MIN_STATUS_CODE'
      DataSource = dsData
      LookupField = 'STATUS_CODE'
      LookupDisplay = 'STATUS_ABBREV;STATUS_DESCRIPTION'
      LookupSource = dsStatuses
      TabOrder = 0
    end
    object cbMaxStatus: TJvDBLookupCombo
      Left = 72
      Top = 32
      Width = 49
      Height = 21
      DropDownWidth = 400
      DeleteKeyClear = False
      DataField = 'MAX_STATUS_CODE'
      DataSource = dsData
      LookupField = 'STATUS_CODE'
      LookupDisplay = 'STATUS_ABBREV;STATUS_DESCRIPTION'
      LookupSource = dsStatuses
      TabOrder = 1
    end
  end
  object gbObjective: TGroupBox [7]
    Left = 8
    Top = 88
    Width = 473
    Height = 257
    TabOrder = 6
    inline frChosenProducts: TfrParamProductFilter
      Left = 8
      Top = 16
      Width = 458
      Height = 233
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TabStop = True
      inherited grpTreeNodeFilter: TGroupBox
        Width = 458
        Caption = ' %ProductClassName% '
        inherited lblUsedBy: TLabel
          Width = 61
        end
        inherited lblProductOrigin: TLabel
          Width = 23
        end
        inherited lblCommonStatus: TLabel
          Width = 45
        end
        inherited lblIsActive: TLabel
          Width = 53
        end
        inherited pnlNodes: TPanel
          Width = 441
          inherited pnlNodesButtons: TPanel
            Left = 416
          end
          inherited grdChosenNodes: TAbmesDBGrid
            Width = 416
            FooterFont.Name = 'Microsoft Sans Serif'
            TitleFont.Name = 'Microsoft Sans Serif'
            Columns = <
              item
                EditButtons = <>
                FieldName = 'NODE_NAME'
                Footers = <>
                Width = 319
              end
              item
                EditButtons = <>
                FieldName = 'NODE_NO'
                Footers = <>
                Width = 63
              end>
          end
        end
        inherited pnlParams: TPanel
          Width = 441
          inherited grdChosenNodeParams: TAbmesDBGrid
            Width = 416
            FooterFont.Name = 'Microsoft Sans Serif'
            TitleFont.Name = 'Microsoft Sans Serif'
            Columns = <
              item
                EditButtons = <>
                FieldName = 'NODE_PARAM_NAME'
                Footers = <>
                Width = 286
              end
              item
                EditButtons = <>
                FieldName = 'DISPLAY_VALUE'
                Footers = <>
                Width = 95
              end>
          end
          inherited pnlParamsButtons: TPanel
            Left = 416
          end
        end
      end
    end
  end
  object pnlDCDMode: TPanel [8]
    Left = 16
    Top = 80
    Width = 209
    Height = 21
    BevelOuter = bvNone
    TabOrder = 8
    object lblDCDMode: TLabel
      Left = 6
      Top = 3
      Width = 90
      Height = 13
      Caption = #1056#1077#1078#1080#1084' '#1085#1072' '#1055#1072#1082#1077#1090#1072
    end
    object cbDCDMode: TJvDBLookupCombo
      Left = 102
      Top = 0
      Width = 99
      Height = 21
      DeleteKeyClear = False
      DataField = '_DCD_MODE_NAME'
      DataSource = dsData
      TabOrder = 0
    end
  end
  inherited alActions: TActionList [9]
    Left = 144
    Top = 65528
    inherited actForm: TAction
      Caption = 
        '%s '#1085#1072' '#1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1055#1072#1082#1077#1090#1080' '#1044#1080#1072#1083#1086#1079#1080' '#1089' '#1044#1086#1089#1090#1072#1074#1095#1080#1094#1080' %ForOrOf% %Provisi' +
        'on%'
    end
  end
  inherited dsData: TDataSource [10]
    Left = 80
    Top = 65528
  end
  inherited cdsData: TAbmesClientDataSet [11]
    Left = 48
    Top = 65528
  end
  inherited dsFilterVariants: TDataSource
    Left = 40
    Top = 480
  end
  inherited cdsFilterVariants: TAbmesClientDataSet [13]
    Top = 480
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Left = 80
    Top = 480
  end
  object cdsBranches: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompany
    Params = <>
    ProviderName = 'prvBranches'
    Left = 216
    Top = 65528
    object cdsBranchesBRANCH_CODE: TAbmesFloatField
      FieldName = 'BRANCH_CODE'
      ProviderFlags = []
    end
    object cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField
      FieldName = 'BRANCH_CODE_AND_NAME'
      ProviderFlags = []
      Size = 255
    end
  end
  object dsBranches: TDataSource
    DataSet = cdsBranches
    Left = 248
    Top = 65528
  end
  object cdsAspectTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvAspectTypes'
    Left = 288
    Top = 65528
    object cdsAspectTypesASPECT_TYPE_CODE: TAbmesFloatField
      FieldName = 'ASPECT_TYPE_CODE'
    end
    object cdsAspectTypesASPECT_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'ASPECT_TYPE_ABBREV'
      Size = 100
    end
    object cdsAspectTypesASPECT_TYPE_NAME: TAbmesWideStringField
      FieldName = 'ASPECT_TYPE_NAME'
      Size = 100
    end
  end
  object dsAspectTypes: TDataSource
    DataSet = cdsAspectTypes
    Left = 304
    Top = 65528
  end
  object cdsDeliveryDealTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conDeliveries
    Params = <>
    ProviderName = 'prvDeliveryDealTypes'
    Left = 344
    Top = 65528
    object cdsDeliveryDealTypesBORDER_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'BORDER_DEAL_TYPE_CODE'
    end
    object cdsDeliveryDealTypesBORDER_DEAL_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'BORDER_DEAL_TYPE_ABBREV'
      Size = 100
    end
    object cdsDeliveryDealTypesBORDER_DEAL_TYPE_NAME: TAbmesWideStringField
      FieldName = 'BORDER_DEAL_TYPE_NAME'
      Size = 100
    end
    object cdsDeliveryDealTypesPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField
      FieldName = 'PROD_ORDER_BASE_TYPE_CODE'
    end
    object cdsDeliveryDealTypesOBTAINMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'OBTAINMENT_TYPE_CODE'
    end
  end
  object dsDeliveryDealTypes: TDataSource
    DataSet = cdsDeliveryDealTypes
    Left = 360
    Top = 65528
  end
  object cdsStatuses: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 88
    Top = 16
    object cdsStatusesSTATUS_CODE: TAbmesFloatField
      FieldName = 'STATUS_CODE'
    end
    object cdsStatusesSTATUS_ABBREV: TAbmesWideStringField
      FieldName = 'STATUS_ABBREV'
      Size = 6
    end
    object cdsStatusesSTATUS_DESCRIPTION: TAbmesWideStringField
      FieldName = 'STATUS_DESCRIPTION'
      Size = 100
    end
  end
  object dsStatuses: TDataSource
    DataSet = cdsStatuses
    Left = 120
    Top = 16
  end
  object cdsStreamTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvStreamTypes'
    Left = 408
    Top = 65528
    object cdsStreamTypesSTREAM_TYPE_CODE: TAbmesFloatField
      FieldName = 'STREAM_TYPE_CODE'
    end
    object cdsStreamTypesSTREAM_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'STREAM_TYPE_ABBREV'
      Size = 100
    end
    object cdsStreamTypesSTREAM_TYPE_NAME: TAbmesWideStringField
      FieldName = 'STREAM_TYPE_NAME'
    end
  end
  object dsStreamTypes: TDataSource
    DataSet = cdsStreamTypes
    Left = 424
    Top = 65528
  end
end
