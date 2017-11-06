inherited fmEmployeesAvailabilityGraphFilter: TfmEmployeesAvailabilityGraphFilter
  Left = 392
  Top = 287
  Caption = '%s '#1085#1072' '#1042#1048#1052' - '#1043#1088#1072#1092#1080#1095#1077#1085' '#1085#1072' '#1055#1088#1080#1089#1098#1089#1090#1074#1080#1103' '#1080' '#1054#1090#1089#1098#1089#1090#1074#1080#1103' '#1085#1072' '#1057#1083#1091#1078#1080#1090#1077#1083#1080
  ClientHeight = 323
  ClientWidth = 537
  ExplicitWidth = 543
  ExplicitHeight = 348
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 288
    Width = 537
    TabOrder = 5
    ExplicitTop = 288
    ExplicitWidth = 537
    inherited pnlOKCancel: TPanel
      Left = 269
      ExplicitLeft = 269
    end
    inherited pnlClose: TPanel
      Left = 180
      ExplicitLeft = 180
    end
    inherited pnlApply: TPanel
      Left = 448
      ExplicitLeft = 448
    end
  end
  inline frOccupationDept: TfrDeptFieldEditFrame [1]
    Left = 8
    Top = 88
    Width = 305
    Height = 49
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    TabOrder = 1
    TabStop = True
    ExplicitLeft = 8
    ExplicitTop = 88
    ExplicitWidth = 305
    inherited gbTreeNode: TGroupBox
      Width = 305
      Caption = ' '#1054#1088#1063' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1085#1086' '#1053#1072#1079#1085#1072#1095#1077#1085#1080#1077' - '#1054#1089#1085#1086#1074#1085#1086' '
      ExplicitWidth = 305
      DesignSize = (
        305
        49)
      inherited pnlTreeNode: TPanel
        Width = 289
        ExplicitWidth = 289
        inherited pnlTreeNodeName: TPanel
          Width = 142
          ExplicitWidth = 142
          inherited edtTreeNodeName: TDBEdit
            Width = 141
            ExplicitWidth = 141
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 142
          ExplicitLeft = 142
        end
        inherited pnlRightButtons: TPanel
          Left = 253
          ExplicitLeft = 253
        end
      end
    end
  end
  object gbShift: TGroupBox [2]
    Left = 320
    Top = 88
    Width = 97
    Height = 49
    Caption = ' '#1057#1084#1103#1085#1072' '
    TabOrder = 2
    DesignSize = (
      97
      49)
    object cbShift: TJvDBLookupCombo
      Left = 8
      Top = 16
      Width = 81
      Height = 21
      DataField = '_SHIFT_IDENTIFIER'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
    end
  end
  object gbIsExternal: TGroupBox [3]
    Left = 424
    Top = 88
    Width = 105
    Height = 49
    Caption = ' '#1055#1086#1079#1080#1094#1080#1103' '#1074' '#1048#1055' '
    TabOrder = 3
    DesignSize = (
      105
      49)
    object cbIsExternal: TJvDBComboBox
      Left = 8
      Top = 16
      Width = 89
      Height = 21
      DataField = 'IS_EXTERNAL'
      DataSource = dsData
      Anchors = [akLeft, akTop, akRight]
      ItemHeight = 13
      Items.Strings = (
        '< '#1074#1089#1080#1095#1082#1080' >'
        #1042#1098#1090#1088#1077#1096#1077#1085
        #1042#1098#1085#1096#1077#1085)
      TabOrder = 0
      Values.Strings = (
        ''
        '0'
        '1')
    end
  end
  inline frDateUnitsInterval: TfrDateUnitsIntervalEditFrame [4]
    Left = 8
    Top = 144
    Width = 521
    Height = 136
    TabOrder = 4
    TabStop = True
    ExplicitLeft = 8
    ExplicitTop = 144
    ExplicitWidth = 521
    inherited gbTimeUnits: TGroupBox
      Width = 521
      ExplicitWidth = 521
      inherited lblTimeUnit: TLabel
        Width = 84
        ExplicitWidth = 84
      end
      inherited lblTimeUnitCount: TLabel
        Width = 111
        ExplicitWidth = 111
      end
      inherited lblTUEnd: TLabel
        Left = 454
        ExplicitLeft = 454
      end
      inherited tbTimeUnitCount: TTrackBar
        Width = 305
        ExplicitWidth = 305
      end
      inherited pnlTimeUnitsNum: TPanel
        Left = 486
        ExplicitLeft = 486
      end
    end
    inherited gbDates: TGroupBox
      Width = 521
      ExplicitWidth = 521
      inherited deEndDate: TAbmesDBDateEdit
        Left = 352
        ExplicitLeft = 352
      end
      inherited edtEndDate: TDBEdit
        Left = 440
        ExplicitLeft = 440
      end
      inherited btnPrev: TBitBtn
        Left = 176
        Width = 41
        ExplicitLeft = 176
        ExplicitWidth = 41
      end
      inherited btnFinePrev: TBitBtn
        Left = 224
        ExplicitLeft = 224
      end
      inherited btnFineNext: TBitBtn
        Left = 267
        ExplicitLeft = 267
      end
      inherited btnNext: TBitBtn
        Left = 307
        Width = 38
        ExplicitLeft = 307
        ExplicitWidth = 38
      end
    end
    inherited cdsTimeUnits: TAbmesClientDataSet
      Filter = '(THE_DATE_UNIT_CODE in (1, 2, 3))'
      AfterOpen = frDateUnitsIntervalcdsTimeUnitsAfterOpen
    end
  end
  object rgIncludeDeptDescendants: TDBRadioGroup [5]
    Left = 8
    Top = 8
    Width = 521
    Height = 73
    Caption = ' '#1053#1072#1095#1080#1085' '#1085#1072' '#1080#1079#1074#1077#1078#1076#1072#1085#1077' '
    DataField = 'INCLUDE_DEPT_DESCENDANTS'
    DataSource = dsData
    Items.Strings = (
      #1057#1083#1091#1078#1080#1090#1077#1083#1080' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1080' '#1086#1090' '#1080#1079#1073#1088#1072#1085#1080' '#1054#1088#1063' '#1041#1045#1047' '#1089#1090#1088#1091#1082#1090#1091#1088#1085#1080' '#1095#1072#1089#1090#1080
      #1057#1083#1091#1078#1080#1090#1077#1083#1080' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1080' '#1086#1090' '#1080#1079#1073#1088#1072#1085#1080' '#1054#1088#1063' '#1057#1066#1057' '#1089#1090#1088#1091#1082#1090#1091#1088#1085#1080' '#1095#1072#1089#1090#1080
      #1057#1083#1091#1078#1080#1090#1077#1083#1080' '#1053#1045#1085#1072#1079#1085#1072#1095#1077#1085#1080' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090)
    ParentBackground = True
    TabOrder = 0
    Values.Strings = (
      '0'
      '1'
      '2')
  end
  inherited alActions: TActionList [6]
    Left = 440
    Top = 136
    inherited actForm: TAction
      Caption = '%s '#1085#1072' '#1042#1048#1052' - '#1043#1088#1072#1092#1080#1095#1077#1085' '#1085#1072' '#1055#1088#1080#1089#1098#1089#1090#1074#1080#1103' '#1080' '#1054#1090#1089#1098#1089#1090#1074#1080#1103' '#1085#1072' '#1057#1083#1091#1078#1080#1090#1077#1083#1080
    end
  end
  inherited dsData: TDataSource [8]
    Left = 352
    Top = 136
  end
  inherited cdsData: TAbmesClientDataSet [9]
    Left = 320
    Top = 136
  end
  inherited cdsFilterVariants: TAbmesClientDataSet [10]
    Top = 272
  end
  inherited dsFilterVariants: TDataSource
    Top = 272
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Top = 288
  end
end
