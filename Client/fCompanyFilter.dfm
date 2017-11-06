inherited frCompanyFilter: TfrCompanyFilter
  Height = 233
  inherited grpTreeNodeFilter: TGroupBox
    Height = 233
    Caption = ' '#1055#1072#1088#1090#1085#1100#1086#1088' '
    object pnlChosenCompanies: TPanel
      Left = 8
      Top = 17
      Width = 169
      Height = 158
      BevelOuter = bvNone
      TabOrder = 1
      object grdChosenCompanies: TAbmesDBGrid
        Left = 0
        Top = 0
        Width = 169
        Height = 158
        Align = alClient
        DataSource = dsChosenCompanies
        DynProps = <>
        FooterParams.Color = clWindow
        GridLineParams.VertEmptySpaceStyle = dessNonEh
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghIncSearch, dghPreferIncSearch]
        ReadOnly = True
        TabOrder = 0
        TitleParams.MultiTitle = True
        TitleParams.VTitleMargin = 15
        OnDblClick = grdChosenCompaniesDblClick
        OnSortMarkingChanged = grdChosenCompaniesSortMarkingChanged
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'COMPANY_NO'
            Footers = <>
            Title.Caption = #1050#1086#1076
            Width = 47
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'SHORT_NAME'
            Footers = <>
            Width = 87
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object pnlButtons: TPanel
      Left = 178
      Top = 28
      Width = 23
      Height = 121
      BevelOuter = bvNone
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      object btnAdd: TSpeedButton
        Left = 0
        Top = 24
        Width = 22
        Height = 22
        Action = actAdd
        Flat = True
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000BDBD000000000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0000000000BDBD0000BDBD0000000000000000
          0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000BDBD0000BDBD0000BDBD0000BDBD0000BDBD
          0000BDBD0000BDBD000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000000000BDBD0000BDBD0000BDBD0000BDBD0000BDBD0000BDBD
          0000BDBD0000BDBD000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000BDBD0000BDBD0000BDBD0000BDBD0000BDBD
          0000BDBD0000BDBD000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0000000000BDBD0000BDBD0000000000000000
          0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000BDBD000000000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      end
      object btnRemove: TSpeedButton
        Left = 0
        Top = 56
        Width = 22
        Height = 22
        Action = actRemove
        Flat = True
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000C6C600000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000000000000000000000000000000000000000C6C60000C6C6
          000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000000000C6C60000C6C60000C6C60000C6C60000C6C60000C6C6
          0000C6C6000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000000000C6C60000C6C60000C6C60000C6C60000C6C60000C6C6
          0000C6C60000C6C6000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000000000C6C60000C6C60000C6C60000C6C60000C6C60000C6C6
          0000C6C6000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000000000000000000000000000000000000000C6C60000C6C6
          000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000C6C600000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      end
      object btnRemoveAll: TSpeedButton
        Left = 0
        Top = 88
        Width = 22
        Height = 22
        Action = actRemoveAll
        Flat = True
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FF00FF00FF00FF0000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000000000000000FF00FF000000000000000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000C6C600000000000000000000C6C600000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00000000000000000000000000C6C60000C6C6000000000000C6C60000C6C6
          000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0000000000C6C60000C6C60000C6C60000C6C60000C6C6000000000000C6C6
          0000C6C6000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0000000000C6C60000C6C60000C6C60000C6C60000C6C60000C6C600000000
          0000C6C60000C6C6000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0000000000C6C60000C6C60000C6C60000C6C60000C6C6000000000000C6C6
          0000C6C6000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00000000000000000000000000C6C60000C6C6000000000000C6C60000C6C6
          000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000C6C600000000000000000000C6C600000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000000000000000FF00FF000000000000000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FF00FF00FF00FF0000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      end
    end
    object pnlNotChosenCompanies: TPanel
      Left = 200
      Top = 17
      Width = 169
      Height = 158
      BevelOuter = bvNone
      TabOrder = 3
      object grdNotChosenCompanies: TAbmesDBGrid
        Left = 0
        Top = 0
        Width = 169
        Height = 158
        Align = alClient
        DataSource = dsNotChosenCompanies
        DynProps = <>
        FooterParams.Color = clWindow
        GridLineParams.VertEmptySpaceStyle = dessNonEh
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghIncSearch, dghPreferIncSearch]
        ReadOnly = True
        TabOrder = 0
        TitleParams.MultiTitle = True
        TitleParams.VTitleMargin = 15
        OnDblClick = grdNotChosenCompaniesDblClick
        OnSortMarkingChanged = grdNotChosenCompaniesSortMarkingChanged
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'COMPANY_NO'
            Footers = <>
            Title.Caption = #1050#1086#1076
            Width = 47
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'SHORT_NAME'
            Footers = <>
            Width = 87
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object pnlBottom: TPanel
      Left = 2
      Top = 183
      Width = 373
      Height = 48
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 4
      object lblCommonStatus: TLabel
        Left = 294
        Top = 1
        Width = 41
        Height = 13
        Caption = #1055#1079#1094' '#1058#1049#1057
      end
      object cbCommonStatuses: TJvDBLookupCombo
        Left = 294
        Top = 17
        Width = 65
        Height = 21
        DropDownCount = 5
        DropDownWidth = 270
        DataField = 'COMMON_STATUS_CODE'
        DataSource = dsChosenNodesParams
        DisplayEmpty = '< '#1074#1089'. >'
        LookupField = 'COMMON_STATUS_CODE'
        LookupDisplay = 'COMMON_STATUS_ABBREV;COMMON_STATUS_NAME'
        LookupSource = dsCommonStatuses
        TabOrder = 0
      end
    end
  end
  inherited alActions: TActionList
    object actAdd: TAction
      Hint = #1044#1086#1073#1072#1074#1103#1085#1077
      ShortCut = 16421
      OnExecute = actAddExecute
      OnUpdate = actAddUpdate
    end
    object actRemove: TAction
      Hint = #1055#1088#1077#1084#1072#1093#1074#1072#1085#1077
      ShortCut = 16423
      OnExecute = actRemoveExecute
      OnUpdate = actRemoveUpdate
    end
    object actRemoveAll: TAction
      Hint = #1055#1088#1077#1084#1072#1093#1074#1072#1085#1077' '#1085#1072' '#1074#1089#1080#1095#1082#1080
      ShortCut = 24615
      OnExecute = actRemoveAllExecute
      OnUpdate = actRemoveAllUpdate
    end
  end
  inherited cdsChosenNodesParams: TAbmesClientDataSet
    object cdsChosenNodesParamsCOMMON_STATUS_CODE: TAbmesFloatField
      FieldName = 'COMMON_STATUS_CODE'
    end
  end
  object cdsCommonStatuses: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 294
    Top = 182
    object cdsCommonStatusesCOMMON_STATUS_CODE: TAbmesFloatField
      FieldName = 'COMMON_STATUS_CODE'
    end
    object cdsCommonStatusesCOMMON_STATUS_ABBREV: TAbmesWideStringField
      FieldName = 'COMMON_STATUS_ABBREV'
      Size = 10
    end
    object cdsCommonStatusesCOMMON_STATUS_NAME: TAbmesWideStringField
      FieldName = 'COMMON_STATUS_NAME'
      Size = 50
    end
  end
  object dsCommonStatuses: TDataSource
    DataSet = cdsCommonStatuses
    Left = 326
    Top = 182
  end
  object cdsChosenCompanies: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conFilter
    Params = <>
    Left = 120
    Top = 176
    object cdsChosenCompaniesCOMPANY_CODE: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'COMPANY_CODE'
    end
    object cdsChosenCompaniesCOMPANY_NO: TAbmesFloatField
      FieldName = 'COMPANY_NO'
    end
    object cdsChosenCompaniesSHORT_NAME: TAbmesWideStringField
      DisplayLabel = #1048#1079#1073#1088#1072#1085#1080
      FieldName = 'SHORT_NAME'
      OnGetText = cdsChosenCompaniesSHORT_NAMEGetText
    end
  end
  object dsChosenCompanies: TDataSource
    DataSet = cdsChosenCompanies
    Left = 152
    Top = 176
  end
  object cdsNotChosenCompanies: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conFilter
    Params = <>
    Left = 184
    Top = 176
    object cdsNotChosenCompaniesCOMPANY_CODE: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'COMPANY_CODE'
    end
    object cdsNotChosenCompaniesCOMPANY_NO: TAbmesFloatField
      FieldName = 'COMPANY_NO'
    end
    object cdsNotChosenCompaniesSHORT_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1077#1080#1079#1073#1088#1072#1085#1080
      FieldName = 'SHORT_NAME'
    end
  end
  object dsNotChosenCompanies: TDataSource
    DataSet = cdsNotChosenCompanies
    Left = 216
    Top = 176
  end
  object cdsCompanies: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompanyFilter
    Params = <
      item
        DataType = ftInteger
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
        Value = 1
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_COMPANIES'
        ParamType = ptInput
      end>
    ProviderName = 'prvCompanies'
    Left = 88
    Top = 176
    object cdsCompaniesCOMPANY_CODE: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'COMPANY_CODE'
    end
    object cdsCompaniesCOMPANY_NO: TAbmesFloatField
      FieldName = 'COMPANY_NO'
    end
    object cdsCompaniesSHORT_NAME: TAbmesWideStringField
      DisplayLabel = #1048#1079#1073#1088#1072#1085#1080
      FieldName = 'SHORT_NAME'
      OnGetText = cdsChosenCompaniesSHORT_NAMEGetText
    end
    object cdsCompaniesIS_CHOSEN: TAbmesFloatField
      FieldName = 'IS_CHOSEN'
      FieldValueType = fvtBoolean
    end
  end
end
