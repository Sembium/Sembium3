inherited fmBaseGroupsFilter: TfmBaseGroupsFilter
  Left = 455
  Top = 256
  Caption = '%s '#1085#1072' '#1041#1072#1079#1086#1074#1086' '#1043#1088#1091#1087#1080#1088#1072#1085#1077' '#1074' '#1055#1086#1090#1086#1094#1080' '#1086#1090' '#1059#1054#1073' '#1087#1088#1077#1079' '#1058#1055
  ClientHeight = 357
  ClientWidth = 817
  ExplicitWidth = 823
  ExplicitHeight = 382
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 393
    Height = 306
    Anchors = [akLeft, akTop, akBottom]
    ExplicitWidth = 425
    ExplicitHeight = 121
  end
  inherited pnlBottomButtons: TPanel
    Top = 322
    Width = 817
    TabOrder = 2
    ExplicitTop = 322
    ExplicitWidth = 817
    inherited pnlOKCancel: TPanel
      Left = 549
      ExplicitLeft = 549
    end
    inherited pnlClose: TPanel
      Left = 460
      ExplicitLeft = 460
    end
    inherited pnlApply: TPanel
      Left = 728
      ExplicitLeft = 728
    end
  end
  inline frGroupDept: TfrDeptFieldEditFrame [2]
    Left = 16
    Top = 16
    Width = 377
    Height = 49
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    TabOrder = 0
    TabStop = True
    ExplicitLeft = 16
    ExplicitTop = 16
    ExplicitWidth = 377
    inherited gbTreeNode: TGroupBox
      Width = 377
      ExplicitWidth = 377
      inherited pnlTreeNode: TPanel
        Width = 361
        ExplicitWidth = 361
        inherited pnlTreeNodeName: TPanel
          Width = 214
          ExplicitWidth = 214
          inherited edtTreeNodeName: TDBEdit
            Width = 213
            ExplicitWidth = 213
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 214
          ExplicitLeft = 214
        end
        inherited pnlRightButtons: TPanel
          Left = 325
          ExplicitLeft = 325
        end
      end
    end
  end
  inline frJoinedProduct: TfrParamProductFilter [3]
    Left = 16
    Top = 72
    Width = 377
    Height = 233
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    TabStop = True
    ExplicitLeft = 16
    ExplicitTop = 72
    inherited grpTreeNodeFilter: TGroupBox
      Caption = ' '#1050#1057#1063' - '#1063#1083#1077#1085' '#1085#1072' '#1041#1072#1079#1086#1074#1072' '#1043#1088#1091#1087#1072' '
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
  object gbCandidatesFilter: TGroupBox [4]
    Left = 416
    Top = 3
    Width = 393
    Height = 311
    Caption = ' '#1050#1072#1085#1076#1080#1076#1072#1090' '#1063#1083#1077#1085#1086#1074#1077' '#1085#1072' '#1041#1072#1079#1086#1074#1072' '#1043#1088#1091#1087#1072' '
    TabOrder = 3
    inline frCandidateProduct: TfrParamProductFilter
      Left = 8
      Top = 16
      Width = 377
      Height = 233
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      ExplicitLeft = 8
      ExplicitTop = 16
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
    object rgFlowsThroughDept: TDBRadioGroup
      Left = 8
      Top = 260
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
      TabOrder = 1
      Values.Strings = (
        '1'
        '2'
        '3')
    end
  end
  inherited alActions: TActionList [5]
    inherited actForm: TAction
      Caption = '%s '#1085#1072' '#1041#1072#1079#1086#1074#1086' '#1043#1088#1091#1087#1080#1088#1072#1085#1077' '#1074' '#1055#1086#1090#1086#1094#1080' '#1086#1090' '#1059#1054#1073' '#1087#1088#1077#1079' '#1058#1055
    end
  end
  inherited dsData: TDataSource [7]
  end
  inherited cdsData: TAbmesClientDataSet [8]
  end
  inherited cdsFilterVariants: TAbmesClientDataSet [9]
  end
end
