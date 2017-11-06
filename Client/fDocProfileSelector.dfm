inherited fmDocProfileSelector: TfmDocProfileSelector
  Caption = #1048#1079#1073#1086#1088' '#1085#1072' '#1052#1048#1048#1054' '#1055#1088#1086#1092#1080#1083
  ClientWidth = 610
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Width = 610
    inherited pnlOKCancel: TPanel
      Left = 342
    end
    inherited pnlClose: TPanel
      Left = 253
    end
    inherited pnlApply: TPanel
      Left = 521
      Visible = False
    end
  end
  inherited pnlMain: TPanel
    Width = 610
    inherited pnlGrid: TPanel
      Width = 594
      inherited pnlNavigator: TPanel
        Width = 594
        inherited pnlFilterButton: TPanel
          Left = 96
        end
        inherited navData: TDBColorNavigator
          Width = 96
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Hints.Strings = ()
        end
        inherited tlbTopGridButtons: TToolBar
          Left = 120
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 594
        UseMultiTitle = True
        OnGetCellParams = grdDataGetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'DOC_PROFILE_NO'
            Footers = <>
            Title.Caption = 'No'
            Width = 32
          end
          item
            EditButtons = <>
            FieldName = 'DOC_PROFILE_NAME'
            Footers = <>
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 380
          end
          item
            Alignment = taCenter
            Color = 15532031
            EditButtons = <>
            FieldName = 'DOC_EMPTINESS_REQ_CODE'
            Footers = <>
            Title.Caption = #1052#1048#1048#1054
            Width = 35
          end
          item
            Alignment = taCenter
            Color = 15532031
            EditButtons = <>
            FieldName = 'UNAUTHORIZED_ACTIVE_DI_COUNT'
            Footers = <>
            Title.Caption = #1048#1048#1054
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = 'AUTHORIZE_EMPLOYEE_ABBREV'
            Footers = <>
            Title.Caption = #1040#1074#1090#1086#1088#1080#1079#1080#1088#1072#1083
            Width = 75
          end>
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conDoc
    Filter = 'AUTHORIZE_EMPLOYEE_ABBREV is not null'
    Filtered = True
    FieldDefs = <
      item
        Name = 'DOC_PROFILE_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'DOC_ITEM_TEMPLATE_TYPE_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'DOC_PROFILE_NO'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'DOC_PROFILE_NAME'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 250
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
      end
      item
        Name = 'DOC_EMPTINESS_REQ_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DOC_IS_COMPLETE'
        DataType = ftFloat
      end
      item
        Name = 'ACTIVE_DI_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'UNAUTHORIZED_ACTIVE_DI_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'UNAPPROVED_ACTIVE_DI_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'AUTHORIZE_EMPLOYEE_ABBREV'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'AUTHORIZE_EMPLOYEE_NAME'
        DataType = ftWideString
        Size = 104
      end>
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_ITEM_TEMPLATE_TYPE_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvDocProfiles'
    AfterScroll = cdsGridDataAfterScroll
    object cdsGridDataDOC_PROFILE_CODE: TAbmesFloatField
      FieldName = 'DOC_PROFILE_CODE'
      Required = True
    end
    object cdsGridDataDOC_ITEM_TEMPLATE_TYPE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_TEMPLATE_TYPE_CODE'
      Required = True
    end
    object cdsGridDataDOC_PROFILE_NO: TAbmesFloatField
      FieldName = 'DOC_PROFILE_NO'
      Required = True
    end
    object cdsGridDataDOC_PROFILE_NAME: TAbmesWideStringField
      FieldName = 'DOC_PROFILE_NAME'
      Required = True
      Size = 250
    end
    object cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsGridDataDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsGridDataHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
    end
    object cdsGridDataDOC_EMPTINESS_REQ_CODE: TAbmesFloatField
      FieldName = 'DOC_EMPTINESS_REQ_CODE'
      OnGetText = cdsGridDataDOC_EMPTINESS_REQ_CODEGetText
    end
    object cdsGridDataDOC_IS_COMPLETE: TAbmesFloatField
      FieldName = 'DOC_IS_COMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'ACTIVE_DI_COUNT'
    end
    object cdsGridDataUNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAUTHORIZED_ACTIVE_DI_COUNT'
      OnGetText = cdsGridDataUNAUTHORIZED_ACTIVE_DI_COUNTGetText
    end
    object cdsGridDataUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAPPROVED_ACTIVE_DI_COUNT'
    end
    object cdsGridDataAUTHORIZE_EMPLOYEE_ABBREV: TAbmesWideStringField
      FieldName = 'AUTHORIZE_EMPLOYEE_ABBREV'
      OnGetText = cdsGridDataAUTHORIZE_EMPLOYEE_ABBREVGetText
      Size = 5
    end
    object cdsGridDataAUTHORIZE_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'AUTHORIZE_EMPLOYEE_NAME'
      Size = 104
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1048#1079#1073#1086#1088' '#1085#1072' '#1052#1048#1048#1054' '#1055#1088#1086#1092#1080#1083
    end
  end
end
