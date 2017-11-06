inherited fmDeptTypes: TfmDeptTypes
  Left = 342
  Top = 204
  Caption = #1042#1080#1076#1086#1074#1077' '#1058#1055
  ClientHeight = 367
  ClientWidth = 485
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 332
    Width = 485
    inherited pnlOKCancel: TPanel
      Left = 217
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 128
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 396
      Visible = False
    end
  end
  inherited pnlMain: TPanel
    Width = 485
    Height = 332
    inherited pnlGrid: TPanel
      Width = 469
      Height = 316
      inherited pnlNavigator: TPanel
        Width = 469
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 469
        Height = 292
        Columns = <
          item
            EditButtons = <>
            FieldName = 'DEPT_TYPE_CODE'
            Footers = <>
            Width = 52
          end
          item
            EditButtons = <>
            FieldName = 'DEPT_TYPE_ABBREV'
            Footers = <>
            Width = 69
          end
          item
            EditButtons = <>
            FieldName = 'DEPT_TYPE_NAME'
            Footers = <>
            Width = 313
          end>
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    FieldDefs = <
      item
        Name = 'DEPT_TYPE_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'DEPT_TYPE_ABBREV'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'DEPT_TYPE_NAME'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 50
      end>
    ProviderName = 'prvDeptTypes'
    ConnectionBroker = dmMain.conCommon
    object cdsGridDataDEPT_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'DEPT_TYPE_CODE'
      Required = True
    end
    object cdsGridDataDEPT_TYPE_ABBREV: TAbmesWideStringField
      DisplayLabel = #1040#1073#1088#1077#1074#1080#1072#1090#1091#1088#1072
      FieldName = 'DEPT_TYPE_ABBREV'
      Required = True
      Size = 5
    end
    object cdsGridDataDEPT_TYPE_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'DEPT_TYPE_NAME'
      Required = True
      Size = 50
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1042#1080#1076#1086#1074#1077' '#1058#1055
    end
  end
end
