inherited fmSpecificationsFilter: TfmSpecificationsFilter
  Left = 406
  Top = 319
  ActiveControl = frSpecProduct.grdChosenNodes
  Caption = #1060#1080#1083#1090#1098#1088' '#1085#1072' '#1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1055'-'#1052#1054#1044#1045#1083'-'#1080' '#1085#1072' '#1059#1054#1073
  ClientHeight = 474
  ClientWidth = 721
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 705
    Height = 425
  end
  inherited pnlBottomButtons: TPanel
    Top = 439
    Width = 721
    TabOrder = 9
    inherited pnlOKCancel: TPanel
      Left = 453
    end
    inherited pnlClose: TPanel
      Left = 364
    end
    inherited pnlApply: TPanel
      Left = 632
    end
  end
  object gbActive: TGroupBox [2]
    Left = 124
    Top = 370
    Width = 93
    Height = 55
    Caption = ' '#1059#1087#1088'. '#1054#1073#1077#1082#1090#1080' '
    TabOrder = 5
    object chbActive: TAbmesDBCheckBox
      Left = 8
      Top = 15
      Width = 63
      Height = 17
      Caption = #1040#1082#1090#1080#1074#1085#1080
      DataField = 'IS_ACTIVE'
      DataSource = dsData
      TabOrder = 0
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object chbInactive: TAbmesDBCheckBox
      Left = 8
      Top = 33
      Width = 76
      Height = 17
      Caption = #1053#1077#1072#1082#1090#1080#1074#1085#1080
      DataField = 'IS_INACTIVE'
      DataSource = dsData
      TabOrder = 1
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
  end
  object gbSpecificationData: TGroupBox [3]
    Left = 424
    Top = 16
    Width = 281
    Height = 409
    Caption = ' '#1055#1088#1080#1085#1094#1080#1087#1077#1085' '#1052#1054#1044#1045#1083' '
    TabOrder = 8
    object lblManufacturer: TLabel
      Left = 8
      Top = 64
      Width = 145
      Height = 13
      Caption = #1057#1098#1079#1076#1072#1083' '#1059#1087#1088#1072#1074#1083#1103#1077#1084#1080#1103' '#1054#1073#1077#1082#1090
    end
    object lblSpecificationType: TLabel
      Left = 192
      Top = 16
      Width = 19
      Height = 13
      Caption = #1042#1080#1076
    end
    object lblAuthor: TLabel
      Left = 8
      Top = 112
      Width = 153
      Height = 13
      Caption = #1057#1098#1079#1076#1072#1083' '#1048#1085#1078#1077#1085#1077#1088#1085#1072' '#1057#1090#1088#1091#1082#1090#1091#1088#1072
    end
    object lblAuthorizationEmployee: TLabel
      Left = 8
      Top = 160
      Width = 181
      Height = 13
      Caption = #1040#1074#1090#1086#1088#1080#1079#1080#1088#1072#1083' '#1048#1085#1078#1077#1085#1077#1088#1085#1072' '#1057#1090#1088#1091#1082#1090#1091#1088#1072
    end
    object lblCreateDateInterval: TLabel
      Left = 8
      Top = 303
      Width = 99
      Height = 13
      Caption = #1044#1072#1090#1072' '#1085#1072' '#1089#1098#1079#1076#1072#1074#1072#1085#1077
    end
    object lblChangeDateInterval: TLabel
      Left = 8
      Top = 351
      Width = 139
      Height = 13
      Caption = #1044#1072#1090#1072' '#1085#1072' '#1087#1086#1089#1083#1077#1076#1085#1072' '#1087#1088#1086#1084#1103#1085#1072
    end
    object lblDash: TLabel
      Left = 89
      Top = 36
      Width = 6
      Height = 13
      Caption = #8212
    end
    object lblStatus: TLabel
      Left = 8
      Top = 16
      Width = 34
      Height = 13
      Caption = #1057#1090#1072#1090#1091#1089
      FocusControl = cbMinSpecState
    end
    object lblSpecModelMainDept: TLabel
      Left = 8
      Top = 207
      Width = 224
      Height = 13
      Caption = #1058#1055' '#1056#1077#1072#1083#1080#1079#1072#1090#1086#1088' '#1085#1072' '#1042#1072#1088#1080#1072#1085#1090' '#1085#1072' '#1055'-'#1052#1054#1044#1045#1083
    end
    object lblSMVSDept: TLabel
      Left = 8
      Top = 255
      Width = 149
      Height = 13
      Caption = #1058#1055', '#1091#1095#1072#1089#1090#1074#1072#1097#1086' '#1074' '#1055'-'#1052#1054#1044#1045#1083
    end
    object cbSpecificationType: TJvDBLookupCombo
      Left = 192
      Top = 32
      Width = 81
      Height = 21
      DataField = '_SPEC_TYPE_NAME'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
      TabOrder = 2
    end
    inline frAuthor: TfrEmployeeFieldEditFrameBald
      Left = 8
      Top = 128
      Width = 265
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 4
      TabStop = True
      inherited gbEmployee: TGroupBox
        Width = 284
        inherited pnlEmployeeName: TPanel
          Width = 209
          inherited pnlRightButtons: TPanel
            Left = 173
          end
          inherited pnlEmpoyeeNameInner: TPanel
            Width = 173
            inherited cbEmployee: TJvDBLookupCombo
              Width = 172
            end
          end
        end
        inherited pnlPaddingRight: TPanel
          Left = 274
        end
      end
    end
    inline frAuthorizationEmployee: TfrEmployeeFieldEditFrameBald
      Left = 8
      Top = 176
      Width = 265
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 5
      TabStop = True
      inherited gbEmployee: TGroupBox
        Width = 284
        inherited pnlEmployeeName: TPanel
          Width = 209
          inherited pnlRightButtons: TPanel
            Left = 173
          end
          inherited pnlEmpoyeeNameInner: TPanel
            Width = 173
            inherited cbEmployee: TJvDBLookupCombo
              Width = 172
            end
          end
        end
        inherited pnlPaddingRight: TPanel
          Left = 274
        end
      end
    end
    inline frCreateDateInterval: TfrDateIntervalFrame
      Left = 8
      Top = 319
      Width = 145
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 145
      Constraints.MinHeight = 21
      Constraints.MinWidth = 145
      TabOrder = 8
      TabStop = True
    end
    inline frChangeDateInterval: TfrDateIntervalFrame
      Left = 8
      Top = 367
      Width = 145
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 145
      Constraints.MinHeight = 21
      Constraints.MinWidth = 145
      TabOrder = 9
      TabStop = True
    end
    inline frManufacturer: TfrPartnerFieldEditFrameBald
      Left = 8
      Top = 80
      Width = 265
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 3
      TabStop = True
      inherited gbPartner: TGroupBox
        Width = 280
        inherited pnlNameAndButtons: TPanel
          Width = 191
          inherited pnlRightButtons: TPanel
            Left = 155
          end
          inherited pnlPartnerName: TPanel
            Width = 155
            inherited cbPartner: TJvDBLookupCombo
              Width = 156
            end
          end
        end
        inherited pnlPaddingRight: TPanel
          Left = 272
        end
      end
    end
    object cbMinSpecState: TDBComboBoxEh
      Left = 8
      Top = 33
      Width = 77
      Height = 21
      DataField = 'MIN_SPEC_STATE_CODE'
      DataSource = dsData
      DropDownBox.Width = 350
      EditButtons = <>
      TabOrder = 0
      Visible = True
    end
    object cbMaxSpecState: TDBComboBoxEh
      Left = 100
      Top = 33
      Width = 77
      Height = 21
      DataField = 'MAX_SPEC_STATE_CODE'
      DataSource = dsData
      DropDownBox.Width = 350
      EditButtons = <>
      TabOrder = 1
      Visible = True
    end
    inline frSpecModelMainDept: TfrDeptFieldEditFrameBald
      Left = 8
      Top = 224
      Width = 265
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 6
      inherited gbTreeNode: TGroupBox
        Width = 281
        inherited pnlTreeNode: TPanel
          Width = 265
          inherited pnlTreeNodeName: TPanel
            Width = 118
            inherited edtTreeNodeName: TDBEdit
              Width = 117
            end
          end
          inherited pnlTreeNodeNo: TPanel
            Left = 118
          end
          inherited pnlRightButtons: TPanel
            Left = 229
          end
        end
      end
    end
    inline frSMVSDept: TfrDeptFieldEditFrameBald
      Left = 8
      Top = 272
      Width = 265
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 7
      inherited gbTreeNode: TGroupBox
        Width = 281
        inherited pnlTreeNode: TPanel
          Width = 265
          inherited pnlTreeNodeName: TPanel
            Width = 118
            inherited edtTreeNodeName: TDBEdit
              Width = 117
            end
          end
          inherited pnlTreeNodeNo: TPanel
            Left = 118
          end
          inherited pnlRightButtons: TPanel
            Left = 229
          end
        end
      end
    end
  end
  inline frSpecProduct: TfrParamProductFilter [4]
    Left = 16
    Top = 16
    Width = 401
    Height = 255
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    TabStop = True
    inherited grpTreeNodeFilter: TGroupBox
      Width = 401
      Height = 255
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
        Width = 385
        inherited grdChosenNodes: TAbmesDBGrid
          Width = 360
          FooterFont.Name = 'Microsoft Sans Serif'
          TitleFont.Name = 'Microsoft Sans Serif'
          Columns = <
            item
              EditButtons = <>
              FieldName = 'NODE_NAME'
              Footers = <>
              Width = 259
            end
            item
              EditButtons = <>
              FieldName = 'NODE_NO'
              Footers = <>
              Width = 67
            end>
        end
        inherited pnlNodesButtons: TPanel
          Left = 360
        end
      end
      inherited pnlParams: TPanel
        Width = 385
        inherited grdChosenNodeParams: TAbmesDBGrid
          Width = 360
          FooterFont.Name = 'Microsoft Sans Serif'
          TitleFont.Name = 'Microsoft Sans Serif'
          Columns = <
            item
              EditButtons = <>
              FieldName = 'NODE_PARAM_NAME'
              Footers = <>
              Width = 152
            end
            item
              EditButtons = <>
              FieldName = 'DISPLAY_VALUE'
              Footers = <>
              Width = 174
            end>
        end
        inherited pnlParamsButtons: TPanel
          Left = 360
        end
      end
    end
  end
  object chbIncludeDetails: TAbmesDBCheckBox [5]
    Left = 24
    Top = 246
    Width = 201
    Height = 17
    Caption = #1042#1082#1083#1102#1095#1080#1090#1077#1083#1085#1086' '#1089#1098#1089#1090#1072#1074#1103#1097#1080#1090#1077' '#1076#1077#1090#1072#1081#1083#1080
    DataField = 'INCLUDE_DETAILS'
    DataSource = dsData
    TabOrder = 1
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  object chbInactiveProduct: TGroupBox [6]
    Left = 324
    Top = 370
    Width = 93
    Height = 55
    Caption = ' '#1053#1077#1072#1082#1090'. '#1053#1057#1063' '
    TabOrder = 7
    object chbHasInactiveProduct: TAbmesDBCheckBox
      Left = 8
      Top = 15
      Width = 44
      Height = 17
      Caption = #1048#1084#1072
      DataField = 'HAS_INACTIVE_PRODUCT'
      DataSource = dsData
      TabOrder = 0
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object chbHasNotInactiveProduct: TAbmesDBCheckBox
      Left = 8
      Top = 33
      Width = 50
      Height = 17
      Caption = #1053#1103#1084#1072
      DataField = 'HAS_NOT_INACTIVE_PRODUCT'
      DataSource = dsData
      TabOrder = 1
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
  end
  object chbInactiveDetail: TGroupBox [7]
    Left = 224
    Top = 370
    Width = 93
    Height = 55
    Caption = ' '#1053#1077#1072#1082#1090'. '#1050#1057#1063' '
    TabOrder = 6
    object chbHasInactiveDetail: TAbmesDBCheckBox
      Left = 8
      Top = 15
      Width = 44
      Height = 17
      Caption = #1048#1084#1072
      DataField = 'HAS_INACTIVE_DETAIL'
      DataSource = dsData
      TabOrder = 0
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object chbHasNotInactiveDetail: TAbmesDBCheckBox
      Left = 8
      Top = 33
      Width = 50
      Height = 17
      Caption = #1053#1103#1084#1072
      DataField = 'HAS_NOT_INACTIVE_DETAIL'
      DataSource = dsData
      TabOrder = 1
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
  end
  inline frIncludeDetail: TfrProductFieldEditFrame [8]
    Left = 16
    Top = 276
    Width = 401
    Height = 44
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    TabOrder = 2
    TabStop = True
    inherited gbTreeNode: TGroupBox
      Width = 401
      Height = 44
      Caption = ' '#1050#1057#1063' / '#1043#1088#1091#1087#1072' '#1050#1057#1063' '
      inherited pnlTreeNode: TPanel
        Width = 385
        inherited pnlTreeNodeName: TPanel
          Width = 215
          inherited edtTreeNodeName: TDBEdit
            Width = 214
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 215
        end
        inherited pnlRightButtons: TPanel
          Left = 326
        end
      end
    end
  end
  inline frIncludeProduct: TfrProductFieldEditFrame [9]
    Left = 16
    Top = 323
    Width = 401
    Height = 45
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    TabOrder = 3
    TabStop = True
    inherited gbTreeNode: TGroupBox
      Width = 401
      Height = 45
      Caption = ' '#1053#1057#1063' / '#1043#1088#1091#1087#1072' '#1053#1057#1063' '
      inherited pnlTreeNode: TPanel
        Width = 385
        inherited pnlTreeNodeName: TPanel
          Width = 215
          inherited edtTreeNodeName: TDBEdit
            Width = 214
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 215
        end
        inherited pnlRightButtons: TPanel
          Left = 326
        end
      end
    end
  end
  object gbImported: TGroupBox [10]
    Left = 16
    Top = 370
    Width = 101
    Height = 55
    Caption = ' '#1055'-'#1052#1054#1044#1045#1083'-'#1080' '
    TabOrder = 4
    object chbImported: TAbmesDBCheckBox
      Left = 8
      Top = 15
      Width = 73
      Height = 17
      Caption = #1042#1084#1098#1082#1085#1072#1090#1080
      DataField = 'IS_IMPORTED'
      DataSource = dsData
      TabOrder = 0
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object chbNotImported: TAbmesDBCheckBox
      Left = 8
      Top = 33
      Width = 87
      Height = 17
      Caption = #1053#1077#1074#1084#1098#1082#1085#1072#1090#1080
      DataField = 'IS_NOT_IMPORTED'
      DataSource = dsData
      TabOrder = 1
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
  end
  inherited alActions: TActionList [11]
    Left = 80
    Top = 440
    inherited actForm: TAction
      Caption = #1060#1080#1083#1090#1098#1088' '#1085#1072' '#1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1055'-'#1052#1054#1044#1045#1083'-'#1080' '#1085#1072' '#1059#1054#1073
    end
  end
  inherited dsData: TDataSource [12]
    Left = 48
    Top = 440
  end
  inherited cdsFilterVariants: TAbmesClientDataSet [13]
    Left = 224
    Top = 440
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 16
    Top = 440
  end
  inherited dsFilterVariants: TDataSource
    Left = 256
    Top = 440
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Left = 288
    Top = 440
  end
  object cdsEmployeeFrameAllEmployees: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conHumanResource
    Params = <
      item
        DataType = ftFloat
        Name = 'SPECIAL_PROFESSION_EMPLOYEE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPECIAL_PROFESSION_EMPLOYEE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPECIAL_PROFESSION_EMPLOYEE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPECIAL_PROFESSION_EMPLOYEE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUIRED_PROFESSION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUIRED_PROFESSION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUIRED_PROFESSION_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvEmployeeFrame'
    Left = 408
  end
end
