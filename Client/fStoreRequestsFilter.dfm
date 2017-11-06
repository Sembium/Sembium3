inherited fmStoreRequestsFilter: TfmStoreRequestsFilter
  Left = 361
  Top = 121
  Caption = '%s '#1085#1072' '#1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1043#1088#1091#1087#1086#1074#1080' '#1047#1072#1103#1074#1082#1080' '#1079#1072' %s '#1085#1072' %ProductClassAbbrev%'
  ClientHeight = 428
  ClientWidth = 793
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 393
    Width = 793
    TabOrder = 10
    inherited pnlOKCancel: TPanel
      Left = 525
    end
    inherited pnlClose: TPanel
      Left = 436
    end
    inherited pnlApply: TPanel
      Left = 704
    end
  end
  object gbID: TGroupBox [1]
    Left = 8
    Top = 8
    Width = 233
    Height = 65
    Caption = ' ID '#1043#1088#1091#1087#1086#1074#1072' '#1047#1072#1103#1074#1082#1072' '
    TabOrder = 0
    object lblStoreRequestBranchNo: TLabel
      Left = 16
      Top = 16
      Width = 72
      Height = 13
      Caption = #1058#1055' '#1043#1083#1072#1074#1085#1086
      FocusControl = cbStoreRequestBranchNo
    end
    object lblStoreRequestNo: TLabel
      Left = 136
      Top = 16
      Width = 14
      Height = 13
      Caption = 'No'
      FocusControl = edtStoreRequestNo
    end
    object cbStoreRequestBranchNo: TJvDBLookupCombo
      Left = 16
      Top = 32
      Width = 105
      Height = 21
      DeleteKeyClear = False
      DataField = '_STORE_REQUEST_BRANCH_IDENTIFIER'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
      TabOrder = 0
    end
    object edtStoreRequestNo: TDBEdit
      Left = 136
      Top = 32
      Width = 81
      Height = 21
      DataField = 'STORE_REQUEST_CODE'
      DataSource = dsData
      TabOrder = 1
    end
  end
  object gbInOut: TGroupBox [2]
    Left = 176
    Top = 152
    Width = 217
    Height = 57
    Caption = ' '#1042#1080#1076' '
    TabOrder = 5
    object chkIsIn: TDBCheckBox
      Left = 8
      Top = 16
      Width = 97
      Height = 17
      Caption = #1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103
      DataField = 'IS_IN'
      DataSource = dsData
      TabOrder = 0
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object chkIsOut: TDBCheckBox
      Left = 8
      Top = 32
      Width = 97
      Height = 17
      Caption = #1058#1077#1075#1083#1077#1085#1080#1103
      DataField = 'IS_OUT'
      DataSource = dsData
      TabOrder = 1
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
  end
  object gbDateInterval: TGroupBox [3]
    Left = 8
    Top = 152
    Width = 161
    Height = 57
    Caption = ' '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1042#1072#1083#1080#1076#1085#1086#1089#1090' '
    TabOrder = 4
    inline frDateInterval: TfrDateIntervalFrame
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
    end
  end
  object gbStatus: TGroupBox [4]
    Left = 400
    Top = 152
    Width = 385
    Height = 57
    Caption = ' '#1057#1090#1072#1090#1091#1089' '
    TabOrder = 6
    object cbClosed: TAbmesDBCheckBox
      Left = 16
      Top = 16
      Width = 94
      Height = 17
      Caption = #1055#1088#1080#1082#1083#1102#1095#1077#1085#1080
      DataField = 'IS_FINISHED'
      DataSource = dsData
      TabOrder = 0
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object cbNotClosed: TAbmesDBCheckBox
      Left = 16
      Top = 32
      Width = 93
      Height = 17
      Caption = #1053#1077#1087#1088#1080#1082#1083#1102#1095#1077#1085#1080
      DataField = 'IS_NOT_FINISHED'
      DataSource = dsData
      TabOrder = 1
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object cbAnnuled: TAbmesDBCheckBox
      Left = 224
      Top = 16
      Width = 73
      Height = 17
      Caption = #1040#1085#1091#1083#1080#1088#1072#1085#1080
      DataField = 'IS_ANNULED'
      DataSource = dsData
      TabOrder = 2
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object cbNotAnnuled: TAbmesDBCheckBox
      Left = 224
      Top = 32
      Width = 86
      Height = 17
      Caption = #1053#1077#1072#1085#1091#1083#1080#1088#1072#1085#1080
      DataField = 'IS_NOT_ANNULED'
      DataSource = dsData
      TabOrder = 3
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
  end
  inline frRequestEmployee: TfrEmployeeFieldEditFrameLabeled [5]
    Left = 400
    Top = 80
    Width = 385
    Height = 65
    Constraints.MaxHeight = 65
    Constraints.MinHeight = 65
    TabOrder = 3
    TabStop = True
    inherited gbEmployee: TGroupBox
      Width = 385
      Caption = ' '#1055#1086#1080#1089#1082#1072#1083' '#1043#1088#1091#1087#1086#1074#1072' '#1047#1072#1103#1074#1082#1072' '
      inherited pnlEmployeeName: TPanel
        Width = 310
        inherited pnlRightButtons: TPanel
          Left = 274
        end
        inherited pnlEmpoyeeNameInner: TPanel
          Width = 274
          inherited edtEmployeeName: TDBEdit
            Width = 299
          end
          inherited cbEmployee: TJvDBLookupCombo
            Width = 273
          end
        end
      end
      inherited pnlPaddingRight: TPanel
        Left = 375
      end
      inherited pnlLabels: TPanel
        Width = 381
        inherited lblCode: TLabel
          Width = 19
        end
        inherited lblName: TLabel
          Width = 22
        end
      end
    end
  end
  inline frRequestDept: TfrDeptFieldEditFrameLabeled [6]
    Left = 8
    Top = 80
    Width = 385
    Height = 65
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 65
    TabOrder = 2
    TabStop = True
    inherited gbTreeNode: TGroupBox
      Width = 385
      Caption = ' '#1058#1055' '#1047#1072#1103#1074#1103#1074#1072#1097#1086' '
      inherited lblTreeNodeName: TLabel
        Width = 76
      end
      inherited lblTreeNodeNo: TLabel
        Width = 19
      end
      inherited pnlTreeNode: TPanel
        Width = 369
        inherited pnlTreeNodeName: TPanel
          Width = 222
          inherited edtTreeNodeName: TDBEdit
            Width = 221
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 222
        end
        inherited pnlRightButtons: TPanel
          Left = 333
        end
      end
    end
  end
  inline frStore: TfrDeptFieldEditFrameLabeled [7]
    Left = 400
    Top = 232
    Width = 385
    Height = 65
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 65
    TabOrder = 8
    TabStop = True
    inherited gbTreeNode: TGroupBox
      Width = 385
      Caption = ' '#1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086' '
      inherited lblTreeNodeName: TLabel
        Width = 76
      end
      inherited lblTreeNodeNo: TLabel
        Width = 19
      end
      inherited pnlTreeNode: TPanel
        Width = 369
        inherited pnlTreeNodeName: TPanel
          Width = 222
          inherited edtTreeNodeName: TDBEdit
            Width = 221
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 222
        end
        inherited pnlRightButtons: TPanel
          Left = 333
        end
      end
    end
  end
  inline frProduct: TfrProductFieldEditFrameLabeled [8]
    Left = 8
    Top = 232
    Width = 385
    Height = 65
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 65
    TabOrder = 7
    TabStop = True
    inherited gbTreeNode: TGroupBox
      Width = 385
      inherited pnlTreeNode: TPanel
        Width = 369
        inherited pnlTreeNodeName: TPanel
          Width = 199
          inherited edtTreeNodeName: TDBEdit
            Width = 198
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 199
        end
        inherited pnlRightButtons: TPanel
          Left = 310
        end
      end
    end
  end
  inline frBndProcess: TfrStoreDealBindingFilter [9]
    Left = 8
    Top = 304
    Width = 777
    Height = 81
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    TabStop = True
  end
  inline frPartner: TfrPartnerFieldEditFrameLabeled [10]
    Left = 400
    Top = 8
    Width = 385
    Height = 65
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 65
    Constraints.MinHeight = 65
    TabOrder = 1
    inherited gbPartner: TGroupBox
      Width = 385
      inherited pnlNameAndButtons: TPanel
        Width = 296
        inherited pnlRightButtons: TPanel
          Left = 260
        end
        inherited pnlPartnerName: TPanel
          Width = 260
          inherited edtPartnerName: TDBEdit
            Width = 261
          end
          inherited cbPartner: TJvDBLookupCombo
            Width = 261
          end
        end
      end
      inherited pnlPaddingRight: TPanel
        Left = 377
      end
      inherited pnlLabels: TPanel
        Width = 381
        inherited lblCode: TLabel
          Width = 19
        end
        inherited lblName: TLabel
          Width = 76
        end
      end
    end
  end
  inherited alActions: TActionList
    Left = 360
    inherited actForm: TAction
      Caption = '%s '#1085#1072' '#1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1043#1088#1091#1087#1086#1074#1080' '#1047#1072#1103#1074#1082#1080' '#1079#1072' %s '#1085#1072' %ProductClassAbbrev%'
    end
  end
  inherited dsData: TDataSource
    Left = 328
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 296
  end
  inherited cdsFilterVariants: TAbmesClientDataSet
    Left = 16
    Top = 400
  end
  inherited dsFilterVariants: TDataSource
    Left = 40
    Top = 400
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Left = 64
    Top = 416
  end
end
