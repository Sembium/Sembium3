inherited fmEmployeeEarningsFilter: TfmEmployeeEarningsFilter
  Left = 346
  Top = 186
  ActiveControl = frDept.edtTreeNodeNo
  Caption = '%s '#1085#1072' '#1058#1088#1091#1076' '#1085#1072' '#1057#1083#1091#1078#1080#1090#1077#1083#1080
  ClientHeight = 462
  ClientWidth = 433
  ExplicitWidth = 439
  ExplicitHeight = 487
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 427
    Width = 433
    TabOrder = 5
    ExplicitTop = 427
    ExplicitWidth = 433
    inherited pnlOKCancel: TPanel
      Left = 165
      ExplicitLeft = 165
    end
    inherited pnlClose: TPanel
      Left = 76
      ExplicitLeft = 76
    end
    inherited pnlApply: TPanel
      Left = 344
      ExplicitLeft = 344
    end
  end
  inline frDeptFilter: TfrDeptFilter [1]
    Left = 8
    Top = 272
    Width = 417
    Height = 145
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    TabStop = True
    ExplicitLeft = 8
    ExplicitTop = 272
    ExplicitWidth = 417
    inherited grpTreeNodeFilter: TGroupBox
      Width = 417
      Caption = ' '#1055#1086#1083#1077#1074#1080' '#1054#1073#1093#1074#1072#1090' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090' '
      ExplicitWidth = 417
      inherited lblsExternal: TLabel
        Width = 52
        ExplicitWidth = 52
      end
      inherited lblIsActive: TLabel
        Width = 53
        ExplicitWidth = 53
      end
      inherited pnlNodes: TPanel
        Width = 401
        ExplicitWidth = 401
        inherited grdChosenNodes: TAbmesDBGrid
          Width = 376
          FooterFont.Name = 'Microsoft Sans Serif'
          TitleFont.Name = 'Microsoft Sans Serif'
          Columns = <
            item
              EditButtons = <>
              FieldName = 'NODE_NAME'
              Footers = <>
              Width = 279
            end
            item
              EditButtons = <>
              FieldName = 'NODE_IDENTIFIER'
              Footers = <>
              Width = 63
            end>
        end
        inherited pnlNodesButtons: TPanel
          Left = 376
          ExplicitLeft = 376
        end
      end
    end
  end
  object rgHasOccupation: TDBRadioGroup [2]
    Left = 8
    Top = 136
    Width = 241
    Height = 57
    DataField = 'HAS_OCCUPATION'
    DataSource = dsData
    Items.Strings = (
      #1053#1072#1079#1085#1072#1095#1077#1085#1080' '#1080' '#1053#1077#1085#1072#1079#1085#1072#1095#1077#1085#1080' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090
      #1053#1072#1079#1085#1072#1095#1077#1085#1080' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090)
    ParentBackground = True
    TabOrder = 1
    Values.Strings = (
      'False'
      'True')
  end
  inline frDept: TfrDeptFieldEditFrame [3]
    Left = 8
    Top = 208
    Width = 417
    Height = 49
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    TabOrder = 3
    TabStop = True
    ExplicitLeft = 8
    ExplicitTop = 208
    inherited gbTreeNode: TGroupBox
      Caption = ' '#1054#1088#1063' '#1085#1072' '#1054#1089#1085#1086#1074#1085#1086' '#1044#1083#1098#1078#1085#1086#1089#1090#1085#1086' '#1053#1072#1079#1085#1072#1095#1077#1085#1080#1077' '
    end
  end
  object gbDateInterval: TGroupBox [4]
    Left = 264
    Top = 136
    Width = 161
    Height = 57
    Caption = ' '#1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083' '
    TabOrder = 2
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
      ExplicitLeft = 8
      ExplicitTop = 24
    end
  end
  object gbTeamAndEmployee: TGroupBox [5]
    Left = 8
    Top = 8
    Width = 417
    Height = 113
    TabOrder = 0
    object lblBaseTeam: TLabel
      Left = 8
      Top = 16
      Width = 25
      Height = 13
      Caption = #1045#1082#1080#1087
      FocusControl = edtTeamNo
    end
    object lblEmployee: TLabel
      Left = 8
      Top = 64
      Width = 49
      Height = 13
      Caption = #1057#1083#1091#1078#1080#1090#1077#1083
    end
    object edtTeamNo: TDBEdit
      Left = 8
      Top = 32
      Width = 57
      Height = 21
      DataField = '_TEAM_NO'
      DataSource = dsData
      TabOrder = 0
    end
    object cbTeamName: TJvDBLookupCombo
      Left = 64
      Top = 32
      Width = 345
      Height = 21
      EscapeClear = False
      DataField = '_TEAM_NAME'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
      TabOrder = 1
    end
    inline frEmployee: TfrEmployeeFieldEditFrameBald
      Left = 8
      Top = 80
      Width = 401
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 2
      TabStop = True
      ExplicitLeft = 8
      ExplicitTop = 80
      ExplicitWidth = 401
      inherited gbEmployee: TGroupBox
        Width = 420
        ExplicitWidth = 420
        inherited pnlEmployeeName: TPanel
          Width = 345
          ExplicitWidth = 345
          inherited pnlRightButtons: TPanel
            Left = 309
            ExplicitLeft = 309
          end
          inherited pnlEmpoyeeNameInner: TPanel
            Width = 309
            ExplicitWidth = 309
            inherited edtEmployeeName: TDBEdit
              Width = 263
              ExplicitWidth = 263
            end
            inherited cbEmployee: TJvDBLookupCombo
              Width = 308
              ExplicitWidth = 308
            end
          end
        end
        inherited pnlPaddingRight: TPanel
          Left = 410
          ExplicitLeft = 410
        end
      end
    end
  end
  inherited alActions: TActionList [6]
    inherited actForm: TAction
      Caption = '%s '#1085#1072' '#1058#1088#1091#1076' '#1085#1072' '#1057#1083#1091#1078#1080#1090#1077#1083#1080
    end
  end
  inherited dsData: TDataSource [8]
  end
  inherited cdsData: TAbmesClientDataSet [9]
  end
  inherited dsFilterVariants: TDataSource [10]
    Left = 48
    Top = 360
  end
  inherited cdsFilterVariants: TAbmesClientDataSet
    Left = 24
    Top = 360
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Left = 72
    Top = 352
  end
end
