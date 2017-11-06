inherited fmTestQueries: TfmTestQueries
  Caption = 'Test Queries'
  ClientHeight = 426
  ClientWidth = 742
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 391
    Width = 742
    inherited pnlOKCancel: TPanel
      Left = 474
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 385
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 653
      Visible = False
    end
  end
  inherited pnlMain: TPanel
    Width = 742
    Height = 391
    inherited pnlGrid: TPanel
      Width = 726
      Height = 375
      inherited pnlNavigator: TPanel
        Width = 726
        inherited pnlFilterButton: TPanel
          Left = 97
        end
        inherited navData: TDBColorNavigator
          Width = 97
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Hints.Strings = ()
        end
        inherited tlbTopGridButtons: TToolBar
          Left = 121
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 726
        Height = 351
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghIncSearch, dghPreferIncSearch]
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'DATA_MODULE_NAME'
            Footers = <>
            Title.Caption = 'Module Name'
            Width = 166
          end
          item
            EditButtons = <>
            FieldName = 'QUERY_NAME'
            Footers = <>
            Title.Caption = 'Query Name'
            Width = 166
          end
          item
            EditButtons = <>
            FieldName = 'EXCEPTION_MESSAGE'
            Footers = <>
            Title.Caption = 'Exception Message'
            Width = 359
          end>
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    FieldDefs = <
      item
        Name = 'DATA_MODULE_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'QUERY_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'EXCEPTION_MESSAGE'
        DataType = ftWideString
        Size = 250
      end>
    IndexFieldNames = 'DATA_MODULE_NAME;QUERY_NAME'
    object cdsGridDataDATA_MODULE_NAME: TAbmesWideStringField
      FieldName = 'DATA_MODULE_NAME'
      Size = 50
    end
    object cdsGridDataQUERY_NAME: TAbmesWideStringField
      FieldName = 'QUERY_NAME'
      Size = 50
    end
    object cdsGridDataEXCEPTION_MESSAGE: TAbmesWideStringField
      FieldName = 'EXCEPTION_MESSAGE'
      Size = 250
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = 'Test Queries'
    end
    inherited actFilter: TAction
      Visible = True
    end
  end
  object cdsWrongQueries: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvWrongQueries'
    Left = 200
    Top = 112
    object cdsWrongQueriesDATA_MODULE_NAME: TAbmesWideStringField
      FieldName = 'DATA_MODULE_NAME'
      Size = 50
    end
    object cdsWrongQueriesQUERY_NAME: TAbmesWideStringField
      FieldName = 'QUERY_NAME'
      Size = 50
    end
    object cdsWrongQueriesEXCEPTION_MESSAGE: TAbmesWideStringField
      FieldName = 'EXCEPTION_MESSAGE'
      Size = 250
    end
  end
end
