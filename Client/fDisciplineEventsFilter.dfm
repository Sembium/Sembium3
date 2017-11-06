inherited fmDisciplineEventsFilter: TfmDisciplineEventsFilter
  Caption = #1060#1080#1083#1090#1098#1088' '#1085#1072' '#1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1048#1079#1074#1098#1085#1088#1077#1076#1085#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103' '#1074' '#1056#1072#1073#1086#1090#1085#1086' '#1055#1086#1074#1077#1076#1077#1085#1080#1077
  ClientHeight = 316
  ClientWidth = 793
  ExplicitWidth = 799
  ExplicitHeight = 341
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 281
    Width = 793
    TabOrder = 10
    ExplicitTop = 281
    ExplicitWidth = 793
    inherited pnlOKCancel: TPanel
      Left = 525
      ExplicitLeft = 525
    end
    inherited pnlClose: TPanel
      Left = 436
      ExplicitLeft = 436
    end
    inherited pnlApply: TPanel
      Left = 704
      ExplicitLeft = 704
    end
  end
  object gbStatus: TGroupBox [1]
    Left = 8
    Top = 8
    Width = 241
    Height = 49
    Caption = ' '#1057#1090#1072#1090#1091#1089' '
    TabOrder = 0
    object lblStatusHyphen: TLabel
      Left = 116
      Top = 19
      Width = 6
      Height = 13
      Caption = #8212
    end
    object cbMinStatus: TJvDBComboBox
      Left = 8
      Top = 16
      Width = 102
      Height = 21
      DataField = 'MIN_DISC_EVENT_STATUS_CODE'
      DataSource = dsData
      ItemHeight = 13
      Items.Strings = (
        #1040#1082#1090#1080#1074#1085#1086
        #1055#1072#1089#1080#1074#1085#1086
        #1047#1072#1084#1077#1085#1077#1085#1086
        #1054#1090#1084#1077#1085#1077#1085#1086
        #1040#1085#1091#1083#1080#1088#1072#1085#1086)
      TabOrder = 0
      Values.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5')
    end
    object cbMaxStatus: TJvDBComboBox
      Left = 128
      Top = 16
      Width = 102
      Height = 21
      DataField = 'MAX_DISC_EVENT_STATUS_CODE'
      DataSource = dsData
      ItemHeight = 13
      Items.Strings = (
        #1040#1082#1090#1080#1074#1085#1086
        #1055#1072#1089#1080#1074#1085#1086
        #1047#1072#1084#1077#1085#1077#1085#1086
        #1054#1090#1084#1077#1085#1077#1085#1086
        #1040#1085#1091#1083#1080#1088#1072#1085#1086)
      TabOrder = 1
      Values.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5')
    end
  end
  object gbTheDate: TGroupBox [2]
    Left = 256
    Top = 8
    Width = 121
    Height = 49
    Caption = ' '#1050#1098#1084' '#1076#1072#1090#1072' '
    TabOrder = 1
    inline frTheDate: TfrDateFieldEditFrame
      Left = 8
      Top = 16
      Width = 105
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 105
      Constraints.MinHeight = 21
      Constraints.MinWidth = 105
      TabOrder = 0
      TabStop = True
      ExplicitLeft = 8
      ExplicitTop = 16
    end
  end
  inline frEmployee: TfrEmployeeFieldEditFrameLabeled [3]
    Left = 176
    Top = 64
    Width = 609
    Height = 65
    Constraints.MaxHeight = 65
    Constraints.MinHeight = 65
    TabOrder = 4
    TabStop = True
    ExplicitLeft = 176
    ExplicitTop = 64
    ExplicitWidth = 609
    inherited gbEmployee: TGroupBox
      Width = 609
      ExplicitWidth = 609
      inherited pnlEmployeeName: TPanel
        Width = 534
        ExplicitWidth = 534
        inherited pnlRightButtons: TPanel
          Left = 498
          ExplicitLeft = 498
        end
        inherited pnlEmpoyeeNameInner: TPanel
          Width = 498
          ExplicitWidth = 498
          inherited edtEmployeeName: TDBEdit
            Width = 523
            ExplicitWidth = 523
          end
          inherited cbEmployee: TJvDBLookupCombo
            Width = 497
            ExplicitWidth = 497
          end
        end
      end
      inherited pnlPaddingRight: TPanel
        Left = 599
        ExplicitLeft = 599
      end
      inherited pnlLabels: TPanel
        Width = 605
        ExplicitWidth = 605
        inherited lblCode: TLabel
          Width = 19
          ExplicitWidth = 19
        end
        inherited lblName: TLabel
          Width = 22
          ExplicitWidth = 22
        end
      end
    end
  end
  object gbDisciplineEventDate: TGroupBox [4]
    Left = 8
    Top = 64
    Width = 161
    Height = 65
    Caption = ' '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1048#1054#1056#1055#1074' '
    TabOrder = 3
    inline frDisciplineEventDateInterval: TfrDateIntervalFrame
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
      ExplicitLeft = 8
      ExplicitTop = 32
    end
  end
  inline frMainOccupationDept: TfrDeptFieldEditFrameLabeled [5]
    Left = 8
    Top = 136
    Width = 385
    Height = 65
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 65
    TabOrder = 5
    TabStop = True
    ExplicitLeft = 8
    ExplicitTop = 136
    ExplicitWidth = 385
    inherited gbTreeNode: TGroupBox
      Width = 385
      Caption = ' '#1054#1088#1063' '
      ExplicitWidth = 385
      inherited lblTreeNodeName: TLabel
        Width = 76
        ExplicitWidth = 76
      end
      inherited lblTreeNodeNo: TLabel
        Width = 19
        ExplicitWidth = 19
      end
      inherited pnlTreeNode: TPanel
        Width = 369
        ExplicitWidth = 369
        inherited pnlTreeNodeName: TPanel
          Width = 222
          ExplicitWidth = 222
          inherited edtTreeNodeName: TDBEdit
            Width = 221
            ExplicitWidth = 221
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 222
          ExplicitLeft = 222
        end
        inherited pnlRightButtons: TPanel
          Left = 333
          ExplicitLeft = 333
        end
      end
    end
  end
  inline frAuthorizeEmployee: TfrEmployeeFieldEditFrameLabeled [6]
    Left = 400
    Top = 136
    Width = 385
    Height = 65
    Constraints.MaxHeight = 65
    Constraints.MinHeight = 65
    TabOrder = 7
    TabStop = True
    ExplicitLeft = 400
    ExplicitTop = 136
    ExplicitWidth = 385
    inherited gbEmployee: TGroupBox
      Width = 385
      Caption = ' '#1059#1089#1090#1072#1085#1086#1074#1080#1083' '
      ExplicitWidth = 385
      inherited pnlEmployeeName: TPanel
        Width = 310
        ExplicitWidth = 310
        inherited pnlRightButtons: TPanel
          Left = 274
          ExplicitLeft = 274
        end
        inherited pnlEmpoyeeNameInner: TPanel
          Width = 274
          ExplicitWidth = 274
          inherited edtEmployeeName: TDBEdit
            Width = 299
            ExplicitWidth = 299
          end
          inherited cbEmployee: TJvDBLookupCombo
            Width = 273
            ExplicitWidth = 273
          end
        end
      end
      inherited pnlPaddingRight: TPanel
        Left = 375
        ExplicitLeft = 375
      end
      inherited pnlLabels: TPanel
        Width = 381
        ExplicitWidth = 381
        inherited lblCode: TLabel
          Width = 19
          ExplicitWidth = 19
        end
        inherited lblName: TLabel
          Width = 22
          ExplicitWidth = 22
        end
      end
    end
  end
  object gbCreateData: TGroupBox [7]
    Left = 8
    Top = 208
    Width = 385
    Height = 65
    Caption = ' '#1056#1077#1075#1080#1089#1090#1088#1080#1088#1072#1085#1077' '
    TabOrder = 8
    object lblCreateDateInterval: TLabel
      Left = 8
      Top = 16
      Width = 40
      Height = 13
      Caption = #1042#1088#1084#1048#1085#1090
    end
    object lblCreateEmployeeNo: TLabel
      Left = 160
      Top = 16
      Width = 19
      Height = 13
      Caption = #1050#1086#1076
    end
    object lblCreateEmployeeName: TLabel
      Left = 217
      Top = 16
      Width = 22
      Height = 13
      Caption = #1048#1084#1077
    end
    inline frCreateDateInterval: TfrDateIntervalFrame
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
      ExplicitLeft = 8
      ExplicitTop = 32
    end
    inline frCreateEmployee: TfrEmployeeFieldEditFrameBald
      Left = 160
      Top = 32
      Width = 217
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 1
      TabStop = True
      ExplicitLeft = 160
      ExplicitTop = 32
      ExplicitWidth = 217
      inherited gbEmployee: TGroupBox
        Width = 236
        ExplicitWidth = 236
        inherited pnlEmployeeName: TPanel
          Width = 161
          ExplicitWidth = 161
          inherited pnlRightButtons: TPanel
            Left = 125
            ExplicitLeft = 125
          end
          inherited pnlEmpoyeeNameInner: TPanel
            Width = 125
            ExplicitWidth = 125
            inherited edtEmployeeName: TDBEdit
              Width = 79
              ExplicitWidth = 79
            end
            inherited cbEmployee: TJvDBLookupCombo
              Width = 124
              ExplicitWidth = 124
            end
          end
        end
        inherited pnlPaddingRight: TPanel
          Left = 226
          ExplicitLeft = 226
        end
      end
    end
  end
  object gbStornoData: TGroupBox [8]
    Left = 400
    Top = 208
    Width = 385
    Height = 65
    Caption = ' '#1040#1085#1091#1083#1080#1088#1072#1085#1077' '
    TabOrder = 9
    object lblStornoDateInterval: TLabel
      Left = 8
      Top = 16
      Width = 40
      Height = 13
      Caption = #1042#1088#1084#1048#1085#1090
    end
    object lblStornoEmployeeNo: TLabel
      Left = 160
      Top = 16
      Width = 19
      Height = 13
      Caption = #1050#1086#1076
    end
    object lblStornoEmployeeName: TLabel
      Left = 217
      Top = 16
      Width = 22
      Height = 13
      Caption = #1048#1084#1077
    end
    inline frStornoDateInterval: TfrDateIntervalFrame
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
      ExplicitLeft = 8
      ExplicitTop = 32
    end
    inline frStornoEmployee: TfrEmployeeFieldEditFrameBald
      Left = 160
      Top = 32
      Width = 217
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 1
      TabStop = True
      ExplicitLeft = 160
      ExplicitTop = 32
      ExplicitWidth = 217
      inherited gbEmployee: TGroupBox
        Width = 236
        ExplicitWidth = 236
        inherited pnlEmployeeName: TPanel
          Width = 161
          ExplicitWidth = 161
          inherited pnlRightButtons: TPanel
            Left = 125
            ExplicitLeft = 125
          end
          inherited pnlEmpoyeeNameInner: TPanel
            Width = 125
            ExplicitWidth = 125
            inherited edtEmployeeName: TDBEdit
              Width = 79
              ExplicitWidth = 79
            end
            inherited cbEmployee: TJvDBLookupCombo
              Width = 124
              ExplicitWidth = 124
            end
          end
        end
        inherited pnlPaddingRight: TPanel
          Left = 226
          ExplicitLeft = 226
        end
      end
    end
  end
  inline frDiscEventType: TfrDiscEventTypeFieldEditFrame [9]
    Left = 384
    Top = 8
    Width = 401
    Height = 49
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    TabOrder = 2
    TabStop = True
    ExplicitLeft = 384
    ExplicitTop = 8
    ExplicitWidth = 401
    inherited gbTreeNode: TGroupBox
      Width = 401
      ExplicitWidth = 401
      inherited pnlTreeNode: TPanel
        Width = 385
        ExplicitWidth = 385
        inherited pnlTreeNodeName: TPanel
          Width = 238
          ExplicitWidth = 238
          inherited edtTreeNodeName: TDBEdit
            Width = 237
            ExplicitWidth = 237
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 238
          ExplicitLeft = 238
        end
        inherited pnlRightButtons: TPanel
          Left = 349
          ExplicitLeft = 349
        end
      end
    end
  end
  object pnlChosenMainOccupationDeptOnly: TPanel [10]
    Left = 281
    Top = 133
    Width = 104
    Height = 20
    BevelOuter = bvNone
    TabOrder = 6
    DesignSize = (
      104
      20)
    object chbChosenMainOccupationDeptOnly: TAbmesDBCheckBox
      Left = 4
      Top = 1
      Width = 99
      Height = 17
      Anchors = [akLeft, akTop, akRight]
      Caption = #1057#1072#1084#1086' '#1080#1079#1073#1088#1072#1085#1080#1103
      DataField = 'CHOSEN_MAIN_OCCUPATION_DEPT_ONLY'
      DataSource = dsData
      TabOrder = 0
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
  end
  inherited alActions: TActionList [11]
    Left = 672
    inherited actForm: TAction
      Caption = #1060#1080#1083#1090#1098#1088' '#1085#1072' '#1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1048#1079#1074#1098#1085#1088#1077#1076#1085#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103' '#1074' '#1056#1072#1073#1086#1090#1085#1086' '#1055#1086#1074#1077#1076#1077#1085#1080#1077
    end
  end
  inherited dsData: TDataSource [13]
    Left = 584
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 552
  end
  inherited cdsFilterVariants: TAbmesClientDataSet
    Left = 240
    Top = 296
  end
  inherited dsFilterVariants: TDataSource
    Left = 264
    Top = 296
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Left = 288
    Top = 312
  end
  object cdsEmployeeFrameAllEmployees: TAbmesClientDataSet
    Aggregates = <>
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
    ConnectionBroker = dmMain.conHumanResource
    Left = 200
  end
end
