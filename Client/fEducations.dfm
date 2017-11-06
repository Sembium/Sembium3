inherited fmEducations: TfmEducations
  Caption = #1054#1073#1088#1072#1079#1086#1074#1072#1085#1080#1103
  ClientHeight = 295
  ClientWidth = 440
  ExplicitWidth = 446
  ExplicitHeight = 320
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 260
    Width = 440
    ExplicitTop = 260
    ExplicitWidth = 440
    inherited pnlOKCancel: TPanel
      Left = 172
      Visible = False
      ExplicitLeft = 172
    end
    inherited pnlClose: TPanel
      Left = 83
      Visible = True
      ExplicitLeft = 83
    end
    inherited pnlApply: TPanel
      Left = 351
      Visible = False
      ExplicitLeft = 351
    end
  end
  inherited pnlMain: TPanel
    Width = 440
    Height = 260
    ExplicitWidth = 440
    ExplicitHeight = 260
    inherited pnlGrid: TPanel
      Width = 424
      Height = 244
      ExplicitWidth = 424
      ExplicitHeight = 244
      inherited pnlNavigator: TPanel
        Width = 424
        ExplicitWidth = 424
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
        Width = 424
        Height = 220
        Columns = <
          item
            EditButtons = <>
            FieldName = 'EDUCATION_CODE'
            Footers = <>
            Width = 48
          end
          item
            EditButtons = <>
            FieldName = 'EDUCATION_SHORT_NAME'
            Footers = <>
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'EDUCATION_NAME'
            Footers = <>
            Width = 221
          end>
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    FieldDefs = <
      item
        Name = 'EDUCATION_CODE'
        DataType = ftFloat
      end
      item
        Name = 'EDUCATION_ABBREV'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'EDUCATION_NAME'
        DataType = ftWideString
        Size = 50
      end>
    ProviderName = 'prvEducations'
    ConnectionBroker = dmMain.conCommon
    object cdsGridDataEDUCATION_CODE: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'EDUCATION_CODE'
      Required = True
    end
    object cdsGridDataEDUCATION_SHORT_NAME: TAbmesWideStringField
      DisplayLabel = #1050#1088#1072#1090#1082#1086' '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'EDUCATION_SHORT_NAME'
      Required = True
    end
    object cdsGridDataEDUCATION_NAME: TAbmesWideStringField
      DisplayLabel = #1055#1098#1083#1085#1086' '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'EDUCATION_NAME'
      Required = True
      Size = 50
    end
  end
end
