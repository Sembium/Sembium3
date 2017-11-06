inherited fmTeamsFilter: TfmTeamsFilter
  Left = 277
  Top = 185
  Caption = #1060#1080#1083#1090#1098#1088' '#1085#1072' '#1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1045#1082#1080#1087#1080
  ClientHeight = 276
  ClientWidth = 393
  ExplicitWidth = 399
  ExplicitHeight = 301
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 241
    Width = 393
    TabOrder = 2
    ExplicitTop = 241
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
  inline frDeptFilter: TfrDeptFilter [1]
    Left = 8
    Top = 88
    Width = 377
    Height = 145
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    TabStop = True
    ExplicitLeft = 8
    ExplicitTop = 88
    inherited grpTreeNodeFilter: TGroupBox
      Caption = ' '#1054#1088#1063' '#1085#1072' '#1045#1082#1080#1087' '
      inherited pnlNodes: TPanel
        inherited grdChosenNodes: TAbmesDBGrid
          FooterFont.Name = 'Microsoft Sans Serif'
          TitleFont.Name = 'Microsoft Sans Serif'
        end
      end
    end
  end
  object grpTeamCode: TGroupBox [2]
    Left = 8
    Top = 8
    Width = 377
    Height = 65
    Caption = ' '#1045#1082#1080#1087' '
    TabOrder = 0
    object lblTeamNo: TLabel
      Left = 8
      Top = 16
      Width = 19
      Height = 13
      Caption = #1050#1086#1076
      FocusControl = edtTeamNo
    end
    object lblTeamName: TLabel
      Left = 88
      Top = 16
      Width = 76
      Height = 13
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FocusControl = edtTeamName
    end
    object edtTeamNo: TDBEdit
      Left = 8
      Top = 32
      Width = 73
      Height = 21
      DataField = 'TEAM_NO'
      DataSource = dsData
      TabOrder = 0
    end
    object edtTeamName: TDBEdit
      Left = 88
      Top = 32
      Width = 281
      Height = 21
      DataField = 'TEAM_NAME'
      DataSource = dsData
      TabOrder = 1
    end
  end
  inherited alActions: TActionList [3]
    inherited actForm: TAction
      Caption = #1060#1080#1083#1090#1098#1088' '#1085#1072' '#1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1045#1082#1080#1087#1080
    end
  end
  inherited dsData: TDataSource [5]
  end
  inherited cdsData: TAbmesClientDataSet [6]
  end
  inherited cdsFilterVariants: TAbmesClientDataSet [7]
    Top = 248
  end
  inherited dsFilterVariants: TDataSource [8]
    Left = 40
    Top = 248
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Left = 72
    Top = 248
  end
end
