inherited fmSaleOrdersFilter: TfmSaleOrdersFilter
  Caption = 
    '%s '#1085#1072' '#1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1073#1086#1089#1086#1073#1077#1085#1080' '#1044#1080#1072#1083#1086#1079#1080' '#1089' '#1050#1083#1080#1077#1085#1090#1080' '#1079#1072' '#1055#1088#1086#1076#1072#1078#1073#1072' '#1085#1072' %Pr' +
    'oductClassAbbrev% '#1087#1086' '#1047#1072#1076#1072#1085#1080#1077
  ClientHeight = 644
  ClientWidth = 849
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 609
    Width = 849
    TabOrder = 15
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
  object gbID: TGroupBox [1]
    Left = 176
    Top = 8
    Width = 433
    Height = 65
    Caption = ' ID '#1054#1044#1050' '
    TabOrder = 1
    object lblSaleDealType: TLabel
      Left = 8
      Top = 16
      Width = 19
      Height = 13
      Caption = #1058#1080#1087
    end
    object lblRequestBranch: TLabel
      Left = 72
      Top = 16
      Width = 51
      Height = 13
      Caption = #1058#1055' '#1043#1083'.'
    end
    object lblRequestNo: TLabel
      Left = 128
      Top = 16
      Width = 41
      Height = 13
      Caption = #1055#1044#1050' No'
    end
    object lblIsActivatedByClient: TLabel
      Left = 352
      Top = 16
      Width = 47
      Height = 13
      Caption = #1040#1082#1090#1080#1074'. '#1086#1090
    end
    object lblRequestLineNo: TLabel
      Left = 184
      Top = 16
      Width = 24
      Height = 13
      Caption = #1054#1044#1050
    end
    object lblAspectType: TLabel
      Left = 288
      Top = 16
      Width = 36
      Height = 13
      Caption = #1040#1089#1087#1077#1082#1090
    end
    object lblStreamType: TLabel
      Left = 224
      Top = 16
      Width = 31
      Height = 13
      Caption = #1055#1086#1090#1086#1082
    end
    object cbSaleDealType: TJvDBLookupCombo
      Left = 8
      Top = 32
      Width = 57
      Height = 21
      DropDownWidth = 250
      DeleteKeyClear = False
      DisplayAllFields = True
      DataField = '_SALE_DEAL_TYPE_SHOW_NAME'
      DataSource = dsData
      TabOrder = 0
    end
    object cbRequestBranch: TJvDBLookupCombo
      Left = 72
      Top = 32
      Width = 57
      Height = 21
      DisplayAllFields = True
      DataField = 'REQUEST_BRANCH_CODE'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089'.>'
      LookupField = 'BRANCH_CODE'
      LookupDisplay = 'BRANCH_IDENTIFIER'
      LookupSource = dsBranches
      TabOrder = 1
    end
    object edtRequestNo: TDBEdit
      Left = 128
      Top = 32
      Width = 57
      Height = 21
      DataField = 'REQUEST_NO'
      DataSource = dsData
      TabOrder = 2
    end
    object edtRequestLineNo: TDBEdit
      Left = 184
      Top = 32
      Width = 33
      Height = 21
      DataField = 'REQUEST_LINE_NO'
      DataSource = dsData
      TabOrder = 3
    end
    object cbAspectType: TJvDBLookupCombo
      Left = 288
      Top = 32
      Width = 57
      Height = 21
      DropDownWidth = 200
      DisplayAllFields = True
      DataField = 'ASPECT_TYPE_CODE'
      DataSource = dsData
      DisplayEmpty = ' '
      LookupField = 'ASPECT_TYPE_CODE'
      LookupDisplay = 'ASPECT_TYPE_ABBREV;ASPECT_TYPE_NAME'
      LookupSource = dsAspectTypes
      TabOrder = 4
    end
    object cbIsActivatedByClient: TJvDBComboBox
      Left = 352
      Top = 32
      Width = 73
      Height = 21
      DataField = 'IS_ACTIVATED_BY_CLIENT'
      DataSource = dsData
      Items.Strings = (
        '< '#1074#1089#1080#1095#1082#1080' >'
        #1048#1055
        #1050#1083#1080#1077#1085#1090)
      TabOrder = 5
      Values.Strings = (
        ''
        '0'
        '1')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
      ListSettings.OutfilteredValueFont.Style = []
    end
  end
  inline frManagerEmployee: TfrEmployeeFieldEditFrameLabeled [2]
    Left = 368
    Top = 80
    Width = 473
    Height = 65
    Constraints.MaxHeight = 65
    Constraints.MinHeight = 65
    TabOrder = 4
    TabStop = True
    inherited gbEmployee: TGroupBox
      Width = 473
      Caption = ' '#1042#1086#1076#1077#1097' '#1044#1080#1072#1083#1086#1075' '
      inherited pnlEmployeeName: TPanel
        Width = 398
        inherited pnlRightButtons: TPanel
          Left = 362
        end
        inherited pnlEmpoyeeNameInner: TPanel
          Width = 362
          inherited edtEmployeeName: TDBEdit
            Width = 387
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
    inherited alActions: TActionList
      Top = 48
    end
    inherited dsData: TDataSource
      Top = 48
    end
    inherited cdsEmployees: TAbmesClientDataSet
      Top = 48
    end
    inherited dsEmployees: TDataSource
      Top = 48
    end
    inherited cdsEmployee: TAbmesClientDataSet
      Top = 32
    end
    inherited dsEmployee: TDataSource
      Top = 32
    end
  end
  object gbClient: TGroupBox [3]
    Left = 8
    Top = 152
    Width = 473
    Height = 73
    Caption = ' '#1050#1083#1080#1077#1085#1090' '
    TabOrder = 5
    object lblPartnerCode: TLabel
      Left = 8
      Top = 24
      Width = 19
      Height = 13
      Caption = #1050#1086#1076
    end
    object lblPartner: TLabel
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
    object lblPriorityCode: TLabel
      Left = 368
      Top = 24
      Width = 54
      Height = 13
      Caption = #1055#1088#1080#1086#1088#1080#1090#1077#1090
    end
    inline frClientCompany: TfrPartnerFieldEditFrameBald
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
      DataField = 'CLIENT_COUNTRY_CODE'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
      LookupField = 'COUNTRY_CODE'
      LookupDisplay = 'COUNTRY_NAME'
      LookupSource = dsCountries
      TabOrder = 1
    end
    inline frClientPriority: TfrPriorityIntervalEditFrame
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
  object gbMediator: TGroupBox [4]
    Left = 488
    Top = 152
    Width = 353
    Height = 73
    Caption = ' '#1057#1074#1098#1088#1079#1072#1085#1086#1089#1090' '#1089' '#1055#1086#1089#1088#1077#1076#1085#1080#1082' '
    TabOrder = 6
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
  inline frChosenProducts: TfrParamProductFilter [5]
    Left = 8
    Top = 232
    Width = 377
    Height = 233
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    TabStop = True
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
    inherited alActions: TActionList
      Top = 8
    end
    inherited dsData: TDataSource
      Top = 8
    end
    inherited cdsChosenNodes: TAbmesClientDataSet
      Top = 8
    end
    inherited dsChosenNodes: TDataSource
      Top = 8
    end
    inherited cdsChosenNodesParams: TAbmesClientDataSet
      Top = 40
    end
    inherited dsChosenNodesParams: TDataSource
      Top = 40
    end
  end
  object gbParRelProduct: TGroupBox [6]
    Left = 392
    Top = 232
    Width = 449
    Height = 105
    Caption = ' '#1048#1079#1090#1086#1095#1085#1080#1082' '#1085#1072' '#1048#1085#1076#1091#1089#1090#1088#1080#1072#1083#1077#1085' '#1056#1077#1079#1091#1083#1090#1072#1090' (%ParRelProductAbbrev%) '
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
  object gbDecision: TGroupBox [7]
    Left = 392
    Top = 344
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
      DataField = 'DECISION_TYPE_CODE'
      DataSource = dsData
      DisplayEmpty = '<'#1074#1089'.>'
      FieldsDelimiter = '-'
      ListStyle = lsDelimited
      LookupField = 'DECISION_TYPE_CODE'
      LookupDisplay = 'DECISION_TYPE_ABBREV; DECISION_TYPE_NAME'
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
  object gbRequestRegisterDate: TGroupBox [8]
    Left = 8
    Top = 472
    Width = 257
    Height = 57
    Caption = ' '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1044#1072#1090#1072' '#1085#1072' '#1056#1077#1075#1080#1089#1090#1088#1080#1088#1072#1085#1077' '
    TabOrder = 10
    inline frRequestRegisterDateInterval: TfrDateIntervalFrame
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
  object gbHasAgreedQuantity: TGroupBox [9]
    Left = 392
    Top = 424
    Width = 225
    Height = 41
    Caption = ' '#1057#1098#1075#1083#1072#1089#1091#1074#1072#1085#1086#1089#1090' '#1087#1086' '#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '
    TabOrder = 11
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
  object gbHasAgreedSinglePrice: TGroupBox [10]
    Left = 624
    Top = 424
    Width = 217
    Height = 41
    Caption = ' '#1057#1098#1075#1083#1072#1089#1091#1074#1072#1085#1086#1089#1090' '#1087#1086' '#1045#1076'. '#1094#1077#1085#1072' '
    TabOrder = 12
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
  object gbPrognosis: TGroupBox [11]
    Left = 8
    Top = 536
    Width = 257
    Height = 65
    Caption = ' '#1053#1072#1095#1072#1083#1085#1072' '#1076#1072#1090#1072' '#1085#1072' '#1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072' '
    TabOrder = 13
    object lblPrognosisBeginDateInterval: TLabel
      Left = 8
      Top = 16
      Width = 40
      Height = 13
      Caption = #1042#1088#1084#1048#1085#1090
    end
    object lblPrognosisDaysRsv: TLabel
      Left = 168
      Top = 16
      Width = 64
      Height = 13
      Caption = #1056#1077#1079#1077#1088#1074' ('#1076#1085#1080')'
    end
    object lblDash4: TLabel
      Left = 205
      Top = 35
      Width = 6
      Height = 13
      Caption = #8212
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
      TabOrder = 1
    end
    object edtEndPrognosisDaysRsv: TDBEdit
      Left = 216
      Top = 32
      Width = 33
      Height = 21
      DataField = 'END_PROGNOSIS_DAYS_RSV'
      DataSource = dsData
      TabOrder = 2
    end
  end
  object gbDates: TGroupBox [12]
    Left = 272
    Top = 472
    Width = 569
    Height = 129
    TabOrder = 14
    object lblDaysRsv: TLabel
      Left = 304
      Top = 24
      Width = 64
      Height = 13
      Caption = #1056#1077#1079#1077#1088#1074' ('#1076#1085#1080')'
    end
    object lblDateInterval: TLabel
      Left = 416
      Top = 24
      Width = 125
      Height = 13
      Caption = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1054#1090#1095#1077#1090#1085#1072' '#1076#1072#1090#1072
    end
    object lblOfferSendPos: TLabel
      Left = 16
      Top = 43
      Width = 91
      Height = 13
      Caption = #1055#1086#1079#1080#1094#1080#1103' '#1085#1072' '#1048#1055
    end
    object lblOfferAnswerPos: TLabel
      Left = 16
      Top = 67
      Width = 98
      Height = 13
      Caption = #1055#1086#1079#1080#1094#1080#1103' '#1085#1072' '#1050#1083#1080#1077#1085#1090
    end
    object lblDecision: TLabel
      Left = 16
      Top = 91
      Width = 45
      Height = 13
      Caption = #1056#1077#1096#1077#1085#1080#1077
    end
    object lblDash1: TLabel
      Left = 341
      Top = 43
      Width = 6
      Height = 13
      Caption = #8212
    end
    object lblDash2: TLabel
      Left = 341
      Top = 67
      Width = 6
      Height = 13
      Caption = #8212
    end
    object lblDash3: TLabel
      Left = 341
      Top = 91
      Width = 6
      Height = 13
      Caption = #8212
    end
    object lblPlanDateInterval: TLabel
      Left = 128
      Top = 24
      Width = 128
      Height = 13
      Caption = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1055#1083#1072#1085#1086#1074#1072' '#1076#1072#1090#1072
    end
    inline frOfferSendPlanDateInterval: TfrDateIntervalFrame
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
    object edtBeginOfferSendDaysRsv: TDBEdit
      Left = 304
      Top = 40
      Width = 33
      Height = 21
      DataField = 'BEGIN_OFFER_SEND_DAYS_RSV'
      DataSource = dsData
      TabOrder = 1
    end
    object edtEndOfferSendDaysRsv: TDBEdit
      Left = 352
      Top = 40
      Width = 33
      Height = 21
      DataField = 'END_OFFER_SEND_DAYS_RSV'
      DataSource = dsData
      TabOrder = 2
    end
    inline frOfferSendDateInterval: TfrDateIntervalFrame
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
    inline frOfferAnswerPlanDateInterval: TfrDateIntervalFrame
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
    object edtBeginOfferAnswerDaysRsv: TDBEdit
      Left = 304
      Top = 64
      Width = 33
      Height = 21
      DataField = 'BEGIN_OFFER_ANSWER_DAYS_RSV'
      DataSource = dsData
      TabOrder = 5
    end
    object edtEndOfferAnswerDaysRsv: TDBEdit
      Left = 352
      Top = 64
      Width = 33
      Height = 21
      DataField = 'END_OFFER_ANSWER_DAYS_RSV'
      DataSource = dsData
      TabOrder = 6
    end
    inline frOfferAnswerDateInterval: TfrDateIntervalFrame
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
    inline frDecisionPlanDateInterval: TfrDateIntervalFrame
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
    inline frDecisionDateInterval: TfrDateIntervalFrame
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
  object gbStatus: TGroupBox [13]
    Left = 8
    Top = 8
    Width = 161
    Height = 65
    Caption = ' '#1057#1090#1072#1090#1091#1089' '
    TabOrder = 0
    object lblDash5: TLabel
      Left = 78
      Top = 35
      Width = 6
      Height = 13
      Caption = #8212
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
  object gbSale: TGroupBox [14]
    Left = 8
    Top = 80
    Width = 353
    Height = 65
    Caption = ' ID '#1054#1055#1055' '
    TabOrder = 3
    object lblSaleBranchCode: TLabel
      Left = 8
      Top = 16
      Width = 51
      Height = 13
      Caption = #1058#1055' '#1043#1083'.'
    end
    object lblSaleNo: TLabel
      Left = 72
      Top = 16
      Width = 41
      Height = 13
      Caption = #1054#1055#1055' No'
    end
    object lblSaleTypeCode: TLabel
      Left = 136
      Top = 16
      Width = 19
      Height = 13
      Caption = #1042#1080#1076
    end
    object lblPriority: TLabel
      Left = 248
      Top = 16
      Width = 54
      Height = 13
      Caption = #1055#1088#1080#1086#1088#1080#1090#1077#1090
    end
    object cbSaleBranchCode: TJvDBLookupCombo
      Left = 8
      Top = 32
      Width = 57
      Height = 21
      DisplayAllFields = True
      DataField = 'SALE_BRANCH_CODE'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089'.>'
      LookupField = 'BRANCH_CODE'
      LookupDisplay = 'BRANCH_IDENTIFIER'
      LookupSource = dsBranches
      TabOrder = 0
    end
    object edtSaleNo: TDBEdit
      Left = 72
      Top = 32
      Width = 57
      Height = 21
      DataField = 'SALE_NO'
      DataSource = dsData
      TabOrder = 1
    end
    object cbSaleTypeCode: TJvDBLookupCombo
      Left = 136
      Top = 32
      Width = 57
      Height = 21
      DisplayAllFields = True
      DataField = 'SALE_TYPE_CODE'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089'.>'
      LookupField = 'SALE_TYPE_CODE'
      LookupDisplay = 'SALE_TYPE_ABBREV'
      LookupSource = dsSaleTypes
      TabOrder = 2
    end
    inline frSalePriority: TfrPriorityIntervalEditFrame
      Left = 248
      Top = 32
      Width = 97
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 97
      Constraints.MinHeight = 21
      Constraints.MinWidth = 97
      TabOrder = 3
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
  object cbStreamType: TJvDBLookupCombo [15]
    Left = 400
    Top = 40
    Width = 57
    Height = 21
    DataField = 'STREAM_TYPE_CODE'
    DataSource = dsData
    DisplayEmpty = '< '#1074#1089' >'
    LookupField = 'STREAM_TYPE_CODE'
    LookupDisplay = 'STREAM_TYPE_ABBREV;STREAM_TYPE_NAME'
    LookupSource = dsStreamTypes
    TabOrder = 16
  end
  object pnlRightChangingGroupboxes: TPanel [16]
    Left = 616
    Top = 8
    Width = 225
    Height = 65
    BevelOuter = bvNone
    TabOrder = 2
    object gbLeaseDateUnit: TGroupBox
      Left = 0
      Top = 0
      Width = 225
      Height = 65
      Align = alTop
      Caption = ' '#1053#1072#1077#1084#1085#1072' '#1057#1090#1098#1087#1082#1072' '
      TabOrder = 0
      object cbDateUnit: TJvDBLookupCombo
        Left = 64
        Top = 32
        Width = 89
        Height = 21
        DeleteKeyClear = False
        DataField = 'LEASE_DATE_UNIT_CODE'
        DataSource = dsData
        DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
        LookupField = 'THE_DATE_UNIT_CODE'
        LookupDisplay = 'THE_DATE_UNIT_NAME'
        LookupSource = dsDateUnits
        TabOrder = 0
      end
    end
    object gbDelivery: TGroupBox
      Left = 0
      Top = 65
      Width = 225
      Height = 65
      Align = alTop
      Caption = ' '#1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090' '#1089' '#1054#1055#1044' '
      TabOrder = 1
      object lblDCDBranch: TLabel
        Left = 72
        Top = 16
        Width = 51
        Height = 13
        Caption = #1058#1055' '#1043#1083'.'
        FocusControl = cbDCDBranch
      end
      object lblDCDCode: TLabel
        Left = 128
        Top = 16
        Width = 42
        Height = 13
        Caption = #1054#1055#1044' No'
        FocusControl = edtDCDCode
      end
      object lblDeliveryProjectCode: TLabel
        Left = 184
        Top = 16
        Width = 14
        Height = 13
        Caption = 'No'
        FocusControl = edtDCDCode
      end
      object cbHasSale: TJvDBComboBox
        Left = 8
        Top = 32
        Width = 57
        Height = 21
        DataField = 'HAS_DELIVERY'
        DataSource = dsData
        Items.Strings = (
          '< '#1074#1089'. >'
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
      object cbDCDBranch: TJvDBLookupCombo
        Left = 72
        Top = 32
        Width = 57
        Height = 21
        DataField = 'DCD_BRANCH_CODE'
        DataSource = dsData
        DisplayEmpty = '< '#1074#1089'. >'
        LookupField = 'BRANCH_CODE'
        LookupDisplay = 'BRANCH_CODE_AND_NAME'
        LookupSource = dsBranches
        TabOrder = 1
      end
      object edtDCDCode: TDBEdit
        Left = 128
        Top = 32
        Width = 57
        Height = 21
        DataField = 'DCD_CODE'
        DataSource = dsData
        TabOrder = 2
      end
      object edtDeliveryProjectCode: TDBEdit
        Left = 184
        Top = 32
        Width = 33
        Height = 21
        DataField = 'DELIVERY_PROJECT_CODE'
        DataSource = dsData
        TabOrder = 3
      end
    end
  end
  inherited alActions: TActionList [17]
    Left = 256
    inherited actForm: TAction
      Caption = 
        '%s '#1085#1072' '#1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1073#1086#1089#1086#1073#1077#1085#1080' '#1044#1080#1072#1083#1086#1079#1080' '#1089' '#1050#1083#1080#1077#1085#1090#1080' '#1079#1072' '#1055#1088#1086#1076#1072#1078#1073#1072' '#1085#1072' %Pr' +
        'oductClassAbbrev% '#1087#1086' '#1047#1072#1076#1072#1085#1080#1077
    end
  end
  inherited dsData: TDataSource [18]
    Left = 168
  end
  inherited cdsData: TAbmesClientDataSet [19]
    Left = 136
  end
  inherited dsFilterVariants: TDataSource [20]
    Top = 608
  end
  inherited cdsFilterVariants: TAbmesClientDataSet
    Top = 608
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Top = 616
  end
  object cdsDateUnits: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvDateUnits'
    Left = 392
    Top = 112
    object cdsDateUnitsTHE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'THE_DATE_UNIT_CODE'
    end
    object cdsDateUnitsTHE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'THE_DATE_UNIT_NAME'
      Size = 50
    end
  end
  object dsDateUnits: TDataSource
    DataSet = cdsDateUnits
    Left = 408
    Top = 112
  end
  object cdsBranches: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompany
    Filter = '(IS_LOCAL_BRANCH <> 0) and (IS_INACTIVE = 0)'
    Params = <>
    ProviderName = 'prvBranches'
    Left = 88
    Top = 112
    object cdsBranchesBRANCH_CODE: TAbmesFloatField
      FieldName = 'BRANCH_CODE'
    end
    object cdsBranchesBRANCH_NO: TAbmesFloatField
      DisplayWidth = 3
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
    object cdsBranchesIS_LOCAL_BRANCH: TAbmesFloatField
      FieldName = 'IS_LOCAL_BRANCH'
    end
    object cdsBranchesIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
    end
  end
  object dsBranches: TDataSource
    DataSet = cdsBranches
    Left = 104
    Top = 112
  end
  object cdsAspectTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvAspectTypes'
    Left = 408
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
    Left = 424
    Top = 48
  end
  object cdsSaleTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conSalesCommon
    Params = <>
    ProviderName = 'prvSaleTypes'
    Left = 600
    Top = 112
    object cdsSaleTypesSALE_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_TYPE_CODE'
    end
    object cdsSaleTypesSALE_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'SALE_TYPE_ABBREV'
      Size = 3
    end
    object cdsSaleTypesSALE_TYPE_NAME: TAbmesWideStringField
      FieldName = 'SALE_TYPE_NAME'
      Size = 50
    end
  end
  object dsSaleTypes: TDataSource
    DataSet = cdsSaleTypes
    Left = 616
    Top = 112
  end
  object cdsCountries: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvCountries'
    Left = 304
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
    Left = 336
    Top = 184
  end
  object cdsDecisionTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conSaleOrders
    Params = <>
    ProviderName = 'prvDecisionTypes'
    Left = 396
    Top = 392
    object cdsDecisionTypesDECISION_TYPE_CODE: TAbmesFloatField
      FieldName = 'DECISION_TYPE_CODE'
    end
    object cdsDecisionTypesDECISION_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'DECISION_TYPE_ABBREV'
      Size = 4
    end
    object cdsDecisionTypesDECISION_TYPE_NAME: TAbmesWideStringField
      FieldName = 'DECISION_TYPE_NAME'
      Size = 50
    end
  end
  object dsDecisionTypes: TDataSource
    DataSet = cdsDecisionTypes
    Left = 428
    Top = 392
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
  object dsStatuses: TDataSource
    DataSet = cdsStatuses
    Left = 80
    Top = 48
  end
  object cdsStreamTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvStreamTypes'
    Left = 392
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
    Left = 408
    Top = 65528
  end
end
