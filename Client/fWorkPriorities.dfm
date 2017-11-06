inherited fmWorkPriorities: TfmWorkPriorities
  Caption = #1054#1087#1077#1088#1072#1090#1080#1074#1085#1080' '#1055#1088#1080#1086#1088#1080#1090#1077#1090#1080
  ClientHeight = 349
  ClientWidth = 456
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 314
    Width = 456
    inherited pnlOKCancel: TPanel
      Left = 188
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 99
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 367
      Visible = False
    end
  end
  inherited pnlMain: TPanel
    Width = 456
    Height = 314
    inherited pnlGrid: TPanel
      Width = 440
      Height = 298
      inherited pnlNavigator: TPanel
        Width = 440
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 440
        Height = 274
        Columns = <
          item
            EditButtons = <>
            FieldName = 'WORK_PRIORITY_NO'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'WORK_PRIORITY_NAME'
            Footers = <>
            Width = 342
          end>
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    FieldDefs = <
      item
        Name = 'WORK_PRIORITY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'WORK_PRIORITY_NO'
        DataType = ftFloat
      end
      item
        Name = 'WORK_PRIORITY_NAME'
        DataType = ftWideString
        Size = 50
      end>
    ProviderName = 'prvWorkPriorities'
    ConnectionBroker = dmMain.conCommon
    OnNewRecord = cdsGridDataNewRecord
    object cdsGridDataWORK_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'WORK_PRIORITY_CODE'
      Required = True
    end
    object cdsGridDataWORK_PRIORITY_NO: TAbmesFloatField
      DisplayLabel = 'No'
      FieldName = 'WORK_PRIORITY_NO'
      Required = True
    end
    object cdsGridDataWORK_PRIORITY_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'WORK_PRIORITY_NAME'
      Required = True
      Size = 50
    end
    object cdsGridData_MAX_WORK_PRIORITY_CODE: TAggregateField
      FieldName = '_MAX_WORK_PRIORITY_CODE'
      Active = True
      Expression = 'Max(WORK_PRIORITY_CODE)'
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1054#1087#1077#1088#1072#1090#1080#1074#1085#1080' '#1055#1088#1080#1086#1088#1080#1090#1077#1090#1080
    end
  end
end
