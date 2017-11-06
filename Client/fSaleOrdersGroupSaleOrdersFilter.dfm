inherited fmSaleOrdersGroupSaleOrdersFilter: TfmSaleOrdersGroupSaleOrdersFilter
  Left = 258
  Top = 102
  ActiveControl = cbSaleDealType
  Caption = 
    #1060#1080#1083#1090#1098#1088' '#1085#1072' '#1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1055#1072#1082#1077#1090#1080' '#1044#1080#1072#1083#1086#1079#1080' '#1089' '#1050#1083#1080#1077#1085#1090#1080' '#1079#1072' '#1055#1088#1086#1076#1072#1078#1073#1072' '#1085#1072' '#1059#1054 +
    #1073' '#1087#1086' '#1053#1072#1083#1080#1095#1085#1086#1089#1090
  ClientHeight = 652
  ClientWidth = 601
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 617
    Width = 601
    TabOrder = 8
    inherited pnlOKCancel: TPanel
      Left = 333
    end
    inherited pnlClose: TPanel
      Left = 244
    end
    inherited pnlApply: TPanel
      Left = 512
    end
  end
  object gbGroupSale: TGroupBox [1]
    Left = 176
    Top = 8
    Width = 417
    Height = 65
    Caption = ' '#1055#1072#1082#1077#1090' '#1044#1080#1072#1083#1086#1079#1080' '#1089' '#1050#1083#1080#1077#1085#1090' ('#1055#1044#1050') '
    TabOrder = 1
    object lblRequestBranch: TLabel
      Left = 56
      Top = 16
      Width = 51
      Height = 13
      Caption = #1058#1055' '#1043#1083'.'
    end
    object lblRequestNo: TLabel
      Left = 168
      Top = 16
      Width = 14
      Height = 13
      Caption = 'No'
    end
    object lblSaleDealType: TLabel
      Left = 8
      Top = 16
      Width = 19
      Height = 13
      Caption = #1058#1080#1087
      FocusControl = cbSaleDealType
    end
    object lblRequestRegisterDateInterval: TLabel
      Left = 264
      Top = 16
      Width = 129
      Height = 13
      Caption = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1056#1077#1075#1080#1089#1090#1088#1080#1088#1072#1085#1077
    end
    object cbRequestBranch: TJvDBLookupCombo
      Left = 56
      Top = 32
      Width = 105
      Height = 21
      DataField = 'REQUEST_BRANCH_CODE'
      DataSource = dsData
      DisplayEmpty = ' '
      LookupField = 'BRANCH_CODE'
      LookupDisplay = 'BRANCH_CODE_AND_NAME'
      LookupSource = dsBranches
      TabOrder = 1
    end
    object edtRequestNo: TDBEdit
      Left = 168
      Top = 32
      Width = 81
      Height = 21
      DataField = 'REQUEST_NO'
      DataSource = dsData
      TabOrder = 2
    end
    object cbSaleDealType: TJvDBLookupCombo
      Left = 8
      Top = 32
      Width = 41
      Height = 21
      DropDownWidth = 250
      DeleteKeyClear = False
      DisplayAllFields = True
      DataField = 'SALE_DEAL_TYPE_CODE'
      DataSource = dsData
      LookupField = 'SALE_DEAL_TYPE_CODE'
      LookupDisplay = 'SALE_DEAL_TYPE_ABBREV;SALE_DEAL_TYPE_NAME'
      LookupSource = dsSaleDealTypes
      TabOrder = 0
    end
    inline frRequestRegisterDateInterval: TfrDateIntervalFrame
      Left = 264
      Top = 32
      Width = 145
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 145
      Constraints.MinHeight = 21
      Constraints.MinWidth = 145
      TabOrder = 3
      TabStop = True
    end
  end
  object gbSaleGroup: TGroupBox [2]
    Left = 8
    Top = 80
    Width = 161
    Height = 65
    Caption = ' '#1043#1088#1054#1055#1055' '
    TabOrder = 2
    object lblSaleGroupBranch: TLabel
      Left = 8
      Top = 16
      Width = 51
      Height = 13
      Caption = #1058#1055' '#1043#1083'.'
    end
    object lblSaleGroupNo: TLabel
      Left = 87
      Top = 16
      Width = 14
      Height = 13
      Caption = 'No'
    end
    object cbSaleGroupBranch: TJvDBLookupCombo
      Left = 8
      Top = 32
      Width = 73
      Height = 21
      DataField = 'SALE_GROUP_OBJECT_BRANCH_CODE'
      DataSource = dsData
      DisplayEmpty = ' '
      LookupField = 'BRANCH_CODE'
      LookupDisplay = 'BRANCH_NO; NAME'
      LookupSource = dsBranches
      TabOrder = 0
    end
    object edtSaleGroupNo: TDBEdit
      Left = 88
      Top = 32
      Width = 65
      Height = 21
      DataField = 'SALE_GROUP_CODE'
      DataSource = dsData
      TabOrder = 1
    end
  end
  object gbClient: TGroupBox [3]
    Left = 8
    Top = 152
    Width = 585
    Height = 65
    Caption = ' '#1050#1083#1080#1077#1085#1090' '
    TabOrder = 4
    object lblClientNo: TLabel
      Left = 8
      Top = 16
      Width = 19
      Height = 13
      Caption = #1050#1086#1076
    end
    object lblClientName: TLabel
      Left = 80
      Top = 16
      Width = 76
      Height = 13
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
    end
    object lblClientPriority: TLabel
      Left = 480
      Top = 16
      Width = 54
      Height = 13
      Caption = #1055#1088#1080#1086#1088#1080#1090#1077#1090
    end
    inline frClient: TfrPartnerFieldEditFrameBald
      Left = 8
      Top = 32
      Width = 465
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 0
      TabStop = True
      inherited gbPartner: TGroupBox
        Width = 480
        inherited pnlNameAndButtons: TPanel
          Width = 391
          inherited pnlRightButtons: TPanel
            Left = 355
          end
          inherited pnlPartnerName: TPanel
            Width = 355
            inherited edtPartnerName: TDBEdit
              Width = 341
            end
            inherited cbPartner: TJvDBLookupCombo
              Width = 356
            end
          end
        end
        inherited pnlPaddingRight: TPanel
          Left = 472
        end
      end
    end
    inline frClientPriorityInterval: TfrPriorityIntervalEditFrame
      Left = 480
      Top = 32
      Width = 97
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 97
      Constraints.MinHeight = 21
      Constraints.MinWidth = 97
      TabOrder = 1
      TabStop = True
      inherited lblDash: TLabel
        Width = 6
      end
    end
  end
  object gbDates: TGroupBox [4]
    Left = 8
    Top = 536
    Width = 585
    Height = 73
    Anchors = [akLeft, akBottom]
    Caption = ' '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1044#1072#1090#1072' '#1079#1072' '#1055#1086#1083#1091#1095#1072#1074#1072#1085#1077' '#1085#1072' '#1059#1054#1073' '#1086#1090' '#1050#1083#1080#1077#1085#1090' '
    TabOrder = 7
    object lblReceiveDateDiffDash: TLabel
      Left = 363
      Top = 43
      Width = 6
      Height = 13
      Caption = #8212
    end
    inline frClientOfferReceiveDateInterval: TfrDateIntervalFrame
      Left = 8
      Top = 40
      Width = 145
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 145
      Constraints.MinHeight = 21
      Constraints.MinWidth = 145
      TabOrder = 0
      TabStop = True
    end
    inline frReceiveDateInterval: TfrDateIntervalFrame
      Left = 176
      Top = 40
      Width = 145
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 145
      Constraints.MinHeight = 21
      Constraints.MinWidth = 145
      TabOrder = 1
      TabStop = True
    end
    inline frRealReceiveDateInterval: TfrDateIntervalFrame
      Left = 432
      Top = 40
      Width = 145
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 145
      Constraints.MinHeight = 21
      Constraints.MinWidth = 145
      TabOrder = 4
      TabStop = True
    end
    object edtBeginReceiveDateDiff: TDBEdit
      Left = 328
      Top = 40
      Width = 33
      Height = 21
      DataField = 'MIN_RECEIVE_DATE_RESERVE_DAYS'
      DataSource = dsData
      TabOrder = 2
    end
    object edtEndReceiveDateDiff: TDBEdit
      Left = 371
      Top = 40
      Width = 33
      Height = 21
      DataField = 'MAX_RECEIVE_DATE_RESERVE_DAYS'
      DataSource = dsData
      TabOrder = 3
    end
    object pnlDateSaleCaptions: TPanel
      Left = 2
      Top = 15
      Width = 581
      Height = 25
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 5
      object lblClientOfferReceiveDateInterval: TLabel
        Left = 6
        Top = 9
        Width = 79
        Height = 13
        Caption = #1055#1086#1080#1089#1082#1072#1085#1072' '#1044#1072#1090#1072
      end
      object lblReceiveDateInterval: TLabel
        Left = 174
        Top = 9
        Width = 91
        Height = 13
        Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1072' '#1044#1072#1090#1072
      end
      object lblReceiveDateDiff: TLabel
        Left = 326
        Top = 9
        Width = 37
        Height = 13
        Caption = #1056#1077#1079#1077#1088#1074
        FocusControl = edtEndReceiveDateDiff
      end
      object lblRealReceiveDateInterval: TLabel
        Left = 430
        Top = 9
        Width = 70
        Height = 13
        Caption = #1054#1090#1095#1077#1090#1085#1072' '#1044#1072#1090#1072
      end
    end
    object pnlDateLeaseCaptions: TPanel
      Left = 2
      Top = 40
      Width = 581
      Height = 25
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 6
      object lblLeaseClientOfferReceiveDateInterval: TLabel
        Left = 6
        Top = 9
        Width = 127
        Height = 13
        Caption = #1053#1072#1095'. '#1085#1072' '#1055#1086#1080#1089#1082#1072#1085' '#1042#1088#1084#1048#1085#1090
      end
      object lblLeaseReceiveDateInterval: TLabel
        Left = 174
        Top = 9
        Width = 118
        Height = 13
        Caption = #1053#1072#1095'. '#1085#1072' '#1044#1086#1075#1086#1074'. '#1042#1088#1084#1048#1085#1090
      end
      object lblLeaseReceiveDateDiff: TLabel
        Left = 326
        Top = 9
        Width = 37
        Height = 13
        Caption = #1056#1077#1079#1077#1088#1074
        FocusControl = edtEndReceiveDateDiff
      end
      object lblLeaseRealReceiveDateInterval: TLabel
        Left = 430
        Top = 9
        Width = 124
        Height = 13
        Caption = #1053#1072#1095'. '#1085#1072' '#1054#1090#1095#1077#1090#1077#1085' '#1042#1088#1084#1048#1085#1090
      end
    end
  end
  object gbStatus: TGroupBox [5]
    Left = 8
    Top = 8
    Width = 161
    Height = 65
    Caption = ' '#1057#1090#1072#1090#1091#1089' '
    TabOrder = 0
    object lblDash: TLabel
      Left = 75
      Top = 35
      Width = 9
      Height = 13
      Caption = '---'
    end
    object cbMinStatus: TJvDBLookupCombo
      Left = 8
      Top = 32
      Width = 65
      Height = 21
      DropDownCount = 11
      DropDownWidth = 280
      DataField = 'MIN_STATUS_CODE'
      DataSource = dsData
      LookupField = 'STATUS_CODE'
      LookupDisplay = 'STATUS_ABBREV;STATUS_DESCRIPTION'
      LookupSource = dsStatuses
      TabOrder = 0
    end
    object cbMaxStatus: TJvDBLookupCombo
      Left = 88
      Top = 32
      Width = 65
      Height = 21
      DropDownCount = 11
      DropDownWidth = 280
      DataField = 'MAX_STATUS_CODE'
      DataSource = dsData
      LookupField = 'STATUS_CODE'
      LookupDisplay = 'STATUS_ABBREV;STATUS_DESCRIPTION'
      LookupSource = dsStatuses
      TabOrder = 1
    end
  end
  inline frSRGEmployee: TfrEmployeeFieldEditFrameLabeled [6]
    Left = 176
    Top = 80
    Width = 417
    Height = 65
    Constraints.MaxHeight = 65
    Constraints.MinHeight = 65
    TabOrder = 3
    TabStop = True
    inherited gbEmployee: TGroupBox
      Width = 417
      Caption = ' '#1042#1086#1076#1077#1097' '#1087#1086' '#1055#1044#1050' '
      inherited pnlEmployeeName: TPanel
        Width = 342
        inherited pnlRightButtons: TPanel
          Left = 306
        end
        inherited pnlEmpoyeeNameInner: TPanel
          Width = 306
          inherited edtEmployeeName: TDBEdit
            Width = 331
          end
          inherited cbEmployee: TJvDBLookupCombo
            Width = 305
          end
        end
      end
      inherited pnlPaddingRight: TPanel
        Left = 407
      end
      inherited pnlLabels: TPanel
        Width = 413
        inherited lblCode: TLabel
          Width = 19
        end
        inherited lblName: TLabel
          Width = 22
        end
      end
    end
  end
  inline frProduct: TfrParamProductFilter [7]
    Left = 8
    Top = 296
    Width = 377
    Height = 233
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    inherited grpTreeNodeFilter: TGroupBox
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
    end
  end
  inline frMediator: TfrPartnerFieldEditFrameLabeled [8]
    Left = 8
    Top = 224
    Width = 585
    Height = 65
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 65
    Constraints.MinHeight = 65
    TabOrder = 5
    inherited gbPartner: TGroupBox
      Width = 585
      Caption = ' '#1055#1086#1089#1088#1077#1076#1085#1080#1082' '
      inherited pnlNameAndButtons: TPanel
        Width = 496
        inherited pnlRightButtons: TPanel
          Left = 460
        end
        inherited pnlPartnerName: TPanel
          Width = 460
          inherited edtPartnerName: TDBEdit
            Width = 461
          end
          inherited cbPartner: TJvDBLookupCombo
            Width = 461
          end
        end
      end
      inherited pnlPaddingRight: TPanel
        Left = 577
      end
      inherited pnlLabels: TPanel
        Width = 581
        inherited lblCode: TLabel
          Width = 19
        end
        inherited lblName: TLabel
          Width = 76
        end
      end
    end
  end
  inherited alActions: TActionList [9]
    Left = 544
    Top = 32
    inherited actForm: TAction
      Caption = 
        #1060#1080#1083#1090#1098#1088' '#1085#1072' '#1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1055#1072#1082#1077#1090#1080' '#1044#1080#1072#1083#1086#1079#1080' '#1089' '#1050#1083#1080#1077#1085#1090#1080' '#1079#1072' '#1055#1088#1086#1076#1072#1078#1073#1072' '#1085#1072' '#1059#1054 +
        #1073' '#1087#1086' '#1053#1072#1083#1080#1095#1085#1086#1089#1090
    end
  end
  inherited dsData: TDataSource [10]
    Left = 512
  end
  inherited cdsData: TAbmesClientDataSet [11]
    Left = 480
  end
  inherited dsFilterVariants: TDataSource
    Left = 272
    Top = 640
  end
  inherited cdsFilterVariants: TAbmesClientDataSet
    Left = 240
    Top = 640
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Left = 304
    Top = 640
  end
  object cdsBranches: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompany
    Params = <>
    ProviderName = 'prvBranches'
    Left = 544
    object cdsBranchesBRANCH_CODE: TAbmesFloatField
      FieldName = 'BRANCH_CODE'
    end
    object cdsBranchesBRANCH_NO: TAbmesFloatField
      DisplayWidth = 4
      FieldName = 'BRANCH_NO'
    end
    object cdsBranchesNAME: TAbmesWideStringField
      FieldName = 'NAME'
      Size = 50
    end
    object cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField
      FieldName = 'BRANCH_IDENTIFIER'
      Size = 255
    end
    object cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField
      FieldName = 'BRANCH_CODE_AND_NAME'
      Size = 255
    end
  end
  object dsBranches: TDataSource
    DataSet = cdsBranches
    Left = 576
  end
  object dsSaleDealTypes: TDataSource
    Left = 264
  end
  object cdsStatuses: TAbmesClientDataSet
    Aggregates = <>
    Filter = 'STATUS_CODE in (1, 9, 10, 11)'
    Filtered = True
    Params = <>
    Left = 72
    Top = 65528
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
    Left = 104
    Top = 65528
  end
end
