inherited fmStoreQuantitiesFilter: TfmStoreQuantitiesFilter
  Left = 350
  Top = 283
  Caption = '%s '#1085#1072' '#1053#1072#1083#1080#1095#1085#1086#1089#1090#1080' '#1086#1090' %ProductClassAbbrev% '#1082#1098#1084' '#1076#1072#1090#1072
  ClientHeight = 500
  ClientWidth = 465
  ExplicitWidth = 471
  ExplicitHeight = 525
  DesignSize = (
    465
    500)
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 450
    Height = 450
    ExplicitWidth = 450
    ExplicitHeight = 401
  end
  object lblStoreDealDate: TLabel [1]
    Left = 24
    Top = 16
    Width = 48
    Height = 13
    Caption = #1050#1098#1084' '#1076#1072#1090#1072
  end
  object rgIsGroupedByStore: TDBRadioGroup [2]
    Left = 136
    Top = 16
    Width = 305
    Height = 41
    Caption = ' '#1043#1088#1091#1087#1080#1088#1072#1085#1077' '#1087#1086' '
    Columns = 2
    DataField = 'IS_GROUPED_BY_STORE'
    DataSource = dsData
    Items.Strings = (
      '%ProductClassName%'
      '%ProductClassAbbrev% '#1080' '#1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086)
    ParentBackground = True
    TabOrder = 1
    Values.Strings = (
      'False'
      'True')
  end
  inherited pnlBottomButtons: TPanel
    Top = 465
    Width = 465
    TabOrder = 4
    ExplicitTop = 465
    ExplicitWidth = 465
    inherited pnlOKCancel: TPanel
      Left = 197
      ExplicitLeft = 197
    end
    inherited pnlClose: TPanel
      Left = 108
      ExplicitLeft = 108
    end
    inherited pnlApply: TPanel
      Left = 376
      ExplicitLeft = 376
    end
  end
  inline frStoreDealDate: TfrDateFieldEditFrame [4]
    Left = 24
    Top = 32
    Width = 105
    Height = 21
    Constraints.MaxHeight = 21
    Constraints.MaxWidth = 105
    Constraints.MinHeight = 21
    Constraints.MinWidth = 105
    TabOrder = 0
    TabStop = True
    ExplicitLeft = 24
    ExplicitTop = 32
  end
  inline frParamProductFilter: TfrParamProductFilter [5]
    Left = 24
    Top = 64
    Width = 417
    Height = 233
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    TabStop = True
    ExplicitLeft = 24
    ExplicitTop = 64
    ExplicitWidth = 417
    inherited grpTreeNodeFilter: TGroupBox
      Width = 417
      ExplicitWidth = 417
      inherited lblUsedBy: TLabel
        Width = 61
        ExplicitWidth = 61
      end
      inherited lblProductOrigin: TLabel
        Width = 23
        ExplicitWidth = 23
      end
      inherited lblCommonStatus: TLabel
        Width = 45
        ExplicitWidth = 45
      end
      inherited lblIsActive: TLabel
        Width = 53
        ExplicitWidth = 53
      end
      inherited pnlNodes: TPanel
        Width = 401
        ExplicitWidth = 401
        inherited grdChosenNodes: TAbmesDBGrid
          Width = 376
          FooterFont.Name = 'Microsoft Sans Serif'
          TitleFont.Name = 'Microsoft Sans Serif'
          Columns = <
            item
              EditButtons = <>
              FieldName = 'NODE_NAME'
              Footers = <>
              Width = 279
            end
            item
              EditButtons = <>
              FieldName = 'NODE_NO'
              Footers = <>
              Width = 63
            end>
        end
        inherited pnlNodesButtons: TPanel
          Left = 376
          ExplicitLeft = 376
        end
      end
      inherited pnlParams: TPanel
        Width = 401
        ExplicitWidth = 401
        inherited grdChosenNodeParams: TAbmesDBGrid
          Width = 376
          FooterFont.Name = 'Microsoft Sans Serif'
          TitleFont.Name = 'Microsoft Sans Serif'
          Columns = <
            item
              EditButtons = <>
              FieldName = 'NODE_PARAM_NAME'
              Footers = <>
              Width = 247
            end
            item
              EditButtons = <>
              FieldName = 'DISPLAY_VALUE'
              Footers = <>
              Width = 95
            end>
        end
        inherited pnlParamsButtons: TPanel
          Left = 376
          ExplicitLeft = 376
        end
      end
    end
  end
  inline frDeptFilter: TfrDeptFilter [6]
    Left = 24
    Top = 304
    Width = 417
    Height = 145
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    TabStop = True
    ExplicitLeft = 24
    ExplicitTop = 304
    ExplicitWidth = 417
    inherited grpTreeNodeFilter: TGroupBox
      Width = 417
      ExplicitWidth = 417
      inherited lblsExternal: TLabel
        Width = 52
        ExplicitWidth = 52
      end
      inherited lblIsActive: TLabel
        Width = 53
        ExplicitWidth = 53
      end
      inherited pnlNodes: TPanel
        Width = 401
        ExplicitWidth = 401
        inherited grdChosenNodes: TAbmesDBGrid
          Width = 376
          FooterFont.Name = 'Microsoft Sans Serif'
          TitleFont.Name = 'Microsoft Sans Serif'
          Columns = <
            item
              EditButtons = <>
              FieldName = 'NODE_NAME'
              Footers = <>
              Width = 279
            end
            item
              EditButtons = <>
              FieldName = 'NODE_IDENTIFIER'
              Footers = <>
              Width = 63
            end>
        end
        inherited pnlNodesButtons: TPanel
          Left = 376
          ExplicitLeft = 376
        end
      end
    end
  end
  inherited alActions: TActionList [7]
    Left = 336
    Top = 400
    inherited actForm: TAction
      Caption = '%s '#1085#1072' '#1053#1072#1083#1080#1095#1085#1086#1089#1090#1080' '#1086#1090' %ProductClassAbbrev% '#1082#1098#1084' '#1076#1072#1090#1072
    end
  end
  inherited dsData: TDataSource [8]
    Left = 288
    Top = 400
  end
  inherited cdsData: TAbmesClientDataSet [10]
    Left = 256
    Top = 400
  end
  inherited cdsFilterVariants: TAbmesClientDataSet
    Left = 24
    Top = 464
  end
  inherited dsFilterVariants: TDataSource
    Left = 56
    Top = 464
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Left = 80
    Top = 480
  end
end
