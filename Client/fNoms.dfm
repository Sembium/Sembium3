inherited fmNoms: TfmNoms
  Left = 216
  Top = 203
  Caption = #1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1085#1080' '#1043#1088#1091#1087#1080' '#1051#1086#1075#1080#1095#1077#1089#1082#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' %ProductClassAbbrev%'
  ClientHeight = 385
  ClientWidth = 449
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 350
    Width = 449
    inherited pnlOKCancel: TPanel
      Left = 181
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 92
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 360
      Visible = False
    end
  end
  inherited pnlMain: TPanel
    Width = 449
    Height = 350
    inherited pnlGrid: TPanel
      Width = 433
      Height = 334
      inherited pnlNavigator: TPanel
        Width = 433
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
        object tlbDocs: TToolBar
          Left = 248
          Top = 0
          Width = 44
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 36
          Caption = 'tlbDocs'
          Images = dmMain.ilDocs
          TabOrder = 3
          object sepDocs: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'sepDocs'
            ImageIndex = 31
            Style = tbsSeparator
          end
          object btnDocs: TToolButton
            Left = 8
            Top = 0
            Action = actDocs
          end
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 433
        Height = 310
        Columns = <
          item
            EditButtons = <>
            FieldName = 'NOM_NO'
            Footers = <>
            Title.Caption = #1053#1086#1084#1077#1088
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'NOM_NAME'
            Footers = <>
            Width = 349
          end>
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conCommon
    FieldDefs = <
      item
        Name = 'NOM_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'NOM_NAME'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'NOM_NO'
        DataType = ftFloat
      end
      item
        Name = 'DOC_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DOC_CODE'
        DataType = ftFloat
      end
      item
        Name = 'HAS_DOC_ITEMS'
        DataType = ftFloat
      end>
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvNoms'
    object cdsGridDataNOM_CODE: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'NOM_CODE'
      Required = True
    end
    object cdsGridDataNOM_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NOM_NAME'
      Required = True
      Size = 50
    end
    object cdsGridDataNOM_NO: TAbmesFloatField
      FieldName = 'NOM_NO'
    end
    object cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsGridDataDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsGridDataHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      FieldValueType = fvtBoolean
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1085#1080' '#1043#1088#1091#1087#1080' '#1051#1086#1075#1080#1095#1077#1089#1082#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' %ProductClassAbbrev%'
    end
    object actDocs: TAction
      Caption = 'actDocs'
      Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' '#1080#1079#1073#1088#1072#1085#1072#1090#1072' '#1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1085#1072' '#1043#1088#1091#1087#1072' '#1051#1086#1075#1080#1095#1077#1089#1082#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080
      ImageIndex = 1
      OnExecute = actDocsExecute
      OnUpdate = actDocsUpdate
    end
  end
end
