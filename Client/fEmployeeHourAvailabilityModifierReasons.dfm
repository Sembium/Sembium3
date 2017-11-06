inherited fmEmployeeHourAvailabilityModifierReasons: TfmEmployeeHourAvailabilityModifierReasons
  Left = 350
  Caption = #1055#1088#1080#1095#1080#1085#1080' '#1079#1072' '#1052#1086#1076#1080#1092#1080#1094#1080#1088#1072#1085#1077' '#1085#1072' '#1055#1088#1080#1089#1098#1089#1090#1074#1080#1103
  ClientHeight = 349
  ClientWidth = 444
  ExplicitWidth = 450
  ExplicitHeight = 374
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 314
    Width = 444
    ExplicitTop = 314
    ExplicitWidth = 444
    inherited pnlOKCancel: TPanel
      Left = 176
      Visible = False
      ExplicitLeft = 176
    end
    inherited pnlClose: TPanel
      Left = 87
      Visible = True
      ExplicitLeft = 87
    end
    inherited pnlApply: TPanel
      Left = 355
      Visible = False
      ExplicitLeft = 355
    end
  end
  inherited pnlMain: TPanel
    Width = 444
    Height = 314
    ExplicitWidth = 444
    ExplicitHeight = 314
    inherited pnlGrid: TPanel
      Width = 428
      Height = 298
      ExplicitWidth = 428
      ExplicitHeight = 298
      inherited pnlNavigator: TPanel
        Width = 428
        ExplicitWidth = 428
        inherited pnlFilterButton: TPanel
          Left = 168
          ExplicitLeft = 168
        end
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
        inherited tlbTopGridButtons: TToolBar
          Left = 192
          ExplicitLeft = 192
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 428
        Height = 274
        Columns = <
          item
            EditButtons = <>
            FieldName = 'EMP_HOUR_AVAIL_MOD_REASON_NAME'
            Footers = <>
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 395
          end>
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    FieldDefs = <
      item
        Name = 'EMP_HOUR_AVAIL_MOD_REASON_CODE'
        DataType = ftFloat
      end
      item
        Name = 'EMP_HOUR_AVAIL_MOD_REASON_NAME'
        DataType = ftWideString
        Size = 50
      end>
    ProviderName = 'prvEmpHourAvailModReasons'
    ConnectionBroker = dmMain.conEmployeeAvailability
    object cdsGridDataEMP_HOUR_AVAIL_MOD_REASON_CODE: TAbmesFloatField
      FieldName = 'EMP_HOUR_AVAIL_MOD_REASON_CODE'
    end
    object cdsGridDataEMP_HOUR_AVAIL_MOD_REASON_NAME: TAbmesWideStringField
      FieldName = 'EMP_HOUR_AVAIL_MOD_REASON_NAME'
      Size = 50
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1055#1088#1080#1095#1080#1085#1080' '#1079#1072' '#1052#1086#1076#1080#1092#1080#1094#1080#1088#1072#1085#1077' '#1085#1072' '#1055#1088#1080#1089#1098#1089#1090#1074#1080#1103
    end
  end
end
