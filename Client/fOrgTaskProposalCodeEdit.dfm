inherited fmOrgTaskProposalCodeEdit: TfmOrgTaskProposalCodeEdit
  ActiveControl = edtOrgTaskProposalNo
  Caption = #1047#1072#1076#1072#1074#1072#1085#1077' '#1085#1072' '#1055#1088#1086#1077#1082#1090
  ClientHeight = 135
  ClientWidth = 737
  ExplicitWidth = 743
  ExplicitHeight = 161
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 100
    Width = 737
    TabOrder = 1
    ExplicitTop = 100
    ExplicitWidth = 737
    inherited pnlOKCancel: TPanel
      Left = 469
      ExplicitLeft = 469
    end
    inherited pnlClose: TPanel
      Left = 380
      ExplicitLeft = 380
    end
    inherited pnlApply: TPanel
      Left = 648
      Visible = False
      ExplicitLeft = 648
    end
  end
  object gbOrganisationTaskProposal: TGroupBox [1]
    Left = 8
    Top = 5
    Width = 721
    Height = 89
    Caption = 
      ' '#1055#1088#1077#1076#1086#1090#1074#1088#1072#1090#1103#1074#1072#1085#1077' '#1085#1072' '#1041#1098#1076#1077#1097#1072' '#1055#1086#1103#1074#1072' '#1085#1072' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1086' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' '#1095#1088#1077#1079' ' +
      #1055#1088#1086#1077#1082#1090' '
    TabOrder = 0
    object gbOrgTaskProposalID: TGroupBox
      Left = 8
      Top = 16
      Width = 217
      Height = 65
      Caption = ' ID '#1055#1088#1086#1077#1082#1090' '
      TabOrder = 0
      object lblOrgTaskProposalState: TLabel
        Left = 8
        Top = 16
        Width = 34
        Height = 13
        Caption = #1057#1090#1072#1090#1091#1089
      end
      object lblOrgTaskProposalNo: TLabel
        Left = 72
        Top = 16
        Width = 14
        Height = 13
        Caption = 'No'
      end
      object lblOrgTaskProposalCycleNo: TLabel
        Left = 168
        Top = 16
        Width = 33
        Height = 13
        Caption = #1062#1080#1082#1098#1083
      end
      object edtOrgTaskProposalState: TDBEdit
        Left = 8
        Top = 32
        Width = 57
        Height = 21
        Color = clBtnFace
        DataField = 'OTP_STATE_CODE'
        DataSource = dsOrgTaskProposal
        ReadOnly = True
        TabOrder = 0
      end
      object edtOrgTaskProposalCycleNo: TDBEdit
        Left = 168
        Top = 32
        Width = 41
        Height = 21
        Color = clBtnFace
        DataField = 'ORG_TASK_PROPOSAL_CYCLE_NO'
        DataSource = dsOrgTaskProposal
        ReadOnly = True
        TabOrder = 3
      end
      object edtOrgTaskProposalNo: TDBEdit
        Left = 72
        Top = 32
        Width = 89
        Height = 21
        DataField = 'ORG_TASK_PROPOSAL_NO'
        DataSource = dsOrgTaskProposal
        TabOrder = 1
      end
      object pnlDetachOrgTaskProposal: TPanel
        Left = 140
        Top = 34
        Width = 19
        Height = 18
        BevelOuter = bvNone
        TabOrder = 2
        object btnDetachOrgTaskProposal: TSpeedButton
          Left = 0
          Top = 0
          Width = 19
          Height = 18
          Action = actDetachOrgTaskProposal
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            000000000000FF00FF00FF00FF000000000000000000FF00FF00000000000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF000000000000000000FF00FF0000000000FF00FF0000000000000084000000
            840000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00000000000000FF000000FF000000
            FF000000840000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            000000000000FF00FF00FF00FF00FF00FF00000000000000FF000000FF000000
            FF000000FF000000840000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            000000000000FF00FF0000000000FF00FF00FF00FF00000000000000FF000000
            FF000000FF00000000000084840000000000FF00FF00FF00FF00FF00FF00FF00
            FF000000000000000000FF00FF0000000000FF00FF00FF00FF00000000000000
            FF000000000000FFFF00000000000084840000000000FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            000000FFFF000000000000FFFF000000000000848400FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF000000000000FFFF000000000000FFFF0000848400FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000000000000FFFF0000FFFF0000FFFF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF000000000000FFFF0000FFFF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF000000000000FFFF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          ParentShowHint = False
          ShowHint = True
        end
      end
    end
    inline frOrgTaskProposalProduct: TfrProductFieldEditFrameLabeled
      Left = 232
      Top = 16
      Width = 353
      Height = 65
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 65
      TabOrder = 1
      TabStop = True
      ExplicitLeft = 232
      ExplicitTop = 16
      ExplicitWidth = 353
      inherited gbTreeNode: TGroupBox
        Width = 353
        Caption = ' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090' - '#1055#1088#1086#1077#1082#1090' '
        ExplicitWidth = 353
        DesignSize = (
          353
          65)
        inherited lblTreeNodeNo: TLabel
          Left = 192
          ExplicitLeft = 192
        end
        inherited pnlTreeNode: TPanel
          Width = 337
          ExplicitWidth = 337
          inherited pnlTreeNodeName: TPanel
            Width = 167
            ExplicitWidth = 167
            DesignSize = (
              167
              22)
            inherited edtTreeNodeName: TDBEdit
              Width = 166
              ExplicitWidth = 166
            end
          end
          inherited pnlTreeNodeNo: TPanel
            Left = 167
            ExplicitLeft = 167
          end
          inherited pnlRightButtons: TPanel
            Left = 278
            ExplicitLeft = 278
          end
        end
      end
    end
    object gbOrgTaskProposalBindDate: TGroupBox
      Left = 592
      Top = 16
      Width = 121
      Height = 65
      Caption = ' '#1044#1072#1090#1072' '#1085#1072' '#1089#1074#1098#1088#1079#1074#1072#1085#1077' '
      TabOrder = 2
      inline frOrgTaskProposalBindDate: TfrDateFieldEditFrame
        Left = 8
        Top = 28
        Width = 105
        Height = 21
        Constraints.MaxHeight = 21
        Constraints.MaxWidth = 105
        Constraints.MinHeight = 21
        Constraints.MinWidth = 105
        TabOrder = 0
        TabStop = True
        ExplicitLeft = 8
        ExplicitTop = 28
      end
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1047#1072#1076#1072#1074#1072#1085#1077' '#1085#1072' '#1055#1088#1086#1077#1082#1090
    end
    object actDetachOrgTaskProposal: TAction
      Hint = #1055#1088#1077#1084#1072#1093#1074#1072#1085#1077' '#1085#1072' '#1074#1088#1098#1079#1082#1072#1090#1072' '#1082#1098#1084' '#1055#1088#1086#1077#1082#1090
      ImageIndex = 102
      OnExecute = actDetachOrgTaskProposalExecute
      OnUpdate = actDetachOrgTaskProposalUpdate
    end
  end
  inherited dsData: TDataSource
    OnDataChange = dsDataDataChange
  end
  object dsOrgTaskProposal: TDataSource
    DataSet = cdsOrgTaskProposal
    Left = 248
  end
  object cdsOrgTaskProposal: TAbmesClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftFloat
        Name = 'ORG_TASK_PROPOSAL_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvOrganisationTaskProposal'
    ConnectionBroker = dmMain.conOrganisationTasks
    BeforeOpen = cdsOrgTaskProposalBeforeOpen
    Left = 216
    object cdsOrgTaskProposalORG_TASK_PROPOSAL_CODE: TAbmesFloatField
      FieldName = 'ORG_TASK_PROPOSAL_CODE'
    end
    object cdsOrgTaskProposalOTP_STATE_CODE: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'OTP_STATE_CODE'
      OnGetText = cdsOrgTaskProposalOTP_STATE_CODEGetText
    end
    object cdsOrgTaskProposalORG_TASK_PROPOSAL_NO: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'ORG_TASK_PROPOSAL_NO'
      OnChange = cdsOrgTaskProposalORG_TASK_PROPOSAL_NOChange
    end
    object cdsOrgTaskProposalORG_TASK_PROPOSAL_CYCLE_NO: TAbmesFloatField
      FieldName = 'ORG_TASK_PROPOSAL_CYCLE_NO'
    end
    object cdsOrgTaskProposalPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
  end
end
