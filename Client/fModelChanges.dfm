inherited fmModelChanges: TfmModelChanges
  Left = 265
  Top = 189
  ActiveControl = nil
  Caption = #1047#1072#1084#1077#1085#1080
  ClientHeight = 428
  ClientWidth = 938
  ExplicitWidth = 944
  ExplicitHeight = 453
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 393
    Width = 938
    ExplicitTop = 393
    ExplicitWidth = 938
    inherited pnlOKCancel: TPanel
      Left = 670
      TabOrder = 2
      ExplicitLeft = 670
    end
    inherited pnlClose: TPanel
      Left = 581
      TabOrder = 1
      ExplicitLeft = 581
    end
    inherited pnlApply: TPanel
      Left = 849
      TabOrder = 3
      Visible = False
      ExplicitLeft = 849
    end
    object btnEditData: TBitBtn
      Left = 8
      Top = 2
      Width = 105
      Height = 25
      Action = actEditRecord
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077'...'
      TabOrder = 0
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
        0000FF00FF000000000000000000000000000000000000000000FFFFFF00FFFF
        FF0000000000FFFFFF000000000000000000FFFFFF0000000000FFFF00000000
        00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF00000000
        000000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFF00000000
        0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
        0000FFFFFF000000000000000000FFFFFF00FFFFFF0000000000FFFF00000000
        000000FFFF00FFFFFF0000FFFF00FFFFFF000000000000000000000000000000
        00000000000000FFFF0000000000FFFFFF00FFFFFF0000000000FFFF00000000
        0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
        FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFF00000000
        000000FFFF00FFFFFF0000000000000000000000000000000000000000000000
        000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
        00000000000000FFFF00FFFFFF0000FFFF00000000000000000000FFFF000000
        0000FFFFFF00FFFFFF000000000000000000FFFFFF0000000000FF00FF00FF00
        FF00FF00FF000000000000000000000000000000000000FFFF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000000000000FFFF0000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF000000000000FFFF0000000000FFFFFF00FFFFFF000000
        000000000000FFFFFF0000000000FFFFFF00FFFFFF0000000000FF00FF00FF00
        FF00FF00FF000000000000FFFF000000000000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00
        FF00000000000000FF0000000000FF00FF0000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FF00FF00FF00FF000000000000000000000000000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00}
      Spacing = -1
    end
  end
  inherited pnlMain: TPanel
    Left = 272
    Top = 112
    Width = 100
    Height = 100
    Align = alNone
    Visible = False
    ExplicitLeft = 272
    ExplicitTop = 112
    ExplicitWidth = 100
    ExplicitHeight = 100
    inherited pnlGrid: TPanel
      Width = 84
      Height = 84
      ExplicitWidth = 84
      ExplicitHeight = 84
      inherited pnlNavigator: TPanel
        Width = 84
        ExplicitWidth = 84
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
        Width = 84
        Height = 60
        Visible = False
      end
    end
  end
  object pcMain: TPageControl [2]
    Left = 0
    Top = 2
    Width = 938
    Height = 385
    ActivePage = tsMainData
    Anchors = [akLeft, akTop, akRight, akBottom]
    HotTrack = True
    TabOrder = 2
    object tsMainData: TTabSheet
      Caption = #1047#1072#1084#1077#1085#1080
      DesignSize = (
        930
        357)
      object grdChanges: TAbmesDBGrid
        Left = 0
        Top = 0
        Width = 930
        Height = 356
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = dsGridData
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'Microsoft Sans Serif'
        FooterFont.Style = []
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Microsoft Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VertScrollBar.Tracking = True
        OnDblClick = grdDataDblClick
        OnDrawColumnCell = grdDataDrawColumnCell
        OnGetCellParams = grdChangesGetCellParams
        Columns = <
          item
            Color = 14803425
            EditButtons = <>
            FieldName = '_STATUS'
            Footers = <>
            Title.Caption = #1057#1090
            Width = 18
          end
          item
            EditButtons = <>
            FieldName = 'NO_AS_FORMATED_TEXT'
            Footers = <>
            Title.Caption = #1057#1090#1088#1091#1082#1090#1091#1088#1077#1085' '#1085#1086#1084#1077#1088
            Width = 168
          end
          item
            EditButtons = <>
            FieldName = 'FORK_NO'
            Footers = <>
            Title.Caption = #1056#1082
            Width = 18
          end
          item
            EditButtons = <>
            FieldName = 'DETAIL_NAME'
            Footers = <>
            Title.Caption = #1050#1057#1063
            Width = 145
          end
          item
            EditButtons = <>
            FieldName = 'O_PRODUCT_NAME'
            Footers = <>
            Title.Caption = #1057#1090#1072#1088#1086'|'#1053#1057#1063
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'O_STORE_IDENTIFIER'
            Footers = <>
            Title.Caption = #1057#1090#1072#1088#1086'|'#1058#1055' '#1047
            Width = 47
          end
          item
            EditButtons = <>
            FieldName = 'O_PRODUCT_TECH_QUANTITY'
            Footers = <>
            Title.Caption = #1057#1090#1072#1088#1086'|'#1047#1072' 1 '#1050#1057#1063
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'O_PRODUCT_TECH_MEASURE_ABBREV'
            Footers = <>
            Title.Caption = #1057#1090#1072#1088#1086'|'#1052'.'#1077#1076'.'
            Width = 37
          end
          item
            EditButtons = <>
            FieldName = 'N_PRODUCT_NAME'
            Footers = <>
            Title.Caption = #1053#1086#1074#1086'|'#1053#1057#1063
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'N_STORE_IDENTIFIER'
            Footers = <>
            Title.Caption = #1053#1086#1074#1086'|'#1058#1055' '#1047
            Width = 48
          end
          item
            EditButtons = <>
            FieldName = 'N_PRODUCT_TECH_QUANTITY'
            Footers = <>
            Title.Caption = #1053#1086#1074#1086'|'#1047#1072' 1 '#1050#1057#1063
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'N_PRODUCT_TECH_MEASURE_ABBREV'
            Footers = <>
            Title.Caption = #1053#1086#1074#1086'|'#1052'.'#1077#1076'.'
            Width = 37
          end>
      end
    end
    object tsSystemData: TTabSheet
      Caption = #1057#1080#1089#1090#1077#1084#1085#1072' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
      ImageIndex = 1
      DesignSize = (
        930
        357)
      object grdSysInfo: TAbmesDBGrid
        Left = 0
        Top = 0
        Width = 930
        Height = 356
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = dsGridData
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'Microsoft Sans Serif'
        FooterFont.Style = []
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Microsoft Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VertScrollBar.Tracking = True
        OnDblClick = grdDataDblClick
        OnDrawColumnCell = grdDataDrawColumnCell
        OnGetCellParams = grdChangesGetCellParams
        Columns = <
          item
            Color = 14803425
            EditButtons = <>
            FieldName = '_STATUS'
            Footers = <>
            Title.Caption = #1057#1090
            Width = 18
          end
          item
            EditButtons = <>
            FieldName = 'NO_AS_FORMATED_TEXT'
            Footers = <>
            Title.Caption = #1057#1090#1088#1091#1082#1090#1091#1088#1077#1085' '#1085#1086#1084#1077#1088
            Width = 168
          end
          item
            EditButtons = <>
            FieldName = 'FORK_NO'
            Footers = <>
            Title.Caption = #1056#1082
            Width = 18
          end
          item
            EditButtons = <>
            FieldName = 'DETAIL_NAME'
            Footers = <>
            Title.Caption = #1050#1057#1063
            Width = 231
          end
          item
            Color = 14803425
            EditButtons = <>
            FieldName = 'REQUEST_EMPLOYEE_NAME'
            Footers = <>
            Title.Caption = #1055#1088#1077#1076#1083#1086#1078#1077#1085#1072' '#1079#1072#1084#1103#1085#1072'|'#1057#1083#1091#1078'.'
            Width = 40
          end
          item
            Color = 14803425
            EditButtons = <>
            FieldName = 'REQUEST_DATE'
            Footers = <>
            Title.Caption = #1055#1088#1077#1076#1083#1086#1078#1077#1085#1072' '#1079#1072#1084#1103#1085#1072'|'#1044#1072#1090#1072
            Width = 65
          end
          item
            Color = 14803425
            EditButtons = <>
            FieldName = 'REQUEST_TIME'
            Footers = <>
            Title.Caption = #1055#1088#1077#1076#1083#1086#1078#1077#1085#1072' '#1079#1072#1084#1103#1085#1072'|'#1063#1072#1089
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'REPLY_EMPLOYEE_NAME'
            Footers = <>
            Title.Caption = #1055#1088#1080#1077#1090#1072'/'#1054#1090#1082'. '#1079#1072#1084#1103#1085#1072'|'#1057#1083#1091#1078'.'
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'REPLY_DATE'
            Footers = <>
            Title.Caption = #1055#1088#1080#1077#1090#1072'/'#1054#1090#1082'. '#1079#1072#1084#1103#1085#1072'|'#1044#1072#1090#1072
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'REPLY_TIME'
            Footers = <>
            Title.Caption = #1055#1088#1080#1077#1090#1072'/'#1054#1090#1082'. '#1079#1072#1084#1103#1085#1072'|'#1063#1072#1089
            Width = 45
          end
          item
            Color = 14803425
            EditButtons = <>
            FieldName = '_REPLY_ACCEPT_EMPLOYEE_NAME'
            Footers = <>
            Title.Caption = #1042#1080#1076#1103#1085' '#1086#1090#1082#1072#1079'|'#1057#1083#1091#1078'.'
            Width = 40
          end
          item
            Color = 14803425
            EditButtons = <>
            FieldName = '_REPLY_ACCEPT_DATE'
            Footers = <>
            Title.Caption = #1042#1080#1076#1103#1085' '#1086#1090#1082#1072#1079'|'#1044#1072#1090#1072
            Width = 65
          end
          item
            Color = 14803425
            EditButtons = <>
            FieldName = '_REPLY_ACCEPT_TIME'
            Footers = <>
            Title.Caption = #1042#1080#1076#1103#1085' '#1086#1090#1082#1072#1079'|'#1063#1072#1089
            Width = 45
          end>
      end
    end
  end
  object tlbTop: TToolBar [3]
    Left = 913
    Top = 0
    Width = 23
    Height = 22
    Align = alNone
    AutoSize = True
    Caption = 'tlbTop'
    Images = dmMain.ilActions
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    object btnShowAutoChanges: TToolButton
      Left = 0
      Top = 0
      Action = actShowAutoChanges
      AllowAllUp = True
      Grouped = True
    end
  end
  inherited dsGridData: TDataSource
    Left = 64
    Top = 168
  end
  inherited cdsGridData: TAbmesClientDataSet
    Filter = 'IS_DIRECT_CHANGE = 0'
    Filtered = True
    FieldDefs = <
      item
        Name = 'MLL_OBJECT_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'MLL_OBJECT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'MATERIAL_LIST_LINE_CHANGE_NO'
        DataType = ftFloat
      end
      item
        Name = 'NO_1'
        DataType = ftFloat
      end
      item
        Name = 'NO_2'
        DataType = ftFloat
      end
      item
        Name = 'NO_3'
        DataType = ftFloat
      end
      item
        Name = 'NO_4'
        DataType = ftFloat
      end
      item
        Name = 'NO_5'
        DataType = ftFloat
      end
      item
        Name = 'NO_6'
        DataType = ftFloat
      end
      item
        Name = 'NO_7'
        DataType = ftFloat
      end
      item
        Name = 'NO_8'
        DataType = ftFloat
      end
      item
        Name = 'NO_9'
        DataType = ftFloat
      end
      item
        Name = 'NO_10'
        DataType = ftFloat
      end
      item
        Name = 'NO_11'
        DataType = ftFloat
      end
      item
        Name = 'NO_12'
        DataType = ftFloat
      end
      item
        Name = 'NO_13'
        DataType = ftFloat
      end
      item
        Name = 'NO_14'
        DataType = ftFloat
      end
      item
        Name = 'NO_15'
        DataType = ftFloat
      end
      item
        Name = 'NO_16'
        DataType = ftFloat
      end
      item
        Name = 'NO_17'
        DataType = ftFloat
      end
      item
        Name = 'NO_18'
        DataType = ftFloat
      end
      item
        Name = 'NO_19'
        DataType = ftFloat
      end
      item
        Name = 'NO_20'
        DataType = ftFloat
      end
      item
        Name = 'NO_21'
        DataType = ftFloat
      end
      item
        Name = 'NO_22'
        DataType = ftFloat
      end
      item
        Name = 'NO_23'
        DataType = ftFloat
      end
      item
        Name = 'NO_24'
        DataType = ftFloat
      end
      item
        Name = 'NO_25'
        DataType = ftFloat
      end
      item
        Name = 'NO_AS_TEXT'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'NO_AS_FORMATED_TEXT'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'FORK_NO'
        DataType = ftFloat
      end
      item
        Name = 'NO_AS_FORMATED_TEXT_EX'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'MLL_CHANGE_REPLY_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DETAIL_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DETAIL_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'DETAIL_NO'
        DataType = ftFloat
      end
      item
        Name = 'O_PRODUCT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'O_PRODUCT_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'O_PRODUCT_NO'
        DataType = ftFloat
      end
      item
        Name = 'O_PRODUCT_TECH_MEASURE_ABBREV'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'N_PRODUCT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'N_PRODUCT_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'N_PRODUCT_NO'
        DataType = ftFloat
      end
      item
        Name = 'N_PRODUCT_TECH_MEASURE_ABBREV'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'O_STORE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'O_STORE_IDENTIFIER'
        DataType = ftWideString
        Size = 45
      end
      item
        Name = 'N_STORE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'N_STORE_IDENTIFIER'
        DataType = ftWideString
        Size = 45
      end
      item
        Name = 'O_PRODUCT_TECH_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'N_PRODUCT_TECH_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'REQUEST_EMPLOYEE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'REQUEST_EMPLOYEE_NAME'
        DataType = ftWideString
        Size = 54
      end
      item
        Name = 'REQUEST_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'REQUEST_TIME'
        DataType = ftTimeStamp
      end
      item
        Name = 'REPLY_EMPLOYEE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'REPLY_EMPLOYEE_NAME'
        DataType = ftWideString
        Size = 54
      end
      item
        Name = 'REPLY_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'REPLY_TIME'
        DataType = ftTimeStamp
      end
      item
        Name = 'REPLY_ACCEPT_EMPLOYEE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'REPLY_ACCEPT_EMPLOYEE_NAME'
        DataType = ftWideString
        Size = 54
      end
      item
        Name = 'REPLY_ACCEPT_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'REPLY_ACCEPT_TIME'
        DataType = ftTimeStamp
      end
      item
        Name = 'IS_DIRECT_CHANGE'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'idxDefault'
        Fields = 
          'IS_DIRECT_CHANGE; NO_AS_FORMATED_TEXT_EX; FORK_NO; REQUEST_DATE;' +
          ' REQUEST_TIME'
      end>
    IndexName = 'idxDefault'
    Params = <
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_OBJECT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvModelChanges'
    ConnectionBroker = dmMain.conModelChanges
    OnCalcFields = cdsGridDataCalcFields
    Left = 32
    Top = 168
    object cdsGridDataMLL_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_BRANCH_CODE'
    end
    object cdsGridDataMLL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_CODE'
    end
    object cdsGridDataMATERIAL_LIST_LINE_CHANGE_NO: TAbmesFloatField
      FieldName = 'MATERIAL_LIST_LINE_CHANGE_NO'
    end
    object cdsGridDataNO_1: TAbmesFloatField
      FieldName = 'NO_1'
    end
    object cdsGridDataNO_2: TAbmesFloatField
      FieldName = 'NO_2'
    end
    object cdsGridDataNO_3: TAbmesFloatField
      FieldName = 'NO_3'
    end
    object cdsGridDataNO_4: TAbmesFloatField
      FieldName = 'NO_4'
    end
    object cdsGridDataNO_5: TAbmesFloatField
      FieldName = 'NO_5'
    end
    object cdsGridDataNO_6: TAbmesFloatField
      FieldName = 'NO_6'
    end
    object cdsGridDataNO_7: TAbmesFloatField
      FieldName = 'NO_7'
    end
    object cdsGridDataNO_8: TAbmesFloatField
      FieldName = 'NO_8'
    end
    object cdsGridDataNO_9: TAbmesFloatField
      FieldName = 'NO_9'
    end
    object cdsGridDataNO_10: TAbmesFloatField
      FieldName = 'NO_10'
    end
    object cdsGridDataNO_11: TAbmesFloatField
      FieldName = 'NO_11'
    end
    object cdsGridDataNO_12: TAbmesFloatField
      FieldName = 'NO_12'
    end
    object cdsGridDataNO_13: TAbmesFloatField
      FieldName = 'NO_13'
    end
    object cdsGridDataNO_14: TAbmesFloatField
      FieldName = 'NO_14'
    end
    object cdsGridDataNO_15: TAbmesFloatField
      FieldName = 'NO_15'
    end
    object cdsGridDataNO_16: TAbmesFloatField
      FieldName = 'NO_16'
    end
    object cdsGridDataNO_17: TAbmesFloatField
      FieldName = 'NO_17'
    end
    object cdsGridDataNO_18: TAbmesFloatField
      FieldName = 'NO_18'
    end
    object cdsGridDataNO_19: TAbmesFloatField
      FieldName = 'NO_19'
    end
    object cdsGridDataNO_20: TAbmesFloatField
      FieldName = 'NO_20'
    end
    object cdsGridDataNO_21: TAbmesFloatField
      FieldName = 'NO_21'
    end
    object cdsGridDataNO_22: TAbmesFloatField
      FieldName = 'NO_22'
    end
    object cdsGridDataNO_23: TAbmesFloatField
      FieldName = 'NO_23'
    end
    object cdsGridDataNO_24: TAbmesFloatField
      FieldName = 'NO_24'
    end
    object cdsGridDataNO_25: TAbmesFloatField
      FieldName = 'NO_25'
    end
    object cdsGridDataNO_AS_TEXT: TAbmesWideStringField
      FieldName = 'NO_AS_TEXT'
      Size = 100
    end
    object cdsGridDataNO_AS_FORMATED_TEXT: TAbmesWideStringField
      FieldName = 'NO_AS_FORMATED_TEXT'
      Size = 100
    end
    object cdsGridDataFORK_NO: TAbmesFloatField
      FieldName = 'FORK_NO'
    end
    object cdsGridDataNO_AS_FORMATED_TEXT_EX: TAbmesWideStringField
      FieldName = 'NO_AS_FORMATED_TEXT_EX'
      Size = 100
    end
    object cdsGridDataMLL_CHANGE_REPLY_TYPE_CODE: TAbmesFloatField
      FieldName = 'MLL_CHANGE_REPLY_TYPE_CODE'
    end
    object cdsGridDataDETAIL_CODE: TAbmesFloatField
      FieldName = 'DETAIL_CODE'
    end
    object cdsGridDataDETAIL_NAME: TAbmesWideStringField
      FieldName = 'DETAIL_NAME'
      Size = 100
    end
    object cdsGridDataDETAIL_NO: TAbmesFloatField
      FieldName = 'DETAIL_NO'
    end
    object cdsGridDataO_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'O_PRODUCT_CODE'
    end
    object cdsGridDataO_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'O_PRODUCT_NAME'
      Size = 100
    end
    object cdsGridDataO_PRODUCT_NO: TAbmesFloatField
      FieldName = 'O_PRODUCT_NO'
    end
    object cdsGridDataO_PRODUCT_TECH_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'O_PRODUCT_TECH_MEASURE_ABBREV'
      Size = 5
    end
    object cdsGridDataN_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'N_PRODUCT_CODE'
    end
    object cdsGridDataN_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'N_PRODUCT_NAME'
      Size = 100
    end
    object cdsGridDataN_PRODUCT_NO: TAbmesFloatField
      FieldName = 'N_PRODUCT_NO'
    end
    object cdsGridDataN_PRODUCT_TECH_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'N_PRODUCT_TECH_MEASURE_ABBREV'
      Size = 5
    end
    object cdsGridDataO_STORE_CODE: TAbmesFloatField
      FieldName = 'O_STORE_CODE'
    end
    object cdsGridDataO_STORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'O_STORE_IDENTIFIER'
      Size = 45
    end
    object cdsGridDataN_STORE_CODE: TAbmesFloatField
      FieldName = 'N_STORE_CODE'
    end
    object cdsGridDataN_STORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'N_STORE_IDENTIFIER'
      Size = 45
    end
    object cdsGridDataO_PRODUCT_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'O_PRODUCT_TECH_QUANTITY'
    end
    object cdsGridDataN_PRODUCT_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'N_PRODUCT_TECH_QUANTITY'
    end
    object cdsGridDataREQUEST_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'REQUEST_EMPLOYEE_CODE'
    end
    object cdsGridDataREQUEST_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'REQUEST_EMPLOYEE_NAME'
      Size = 54
    end
    object cdsGridDataREQUEST_DATE: TAbmesSQLTimeStampField
      FieldName = 'REQUEST_DATE'
    end
    object cdsGridDataREQUEST_TIME: TAbmesSQLTimeStampField
      FieldName = 'REQUEST_TIME'
      DisplayFormat = 't'
    end
    object cdsGridDataREPLY_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'REPLY_EMPLOYEE_CODE'
    end
    object cdsGridDataREPLY_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'REPLY_EMPLOYEE_NAME'
      Size = 54
    end
    object cdsGridDataREPLY_DATE: TAbmesSQLTimeStampField
      FieldName = 'REPLY_DATE'
    end
    object cdsGridDataREPLY_TIME: TAbmesSQLTimeStampField
      FieldName = 'REPLY_TIME'
      DisplayFormat = 't'
    end
    object cdsGridDataREPLY_ACCEPT_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'REPLY_ACCEPT_EMPLOYEE_CODE'
    end
    object cdsGridDataREPLY_ACCEPT_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'REPLY_ACCEPT_EMPLOYEE_NAME'
      Size = 54
    end
    object cdsGridDataREPLY_ACCEPT_DATE: TAbmesSQLTimeStampField
      FieldName = 'REPLY_ACCEPT_DATE'
    end
    object cdsGridDataREPLY_ACCEPT_TIME: TAbmesSQLTimeStampField
      FieldName = 'REPLY_ACCEPT_TIME'
      DisplayFormat = 't'
    end
    object cdsGridData_STATUS: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_STATUS'
      Size = 100
      Calculated = True
    end
    object cdsGridData_REPLY_ACCEPT_EMPLOYEE_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_REPLY_ACCEPT_EMPLOYEE_NAME'
      Size = 54
      Calculated = True
    end
    object cdsGridData_REPLY_ACCEPT_DATE: TAbmesSQLTimeStampField
      FieldKind = fkCalculated
      FieldName = '_REPLY_ACCEPT_DATE'
      Calculated = True
    end
    object cdsGridData_REPLY_ACCEPT_TIME: TAbmesSQLTimeStampField
      FieldKind = fkCalculated
      FieldName = '_REPLY_ACCEPT_TIME'
      DisplayFormat = 't'
      Calculated = True
    end
    object cdsGridDataIS_DIRECT_CHANGE: TAbmesFloatField
      FieldName = 'IS_DIRECT_CHANGE'
      FieldValueType = fvtBoolean
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1047#1072#1084#1077#1085#1080
    end
    object actShowAutoChanges: TAction
      GroupIndex = 1
      Hint = #1044#1080#1088#1077#1082#1090#1085#1080' '#1087#1088#1086#1084#1077#1085#1080' '#1074' '#1084#1086#1076#1077#1083#1072
      ImageIndex = 33
      OnExecute = actShowAutoChangesExecute
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    Left = 32
    Top = 200
  end
  inherited dsGridDataParams: TDataSource
    Left = 64
    Top = 200
  end
  inherited dsData: TDataSource
    Left = 64
    Top = 136
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 32
    Top = 136
  end
end
