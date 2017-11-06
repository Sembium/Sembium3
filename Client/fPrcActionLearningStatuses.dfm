inherited fmPrcActionLearningStatuses: TfmPrcActionLearningStatuses
  Caption = #1057#1090#1072#1090#1091#1089#1080' '#1085#1072' '#1091#1089#1074#1086#1103#1074#1072#1085#1077' - %s'
  ClientHeight = 308
  ClientWidth = 352
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 273
    Width = 352
    inherited pnlOKCancel: TPanel
      Left = 84
    end
    inherited pnlClose: TPanel
      Left = -5
    end
    inherited pnlApply: TPanel
      Left = 263
      Visible = False
    end
  end
  inherited pnlMain: TPanel
    Width = 352
    Height = 273
    inherited pnlGrid: TPanel
      Top = 129
      Width = 336
      Height = 136
      inherited pnlNavigator: TPanel
        Width = 336
        inherited pnlFilterButton: TPanel
          Left = 168
        end
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
        inherited tlbTopGridButtons: TToolBar
          Left = 192
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 336
        Height = 112
        Columns = <
          item
            EditButtons = <>
            FieldName = '_PRC_LEARNING_STATUS_NAME'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1057#1090#1072#1090#1091#1089
            Width = 99
          end
          item
            EditButtons = <>
            FieldName = 'STATUS_DATE'
            Footers = <>
            Title.Alignment = taCenter
            Width = 94
          end
          item
            EditButtons = <>
            FieldName = 'STATUS_EXISTANCE_MONTHS'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1055#1088#1086#1076#1098#1083#1078#1080#1090#1077#1083#1085#1086#1089#1090
            Width = 108
          end>
      end
    end
    object pnlTop: TPanel
      Left = 8
      Top = 8
      Width = 336
      Height = 121
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      inline frProcessAction: TfrProcessActionFieldEditFrame
        Left = 0
        Top = 0
        Width = 336
        Height = 49
        Constraints.MaxHeight = 49
        Constraints.MinHeight = 49
        TabOrder = 0
        inherited gbEnumItem: TGroupBox
          Width = 336
          inherited edtEnumItemName: TDBEdit
            Width = 256
          end
          inherited cbEnumItemName: TJvDBLookupCombo
            Width = 256
          end
        end
      end
      object gbDateInterval: TGroupBox
        Left = 1
        Top = 56
        Width = 335
        Height = 57
        Caption = ' '#1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083' '
        TabOrder = 1
        inline frDateInterval: TfrDateIntervalFrame
          Left = 16
          Top = 24
          Width = 145
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 145
          Constraints.MinHeight = 21
          Constraints.MinWidth = 145
          TabOrder = 0
        end
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    IndexFieldNames = 'STATUS_DATE'
    BeforePost = cdsGridDataBeforePost
    object cdsGridDataSTATUS_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1054#1090' '#1076#1072#1090#1072
      FieldName = 'STATUS_DATE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsGridDataPRC_LEARNING_STATUS_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      FieldName = 'PRC_LEARNING_STATUS_CODE'
      Required = True
    end
    object cdsGridData_PRC_LEARNING_STATUS_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_PRC_LEARNING_STATUS_NAME'
      LookupDataSet = cdsPrcLearningStatuses
      LookupKeyFields = 'PRC_LEARNING_STATUS_CODE'
      LookupResultField = 'PRC_LEARNING_STATUS_NAME'
      KeyFields = 'PRC_LEARNING_STATUS_CODE'
      Size = 100
      Lookup = True
    end
    object cdsGridDataIS_FIRST_STATUS: TAbmesFloatField
      FieldName = 'IS_FIRST_STATUS'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataSTATUS_EXISTANCE_MONTHS: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'STATUS_EXISTANCE_MONTHS'
      OnGetText = cdsGridDataSTATUS_EXISTANCE_MONTHSGetText
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1057#1090#1072#1090#1091#1089#1080' '#1085#1072' '#1091#1089#1074#1086#1103#1074#1072#1085#1077' - %s'
    end
  end
  object cdsPrcLearningStatuses: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conProcesses
    Params = <>
    ProviderName = 'prvPrcLearningStatuses'
    Top = 112
    object cdsPrcLearningStatusesPRC_LEARNING_STATUS_CODE: TAbmesFloatField
      FieldName = 'PRC_LEARNING_STATUS_CODE'
      Required = True
    end
    object cdsPrcLearningStatusesPRC_LEARNING_STATUS_NO: TAbmesFloatField
      FieldName = 'PRC_LEARNING_STATUS_NO'
      Required = True
    end
    object cdsPrcLearningStatusesPRC_LEARNING_STATUS_NAME: TAbmesWideStringField
      FieldName = 'PRC_LEARNING_STATUS_NAME'
      Required = True
      Size = 100
    end
  end
end
