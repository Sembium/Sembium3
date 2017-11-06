inherited fmDeliveryDialogsFilter: TfmDeliveryDialogsFilter
  Caption = 
    '%s '#1085#1072' '#1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1073#1086#1089#1086#1073#1077#1085#1080' '#1044#1080#1072#1083#1086#1079#1080' '#1089' '#1044#1086#1089#1090#1072#1074#1095#1080#1094#1080' %ForOrOf% %Prov' +
    'ision%'
  ClientHeight = 636
  ClientWidth = 849
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 601
    Width = 849
    inherited pnlOKCancel: TPanel
      Left = 581
    end
    inherited pnlClose: TPanel
      Left = 492
    end
    inherited pnlApply: TPanel
      Left = 760
    end
  end
  object gbStatus: TGroupBox [1]
    Left = 8
    Top = 8
    Width = 161
    Height = 129
    Caption = ' '#1057#1090#1072#1090#1091#1089' '
    TabOrder = 1
    object lblDash5: TLabel
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
      DeleteKeyClear = False
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
      DeleteKeyClear = False
      DataField = 'MAX_STATUS_CODE'
      DataSource = dsData
      LookupField = 'STATUS_CODE'
      LookupDisplay = 'STATUS_ABBREV;STATUS_DESCRIPTION'
      LookupSource = dsStatuses
      TabOrder = 1
    end
  end
  object gbID: TGroupBox [2]
    Left = 176
    Top = 8
    Width = 409
    Height = 129
    Caption = ' ID '#1054#1044#1044' '
    TabOrder = 2
    object lblDeliveryDealType: TLabel
      Left = 8
      Top = 16
      Width = 19
      Height = 13
      Caption = #1058#1080#1087
    end
    object lblDCDBranch: TLabel
      Left = 64
      Top = 16
      Width = 51
      Height = 13
      Caption = #1058#1055' '#1043#1083'.'
    end
    object lblDCDCode: TLabel
      Left = 120
      Top = 16
      Width = 43
      Height = 13
      Caption = #1055#1044#1044' No'
    end
    object lblActivatedBy: TLabel
      Left = 336
      Top = 16
      Width = 47
      Height = 13
      Caption = #1040#1082#1090#1080#1074'. '#1086#1090
    end
    object lblDeliveryProjectCode: TLabel
      Left = 172
      Top = 16
      Width = 26
      Height = 13
      Caption = #1054#1044#1044
    end
    object lblAspectType: TLabel
      Left = 272
      Top = 16
      Width = 36
      Height = 13
      Caption = #1040#1089#1087#1077#1082#1090
    end
    object lblDeliveryContractPriority: TLabel
      Left = 224
      Top = 64
      Width = 54
      Height = 13
      Caption = #1055#1088#1080#1086#1088#1080#1090#1077#1090
    end
    object lblStreamType: TLabel
      Left = 208
      Top = 16
      Width = 31
      Height = 13
      Caption = #1055#1086#1090#1086#1082
    end
    object lblType: TLabel
      Left = 151
      Top = 64
      Width = 19
      Height = 13
      Caption = #1042#1080#1076
    end
    object cbDeliveryDealType: TJvDBLookupCombo
      Left = 8
      Top = 32
      Width = 49
      Height = 21
      DropDownWidth = 350
      DeleteKeyClear = False
      DisplayAllFields = True
      DataField = 'DELIVERY_DEAL_TYPE_CODE'
      DataSource = dsData
      LookupField = 'BORDER_DEAL_TYPE_CODE'
      LookupDisplay = 'BORDER_DEAL_TYPE_ABBREV;BORDER_DEAL_TYPE_NAME'
      LookupSource = dsDeliveryDealTypes
      TabOrder = 0
    end
    object cbDCDBranch: TJvDBLookupCombo
      Left = 64
      Top = 32
      Width = 57
      Height = 21
      DropDownWidth = 120
      DeleteKeyClear = False
      DisplayAllFields = True
      DataField = 'DCD_BRANCH_CODE'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089'.>'
      LookupField = 'BRANCH_CODE'
      LookupDisplay = 'BRANCH_CODE_AND_NAME'
      LookupSource = dsBranches
      TabOrder = 1
    end
    object edtDCDCode: TDBEdit
      Left = 120
      Top = 32
      Width = 53
      Height = 21
      DataField = 'DCD_CODE'
      DataSource = dsData
      TabOrder = 2
    end
    object edtDeliveryProjectCode: TDBEdit
      Left = 172
      Top = 32
      Width = 29
      Height = 21
      DataField = 'DELIVERY_PROJECT_CODE'
      DataSource = dsData
      TabOrder = 3
    end
    object cbAspectType: TJvDBLookupCombo
      Left = 272
      Top = 32
      Width = 57
      Height = 21
      DropDownWidth = 200
      DeleteKeyClear = False
      DisplayAllFields = True
      DataField = 'ASPECT_TYPE_CODE'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089'. >'
      LookupField = 'ASPECT_TYPE_CODE'
      LookupDisplay = 'ASPECT_TYPE_ABBREV;ASPECT_TYPE_NAME'
      LookupSource = dsAspectTypes
      TabOrder = 5
    end
    object rpHasContract: TJvDBRadioPanel
      Left = 8
      Top = 64
      Width = 129
      Height = 57
      BevelOuter = bvNone
      DataField = 'HAS_CONTRACT_CODE'
      DataSource = dsData
      Items.Strings = (
        #1042#1089#1080#1095#1082#1080
        #1057#1098#1089' '#1089#1098#1079#1076#1072#1076#1077#1085' '#1054#1055#1044
        #1041#1077#1079' '#1089#1098#1079#1076#1072#1076#1077#1085' '#1054#1055#1044)
      TabOrder = 7
      Values.Strings = (
        '0'
        '1'
        '2')
    end
    inline frDeliveryContractPriorityInterval: TfrPriorityIntervalEditFrame
      Left = 224
      Top = 80
      Width = 97
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 97
      Constraints.MinHeight = 21
      Constraints.MinWidth = 97
      TabOrder = 8
      TabStop = True
      inherited lblDash: TLabel
        Width = 6
      end
    end
    object cbActivatedBy: TJvDBComboBox
      Left = 336
      Top = 32
      Width = 65
      Height = 21
      DataField = 'IS_ACTIVATED_BY_CODE'
      DataSource = dsData
      ItemHeight = 0
      Items.Strings = (
        '< '#1074#1089#1080#1095#1082#1080' >'
        #1048#1055
        #1044#1086#1089#1090#1072#1074#1095#1080#1082)
      TabOrder = 6
      Values.Strings = (
        '0'
        '1'
        '2')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
      ListSettings.OutfilteredValueFont.Style = []
    end
    object cbStreamType: TJvDBLookupCombo
      Left = 208
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
    object cbType: TJvDBLookupCombo
      Left = 152
      Top = 80
      Width = 57
      Height = 21
      DataField = 'DELIVERY_TYPE_CODE'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089' >'
      LookupField = 'DELIVERY_TYPE_CODE'
      LookupDisplay = 'DELIVERY_TYPE_ABBREV'
      LookupSource = dsDeliveryTypes
      TabOrder = 9
    end
  end
  inline frDialogEmployee: TfrEmployeeFieldEditFrameLabeled [3]
    Left = 592
    Top = 72
    Width = 249
    Height = 65
    Constraints.MaxHeight = 65
    Constraints.MinHeight = 65
    TabOrder = 3
    TabStop = True
    inherited gbEmployee: TGroupBox
      Width = 249
      Caption = ' '#1042#1086#1076#1077#1097' '#1044#1080#1072#1083#1086#1075' '
      inherited pnlEmployeeName: TPanel
        Width = 174
        inherited pnlRightButtons: TPanel
          Left = 138
        end
        inherited pnlEmpoyeeNameInner: TPanel
          Width = 138
          inherited edtEmployeeName: TDBEdit
            Width = 163
          end
          inherited cbEmployee: TJvDBLookupCombo
            Width = 137
          end
        end
      end
      inherited pnlPaddingRight: TPanel
        Left = 239
      end
      inherited pnlLabels: TPanel
        Width = 245
        inherited lblCode: TLabel
          Width = 19
        end
        inherited lblName: TLabel
          Width = 22
        end
      end
    end
  end
  object gbBoundSale: TGroupBox [4]
    Left = 592
    Top = 8
    Width = 249
    Height = 57
    Caption = ' '#1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090' '#1089' '#1054#1055#1055' '
    TabOrder = 4
    object lblSaleBranch: TLabel
      Left = 112
      Top = 11
      Width = 51
      Height = 13
      Caption = #1058#1055' '#1043#1083'.'
      FocusControl = cbSaleBranch
    end
    object lblSaleNo: TLabel
      Left = 176
      Top = 11
      Width = 41
      Height = 13
      Caption = #1054#1055#1055' No'
      FocusControl = edtSaleNo
    end
    object cbHasSale: TJvDBComboBox
      Left = 8
      Top = 27
      Width = 81
      Height = 21
      DataField = 'HAS_SALE'
      DataSource = dsData
      ItemHeight = 0
      Items.Strings = (
        '< '#1074#1089#1080#1095#1082#1080' >'
        #1080#1084#1072
        #1085#1103#1084#1072)
      TabOrder = 0
      Values.Strings = (
        '0'
        '1'
        '2')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
      ListSettings.OutfilteredValueFont.Style = []
    end
    object cbSaleBranch: TJvDBLookupCombo
      Left = 112
      Top = 27
      Width = 57
      Height = 21
      DeleteKeyClear = False
      DataField = 'SALE_BRANCH_CODE'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089'. >'
      LookupField = 'BRANCH_CODE'
      LookupDisplay = 'BRANCH_CODE_AND_NAME'
      LookupSource = dsBranches
      TabOrder = 1
    end
    object edtSaleNo: TDBEdit
      Left = 176
      Top = 27
      Width = 57
      Height = 21
      DataField = 'SALE_NO'
      DataSource = dsData
      TabOrder = 2
    end
  end
  object gbMediator: TGroupBox [5]
    Left = 488
    Top = 144
    Width = 353
    Height = 73
    Caption = ' '#1057#1074#1098#1088#1079#1072#1085#1086#1089#1090' '#1089' '#1055#1086#1089#1088#1077#1076#1085#1080#1082' '
    TabOrder = 5
    object lblMediator: TLabel
      Left = 112
      Top = 24
      Width = 56
      Height = 13
      Caption = #1055#1086#1089#1088#1077#1076#1085#1080#1082
    end
    object rpHasMediator: TJvDBRadioPanel
      AlignWithMargins = True
      Left = 2
      Top = 16
      Width = 89
      Height = 49
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      BevelOuter = bvNone
      DataField = 'HAS_MEDIATOR_CODE'
      DataSource = dsData
      Items.Strings = (
        #1042#1089#1080#1095#1082#1080
        #1057#1074#1098#1088#1079#1072#1085
        #1053#1077#1089#1074#1098#1088#1079#1072#1085)
      TabOrder = 0
      Values.Strings = (
        '0'
        '1'
        '2')
    end
    inline frMediator: TfrPartnerFieldEditFrameBald
      Left = 112
      Top = 40
      Width = 233
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 1
      TabStop = True
      inherited gbPartner: TGroupBox
        Width = 248
        inherited pnlNameAndButtons: TPanel
          Width = 159
          inherited pnlRightButtons: TPanel
            Left = 123
          end
          inherited pnlPartnerName: TPanel
            Width = 123
            inherited edtPartnerName: TDBEdit
              Width = 109
            end
            inherited cbPartner: TJvDBLookupCombo
              Width = 124
            end
          end
        end
        inherited pnlPaddingRight: TPanel
          Left = 240
        end
      end
      inherited alActions: TActionList
        Top = 40
      end
      inherited dsData: TDataSource
        Top = 40
      end
      inherited cdsPartners: TAbmesClientDataSet
        Top = 40
      end
      inherited dsPartners: TDataSource
        Top = 40
      end
      inherited cdsPartner: TAbmesClientDataSet
        Top = 40
      end
      inherited dsPartner: TDataSource
        Top = 40
      end
    end
  end
  object gbVendor: TGroupBox [6]
    Left = 8
    Top = 144
    Width = 473
    Height = 73
    Caption = ' '#1044#1086#1089#1090#1072#1074#1095#1080#1082' '
    TabOrder = 6
    object lblPartnerCode: TLabel
      Left = 8
      Top = 24
      Width = 19
      Height = 13
      Caption = #1050#1086#1076
    end
    object lblVendorCompany: TLabel
      Left = 80
      Top = 24
      Width = 76
      Height = 13
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
    end
    object lblCountry: TLabel
      Left = 256
      Top = 24
      Width = 48
      Height = 13
      Caption = #1044#1098#1088#1078#1072#1074#1072
    end
    object lblPriority: TLabel
      Left = 368
      Top = 24
      Width = 54
      Height = 13
      Caption = #1055#1088#1080#1086#1088#1080#1090#1077#1090
    end
    inline frVendorCompany: TfrPartnerFieldEditFrameBald
      Left = 8
      Top = 40
      Width = 241
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 0
      TabStop = True
      inherited gbPartner: TGroupBox
        Width = 256
        inherited pnlNameAndButtons: TPanel
          Width = 167
          inherited pnlRightButtons: TPanel
            Left = 131
          end
          inherited pnlPartnerName: TPanel
            Width = 131
            inherited edtPartnerName: TDBEdit
              Width = 117
            end
            inherited cbPartner: TJvDBLookupCombo
              Width = 132
            end
          end
        end
        inherited pnlPaddingRight: TPanel
          Left = 248
        end
      end
      inherited alActions: TActionList
        Top = 32
      end
      inherited dsData: TDataSource
        Top = 32
      end
      inherited cdsPartners: TAbmesClientDataSet
        Top = 32
      end
      inherited dsPartners: TDataSource
        Top = 32
      end
      inherited cdsPartner: TAbmesClientDataSet
        Top = 32
      end
      inherited dsPartner: TDataSource
        Top = 32
      end
    end
    object cbCountry: TJvDBLookupCombo
      Left = 256
      Top = 40
      Width = 105
      Height = 21
      DisplayAllFields = True
      DataField = 'VENDOR_COUNTRY_CODE'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
      LookupField = 'COUNTRY_CODE'
      LookupDisplay = 'COUNTRY_NAME'
      LookupSource = dsCountries
      TabOrder = 1
    end
    inline frVendorPriorityInterval: TfrPriorityIntervalEditFrame
      Left = 368
      Top = 40
      Width = 97
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 97
      Constraints.MinHeight = 21
      Constraints.MinWidth = 97
      TabOrder = 2
      TabStop = True
      inherited lblDash: TLabel
        Width = 6
      end
      inherited alActions: TActionList
        Top = 16
      end
      inherited dsData: TDataSource
        Top = 16
      end
      inherited cdsPriorities: TAbmesClientDataSet
        Top = 16
      end
      inherited dsPriorities: TDataSource
        Top = 16
      end
    end
  end
  inline frProduct: TfrParamProductFilter [7]
    Left = 8
    Top = 224
    Width = 377
    Height = 233
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    TabStop = True
    inherited grpTreeNodeFilter: TGroupBox
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
        inherited grdChosenNodes: TAbmesDBGrid
          FooterFont.Name = 'Microsoft Sans Serif'
          TitleFont.Name = 'Microsoft Sans Serif'
        end
      end
      inherited pnlParams: TPanel
        inherited grdChosenNodeParams: TAbmesDBGrid
          FooterFont.Name = 'Microsoft Sans Serif'
          TitleFont.Name = 'Microsoft Sans Serif'
        end
      end
    end
  end
  object gbIztD: TGroupBox [8]
    Left = 392
    Top = 224
    Width = 449
    Height = 105
    Caption = ' '#1048#1079#1090#1086#1095#1085#1080#1082' '#1085#1072' '#1044#1086#1089#1090#1072#1074#1082#1080' ('#1048#1044') '
    TabOrder = 8
    object rgParRelProduct: TJvDBRadioPanel
      Left = 8
      Top = 24
      Width = 161
      Height = 73
      BevelOuter = bvNone
      DataField = 'PAR_REL_PRODUCT'
      DataSource = dsData
      Items.Strings = (
        #1074#1089#1080#1095#1082#1080
        #1089#1098#1089' '#1089#1098#1097#1077#1089#1090#1074#1091#1074#1072#1097' %ParRelProductAbbrev%'
        #1073#1077#1079' '#1089#1098#1097#1077#1089#1090#1074#1091#1074#1072#1097' %ParRelProductAbbrev%')
      TabOrder = 0
      Values.Strings = (
        '0'
        '1'
        '2')
    end
    object cbParRelProductStatus: TJvDBLookupCombo
      Left = 168
      Top = 48
      Width = 129
      Height = 21
      DeleteKeyClear = False
      DataField = '_PAR_REL_PRODUCT_STATUS_NAME'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
      TabOrder = 1
    end
  end
  object gbDecision: TGroupBox [9]
    Left = 392
    Top = 336
    Width = 449
    Height = 73
    Caption = ' '#1056#1077#1096#1077#1085#1080#1077' '#1087#1086' '#1054#1044#1050' '
    TabOrder = 9
    object lblDecisionType: TLabel
      Left = 8
      Top = 24
      Width = 45
      Height = 13
      Caption = #1056#1077#1096#1077#1085#1080#1077
    end
    object lblDecisionEmployee: TLabel
      Left = 72
      Top = 24
      Width = 73
      Height = 13
      Caption = #1042#1079#1077#1083' '#1056#1077#1096#1077#1085#1080#1077
    end
    object cbDecisionType: TJvDBLookupCombo
      Left = 8
      Top = 40
      Width = 57
      Height = 21
      DropDownWidth = 250
      DataField = 'DELIVERY_DECISION_CODE'
      DataSource = dsData
      DisplayEmpty = '<'#1074#1089'.>'
      FieldsDelimiter = '-'
      ListStyle = lsDelimited
      LookupField = 'DELIVERY_DECISION_CODE'
      LookupDisplay = 'DELIVERY_DECISION_CODE;DELIVERY_DECISION_NAME'
      LookupSource = dsDecisionTypes
      TabOrder = 0
    end
    inline frDecisionEmployee: TfrEmployeeFieldEditFrameBald
      Left = 72
      Top = 40
      Width = 369
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 1
      TabStop = True
      inherited gbEmployee: TGroupBox
        Width = 388
        inherited pnlEmployeeName: TPanel
          Width = 313
          inherited pnlRightButtons: TPanel
            Left = 277
          end
          inherited pnlEmpoyeeNameInner: TPanel
            Width = 277
            inherited edtEmployeeName: TDBEdit
              Width = 231
            end
            inherited cbEmployee: TJvDBLookupCombo
              Width = 276
            end
          end
        end
        inherited pnlPaddingRight: TPanel
          Left = 378
        end
      end
      inherited alActions: TActionList
        Top = 16
      end
      inherited dsData: TDataSource
        Top = 16
      end
      inherited cdsEmployees: TAbmesClientDataSet
        Top = 16
      end
      inherited dsEmployees: TDataSource
        Top = 16
      end
      inherited cdsEmployee: TAbmesClientDataSet
        Top = 32
      end
      inherited dsEmployee: TDataSource
        Top = 32
      end
    end
  end
  object gbHasAgreedQuantity: TGroupBox [10]
    Left = 392
    Top = 416
    Width = 225
    Height = 41
    Caption = ' '#1057#1098#1075#1083#1072#1089#1091#1074#1072#1085#1086#1089#1090' '#1087#1086' '#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '
    TabOrder = 10
    object chkHasAgreedQuantity: TDBCheckBox
      Left = 16
      Top = 16
      Width = 41
      Height = 17
      Caption = #1048#1084#1072
      DataField = 'HAS_AGREED_QUANTITY'
      DataSource = dsData
      TabOrder = 0
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object chkHasNotAgreedQuantity: TDBCheckBox
      Left = 72
      Top = 16
      Width = 49
      Height = 17
      Caption = #1053#1103#1084#1072
      DataField = 'HAS_NOT_AGREED_QUANTITY'
      DataSource = dsData
      TabOrder = 1
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
  end
  object gbHasAgreedSinglePrice: TGroupBox [11]
    Left = 624
    Top = 416
    Width = 217
    Height = 41
    Caption = ' '#1057#1098#1075#1083#1072#1089#1091#1074#1072#1085#1086#1089#1090' '#1087#1086' '#1045#1076'. '#1094#1077#1085#1072' '
    TabOrder = 11
    object chkHasAgreedSinglePrice: TDBCheckBox
      Left = 16
      Top = 16
      Width = 41
      Height = 17
      Caption = #1048#1084#1072
      DataField = 'HAS_AGREED_SINGLE_PRICE'
      DataSource = dsData
      TabOrder = 0
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object chkHasNotAgreedSinglePrice: TDBCheckBox
      Left = 72
      Top = 16
      Width = 49
      Height = 17
      Caption = #1053#1103#1084#1072
      DataField = 'HAS_NOT_AGREED_SINGLE_PRICE'
      DataSource = dsData
      TabOrder = 1
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
  end
  object gbRequestRegisterDate: TGroupBox [12]
    Left = 8
    Top = 464
    Width = 257
    Height = 57
    Caption = ' '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1044#1072#1090#1072' '#1085#1072' '#1056#1077#1075#1080#1089#1090#1088#1080#1088#1072#1085#1077' '
    TabOrder = 12
    inline frRegisterDateInterval: TfrDateIntervalFrame
      Left = 8
      Top = 24
      Width = 145
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 145
      Constraints.MinHeight = 21
      Constraints.MinWidth = 145
      TabOrder = 0
      TabStop = True
      inherited alActions: TActionList
        Top = 8
      end
      inherited dsData: TDataSource
        Top = 8
      end
      inherited cdsDates: TAbmesClientDataSet
        Top = 8
      end
      inherited dsDates: TDataSource
        Top = 8
      end
    end
  end
  object gbPrognosis: TGroupBox [13]
    Left = 8
    Top = 528
    Width = 257
    Height = 66
    Caption = ' '#1053#1072#1095#1072#1083#1085#1072' '#1076#1072#1090#1072' '#1085#1072' '#1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072' '
    TabOrder = 13
    object lblPrognosisBeginDateInterval: TLabel
      Left = 8
      Top = 16
      Width = 40
      Height = 13
      Caption = #1042#1088#1084#1048#1085#1090
      Visible = False
    end
    object lblPrognosisDaysRsv: TLabel
      Left = 168
      Top = 16
      Width = 64
      Height = 13
      Caption = #1056#1077#1079#1077#1088#1074' ('#1076#1085#1080')'
    end
    object lblDash4: TLabel
      Left = 203
      Top = 35
      Width = 9
      Height = 13
      Caption = '---'
    end
    inline frPrognosisBeginDateInterval: TfrDateIntervalFrame
      Left = 8
      Top = 32
      Width = 145
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 145
      Constraints.MinHeight = 21
      Constraints.MinWidth = 145
      TabOrder = 0
      TabStop = True
      inherited alActions: TActionList
        Top = 8
      end
      inherited dsData: TDataSource
        Top = 8
      end
      inherited cdsDates: TAbmesClientDataSet
        Top = 8
      end
      inherited dsDates: TDataSource
        Top = 8
      end
    end
    object edtBeginPrognosisDaysRsv: TDBEdit
      Left = 168
      Top = 32
      Width = 33
      Height = 21
      DataField = 'BEGIN_PROGNOSIS_DAYS_RSV'
      DataSource = dsData
      Enabled = False
      TabOrder = 1
    end
    object edtEndPrognosisDaysRsv: TDBEdit
      Left = 216
      Top = 32
      Width = 33
      Height = 21
      DataField = 'END_PROGNOSIS_DAYS_RSV'
      DataSource = dsData
      Enabled = False
      TabOrder = 2
    end
  end
  object gbDates: TGroupBox [14]
    Left = 272
    Top = 463
    Width = 569
    Height = 131
    TabOrder = 14
    object lblDaysRsv: TLabel
      Left = 304
      Top = 24
      Width = 64
      Height = 13
      Caption = #1056#1077#1079#1077#1088#1074' ('#1076#1085#1080')'
    end
    object lblRealPositionDate: TLabel
      Left = 416
      Top = 24
      Width = 125
      Height = 13
      Caption = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1054#1090#1095#1077#1090#1085#1072' '#1076#1072#1090#1072
    end
    object lblPosition: TLabel
      Left = 8
      Top = 43
      Width = 91
      Height = 13
      Caption = #1055#1086#1079#1080#1094#1080#1103' '#1085#1072' '#1048#1055
    end
    object lblVendorPosition: TLabel
      Left = 8
      Top = 67
      Width = 117
      Height = 13
      Caption = #1055#1086#1079#1080#1094#1080#1103' '#1085#1072' '#1044#1086#1089#1090#1072#1074#1095#1080#1082
    end
    object lblDecision: TLabel
      Left = 8
      Top = 91
      Width = 45
      Height = 13
      Caption = #1056#1077#1096#1077#1085#1080#1077
    end
    object lblDash1: TLabel
      Left = 339
      Top = 43
      Width = 9
      Height = 13
      Caption = '---'
    end
    object lblDash2: TLabel
      Left = 339
      Top = 67
      Width = 9
      Height = 13
      Caption = '---'
    end
    object lblDash3: TLabel
      Left = 339
      Top = 91
      Width = 9
      Height = 13
      Caption = '---'
    end
    object lblPlanPositionDate: TLabel
      Left = 128
      Top = 24
      Width = 128
      Height = 13
      Caption = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1055#1083#1072#1085#1086#1074#1072' '#1076#1072#1090#1072
    end
    inline frPlanPositionDate: TfrDateIntervalFrame
      Left = 128
      Top = 40
      Width = 145
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 145
      Constraints.MinHeight = 21
      Constraints.MinWidth = 145
      TabOrder = 0
      TabStop = True
      inherited alActions: TActionList
        Top = 8
      end
      inherited dsData: TDataSource
        Top = 8
      end
      inherited cdsDates: TAbmesClientDataSet
        Top = 8
      end
      inherited dsDates: TDataSource
        Top = 8
      end
    end
    object edtBeginPositionDaysRsv: TDBEdit
      Left = 304
      Top = 40
      Width = 33
      Height = 21
      DataField = 'BEGIN_POSITION_DAYS_RSV'
      DataSource = dsData
      TabOrder = 1
    end
    object edtEndPositionDaysRsv: TDBEdit
      Left = 352
      Top = 40
      Width = 33
      Height = 21
      DataField = 'END_POSITION_DAYS_RSV'
      DataSource = dsData
      TabOrder = 2
    end
    inline frRealPositionDate: TfrDateIntervalFrame
      Left = 416
      Top = 40
      Width = 145
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 145
      Constraints.MinHeight = 21
      Constraints.MinWidth = 145
      TabOrder = 3
      TabStop = True
      inherited alActions: TActionList
        Top = 8
      end
      inherited dsData: TDataSource
        Top = 8
      end
      inherited cdsDates: TAbmesClientDataSet
        Top = 8
      end
      inherited dsDates: TDataSource
        Top = 8
      end
    end
    inline frVendorPlanPositionDate: TfrDateIntervalFrame
      Left = 128
      Top = 64
      Width = 145
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 145
      Constraints.MinHeight = 21
      Constraints.MinWidth = 145
      TabOrder = 4
      TabStop = True
      inherited alActions: TActionList
        Top = 8
      end
      inherited dsData: TDataSource
        Top = 8
      end
      inherited cdsDates: TAbmesClientDataSet
        Top = 8
      end
      inherited dsDates: TDataSource
        Top = 8
      end
    end
    object edtBeginVendorPositionDaysRsv: TDBEdit
      Left = 304
      Top = 64
      Width = 33
      Height = 21
      DataField = 'BEGIN_VENDOR_POSITION_DAYS_RSV'
      DataSource = dsData
      TabOrder = 5
    end
    object edtEndVendorPositionDaysRsv: TDBEdit
      Left = 352
      Top = 64
      Width = 33
      Height = 21
      DataField = 'END_VENDOR_POSITION_DAYS_RSV'
      DataSource = dsData
      TabOrder = 6
    end
    inline frVendorRealPositionDate: TfrDateIntervalFrame
      Left = 416
      Top = 64
      Width = 145
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 145
      Constraints.MinHeight = 21
      Constraints.MinWidth = 145
      TabOrder = 7
      TabStop = True
      inherited alActions: TActionList
        Top = 8
      end
      inherited dsData: TDataSource
        Top = 8
      end
      inherited cdsDates: TAbmesClientDataSet
        Top = 8
      end
      inherited dsDates: TDataSource
        Top = 8
      end
    end
    inline frPlanDecisionDate: TfrDateIntervalFrame
      Left = 128
      Top = 88
      Width = 145
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 145
      Constraints.MinHeight = 21
      Constraints.MinWidth = 145
      TabOrder = 8
      TabStop = True
      inherited alActions: TActionList
        Top = 8
      end
      inherited dsData: TDataSource
        Top = 8
      end
      inherited cdsDates: TAbmesClientDataSet
        Top = 8
      end
      inherited dsDates: TDataSource
        Top = 8
      end
    end
    object edtBeginDecisionDaysRsv: TDBEdit
      Left = 304
      Top = 88
      Width = 33
      Height = 21
      DataField = 'BEGIN_DECISION_DAYS_RSV'
      DataSource = dsData
      TabOrder = 9
    end
    object endDecisionDaysRsv: TDBEdit
      Left = 352
      Top = 88
      Width = 33
      Height = 21
      DataField = 'END_DECISION_DAYS_RSV'
      DataSource = dsData
      TabOrder = 10
    end
    inline frRealDecisionDate: TfrDateIntervalFrame
      Left = 416
      Top = 88
      Width = 145
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 145
      Constraints.MinHeight = 21
      Constraints.MinWidth = 145
      TabOrder = 11
      TabStop = True
      inherited alActions: TActionList
        Top = 8
      end
      inherited dsData: TDataSource
        Top = 8
      end
      inherited cdsDates: TAbmesClientDataSet
        Top = 8
      end
      inherited dsDates: TDataSource
        Top = 8
      end
    end
  end
  inherited alActions: TActionList [15]
    inherited actForm: TAction
      Caption = 
        '%s '#1085#1072' '#1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1073#1086#1089#1086#1073#1077#1085#1080' '#1044#1080#1072#1083#1086#1079#1080' '#1089' '#1044#1086#1089#1090#1072#1074#1095#1080#1094#1080' %ForOrOf% %Prov' +
        'ision%'
    end
  end
  inherited dsData: TDataSource [16]
    Left = 88
  end
  inherited cdsData: TAbmesClientDataSet [17]
    Left = 56
  end
  inherited dsFilterVariants: TDataSource [18]
    Left = 48
    Top = 584
  end
  inherited cdsFilterVariants: TAbmesClientDataSet
    Left = 24
    Top = 584
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Left = 72
    Top = 600
  end
  object dsStatuses: TDataSource
    DataSet = cdsStatuses
    Left = 80
    Top = 48
  end
  object cdsStatuses: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 48
    Top = 48
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
  object cdsBranches: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompany
    Filter = '(IS_LOCAL_BRANCH <> 0) and (IS_INACTIVE = 0)'
    Params = <>
    ProviderName = 'prvBranches'
    Left = 256
    Top = 48
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
    object cdsBranchesIS_LOCAL_BRANCH: TAbmesFloatField
      FieldName = 'IS_LOCAL_BRANCH'
    end
    object cdsBranchesIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
    end
  end
  object dsBranches: TDataSource
    DataSet = cdsBranches
    Left = 272
    Top = 48
  end
  object cdsAspectTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvAspectTypes'
    Left = 456
    Top = 48
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
    Left = 480
    Top = 48
  end
  object cdsDecisionTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conDeliveries
    Params = <>
    ProviderName = 'prvDeliveryDecisions'
    Left = 396
    Top = 384
    object cdsDecisionTypesDELIVERY_DECISION_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_DECISION_CODE'
    end
    object cdsDecisionTypesDELIVERY_DECISION_ABBREV: TAbmesWideStringField
      FieldName = 'DELIVERY_DECISION_ABBREV'
      Size = 5
    end
    object cdsDecisionTypesDELIVERY_DECISION_NAME: TAbmesWideStringField
      FieldName = 'DELIVERY_DECISION_NAME'
      Size = 50
    end
  end
  object dsDecisionTypes: TDataSource
    DataSet = cdsDecisionTypes
    Left = 428
    Top = 384
  end
  object cdsCountries: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvCountries'
    Left = 288
    Top = 184
    object cdsCountriesCOUNTRY_CODE: TAbmesFloatField
      FieldName = 'COUNTRY_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCountriesCOUNTRY_ABBREV: TAbmesWideStringField
      FieldName = 'COUNTRY_ABBREV'
      Required = True
      Size = 5
    end
    object cdsCountriesCOUNTRY_NAME: TAbmesWideStringField
      FieldName = 'COUNTRY_NAME'
      Required = True
      Size = 50
    end
  end
  object dsCountries: TDataSource
    DataSet = cdsCountries
    Left = 320
    Top = 184
  end
  object cdsDeliveryDealTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conDeliveries
    Params = <>
    ProviderName = 'prvDeliveryDealTypes'
    Left = 192
    Top = 48
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
    Left = 216
    Top = 48
  end
  object cdsStreamTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvStreamTypes'
    Left = 448
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
    Left = 464
    Top = 65528
  end
  object cdsDeliveryTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conDeliveries
    Params = <>
    ProviderName = 'prvDeliveryTypes'
    Left = 328
    Top = 120
    object cdsDeliveryTypesDELIVERY_TYPE_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_TYPE_CODE'
    end
    object cdsDeliveryTypesDELIVERY_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'DELIVERY_TYPE_ABBREV'
      Size = 5
    end
  end
  object dsDeliveryTypes: TDataSource
    DataSet = cdsDeliveryTypes
    Left = 344
    Top = 120
  end
end
