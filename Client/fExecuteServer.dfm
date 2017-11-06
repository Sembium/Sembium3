inherited fmExecuteServer: TfmExecuteServer
  ActiveControl = edtExecuteServerCode
  Caption = #1048#1079#1087#1098#1083#1085#1103#1074#1072#1097' '#1089#1098#1088#1074#1098#1088' - %s'
  ClientHeight = 425
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 390
    inherited pnlApply: TPanel
      Visible = False
    end
  end
  inherited pnlMain: TPanel
    Height = 390
    inherited pnlGrid: TPanel
      Height = 374
      inherited pnlNavigator: TPanel
        TabOrder = 3
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdData: TAbmesDBGrid
        Top = 97
        Height = 277
        TitleParams.MultiTitle = True
        TitleParams.VTitleMargin = 5
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'EXECUTE_SERVER_CODE'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DOC_ITEM_VIEW_GENERATOR_CODE'
            Footers = <>
            Title.Caption = #1042#1098#1079#1084#1086#1078#1085#1080' '#1043#1077#1085#1077#1088#1072#1090#1086#1088#1080' '#1085#1072' '#1048#1048#1054' '#1048#1079#1075#1083#1077#1076#1080'|'#1050#1086#1076
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DOC_ITEM_VIEW_GENERATOR_NAME'
            Footers = <>
            Title.Caption = #1042#1098#1079#1084#1086#1078#1085#1080' '#1043#1077#1085#1077#1088#1072#1090#1086#1088#1080' '#1085#1072' '#1048#1048#1054' '#1048#1079#1075#1083#1077#1076#1080'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 198
          end>
      end
      inherited grdOtherData: TAbmesDBGrid
        Top = 97
        Height = 277
        TitleParams.MultiTitle = True
        TitleParams.VTitleMargin = 5
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'EXECUTE_SERVER_CODE'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DOC_ITEM_VIEW_GENERATOR_CODE'
            Footers = <>
            Title.Caption = #1053#1077#1074#1098#1079#1084#1086#1078#1085#1080' '#1043#1077#1085#1077#1088#1072#1090#1086#1088#1080' '#1085#1072' '#1048#1048#1054' '#1048#1079#1075#1083#1077#1076#1080'|'#1050#1086#1076
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DOC_ITEM_VIEW_GENERATOR_NAME'
            Footers = <>
            Title.Caption = #1053#1077#1074#1098#1079#1084#1086#1078#1085#1080' '#1043#1077#1085#1077#1088#1072#1090#1086#1088#1080' '#1085#1072' '#1048#1048#1054' '#1048#1079#1075#1083#1077#1076#1080'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 198
          end>
      end
      inherited pnlMoveButtons: TPanel
        Top = 97
        Height = 277
        TabOrder = 4
      end
      object pnlTop: TPanel
        Left = 0
        Top = 24
        Width = 620
        Height = 73
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object pnlExecuteServerData: TPanel
          Left = 0
          Top = 0
          Width = 620
          Height = 65
          Align = alTop
          TabOrder = 0
          object lblExecuteServerCode: TLabel
            Left = 8
            Top = 8
            Width = 19
            Height = 13
            Caption = #1050#1086#1076
          end
          object lblExecuteServerNetworkPath: TLabel
            Left = 160
            Top = 8
            Width = 124
            Height = 13
            Caption = #1052#1088#1077#1078#1086#1074#1086' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          end
          object edtExecuteServerCode: TDBEdit
            Left = 8
            Top = 24
            Width = 121
            Height = 21
            DataField = 'EXECUTE_SERVER_CODE'
            DataSource = dsData
            TabOrder = 0
          end
          object edtNetworkPath: TDBEdit
            Left = 160
            Top = 24
            Width = 345
            Height = 21
            Hint = 'host[:port[:datasnap]]'
            DataField = 'EXECUTE_SERVER_NAME'
            DataSource = dsData
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
          end
        end
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    DataSetField = cdsDataqryExecuteServerViewGenerators
    FieldDefs = <
      item
        Name = 'EXECUTE_SERVER_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DOC_ITEM_VIEW_GENERATOR_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DOC_ITEM_VIEW_GENERATOR_NAME'
        DataType = ftWideString
        Size = 50
      end>
    object cdsGridDataEXECUTE_SERVER_CODE: TAbmesFloatField
      FieldName = 'EXECUTE_SERVER_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsGridDataDOC_ITEM_VIEW_GENERATOR_CODE: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'DOC_ITEM_VIEW_GENERATOR_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsGridDataDOC_ITEM_VIEW_GENERATOR_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'DOC_ITEM_VIEW_GENERATOR_NAME'
      ProviderFlags = []
      Size = 50
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1048#1079#1087#1098#1083#1085#1103#1074#1072#1097' '#1089#1098#1088#1074#1098#1088' - %s'
    end
  end
  inherited cdsData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conDoc
    Params = <
      item
        DataType = ftFloat
        Name = 'EXECUTE_SERVER_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvExecuteServer'
    object cdsDataEXECUTE_SERVER_CODE: TAbmesFloatField
      FieldName = 'EXECUTE_SERVER_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDataEXECUTE_SERVER_NAME: TAbmesWideStringField
      DisplayLabel = #1052#1088#1077#1078#1086#1074#1086' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'EXECUTE_SERVER_NAME'
      Size = 50
    end
    object cdsDataqryExecuteServerViewGenerators: TDataSetField
      FieldName = 'qryExecuteServerViewGenerators'
    end
  end
  inherited cdsOtherGridData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conDoc
    Params = <
      item
        DataType = ftFloat
        Name = 'EXECUTE_SERVER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXECUTE_SERVER_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvExecuteServerNotViewGenerators'
    object cdsOtherGridDataEXECUTE_SERVER_CODE: TAbmesFloatField
      FieldName = 'EXECUTE_SERVER_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsOtherGridDataDOC_ITEM_VIEW_GENERATOR_CODE: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'DOC_ITEM_VIEW_GENERATOR_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsOtherGridDataDOC_ITEM_VIEW_GENERATOR_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'DOC_ITEM_VIEW_GENERATOR_NAME'
      Size = 50
    end
  end
end
