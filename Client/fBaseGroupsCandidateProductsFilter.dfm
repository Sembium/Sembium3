inherited fmBaseGroupsCandidateProductsFilter: TfmBaseGroupsCandidateProductsFilter
  Caption = #1060#1080#1083#1090#1098#1088' '#1085#1072' '#1050#1072#1085#1076#1080#1076#1072#1090' '#1063#1083#1077#1085#1086#1074#1077' '#1085#1072' '#1041#1072#1079#1086#1074#1072' '#1043#1088#1091#1087#1072
  ClientHeight = 332
  ClientWidth = 393
  ExplicitWidth = 399
  ExplicitHeight = 357
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 297
    Width = 393
    ExplicitTop = 297
    ExplicitWidth = 393
    inherited pnlOKCancel: TPanel
      Left = 125
      ExplicitLeft = 125
    end
    inherited pnlClose: TPanel
      Left = 36
      ExplicitLeft = 36
    end
    inherited pnlApply: TPanel
      Left = 304
      ExplicitLeft = 304
    end
  end
  inline frCandidateProduct: TfrParamProductFilter [1]
    Left = 8
    Top = 8
    Width = 377
    Height = 233
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    ExplicitLeft = 8
    ExplicitTop = 8
    inherited grpTreeNodeFilter: TGroupBox
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
        inherited grdChosenNodes: TAbmesDBGrid
          FooterFont.Name = 'Microsoft Sans Serif'
          TitleFont.Name = 'Microsoft Sans Serif'
        end
      end
      inherited pnlParams: TPanel
        inherited grdChosenNodeParams: TAbmesDBGrid
          FooterFont.Name = 'Microsoft Sans Serif'
          TitleFont.Name = 'Microsoft Sans Serif'
        end
      end
    end
  end
  object rgFlowsThroughDept: TDBRadioGroup [2]
    Left = 8
    Top = 248
    Width = 377
    Height = 41
    Caption = ' '#1050#1057#1063' '#1074' '#1055#1086#1090#1086#1082' '#1087#1088#1077#1079' '#1058#1055' '
    Columns = 3
    DataField = 'FLOWS_THROUGH_DEPT'
    DataSource = dsData
    Items.Strings = (
      #1042#1089#1080#1095#1082#1080
      #1052#1080#1085#1072#1074#1072
      #1053#1077' '#1084#1080#1085#1072#1074#1072)
    ParentBackground = True
    TabOrder = 2
    Values.Strings = (
      '1'
      '2'
      '3')
  end
  inherited alActions: TActionList [3]
    inherited actForm: TAction
      Caption = #1060#1080#1083#1090#1098#1088' '#1085#1072' '#1050#1072#1085#1076#1080#1076#1072#1090' '#1063#1083#1077#1085#1086#1074#1077' '#1085#1072' '#1041#1072#1079#1086#1074#1072' '#1043#1088#1091#1087#1072
    end
  end
  inherited dsData: TDataSource [5]
  end
  inherited cdsData: TAbmesClientDataSet [6]
  end
  inherited cdsFilterVariants: TAbmesClientDataSet [7]
    Top = 288
  end
  inherited dsFilterVariants: TDataSource [8]
    Top = 288
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Top = 304
  end
end
