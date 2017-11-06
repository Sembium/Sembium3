inherited fmOrganisationTaskProposal: TfmOrganisationTaskProposal
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = #1055#1088#1086#1077#1082#1090' - %s'
  ClientHeight = 680
  ClientWidth = 825
  DesignSize = (
    825
    680)
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 645
    Width = 825
    TabOrder = 4
    inherited pnlOKCancel: TPanel
      Left = 557
      TabOrder = 4
    end
    inherited pnlClose: TPanel
      Left = 468
      TabOrder = 3
    end
    inherited pnlApply: TPanel
      Left = 736
      TabOrder = 5
      Visible = False
    end
    object pnlAnnulOrgTaskProposal: TPanel
      Left = 505
      Top = 0
      Width = 110
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 2
      object btnAnnulOrgTaskProposal: TBitBtn
        Left = 7
        Top = 2
        Width = 90
        Height = 25
        Action = actAnnulOrgTaskProposal
        Caption = #1040#1085#1091#1083#1080#1088#1072#1085#1077'...'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF0000000000000000000000000000000000000000000000
          0000000000000000000000000000FFFF0000FFFF0000FFFF0000FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF000000000000000000FFFF
          FF0000FFFF00FFFFFF0000FFFF0000000000FFFF0000FFFF0000FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FFFFFF000000000000FFFF00FFFFFF0000FF
          FF000000000000FFFF00FFFFFF0000FFFF0000000000FFFF0000FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF0000000000000000000000
          000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF000000000000FF
          FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FF00FF00FF00
          FF00FF00FF00000000000000000000000000000000000000000000FFFF00FFFF
          FF0000000000FFFFFF0000FFFF00FFFFFF0000FFFF0000000000000000000000
          000000000000FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFFFF000000
          0000FFFFFF0000FFFF000000000000FFFF00FFFFFF0000000000FFFF00000000
          0000FFFFFF0000FFFF0000000000000000000000000000000000000000000000
          0000000000000000000000FFFF00FFFFFF000000000000000000FFFF00000000
          000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
          FF0000FFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFF00000000
          0000FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
          0000000000000000000000000000FFFFFF00FFFFFF0000000000FFFF00000000
          000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
          FF0000FFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFF00000000
          0000FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
          000000000000FFFFFF0000000000000000000000000000000000FFFF00000000
          000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
          0000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
          0000FF00FF00000000000000000000000000000000000000000000000000FFFF
          FF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000000000000000000000000000000000000000
          0000000000000000000000000000FF00FF00FF00FF00FF00FF00}
        TabOrder = 0
      end
    end
    object pnlReplacedOrgTaskProposal: TPanel
      Left = 0
      Top = 0
      Width = 137
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object btnReplacedOrgTaskProposal: TBitBtn
        Left = 8
        Top = 2
        Width = 129
        Height = 25
        Action = actReplacedOrgTaskProposal
        Caption = #1055#1088#1077#1076#1093#1086#1076#1077#1085' '#1062#1080#1082#1098#1083'...'
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
          FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000FF0000000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00000000000000FF000000FF00000000000000
          0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00000000000000FF000000FF000000FF000000FF000000
          FF000000FF000000FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00000000000000FF000000FF000000FF000000FF000000FF000000
          FF000000FF000000FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00000000000000FF000000FF000000FF000000FF000000
          FF000000FF000000FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00000000000000FF000000FF00000000000000
          0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000FF0000000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        TabOrder = 0
      end
    end
    object pnlCloseOrgTaskProposal: TPanel
      Left = 281
      Top = 0
      Width = 224
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 1
      object btnCloseOrgTaskProposal: TBitBtn
        Left = 8
        Top = 2
        Width = 105
        Height = 25
        Action = actCloseOrgTaskProposal
        Caption = #1055#1088#1080#1082#1083#1102#1095#1074#1072#1085#1077'...'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
          000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBD
          BD00BDBDBD000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00000000007B7B7B007B7B7B00BDBDBD007B7B7B00000000007B7B
          7B00BDBDBD007B7B7B007B7B7B0000000000FF00FF00FF00FF00FF00FF00FF00
          FF0000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD007B7B7B00000000007B7B
          7B00BDBDBD00BDBDBD00BDBDBD00BDBDBD0000000000FF00FF00FF00FF00FF00
          FF00000000007B7B7B007B7B7B007B7B7B00BDBDBD00BDBDBD0000000000BDBD
          BD00BDBDBD007B7B7B007B7B7B007B7B7B0000000000FF00FF00FF00FF00FF00
          FF0000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD0000000000000000000000
          0000BDBDBD00BDBDBD00BDBDBD00BDBDBD0000000000FF00FF00FF00FF00FF00
          FF00000000007B7B7B007B7B7B007B7B7B007B7B7B0000000000000000000000
          00007B7B7B007B7B7B007B7B7B007B7B7B0000000000FF00FF00FF00FF00FF00
          FF0000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
          BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD0000000000FF00FF00FF00FF00FF00
          FF00FF00FF000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000BDBDBD0000000000FF00FF00FF00FF00FF00
          FF0000000000BDBDBD0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000BDBDBD0000000000FF00FF00FF00FF00FF00
          FF0000000000BDBDBD0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000BDBDBD0000000000FF00FF00FF00FF00FF00
          FF0000000000BDBDBD0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF007B7B7B007B7B7B00BDBDBD0000000000000000000000
          0000BDBDBD007B7B7B007B7B7B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0000000000BDBDBD00BDBDBD00BDBDBD00BDBD
          BD00BDBDBD0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
          000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        TabOrder = 0
      end
      object btnPrematurelyClose: TBitBtn
        Left = 120
        Top = 2
        Width = 97
        Height = 25
        Action = actPrematurelyClose
        Caption = #1055#1088#1080#1082#1083'. '#1055#1040#1082'...'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
          000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBD
          BD00BDBDBD000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00000000007B7B7B007B7B7B00BDBDBD007B7B7B00000000007B7B
          7B00BDBDBD007B7B7B007B7B7B0000000000FF00FF00FF00FF00FF00FF00FF00
          FF0000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD007B7B7B00000000007B7B
          7B00BDBDBD00BDBDBD00BDBDBD00BDBDBD0000000000FF00FF00FF00FF00FF00
          FF00000000007B7B7B007B7B7B007B7B7B00BDBDBD00BDBDBD0000000000BDBD
          BD00BDBDBD007B7B7B007B7B7B007B7B7B0000000000FF00FF00FF00FF00FF00
          FF0000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD0000000000000000000000
          0000BDBDBD00BDBDBD00BDBDBD00BDBDBD0000000000FF00FF00FF00FF00FF00
          FF00000000007B7B7B007B7B7B007B7B7B007B7B7B0000000000000000000000
          00007B7B7B007B7B7B007B7B7B007B7B7B0000000000FF00FF00FF00FF00FF00
          FF0000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
          BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD0000000000FF00FF00FF00FF00FF00
          FF00FF00FF000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000BDBDBD0000000000FF00FF00FF00FF00FF00
          FF0000000000BDBDBD0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000BDBDBD0000000000FF00FF00FF00FF00FF00
          FF0000000000BDBDBD0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000BDBDBD0000000000FF00FF00FF00FF00FF00
          FF0000000000BDBDBD0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF007B7B7B007B7B7B00BDBDBD0000000000000000000000
          0000BDBDBD007B7B7B007B7B7B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0000000000BDBDBD00BDBDBD00BDBDBD00BDBD
          BD00BDBDBD0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
          000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        TabOrder = 1
      end
    end
    object pnlReplacementOrgTaskProposal: TPanel
      Left = 137
      Top = 0
      Width = 144
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 6
      object btnReplacementOrgTaskProposal: TBitBtn
        Left = 8
        Top = 2
        Width = 129
        Height = 25
        Action = actReplacementOrgTaskProposal
        Caption = #1057#1083#1077#1076#1074#1072#1097' '#1062#1080#1082#1098#1083'...'
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
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000FF000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000000000000000000000000000000000000000000000FF000000
          FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00000000000000FF000000FF000000FF000000FF000000FF000000
          FF000000FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00000000000000FF000000FF000000FF000000FF000000FF000000
          FF000000FF000000FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00000000000000FF000000FF000000FF000000FF000000FF000000
          FF000000FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000000000000000000000000000000000000000000000FF000000
          FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000FF000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        TabOrder = 0
      end
    end
  end
  object pcPrcData: TPageControl [1]
    Left = 8
    Top = 432
    Width = 809
    Height = 207
    ActivePage = tsPrcData
    Anchors = [akLeft, akTop, akBottom]
    TabOrder = 3
    object tsPrcData: TTabSheet
      Caption = #1055#1088#1086#1094#1077#1089#1077#1085' '#1054#1073#1093#1074#1072#1090
    end
  end
  object pcProject: TPageControl [2]
    Left = 8
    Top = 208
    Width = 809
    Height = 217
    ActivePage = tsProposalPresentation
    TabOrder = 2
    object tsProposalPresentation: TTabSheet
      Caption = #1047#1072#1088#1072#1078#1076#1072#1085#1077
      DesignSize = (
        801
        189)
      object gbProposalPresentation: TGroupBox
        Left = 8
        Top = 0
        Width = 785
        Height = 185
        Anchors = [akLeft, akTop, akRight]
        Caption = ' '#1055#1088#1077#1076#1089#1090#1072#1074#1103#1085#1077' '#1085#1072' '#1055#1088#1077#1076#1083#1086#1078#1077#1085#1080#1077#1090#1086' '#1079#1072' '#1055#1088#1086#1077#1082#1090' '
        TabOrder = 0
        DesignSize = (
          785
          185)
        object gbProposalPlan: TGroupBox
          Left = 8
          Top = 16
          Width = 281
          Height = 161
          Caption = ' '#1055#1083#1072#1085' '
          TabOrder = 0
          DesignSize = (
            281
            161)
          object lblPlanProposalDate: TLabel
            Left = 8
            Top = 16
            Width = 26
            Height = 13
            Caption = #1044#1072#1090#1072
          end
          object lblPlanProposalEmployee: TLabel
            Left = 8
            Top = 64
            Width = 49
            Height = 13
            Caption = #1057#1083#1091#1078#1080#1090#1077#1083
          end
          inline frPlanProposalDate: TfrDateFieldEditFrame
            Left = 8
            Top = 32
            Width = 105
            Height = 21
            Constraints.MaxHeight = 21
            Constraints.MaxWidth = 105
            Constraints.MinHeight = 21
            Constraints.MinWidth = 105
            TabOrder = 0
            TabStop = True
          end
          inline frPlanProposalEmployee: TfrEmployeeFieldEditFrameBald
            Left = 8
            Top = 80
            Width = 261
            Height = 22
            HorzScrollBar.Visible = False
            VertScrollBar.Visible = False
            Anchors = [akLeft, akTop, akRight]
            Constraints.MaxHeight = 22
            Constraints.MinHeight = 22
            TabOrder = 1
            TabStop = True
            DesignSize = (
              261
              22)
            inherited gbEmployee: TGroupBox
              Width = 280
              inherited pnlEmployeeName: TPanel
                Width = 205
                inherited pnlRightButtons: TPanel
                  Left = 169
                end
                inherited pnlEmpoyeeNameInner: TPanel
                  Width = 169
                  DesignSize = (
                    169
                    32)
                  inherited edtEmployeeName: TDBEdit
                    Width = 123
                  end
                  inherited cbEmployee: TJvDBLookupCombo
                    Width = 168
                  end
                end
              end
              inherited pnlPaddingRight: TPanel
                Left = 270
              end
            end
          end
        end
        object gbProposalResult: TGroupBox
          Left = 296
          Top = 16
          Width = 481
          Height = 161
          Anchors = [akLeft, akTop, akRight]
          Caption = ' '#1056#1077#1096#1077#1085#1080#1077' '
          TabOrder = 1
          DesignSize = (
            481
            161)
          object lblResultDate: TLabel
            Left = 8
            Top = 16
            Width = 26
            Height = 13
            Caption = #1044#1072#1090#1072
          end
          object lblResultType: TLabel
            Left = 8
            Top = 64
            Width = 67
            Height = 13
            Caption = #1042#1080#1076' '#1056#1077#1096#1077#1085#1080#1077
          end
          object lblProduct: TLabel
            Left = 128
            Top = 16
            Width = 138
            Height = 13
            Caption = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090' - '#1055#1088#1086#1077#1082#1090
          end
          object lblDept: TLabel
            Left = 128
            Top = 64
            Width = 150
            Height = 13
            Caption = #1058#1055', '#1059#1087#1088#1072#1074#1083#1103#1074#1072#1097#1086' '#1055#1088#1086#1077#1082#1090#1072
          end
          object imgAutoCloseHint: TImage
            Left = 96
            Top = 60
            Width = 17
            Height = 17
            Hint = #1055#1088#1080' '#1090#1072#1082#1086#1074#1072' '#1056#1077#1096#1077#1085#1080#1077', '#1055#1088#1086#1077#1082#1090#1098#1090' '#1097#1077' '#1073#1098#1076#1077' '#1072#1074#1090#1086#1084#1072#1090#1080#1095#1085#1086' '#1087#1088#1080#1082#1083#1102#1095#1077#1085
            ParentShowHint = False
            Picture.Data = {
              07544269746D617036030000424D360300000000000036000000280000001000
              000010000000010018000000000000030000C40E0000C40E0000000000000000
              0000FFFFFFFFFFFFFFFFFF0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
              0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0EFFFFFFFFFFFFFFFFFF0E0E0EC9ED
              EDC8ECECC7EBEBC7EAEAC6E9E9C6E8E8C5E7E7C5E6E6C4E5E5C4E4E4C4E4E40E
              0E0EFFFFFFFFFFFFFFFFFF0E0E0ECBF1F1CAF0F00E0E0EC9EEEEC9EDED0E0E0E
              C8EBEB0E0E0EC7E9E9C6E8E8C6E8E80E0E0EFFFFFFFFFFFFFFFFFF0E0E0ECEF6
              F6CDF5F50E0E0ECCF3F3CCF2F20E0E0ECBF0F00E0E0E0E0E0EA9B3B3C9ECEC0E
              0E0EFFFFFFFFFFFFFFFFFF0E0E0ECEF6F6CDF5F50E0E0ECCF3F3CCF2F20E0E0E
              CBF0F00E0E0ECCF2F20E0E0EC9ECEC0E0E0EFFFFFFFFFFFFFFFFFF0E0E0ED1FA
              FA0E0E0E0E0E0E0E0E0ECEF6F60E0E0ECDF4F40E0E0E0E0E0EA9B3B3CBF0F00E
              0E0EFFFFFFFFFFFFFFFFFF0E0E0E0E0E0ED3FDFDD2FCFCD2FBFBD1FAFAD1F9F9
              D0F8F8CFF7F7CFF6F6CEF5F5CEF4F40E0E0E0E0E0EFFFFFF0E0E0EEBEBEB0E0E
              0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
              0E0E0E0E0E0E0E0E0E0E0EE7E7E70E0E0EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0E0E0EDCDCDCE3E3E3E3E3E30E0E
              0E0E0E0EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFF0E0E0ED9D9D9E0E0E0E0E0E0E6E6E60E0E0EFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0E0E0ED5D5D5DCDCDCDCDCDC0E0E
              0EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFF0E0E0ED1D1D1D8D8D80E0E0EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0E0E0ECECECE0E0E0EFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFF0E0E0E0E0E0EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0E0E0EFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFF}
            ShowHint = True
            Transparent = True
          end
          object lblManagerEmployee: TLabel
            Left = 128
            Top = 112
            Width = 128
            Height = 13
            Caption = #1056#1098#1082#1086#1074#1086#1076#1080#1090#1077#1083' '#1085#1072' '#1055#1088#1086#1077#1082#1090#1072
          end
          inline frResultDate: TfrDateFieldEditFrame
            Left = 8
            Top = 32
            Width = 105
            Height = 21
            Constraints.MaxHeight = 21
            Constraints.MaxWidth = 105
            Constraints.MinHeight = 21
            Constraints.MinWidth = 105
            TabOrder = 0
            TabStop = True
          end
          object cbResultType: TJvDBLookupCombo
            Left = 8
            Top = 80
            Width = 105
            Height = 21
            DeleteKeyClear = False
            DataField = 'ORG_TASK_PROP_RESULT_TYPE_CODE'
            DataSource = dsData
            DisplayEmpty = ' '
            LookupField = 'ORG_TASK_PROP_RESULT_TYPE_CODE'
            LookupDisplay = 'ORG_TASK_PROP_RESULT_TYPE_ABBR'
            LookupSource = dsOrgTaskProposalResultTypes
            TabOrder = 1
          end
          inline frProduct: TfrProductFieldEditFrameBald
            Left = 128
            Top = 32
            Width = 342
            Height = 22
            HorzScrollBar.Visible = False
            VertScrollBar.Visible = False
            Anchors = [akLeft, akTop, akRight]
            Constraints.MaxHeight = 22
            Constraints.MinHeight = 22
            TabOrder = 2
            TabStop = True
            DesignSize = (
              342
              22)
            inherited gbTreeNode: TGroupBox
              Width = 358
              DesignSize = (
                358
                49)
              inherited pnlTreeNode: TPanel
                Width = 342
                inherited pnlTreeNodeName: TPanel
                  Width = 160
                  DesignSize = (
                    160
                    22)
                  inherited edtTreeNodeName: TDBEdit
                    Width = 159
                  end
                end
                inherited pnlTreeNodeNo: TPanel
                  Left = 160
                end
                inherited pnlRightButtons: TPanel
                  Left = 283
                end
              end
            end
          end
          inline frDept: TfrDeptFieldEditFrameBald
            Left = 128
            Top = 80
            Width = 342
            Height = 22
            HorzScrollBar.Visible = False
            VertScrollBar.Visible = False
            Anchors = [akLeft, akTop, akRight]
            Constraints.MaxHeight = 22
            Constraints.MinHeight = 22
            TabOrder = 3
            TabStop = True
            DesignSize = (
              342
              22)
            inherited gbTreeNode: TGroupBox
              Width = 358
              DesignSize = (
                358
                49)
              inherited pnlTreeNode: TPanel
                Width = 342
                inherited pnlTreeNodeName: TPanel
                  Width = 195
                  DesignSize = (
                    195
                    22)
                  inherited edtTreeNodeName: TDBEdit
                    Width = 194
                  end
                end
                inherited pnlTreeNodeNo: TPanel
                  Left = 195
                end
                inherited pnlRightButtons: TPanel
                  Left = 306
                end
              end
            end
          end
          inline frManagerEmployee: TfrEmployeeFieldEditFrameBald
            Left = 128
            Top = 128
            Width = 342
            Height = 22
            HorzScrollBar.Visible = False
            VertScrollBar.Visible = False
            Anchors = [akLeft, akTop, akRight]
            Constraints.MaxHeight = 22
            Constraints.MinHeight = 22
            TabOrder = 4
            TabStop = True
            DesignSize = (
              342
              22)
            inherited gbEmployee: TGroupBox
              Width = 361
              inherited pnlEmployeeName: TPanel
                Width = 286
                inherited pnlRightButtons: TPanel
                  Left = 250
                end
                inherited pnlEmpoyeeNameInner: TPanel
                  Width = 250
                  DesignSize = (
                    250
                    32)
                  inherited edtEmployeeName: TDBEdit
                    Width = 204
                  end
                  inherited cbEmployee: TJvDBLookupCombo
                    Width = 249
                  end
                end
              end
              inherited pnlPaddingRight: TPanel
                Left = 351
              end
            end
          end
        end
      end
    end
    object tsEngineeringOrderStage: TTabSheet
      Caption = #1057#1098#1079#1088#1103#1074#1072#1085#1077
      ImageIndex = 1
      object gbEngineeringOrder: TGroupBox
        Left = 8
        Top = 16
        Width = 505
        Height = 81
        Caption = ' '#1054#1088#1076#1077#1088' '#1079#1072' '#1055#1088#1080#1085#1094#1080#1087#1085#1072' '#1048#1085#1078#1077#1085#1077#1088#1085#1072' '#1056#1072#1079#1088#1072#1073#1086#1090#1082#1072' '#1085#1072' '#1057#1098#1079#1088#1103#1074#1072#1085#1077#1090#1086' '
        TabOrder = 0
        object lblEngineeringOrderState: TLabel
          Left = 8
          Top = 24
          Width = 34
          Height = 13
          Caption = #1057#1090#1072#1090#1091#1089
        end
        object lblEngineeringOrderBranch: TLabel
          Left = 72
          Top = 24
          Width = 51
          Height = 13
          Caption = #1058#1055' '#1043#1083'.'
        end
        object lblEngineeringOrderNo: TLabel
          Left = 128
          Top = 24
          Width = 48
          Height = 13
          Caption = #1054#1055#1048#1056' No'
        end
        object lblEngineeringOrderType: TLabel
          Left = 208
          Top = 24
          Width = 19
          Height = 13
          Caption = #1042#1080#1076
        end
        object lblEngineeringOrderRealWorkdays: TLabel
          Left = 280
          Top = 24
          Width = 42
          Height = 13
          Caption = #1055#1077#1088'. '#1056#1083'.'
        end
        object bvlEngineeringOrderButtonsSeparator: TBevel
          Left = 328
          Top = 16
          Width = 5
          Height = 57
          Shape = bsLeftLine
        end
        object edtEngineeringOrderState: TDBEdit
          Left = 8
          Top = 40
          Width = 57
          Height = 21
          Color = clBtnFace
          DataField = 'EO_STATE_CODE'
          DataSource = dsEngineeringOrder
          ReadOnly = True
          TabOrder = 0
        end
        object edtEngineeringOrderBranch: TDBEdit
          Left = 72
          Top = 40
          Width = 49
          Height = 21
          Color = clBtnFace
          DataField = 'ENGINEERING_DEPT_IDENTIFIER'
          DataSource = dsEngineeringOrder
          ReadOnly = True
          TabOrder = 1
        end
        object edtEngineeringOrderNo: TDBEdit
          Left = 128
          Top = 40
          Width = 73
          Height = 21
          Color = clBtnFace
          DataField = 'ENGINEERING_ORDER_NO'
          DataSource = dsEngineeringOrder
          ReadOnly = True
          TabOrder = 2
        end
        object edtEngineeringOrderType: TDBEdit
          Left = 208
          Top = 40
          Width = 25
          Height = 21
          Color = clBtnFace
          DataField = 'ENGINEERING_ORDER_TYPE_ABBREV'
          DataSource = dsEngineeringOrder
          ReadOnly = True
          TabOrder = 3
        end
        object edtEngineeringOrderRealWorkdays: TDBEdit
          Left = 280
          Top = 40
          Width = 41
          Height = 21
          Color = clBtnFace
          DataField = 'ENGINEERING_REAL_WORKDAYS'
          DataSource = dsEngineeringOrder
          ReadOnly = True
          TabOrder = 5
        end
        object pnlEngineeringOrderDoc: TPanel
          Left = 236
          Top = 40
          Width = 41
          Height = 27
          BevelOuter = bvNone
          TabOrder = 4
          object tlbEngineeringOrderDoc: TToolBar
            Left = 0
            Top = 0
            Width = 41
            Height = 25
            ButtonWidth = 36
            Caption = 'tlbEngineeringOrderDoc'
            Images = dmMain.ilDocs
            TabOrder = 0
            object btnEngineeringOrderDoc: TToolButton
              Left = 0
              Top = 0
              Action = actEngineeringOrderDoc
            end
          end
        end
        object btnEngineeringOrder: TBitBtn
          Left = 336
          Top = 16
          Width = 161
          Height = 21
          Action = actEngineeringOrder
          Caption = #1054#1055#1048#1056'...'
          TabOrder = 6
        end
        object btnEngineeringOrders: TBitBtn
          Left = 336
          Top = 48
          Width = 161
          Height = 21
          Action = actEngineeringOrders
          Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1055#1048#1056'...'
          TabOrder = 7
        end
      end
      object gbEngineeringPrices: TGroupBox
        Left = 8
        Top = 104
        Width = 785
        Height = 81
        Caption = ' '#1048#1085#1074#1077#1089#1090#1080#1094#1080#1086#1085#1085#1080' '#1057#1090#1086#1081#1085#1086#1089#1090#1080' '#1079#1072' '#1057#1098#1079#1088#1103#1074#1072#1085#1077' '#1085#1072' '#1055#1088#1086#1077#1082#1090#1072' '
        TabOrder = 1
        object lblEngineeringPrice: TLabel
          Left = 8
          Top = 24
          Width = 56
          Height = 13
          Caption = #1055#1088#1080#1085#1094#1080#1087#1085#1072
        end
        object lblEngBOITotalPrice: TLabel
          Left = 175
          Top = 24
          Width = 45
          Height = 13
          Caption = #1051#1080#1084#1080#1090#1085#1072
        end
        object lblEngBOIDeliveryPercent: TLabel
          Left = 257
          Top = 24
          Width = 28
          Height = 13
          Caption = '%'#1044#1089#1090
        end
        object lblEngBOIExpensePercent: TLabel
          Left = 286
          Top = 24
          Width = 26
          Height = 13
          Caption = '%'#1056#1079#1093
        end
        object lblEngBOIOPlanTotalPrice: TLabel
          Left = 320
          Top = 24
          Width = 44
          Height = 13
          Caption = #1055#1083#1072#1085#1086#1074#1072
        end
        object lblEngBOIOPlanDeliveryPercent: TLabel
          Left = 402
          Top = 24
          Width = 28
          Height = 13
          Caption = '%'#1044#1089#1090
        end
        object lblEngBOIOPlanExpensePercent: TLabel
          Left = 431
          Top = 24
          Width = 26
          Height = 13
          Caption = '%'#1056#1079#1093
        end
        object lblEngBOIOAccountTotalPrice: TLabel
          Left = 465
          Top = 24
          Width = 41
          Height = 13
          Caption = #1054#1090#1095#1077#1090#1085#1072
        end
        object lblEngBOIOAccountDeliveryPercent: TLabel
          Left = 547
          Top = 24
          Width = 28
          Height = 13
          Caption = '%'#1044#1089#1090
        end
        object lblEngBOIOAccountExpensePercent: TLabel
          Left = 576
          Top = 24
          Width = 26
          Height = 13
          Caption = '%'#1056#1079#1093
        end
        object edtEngineeringPrice: TDBEdit
          Left = 8
          Top = 40
          Width = 81
          Height = 21
          DataField = 'ENGINEERING_PRICE'
          DataSource = dsData
          TabOrder = 0
        end
        object edtEngBOITotalPrice: TDBEdit
          Left = 175
          Top = 40
          Width = 81
          Height = 21
          Color = clBtnFace
          DataField = 'PRJ_ENG_BOI_TOTAL_PRICE'
          DataSource = dsOTPInvestPrices
          ReadOnly = True
          TabOrder = 1
        end
        object edtEngBOIDeliveryPercent: TDBEdit
          Left = 257
          Top = 40
          Width = 28
          Height = 21
          Color = clBtnFace
          DataField = 'PRJ_ENG_BOI_TOTAL_PRICE_DEL_P'
          DataSource = dsOTPInvestPrices
          ReadOnly = True
          TabOrder = 2
        end
        object edtEngBOIExpensePercent: TDBEdit
          Left = 286
          Top = 40
          Width = 28
          Height = 21
          Color = clBtnFace
          DataField = 'PRJ_ENG_BOI_TOTAL_PRICE_EXP_P'
          DataSource = dsOTPInvestPrices
          ReadOnly = True
          TabOrder = 3
        end
        object edtEngBOIOPlanTotalPrice: TDBEdit
          Left = 320
          Top = 40
          Width = 81
          Height = 21
          Color = clBtnFace
          DataField = 'PRJ_ENG_BOIO_PLAN_TOTAL_PRICE'
          DataSource = dsOTPInvestPrices
          ReadOnly = True
          TabOrder = 4
        end
        object edtEngBOIOPlanDeliveryPercent: TDBEdit
          Left = 402
          Top = 40
          Width = 28
          Height = 21
          Color = clBtnFace
          DataField = 'PRJ_ENG_BOIO_PL_TOTAL_PR_DEL_P'
          DataSource = dsOTPInvestPrices
          ReadOnly = True
          TabOrder = 5
        end
        object edtEngBOIOPlanExpensePercent: TDBEdit
          Left = 431
          Top = 40
          Width = 28
          Height = 21
          Color = clBtnFace
          DataField = 'PRJ_ENG_BOIO_PL_TOTAL_PR_EXP_P'
          DataSource = dsOTPInvestPrices
          ReadOnly = True
          TabOrder = 6
        end
        object edtEngBOIOAccountTotalPrice: TDBEdit
          Left = 465
          Top = 40
          Width = 81
          Height = 21
          Color = clBtnFace
          DataField = 'PRJ_ENG_BOIO_ACC_TOTAL_PRICE'
          DataSource = dsOTPInvestPrices
          ReadOnly = True
          TabOrder = 7
        end
        object edtEngBOIOAccountDeliveryPercent: TDBEdit
          Left = 547
          Top = 40
          Width = 28
          Height = 21
          Color = clBtnFace
          DataField = 'PRJ_ENG_BOIO_ACC_TOT_PR_DEL_P'
          DataSource = dsOTPInvestPrices
          ReadOnly = True
          TabOrder = 8
        end
        object edtEngBOIOAccountExpensePercent: TDBEdit
          Left = 576
          Top = 40
          Width = 28
          Height = 21
          Color = clBtnFace
          DataField = 'PRJ_ENG_BOIO_ACC_TOT_PR_EXP_P'
          DataSource = dsOTPInvestPrices
          ReadOnly = True
          TabOrder = 9
        end
        object btnEngineeringBudgetInvest: TBitBtn
          Left = 696
          Top = 47
          Width = 81
          Height = 25
          Action = actEngineeringBudgetInvest
          Caption = #1048#1085#1074#1077#1089#1090#1080#1094#1080#1080'...'
          TabOrder = 11
        end
        object btnEngineeringBudgetOrders: TBitBtn
          Left = 696
          Top = 14
          Width = 81
          Height = 25
          Action = actEngineeringBudgetOrders
          Caption = #1041#1086#1088#1076#1077#1088#1072'...'
          TabOrder = 10
        end
      end
      object gbEngineeringDates: TGroupBox
        Left = 521
        Top = 16
        Width = 272
        Height = 81
        Caption = ' '#1042#1088#1077#1084#1077#1074#1080' '#1087#1072#1088#1072#1084#1077#1090#1088#1080' '#1079#1072' '#1057#1098#1079#1088#1103#1074#1072#1085#1077' '
        TabOrder = 2
        object lblEngineeringPlanDateInterval: TLabel
          Left = 8
          Top = 24
          Width = 114
          Height = 13
          Caption = #1042#1088#1084#1048#1085#1090' '#1079#1072' '#1057#1098#1079#1088#1103#1074#1072#1085#1077
        end
        object lblEngineeringRealEndDate: TLabel
          Left = 163
          Top = 22
          Width = 103
          Height = 13
          Caption = #1054#1090#1095'. '#1044#1072#1090#1072' '#1085#1072' '#1055#1088#1080#1082#1083'.'
        end
        inline frEngineeringPlanDateInterval: TfrDateIntervalFrame
          Left = 8
          Top = 40
          Width = 145
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 145
          Constraints.MinHeight = 21
          Constraints.MinWidth = 145
          TabOrder = 0
        end
        inline frEngineeringRealEndDate: TfrDateFieldEditFrame
          Left = 163
          Top = 40
          Width = 105
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 105
          Constraints.MinHeight = 21
          Constraints.MinWidth = 105
          TabOrder = 1
        end
      end
    end
    object tsProductionOrderStage: TTabSheet
      Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103
      ImageIndex = 2
      DesignSize = (
        801
        189)
      object gbProductionOrderStage: TGroupBox
        Left = 8
        Top = 16
        Width = 505
        Height = 81
        Anchors = [akLeft, akTop, akRight]
        Caption = ' '#1054#1088#1076#1077#1088' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1042#1098#1090#1088#1077#1096#1077#1085' '#1088#1077#1072#1083#1080#1079#1080#1088#1072#1097' '#1055#1088#1086#1077#1082#1090#1072' '
        TabOrder = 0
        object lblProductionOrderState: TLabel
          Left = 8
          Top = 24
          Width = 34
          Height = 13
          Caption = #1057#1090#1072#1090#1091#1089
        end
        object lblPOProductionProcess: TLabel
          Left = 56
          Top = 24
          Width = 38
          Height = 13
          Caption = #1055#1088#1086#1094#1077#1089
        end
        object lblProductionOrderBranch: TLabel
          Left = 104
          Top = 24
          Width = 51
          Height = 13
          Caption = #1058#1055' '#1043#1083'.'
        end
        object lblProductionOrderNo: TLabel
          Left = 160
          Top = 24
          Width = 40
          Height = 13
          Caption = #1054#1055#1042' No'
        end
        object lblSaleType: TLabel
          Left = 224
          Top = 24
          Width = 19
          Height = 13
          Caption = #1042#1080#1076
        end
        object lblProductionOrderWorkdays: TLabel
          Left = 320
          Top = 24
          Width = 42
          Height = 13
          Caption = #1055#1077#1088'. '#1056#1083'.'
        end
        object lblQuantityDiffPercent: TLabel
          Left = 368
          Top = 24
          Width = 28
          Height = 13
          Caption = #1054#1090#1082#1083'.'
        end
        object lblPercent: TLabel
          Left = 404
          Top = 44
          Width = 8
          Height = 13
          Caption = '%'
        end
        object Bevel1: TBevel
          Left = 416
          Top = 16
          Width = 5
          Height = 57
          Shape = bsLeftLine
        end
        object edtProductionOrderState: TDBEdit
          Left = 8
          Top = 40
          Width = 41
          Height = 21
          Color = clBtnFace
          DataField = 'ML_STATE_CODE'
          DataSource = dsProductionOrder
          ReadOnly = True
          TabOrder = 0
        end
        object edtProductionOrderProcess: TDBEdit
          Left = 56
          Top = 40
          Width = 41
          Height = 21
          Color = clBtnFace
          DataField = 'PRODUCTION_ORDER_TYPE_ABBREV'
          DataSource = dsProductionOrder
          ReadOnly = True
          TabOrder = 1
        end
        object edtProductionOrderBranch: TDBEdit
          Left = 104
          Top = 40
          Width = 49
          Height = 21
          Color = clBtnFace
          DataField = 'SALE_BRANCH_IDENTIFIER'
          DataSource = dsProductionOrder
          ReadOnly = True
          TabOrder = 2
        end
        object edtProductionOrderNo: TDBEdit
          Left = 160
          Top = 40
          Width = 57
          Height = 21
          Color = clBtnFace
          DataField = 'SALE_NO'
          DataSource = dsProductionOrder
          ReadOnly = True
          TabOrder = 3
        end
        object edtSaleType: TDBEdit
          Left = 224
          Top = 40
          Width = 25
          Height = 21
          Color = clBtnFace
          DataField = 'SALE_TYPE_ABBREV'
          DataSource = dsProductionOrder
          ReadOnly = True
          TabOrder = 4
        end
        object edtProductionOrderWorkdays: TDBEdit
          Left = 320
          Top = 40
          Width = 41
          Height = 21
          Color = clBtnFace
          DataField = 'PRODUCTION_WORKDAYS'
          DataSource = dsProductionOrder
          ReadOnly = True
          TabOrder = 6
        end
        object pnlProductionOrderDoc: TPanel
          Left = 278
          Top = 40
          Width = 37
          Height = 27
          BevelOuter = bvNone
          TabOrder = 5
          object tlbProductionOrderDoc: TToolBar
            Left = 0
            Top = 0
            Width = 37
            Height = 25
            ButtonWidth = 36
            Caption = 'tlbEngineeringOrderDoc'
            Images = dmMain.ilDocs
            TabOrder = 0
            object btnProductionOrderDoc: TToolButton
              Left = 0
              Top = 0
              Action = actProductionOrderDoc
            end
          end
        end
        object edtQuantityDiffPercent: TDBEdit
          Left = 368
          Top = 40
          Width = 33
          Height = 21
          Color = clBtnFace
          DataField = '_REMAINING_QUANTITY_PERCENT'
          DataSource = dsProductionOrder
          ReadOnly = True
          TabOrder = 7
        end
        object btnProductionOrder: TBitBtn
          Left = 424
          Top = 16
          Width = 73
          Height = 21
          Action = actProductionOrder
          Caption = #1054#1055#1042'...'
          TabOrder = 8
        end
        object cbAvailableProductionOrders: TJvDBLookupCombo
          Left = 254
          Top = 40
          Width = 20
          Height = 21
          DropDownWidth = 100
          DataField = '_SALE_OBJECT_IDENTIFIER'
          DataSource = dsData
          DisplayEmpty = ' '
          TabOrder = 9
        end
        object btnProductionOrders: TBitBtn
          Left = 424
          Top = 48
          Width = 73
          Height = 21
          Action = actProductionOrders
          Caption = #1056#1077#1075'. '#1054#1055#1042'...'
          TabOrder = 10
        end
      end
      object gbProductionPrices: TGroupBox
        Left = 8
        Top = 104
        Width = 785
        Height = 81
        Caption = ' '#1048#1085#1074#1077#1089#1090#1080#1094#1080#1086#1085#1085#1080' '#1057#1090#1086#1081#1085#1086#1089#1090#1080' '#1079#1072' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1055#1088#1086#1077#1082#1090#1072' '
        TabOrder = 1
        object lblProductionPrice: TLabel
          Left = 8
          Top = 24
          Width = 56
          Height = 13
          Caption = #1055#1088#1080#1085#1094#1080#1087#1085#1072
        end
        object lblProdBOITotalPrice: TLabel
          Left = 175
          Top = 24
          Width = 45
          Height = 13
          Caption = #1051#1080#1084#1080#1090#1085#1072
        end
        object lblProdBOIDeliveryPercent: TLabel
          Left = 257
          Top = 24
          Width = 28
          Height = 13
          Caption = '%'#1044#1089#1090
        end
        object lblProdBOIExpensePercent: TLabel
          Left = 286
          Top = 24
          Width = 26
          Height = 13
          Caption = '%'#1056#1079#1093
        end
        object lblProdBOIOPlanTotalPrice: TLabel
          Left = 320
          Top = 24
          Width = 44
          Height = 13
          Caption = #1055#1083#1072#1085#1086#1074#1072
        end
        object lblProdBOIOPlanDeliveryPercent: TLabel
          Left = 402
          Top = 24
          Width = 28
          Height = 13
          Caption = '%'#1044#1089#1090
        end
        object lblProdBOIOPlanExpensePercent: TLabel
          Left = 431
          Top = 24
          Width = 26
          Height = 13
          Caption = '%'#1056#1079#1093
        end
        object lblProdBOIOAccountTotalPrice: TLabel
          Left = 465
          Top = 24
          Width = 41
          Height = 13
          Caption = #1054#1090#1095#1077#1090#1085#1072
        end
        object lblProdBOIOAccountDeliveryPercent: TLabel
          Left = 547
          Top = 24
          Width = 28
          Height = 13
          Caption = '%'#1044#1089#1090
        end
        object lblProdBOIOAccountExpensePercent: TLabel
          Left = 576
          Top = 24
          Width = 26
          Height = 13
          Caption = '%'#1056#1079#1093
        end
        object edtProductionPrice: TDBEdit
          Left = 8
          Top = 40
          Width = 81
          Height = 21
          DataField = 'PRODUCTION_PRICE'
          DataSource = dsData
          TabOrder = 0
        end
        object edtProdBOITotalPrice: TDBEdit
          Left = 175
          Top = 40
          Width = 81
          Height = 21
          Color = clBtnFace
          DataField = 'PRJ_PROD_BOI_TOTAL_PRICE'
          DataSource = dsOTPInvestPrices
          ReadOnly = True
          TabOrder = 1
        end
        object edtProdBOIDeliveryPercent: TDBEdit
          Left = 257
          Top = 40
          Width = 28
          Height = 21
          Color = clBtnFace
          DataField = 'PRJ_PROD_BOI_TOTAL_PRICE_DEL_P'
          DataSource = dsOTPInvestPrices
          ReadOnly = True
          TabOrder = 2
        end
        object edtProdBOIExpensePercent: TDBEdit
          Left = 286
          Top = 40
          Width = 28
          Height = 21
          Color = clBtnFace
          DataField = 'PRJ_PROD_BOI_TOTAL_PRICE_EXP_P'
          DataSource = dsOTPInvestPrices
          ReadOnly = True
          TabOrder = 3
        end
        object edtProdBOIOPlanTotalPrice: TDBEdit
          Left = 320
          Top = 40
          Width = 81
          Height = 21
          Color = clBtnFace
          DataField = 'PRJ_PROD_BOIO_PLAN_TOTAL_PRICE'
          DataSource = dsOTPInvestPrices
          ReadOnly = True
          TabOrder = 4
        end
        object edtProdBOIOPlanDeliveryPercent: TDBEdit
          Left = 402
          Top = 40
          Width = 28
          Height = 21
          Color = clBtnFace
          DataField = 'PRJ_PROD_BOIO_PL_TOT_PR_DEL_P'
          DataSource = dsOTPInvestPrices
          ReadOnly = True
          TabOrder = 5
        end
        object edtProdBOIOPlanExpensePercent: TDBEdit
          Left = 431
          Top = 40
          Width = 28
          Height = 21
          Color = clBtnFace
          DataField = 'PRJ_PROD_BOIO_PL_TOT_PR_EXP_P'
          DataSource = dsOTPInvestPrices
          ReadOnly = True
          TabOrder = 6
        end
        object edtProdBOIOAccountTotalPrice: TDBEdit
          Left = 465
          Top = 40
          Width = 81
          Height = 21
          Color = clBtnFace
          DataField = 'PRJ_PROD_BOIO_ACC_TOTAL_PRICE'
          DataSource = dsOTPInvestPrices
          ReadOnly = True
          TabOrder = 7
        end
        object edtProdBOIOAccountDeliveryPercent: TDBEdit
          Left = 547
          Top = 40
          Width = 28
          Height = 21
          Color = clBtnFace
          DataField = 'PRJ_PROD_BOIO_ACC_TOT_PR_DEL_P'
          DataSource = dsOTPInvestPrices
          ReadOnly = True
          TabOrder = 8
        end
        object edtProdBOIOAccountExpensePercent: TDBEdit
          Left = 576
          Top = 40
          Width = 28
          Height = 21
          Color = clBtnFace
          DataField = 'PRJ_PROD_BOIO_ACC_TOT_PR_EXP_P'
          DataSource = dsOTPInvestPrices
          ReadOnly = True
          TabOrder = 9
        end
        object btnProductionBudgetOrders: TBitBtn
          Left = 696
          Top = 14
          Width = 81
          Height = 25
          Action = actProductionBudgetOrders
          Caption = #1041#1086#1088#1076#1077#1088#1072'...'
          TabOrder = 10
        end
        object btnProductionBudgetInvest: TBitBtn
          Left = 696
          Top = 47
          Width = 81
          Height = 25
          Action = actProductionBudgetInvest
          Caption = #1048#1085#1074#1077#1089#1090#1080#1094#1080#1080'...'
          TabOrder = 11
        end
      end
      object gbProductionDates: TGroupBox
        Left = 521
        Top = 16
        Width = 272
        Height = 81
        Caption = ' '#1042#1088#1077#1084#1077#1074#1080' '#1087#1072#1088#1072#1084#1077#1090#1088#1080' '#1079#1072' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '
        TabOrder = 2
        object lblProductionPlanDateInterval: TLabel
          Left = 8
          Top = 24
          Width = 119
          Height = 13
          Caption = #1042#1088#1084#1048#1085#1090' '#1079#1072' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103
        end
        object lblProductionRealEndDate: TLabel
          Left = 163
          Top = 22
          Width = 103
          Height = 13
          Caption = #1054#1090#1095'. '#1044#1072#1090#1072' '#1085#1072' '#1055#1088#1080#1082#1083'.'
        end
        inline frProductionPlanDateInterval: TfrDateIntervalFrame
          Left = 8
          Top = 40
          Width = 145
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 145
          Constraints.MinHeight = 21
          Constraints.MinWidth = 145
          TabOrder = 0
        end
        inline frProductionRealEndDate: TfrDateFieldEditFrame
          Left = 163
          Top = 40
          Width = 105
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 105
          Constraints.MinHeight = 21
          Constraints.MinWidth = 105
          TabOrder = 1
        end
      end
    end
  end
  object gbOrgTaskProposalIdentification: TGroupBox [3]
    Left = 8
    Top = 8
    Width = 809
    Height = 65
    Caption = ' ID '#1055#1088#1086#1077#1082#1090' '
    TabOrder = 0
    DesignSize = (
      809
      65)
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
      Left = 120
      Top = 16
      Width = 33
      Height = 13
      Caption = #1062#1080#1082#1098#1083
    end
    object lblCreateDate: TLabel
      Left = 168
      Top = 16
      Width = 26
      Height = 13
      Caption = #1044#1072#1090#1072
    end
    object lblProposalDescription: TLabel
      Left = 288
      Top = 16
      Width = 105
      Height = 13
      Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1085#1072' '#1055#1088#1086#1077#1082#1090
    end
    object edtOrgTaskProposalState: TDBEdit
      Left = 8
      Top = 32
      Width = 57
      Height = 21
      Color = clBtnFace
      DataField = 'OTP_STATE_CODE'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 0
    end
    object edtOrgTaskProposalNo: TDBEdit
      Left = 72
      Top = 32
      Width = 41
      Height = 21
      Color = clBtnFace
      DataField = 'ORG_TASK_PROPOSAL_NO'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 1
    end
    object edtOrgTaskProposalCycleNo: TDBEdit
      Left = 120
      Top = 32
      Width = 41
      Height = 21
      Color = clBtnFace
      DataField = 'ORG_TASK_PROPOSAL_CYCLE_NO'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 2
    end
    inline frCreateDate: TfrDateFieldEditFrame
      Left = 168
      Top = 32
      Width = 105
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 105
      Constraints.MinHeight = 21
      Constraints.MinWidth = 105
      TabOrder = 3
      TabStop = True
    end
    object pnlDoc: TPanel
      Left = 762
      Top = 31
      Width = 41
      Height = 25
      Anchors = [akTop, akRight]
      BevelOuter = bvNone
      TabOrder = 5
      object tlbDoc: TToolBar
        Left = 0
        Top = 0
        Width = 41
        Height = 25
        Align = alClient
        ButtonWidth = 36
        Caption = 'tlbDoc'
        Images = dmMain.ilDocs
        TabOrder = 0
        object btnDoc: TToolButton
          Left = 0
          Top = 0
          Action = actProposalDoc
        end
      end
    end
    object edtProposalDescription: TDBEdit
      Left = 288
      Top = 32
      Width = 467
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      DataField = 'DESCRIPTION'
      DataSource = dsData
      TabOrder = 4
    end
  end
  object pcPrices: TPageControl [4]
    Left = 8
    Top = 80
    Width = 809
    Height = 121
    ActivePage = tsInvestmentIncrease
    TabOrder = 1
    object tsInvestmentIncrease: TTabSheet
      Caption = #1059#1074#1077#1083#1080#1095#1077#1085#1080#1077' '#1085#1072' '#1048#1085#1074#1077#1089#1090#1080#1094#1080#1086#1085#1085#1080#1103' '#1055#1086#1090#1086#1082
      object gbInvestmentIncrease: TGroupBox
        Left = 8
        Top = 8
        Width = 785
        Height = 73
        Caption = ' '#1048#1085#1074#1077#1089#1090#1080#1094#1080#1086#1085#1085#1080' '#1057#1090#1086#1081#1085#1086#1089#1090#1080' '#1085#1072' '#1059#1074#1077#1083#1080#1095#1077#1085#1080#1077' '#1085#1072' '#1048#1055' '
        TabOrder = 0
        object lblInvestmentIncreasePrice: TLabel
          Left = 8
          Top = 24
          Width = 56
          Height = 13
          Caption = #1055#1088#1080#1085#1094#1080#1087#1085#1072
        end
        object lblBOITotalPrice: TLabel
          Left = 175
          Top = 24
          Width = 45
          Height = 13
          Caption = #1051#1080#1084#1080#1090#1085#1072
        end
        object lblBOIOPlanTotalPrice: TLabel
          Left = 320
          Top = 24
          Width = 44
          Height = 13
          Caption = #1055#1083#1072#1085#1086#1074#1072
        end
        object lblBOIOAccountTotalPrice: TLabel
          Left = 465
          Top = 24
          Width = 41
          Height = 13
          Caption = #1054#1090#1095#1077#1090#1085#1072
        end
        object lblEngProjectPricePercent: TLabel
          Left = 90
          Top = 24
          Width = 21
          Height = 13
          Caption = '%'#1057#1079
        end
        object lblProdProjectPricePercent: TLabel
          Left = 117
          Top = 24
          Width = 21
          Height = 13
          Caption = '%'#1056#1083
        end
        object btnPercents: TSpeedButton
          Left = 615
          Top = 40
          Width = 23
          Height = 21
          AllowAllUp = True
          GroupIndex = 1
          Caption = '%'
        end
        object pnlBOIDelExpPricePercents: TPanel
          Left = 257
          Top = 25
          Width = 58
          Height = 37
          BevelOuter = bvNone
          TabOrder = 4
          object lblDeliveryBOIPricePercent: TLabel
            Left = 0
            Top = 0
            Width = 28
            Height = 13
            Caption = '%'#1044#1089#1090
          end
          object lblExpenseBOIPricePercent: TLabel
            Left = 29
            Top = 0
            Width = 26
            Height = 13
            Caption = '%'#1056#1079#1093
          end
          object edtDeliveryBOIPricePercent: TDBEdit
            Left = 0
            Top = 15
            Width = 28
            Height = 21
            Color = clBtnFace
            DataField = 'PRJ_DELIVERY_BOI_PRICE_P'
            DataSource = dsOTPInvestPrices
            ReadOnly = True
            TabOrder = 0
          end
          object edtExpenseBOIPricePercent: TDBEdit
            Left = 29
            Top = 15
            Width = 28
            Height = 21
            Color = clBtnFace
            DataField = 'PRJ_EXPENSE_BOI_PRICE_P'
            DataSource = dsOTPInvestPrices
            ReadOnly = True
            TabOrder = 1
          end
        end
        object pnlBOIEngProdPricePercents: TPanel
          Left = 257
          Top = 25
          Width = 58
          Height = 37
          BevelOuter = bvNone
          TabOrder = 5
          object lblProdBOIPricePercent: TLabel
            Left = 29
            Top = 0
            Width = 21
            Height = 13
            Caption = '%'#1056#1083
          end
          object lblEngBOIPricePercent: TLabel
            Left = 0
            Top = 0
            Width = 21
            Height = 13
            Caption = '%'#1057#1079
          end
          object edtProdBOIPricePercent: TDBEdit
            Left = 29
            Top = 15
            Width = 28
            Height = 21
            Color = clBtnFace
            DataField = 'PRJ_PROD_BOI_PRICE_P'
            DataSource = dsOTPInvestPrices
            ReadOnly = True
            TabOrder = 1
          end
          object edtEngBOIPricePercent: TDBEdit
            Left = 0
            Top = 15
            Width = 28
            Height = 21
            Color = clBtnFace
            DataField = 'PRJ_ENG_BOI_PRICE_P'
            DataSource = dsOTPInvestPrices
            ReadOnly = True
            TabOrder = 0
          end
        end
        object pnlBOIOAccountDelExpPricePercents: TPanel
          Left = 547
          Top = 25
          Width = 58
          Height = 37
          BevelOuter = bvNone
          TabOrder = 11
          object lblDeliveryBOIOAccPricePercent: TLabel
            Left = 0
            Top = 0
            Width = 28
            Height = 13
            Caption = '%'#1044#1089#1090
          end
          object lblExpenseBOIOAccPricePercent: TLabel
            Left = 29
            Top = 0
            Width = 26
            Height = 13
            Caption = '%'#1056#1079#1093
          end
          object edtDeliveryBOIOAccPricePercent: TDBEdit
            Left = 0
            Top = 15
            Width = 28
            Height = 21
            Color = clBtnFace
            DataField = 'PRJ_DELIVERY_BOIO_ACC_PRICE_P'
            DataSource = dsOTPInvestPrices
            ReadOnly = True
            TabOrder = 0
          end
          object edtExpenseBOIOAccPricePercent: TDBEdit
            Left = 29
            Top = 15
            Width = 28
            Height = 21
            Color = clBtnFace
            DataField = 'PRJ_EXPENSE_BOIO_ACC_PRICE_P'
            DataSource = dsOTPInvestPrices
            ReadOnly = True
            TabOrder = 1
          end
        end
        object pnlBOIOPlanDelExpPricePercents: TPanel
          Left = 402
          Top = 25
          Width = 58
          Height = 37
          BevelOuter = bvNone
          TabOrder = 8
          object lblExpenseBOIOPlanPricePercent: TLabel
            Left = 29
            Top = 0
            Width = 26
            Height = 13
            Caption = '%'#1056#1079#1093
          end
          object lblDeliveryBOIOPlanPricePercent: TLabel
            Left = 0
            Top = 0
            Width = 28
            Height = 13
            Caption = '%'#1044#1089#1090
          end
          object edtExpenseBOIOPlanPricePercent: TDBEdit
            Left = 29
            Top = 15
            Width = 28
            Height = 21
            Color = clBtnFace
            DataField = 'PRJ_EXPENSE_BOIO_PLAN_PRICE_P'
            DataSource = dsOTPInvestPrices
            ReadOnly = True
            TabOrder = 1
          end
          object edtDeliveryBOIOPlanPricePercent: TDBEdit
            Left = 0
            Top = 15
            Width = 28
            Height = 21
            Color = clBtnFace
            DataField = 'PRJ_DELIVERY_BOIO_PLAN_PRICE_P'
            DataSource = dsOTPInvestPrices
            ReadOnly = True
            TabOrder = 0
          end
        end
        object edtInvestmentIncreasePrice: TDBEdit
          Left = 8
          Top = 40
          Width = 81
          Height = 21
          Color = clBtnFace
          DataField = '_INVESTMENT_INCREASE_PRICE'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 0
        end
        object edtBOITotalPrice: TDBEdit
          Left = 175
          Top = 40
          Width = 81
          Height = 21
          Color = clBtnFace
          DataField = 'PRJ_BOI_TOTAL_PRICE'
          DataSource = dsOTPInvestPrices
          ReadOnly = True
          TabOrder = 3
        end
        object edtBOIOPlanTotalPrice: TDBEdit
          Left = 320
          Top = 40
          Width = 81
          Height = 21
          Color = clBtnFace
          DataField = 'PRJ_BOIO_PLAN_TOTAL_PRICE'
          DataSource = dsOTPInvestPrices
          ReadOnly = True
          TabOrder = 6
        end
        object edtBOIOAccountTotalPrice: TDBEdit
          Left = 465
          Top = 40
          Width = 81
          Height = 21
          Color = clBtnFace
          DataField = 'PRJ_BOIO_ACCOUNT_TOTAL_PRICE'
          DataSource = dsOTPInvestPrices
          ReadOnly = True
          TabOrder = 9
        end
        object edtEngProjectPricePercent: TDBEdit
          Left = 90
          Top = 40
          Width = 28
          Height = 21
          Color = clBtnFace
          DataField = '_PRJ_ENG_PROJECT_PRICE_P'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 1
        end
        object edtProdProjectPricePercent: TDBEdit
          Left = 119
          Top = 40
          Width = 28
          Height = 21
          Color = clBtnFace
          DataField = '_PRJ_PROD_PROJECT_PRICE_P'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 2
        end
        object pnlBOIOPlanEngProdPricePercents: TPanel
          Left = 402
          Top = 25
          Width = 58
          Height = 37
          BevelOuter = bvNone
          TabOrder = 7
          object lblEngBOIOPlanPricePercent: TLabel
            Left = 0
            Top = 0
            Width = 21
            Height = 13
            Caption = '%'#1057#1079
          end
          object lblProdBOIOPlanPricePercent: TLabel
            Left = 29
            Top = 0
            Width = 21
            Height = 13
            Caption = '%'#1056#1083
          end
          object edtProdBOIOPlanPricePercent: TDBEdit
            Left = 29
            Top = 15
            Width = 28
            Height = 21
            Color = clBtnFace
            DataField = 'PRJ_PROD_BOIO_PLAN_PRICE_P'
            DataSource = dsOTPInvestPrices
            ReadOnly = True
            TabOrder = 1
          end
          object edtEngBOIOPlanPricePercent: TDBEdit
            Left = 0
            Top = 15
            Width = 28
            Height = 21
            Color = clBtnFace
            DataField = 'PRJ_ENG_BOIO_PLAN_PRICE_P'
            DataSource = dsOTPInvestPrices
            ReadOnly = True
            TabOrder = 0
          end
        end
        object pnlBOIOAccountEngProdPricePercents: TPanel
          Left = 547
          Top = 25
          Width = 58
          Height = 37
          BevelOuter = bvNone
          TabOrder = 10
          object lblEngBOIOAccPricePercent: TLabel
            Left = 0
            Top = 0
            Width = 21
            Height = 13
            Caption = '%'#1057#1079
          end
          object lblProdBOIOAccPricePercent: TLabel
            Left = 29
            Top = 0
            Width = 21
            Height = 13
            Caption = '%'#1056#1083
          end
          object edtProdBOIOAccPricePercent: TDBEdit
            Left = 29
            Top = 15
            Width = 28
            Height = 21
            Color = clBtnFace
            DataField = 'PRJ_PROD_BOIO_ACC_PRICE_P'
            DataSource = dsOTPInvestPrices
            ReadOnly = True
            TabOrder = 1
          end
          object edtEngBOIOAccPricePercent: TDBEdit
            Left = 0
            Top = 15
            Width = 28
            Height = 21
            Color = clBtnFace
            DataField = 'PRJ_ENG_BOIO_ACC_PRICE_P'
            DataSource = dsOTPInvestPrices
            ReadOnly = True
            TabOrder = 0
          end
        end
        object btnInvestmentBudget: TBitBtn
          Left = 696
          Top = 39
          Width = 81
          Height = 25
          Action = actInvestmentBudget
          Caption = #1048#1085#1074#1077#1089#1090#1080#1094#1080#1080'...'
          TabOrder = 13
        end
        object btnInvestmentBudgetOrders: TBitBtn
          Left = 696
          Top = 14
          Width = 81
          Height = 25
          Action = actInvestmentAndApplyBudgetOrders
          Caption = #1041#1086#1088#1076#1077#1088#1072'...'
          TabOrder = 12
        end
      end
    end
    object tsApplyPrices: TTabSheet
      Caption = #1042#1098#1074#1077#1078#1076#1072#1085#1077' '#1074' '#1045#1082#1089#1087#1083#1086#1072#1090#1072#1094#1080#1103
      ImageIndex = 1
      object gbApplyPrices: TGroupBox
        Left = 8
        Top = 8
        Width = 785
        Height = 73
        Caption = ' '#1048#1085#1074#1077#1089#1090#1080#1094#1080#1086#1085#1085#1080' '#1057#1090#1086#1081#1085#1086#1089#1090#1080' '#1085#1072' '#1042#1098#1074#1077#1078#1076#1072#1085#1077' '#1074' '#1045#1082#1089#1087#1083#1086#1072#1090#1072#1094#1080#1103' '
        TabOrder = 0
        object lblApplyPrice: TLabel
          Left = 8
          Top = 24
          Width = 56
          Height = 13
          Caption = #1055#1088#1080#1085#1094#1080#1087#1085#1072
        end
        object lblApplyBOITotalPrice: TLabel
          Left = 175
          Top = 24
          Width = 45
          Height = 13
          Caption = #1051#1080#1084#1080#1090#1085#1072
        end
        object lblApplyBOIOPlanTotalPrice: TLabel
          Left = 320
          Top = 24
          Width = 44
          Height = 13
          Caption = #1055#1083#1072#1085#1086#1074#1072
        end
        object lblApplyBOIOAccountTotalPrice: TLabel
          Left = 465
          Top = 24
          Width = 41
          Height = 13
          Caption = #1054#1090#1095#1077#1090#1085#1072
        end
        object edtApplyPrice: TDBEdit
          Left = 8
          Top = 40
          Width = 81
          Height = 21
          DataField = 'APPLY_PRICE'
          DataSource = dsData
          TabOrder = 0
        end
        object edtApplyBOITotalPrice: TDBEdit
          Left = 175
          Top = 40
          Width = 81
          Height = 21
          Color = clBtnFace
          DataField = 'PRJ_APPLY_BOI_TOTAL_PRICE'
          DataSource = dsOTPInvestPrices
          ReadOnly = True
          TabOrder = 1
        end
        object edtApplyBOIOPlanTotalPrice: TDBEdit
          Left = 320
          Top = 40
          Width = 81
          Height = 21
          Color = clBtnFace
          DataField = 'PRJ_APPLY_BOIO_PL_TOTAL_PRICE'
          DataSource = dsOTPInvestPrices
          ReadOnly = True
          TabOrder = 2
        end
        object edtApplyBOIOAccountTotalPrice: TDBEdit
          Left = 465
          Top = 40
          Width = 81
          Height = 21
          Color = clBtnFace
          DataField = 'PRJ_APPLY_BOIO_ACC_TOTAL_PRICE'
          DataSource = dsOTPInvestPrices
          ReadOnly = True
          TabOrder = 3
        end
        object btnApplyBudget: TBitBtn
          Left = 696
          Top = 39
          Width = 81
          Height = 25
          Action = actApplyBudget
          Caption = #1048#1085#1074#1077#1089#1090#1080#1094#1080#1080'...'
          TabOrder = 5
        end
        object btnApplyBudgetOrders: TBitBtn
          Left = 696
          Top = 14
          Width = 81
          Height = 25
          Action = actInvestmentAndApplyBudgetOrders
          Caption = #1041#1086#1088#1076#1077#1088#1072'...'
          TabOrder = 4
        end
      end
    end
    object tsInvestmentStreamChanges: TTabSheet
      Caption = #1053#1077#1090#1085#1086' '#1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1085#1072' '#1048#1085#1074#1077#1089#1090#1080#1094#1080#1086#1085#1085#1080#1103' '#1055#1086#1090#1086#1082
      ImageIndex = 2
      object gbInvestmentStreamChanges: TGroupBox
        Left = 8
        Top = 8
        Width = 785
        Height = 73
        Caption = ' '#1048#1085#1074#1077#1089#1090#1080#1094#1080#1086#1085#1085#1080' '#1057#1090#1086#1081#1085#1086#1089#1090#1080' '#1085#1072' '#1053#1077#1090#1085#1086' '#1048#1079#1084#1077#1085#1077#1085#1080#1077' '
        TabOrder = 0
        object lblPriceDeviationProject: TLabel
          Left = 8
          Top = 24
          Width = 56
          Height = 13
          Caption = #1055#1088#1080#1085#1094#1080#1087#1085#1072
        end
        object lblPriceDeviationBOI: TLabel
          Left = 175
          Top = 24
          Width = 45
          Height = 13
          Caption = #1051#1080#1084#1080#1090#1085#1072
        end
        object lblPriceDeviationBOIOPlan: TLabel
          Left = 320
          Top = 24
          Width = 44
          Height = 13
          Caption = #1055#1083#1072#1085#1086#1074#1072
        end
        object lblPriceDeviationBOIOAccount: TLabel
          Left = 465
          Top = 24
          Width = 41
          Height = 13
          Caption = #1054#1090#1095#1077#1090#1085#1072
        end
        object edtPriceDeviationProject: TDBEdit
          Left = 8
          Top = 40
          Width = 81
          Height = 21
          Color = clBtnFace
          DataField = '_PRJ_PRICE_DEV_PROJECT'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 0
        end
        object edtPriceDeviationBOI: TDBEdit
          Left = 175
          Top = 40
          Width = 81
          Height = 21
          Color = clBtnFace
          DataField = 'PRJ_PRICE_DEV_BOI'
          DataSource = dsOTPInvestPrices
          ReadOnly = True
          TabOrder = 1
        end
        object edtPriceDeviationBOIOAccount: TDBEdit
          Left = 465
          Top = 40
          Width = 81
          Height = 21
          Color = clBtnFace
          DataField = 'PRJ_PRICE_DEV_BOIO_ACCOUNT'
          DataSource = dsOTPInvestPrices
          ReadOnly = True
          TabOrder = 3
        end
        object edtPriceDeviationBOIOPlan: TDBEdit
          Left = 320
          Top = 40
          Width = 81
          Height = 21
          Color = clBtnFace
          DataField = 'PRJ_PRICE_DEV_BOIO_PLAN'
          DataSource = dsOTPInvestPrices
          ReadOnly = True
          TabOrder = 2
        end
      end
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1055#1088#1086#1077#1082#1090' - %s'
    end
    object actProposalDoc: TAction
      Hint = #1048#1048#1054' '#1085#1072' '#1055#1088#1086#1077#1082#1090
      ImageIndex = 98
      OnExecute = actProposalDocExecute
      OnUpdate = actProposalDocUpdate
    end
    object actEngineeringOrderDoc: TAction
      Hint = #1048#1048#1054' '#1085#1072' '#1054#1055#1048#1056
      ImageIndex = 98
      OnExecute = actEngineeringOrderDocExecute
      OnUpdate = actEngineeringOrderDocUpdate
    end
    object actEngineeringOrder: TAction
      Caption = #1054#1055#1048#1056'...'
      Hint = #1054#1055#1048#1056
      OnExecute = actEngineeringOrderExecute
      OnUpdate = actEngineeringOrderUpdate
    end
    object actProductionOrderDoc: TAction
      Hint = #1048#1048#1054' '#1085#1072' '#1054#1055#1042
      ImageIndex = 98
      OnExecute = actProductionOrderDocExecute
      OnUpdate = actProductionOrderDocUpdate
    end
    object actProductionOrder: TAction
      Caption = #1054#1055#1042'...'
      Hint = #1054#1055#1042
      OnExecute = actProductionOrderExecute
      OnUpdate = actProductionOrderUpdate
    end
    object actReplacedOrgTaskProposal: TAction
      Caption = #1055#1088#1077#1076#1093#1086#1076#1077#1085' '#1062#1080#1082#1098#1083'...'
      Hint = #1055#1088#1077#1076#1093#1086#1076#1077#1085' '#1062#1080#1082#1098#1083
      ImageIndex = 88
      OnExecute = actReplacedOrgTaskProposalExecute
      OnUpdate = actReplacedOrgTaskProposalUpdate
    end
    object actCloseOrgTaskProposal: TAction
      Caption = #1055#1088#1080#1082#1083#1102#1095#1074#1072#1085#1077'...'
      Hint = #1055#1088#1080#1082#1083#1102#1095#1074#1072#1085#1077
      ImageIndex = 17
      OnExecute = actCloseOrgTaskProposalExecute
      OnUpdate = actCloseOrgTaskProposalUpdate
    end
    object actPrematurelyClose: TAction
      Caption = #1055#1088#1080#1082#1083'. '#1055#1040#1082'...'
      Hint = #1055#1088#1080#1082#1083#1102#1095#1074#1072#1085#1077' '#1087#1086#1088#1072#1076#1080' '#1055#1088#1077#1091#1089#1090#1072#1085#1086#1074#1103#1074#1072#1085#1077' '#1085#1072' '#1040#1082#1090#1091#1072#1083#1085#1086#1089#1090
      ImageIndex = 17
      OnExecute = actPrematurelyCloseExecute
      OnUpdate = actPrematurelyCloseUpdate
    end
    object actAnnulOrgTaskProposal: TAction
      Caption = #1040#1085#1091#1083#1080#1088#1072#1085#1077'...'
      Hint = #1040#1085#1091#1083#1080#1088#1072#1085#1077
      ImageIndex = 16
      OnExecute = actAnnulOrgTaskProposalExecute
    end
    object actReplacementOrgTaskProposal: TAction
      Caption = #1057#1083#1077#1076#1074#1072#1097' '#1062#1080#1082#1098#1083'...'
      Hint = #1057#1083#1077#1076#1074#1072#1097' '#1062#1080#1082#1098#1083
      ImageIndex = 87
      OnExecute = actReplacementOrgTaskProposalExecute
      OnUpdate = actReplacementOrgTaskProposalUpdate
    end
    object actProductionBudgetInvest: TAction
      Caption = #1048#1085#1074#1077#1089#1090#1080#1094#1080#1080'...'
      Hint = #1048#1085#1074#1077#1089#1090#1080#1094#1080#1080
      OnExecute = actProductionBudgetInvestExecute
      OnUpdate = BudgetAndBudgetOrdersButttonsUpdate
    end
    object actEngineeringOrders: TAction
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1055#1048#1056'...'
      Hint = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1055#1048#1056
      OnExecute = actEngineeringOrdersExecute
      OnUpdate = BudgetAndBudgetOrdersButttonsUpdate
    end
    object actProductionOrders: TAction
      Caption = #1056#1077#1075'. '#1054#1055#1042'...'
      Hint = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1055#1042
      OnExecute = actProductionOrdersExecute
      OnUpdate = BudgetAndBudgetOrdersButttonsUpdate
    end
    object actEngineeringBudgetInvest: TAction
      Caption = #1048#1085#1074#1077#1089#1090#1080#1094#1080#1080'...'
      Hint = #1048#1085#1074#1077#1089#1090#1080#1094#1080#1080
      OnExecute = actEngineeringBudgetInvestExecute
      OnUpdate = BudgetAndBudgetOrdersButttonsUpdate
    end
    object actProductionBudgetOrders: TAction
      Caption = #1041#1086#1088#1076#1077#1088#1072'...'
      Hint = #1041#1086#1088#1076#1077#1088#1072
      OnExecute = actProductionBudgetOrdersExecute
      OnUpdate = BudgetAndBudgetOrdersButttonsUpdate
    end
    object actEngineeringBudgetOrders: TAction
      Caption = #1041#1086#1088#1076#1077#1088#1072'...'
      Hint = #1041#1086#1088#1076#1077#1088#1072
      OnExecute = actEngineeringBudgetOrdersExecute
      OnUpdate = BudgetAndBudgetOrdersButttonsUpdate
    end
    object actInvestmentAndApplyBudgetOrders: TAction
      Caption = #1041#1086#1088#1076#1077#1088#1072'...'
      Hint = #1041#1086#1088#1076#1077#1088#1072
      OnExecute = actInvestmentAndApplyBudgetOrdersExecute
      OnUpdate = BudgetAndBudgetOrdersButttonsUpdate
    end
    object actInvestmentBudget: TAction
      Caption = #1048#1085#1074#1077#1089#1090#1080#1094#1080#1080'...'
      Hint = #1048#1085#1074#1077#1089#1090#1080#1094#1080#1080
      OnExecute = actInvestmentBudgetExecute
      OnUpdate = BudgetAndBudgetOrdersButttonsUpdate
    end
    object actApplyBudget: TAction
      Caption = #1048#1085#1074#1077#1089#1090#1080#1094#1080#1080'...'
      Hint = #1048#1085#1074#1077#1089#1090#1080#1094#1080#1080
      OnExecute = actApplyBudgetExecute
      OnUpdate = BudgetAndBudgetOrdersButttonsUpdate
    end
  end
  inherited cdsData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conOrganisationTasks
    Params = <
      item
        DataType = ftFloat
        Name = 'ORG_TASK_PROPOSAL_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvOrganisationTaskProposal'
    BeforeOpen = cdsDataBeforeOpen
    BeforeInsert = cdsDataBeforeInsert
    BeforePost = cdsDataBeforePost
    OnCalcFields = cdsDataCalcFields
    BeforeApplyUpdates = cdsDataBeforeApplyUpdates
    object cdsDataORG_TASK_PROPOSAL_CODE: TAbmesFloatField
      FieldName = 'ORG_TASK_PROPOSAL_CODE'
      Required = True
    end
    object cdsDataOTP_STATE_CODE: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'OTP_STATE_CODE'
      OnGetText = cdsDataOTP_STATE_CODEGetText
    end
    object cdsDataORG_TASK_PROPOSAL_NO: TAbmesFloatField
      FieldName = 'ORG_TASK_PROPOSAL_NO'
      Required = True
    end
    object cdsDataORG_TASK_PROPOSAL_CYCLE_NO: TAbmesFloatField
      FieldName = 'ORG_TASK_PROPOSAL_CYCLE_NO'
    end
    object cdsDataREPLACED_ORG_TASK_PROP_CODE: TAbmesFloatField
      FieldName = 'REPLACED_ORG_TASK_PROP_CODE'
    end
    object cdsDataCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
      Required = True
    end
    object cdsDataCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
      Required = True
    end
    object cdsDataCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
      Required = True
    end
    object cdsDataCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object cdsDataCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object cdsDataCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object cdsDataCLOSE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CLOSE_EMPLOYEE_CODE'
    end
    object cdsDataCLOSE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CLOSE_DATE'
    end
    object cdsDataCLOSE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CLOSE_TIME'
    end
    object cdsDataANNUL_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ANNUL_EMPLOYEE_CODE'
    end
    object cdsDataANNUL_DATE: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_DATE'
    end
    object cdsDataANNUL_TIME: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_TIME'
    end
    object cdsDataDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsDataDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsDataDESCRIPTION: TAbmesWideStringField
      DisplayLabel = #1054#1087#1080#1089#1072#1085#1080#1077' '#1085#1072' '#1055#1088#1086#1077#1082#1090
      FieldName = 'DESCRIPTION'
      Required = True
      Size = 250
    end
    object cdsDataPLAN_PROPOSAL_DATE: TAbmesSQLTimeStampField
      FieldName = 'PLAN_PROPOSAL_DATE'
    end
    object cdsDataPLAN_PROPOSAL_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'PLAN_PROPOSAL_EMPLOYEE_CODE'
    end
    object cdsDataRESULT_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1044#1072#1090#1072' '#1085#1072' '#1056#1077#1096#1077#1085#1080#1077
      FieldName = 'RESULT_DATE'
    end
    object cdsDataORG_TASK_PROP_RESULT_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1056#1077#1096#1077#1085#1080#1077
      FieldName = 'ORG_TASK_PROP_RESULT_TYPE_CODE'
      Visible = False
    end
    object cdsDataPRODUCT_CODE: TAbmesFloatField
      DisplayLabel = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090' - '#1055#1088#1086#1077#1082#1090
      FieldName = 'PRODUCT_CODE'
      OnChange = cdsDataPRODUCT_CODEChange
    end
    object cdsDataDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object cdsDataPROPOSAL_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'PROPOSAL_HAS_DOC_ITEMS'
      FieldValueType = fvtBoolean
    end
    object cdsDataREPLACEMENT_ORG_TASK_PROP_CODE: TAbmesFloatField
      FieldName = 'REPLACEMENT_ORG_TASK_PROP_CODE'
    end
    object cdsDataSALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_BRANCH_CODE'
      OnChange = cdsDataSALE_OBJECT_BRANCH_CODEChange
    end
    object cdsDataSALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_CODE'
      OnChange = cdsDataSALE_OBJECT_CODEChange
    end
    object cdsDataSALE_OBJECT_PK: TAbmesWideStringField
      FieldName = 'SALE_OBJECT_PK'
      OnChange = cdsDataSALE_OBJECT_PKChange
      Size = 81
    end
    object cdsData_SALE_OBJECT_IDENTIFIER: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_SALE_OBJECT_IDENTIFIER'
      LookupDataSet = cdsAvailableProductionOrders
      LookupKeyFields = 'SALE_OBJECT_PK'
      LookupResultField = 'PROCESS_OBJECT_IDENTIFIER'
      KeyFields = 'SALE_OBJECT_PK'
      Size = 100
      Lookup = True
    end
    object cdsDataIS_PREMATURELY_CLOSED: TAbmesFloatField
      FieldName = 'IS_PREMATURELY_CLOSED'
      FieldValueType = fvtBoolean
    end
    object cdsDataPRC_DATA: TBlobField
      FieldName = 'PRC_DATA'
      BlobType = ftOraBlob
      Size = 1
    end
    object cdsDataVALIDATE_PRC_DATA_COMPLETENESS: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'VALIDATE_PRC_DATA_COMPLETENESS'
      FieldValueType = fvtBoolean
      Calculated = True
    end
    object cdsDataENGINEERING_PRICE: TAbmesFloatField
      FieldName = 'ENGINEERING_PRICE'
      DisplayFormat = ',0'
      EditFormat = '0'
    end
    object cdsDataPRODUCTION_PRICE: TAbmesFloatField
      FieldName = 'PRODUCTION_PRICE'
      DisplayFormat = ',0'
      EditFormat = '0'
    end
    object cdsDataAPPLY_PRICE: TAbmesFloatField
      FieldName = 'APPLY_PRICE'
      DisplayFormat = ',0'
      EditFormat = '0'
    end
    object cdsData_INVESTMENT_INCREASE_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_INVESTMENT_INCREASE_PRICE'
      DisplayFormat = ',0'
      EditFormat = ',0'
      Calculated = True
    end
    object cdsDataENGINEERING_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1053#1072#1095#1072#1083#1085#1072' '#1076#1072#1090#1072' '#1085#1072' '#1042#1088#1084#1048#1085#1090' '#1079#1072' '#1057#1098#1079#1088#1103#1074#1072#1085#1077
      FieldName = 'ENGINEERING_PLAN_BEGIN_DATE'
    end
    object cdsDataENGINEERING_PLAN_END_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1050#1088#1072#1081#1085#1072' '#1076#1072#1090#1072' '#1085#1072' '#1042#1088#1084#1048#1085#1090' '#1079#1072' '#1057#1098#1079#1088#1103#1074#1072#1085#1077
      FieldName = 'ENGINEERING_PLAN_END_DATE'
    end
    object cdsDataPRODUCTION_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1053#1072#1095#1072#1083#1085#1072' '#1076#1072#1090#1072' '#1085#1072' '#1042#1088#1084#1048#1085#1090' '#1079#1072' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103
      FieldName = 'PRODUCTION_PLAN_BEGIN_DATE'
    end
    object cdsDataPRODUCTION_PLAN_END_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1050#1088#1072#1081#1085#1072' '#1076#1072#1090#1072' '#1085#1072' '#1042#1088#1084#1048#1085#1090' '#1079#1072' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103
      FieldName = 'PRODUCTION_PLAN_END_DATE'
    end
    object cdsData_PRJ_PRICE_DEV_PROJECT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_PRJ_PRICE_DEV_PROJECT'
      Calculated = True
    end
    object cdsData_PRJ_ENG_PROJECT_PRICE_P: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_PRJ_ENG_PROJECT_PRICE_P'
      OnGetText = PricePercentFieldsGetText
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsData_PRJ_PROD_PROJECT_PRICE_P: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_PRJ_PROD_PROJECT_PRICE_P'
      OnGetText = PricePercentFieldsGetText
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsDataMANAGER_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'MANAGER_EMPLOYEE_CODE'
    end
  end
  object cdsOrgTaskProposalResultTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conOrganisationTasks
    Params = <>
    ProviderName = 'prvOrgTaskProposalResultTypes'
    Left = 200
    object cdsOrgTaskProposalResultTypesORG_TASK_PROP_RESULT_TYPE_CODE: TAbmesFloatField
      FieldName = 'ORG_TASK_PROP_RESULT_TYPE_CODE'
    end
    object cdsOrgTaskProposalResultTypesORG_TASK_PROP_RESULT_TYPE_NAME: TAbmesWideStringField
      FieldName = 'ORG_TASK_PROP_RESULT_TYPE_NAME'
      Size = 250
    end
    object cdsOrgTaskProposalResultTypesORG_TASK_PROP_RESULT_TYPE_ABBR: TAbmesWideStringField
      FieldName = 'ORG_TASK_PROP_RESULT_TYPE_ABBR'
      Size = 100
    end
  end
  object dsOrgTaskProposalResultTypes: TDataSource
    DataSet = cdsOrgTaskProposalResultTypes
    Left = 232
  end
  object cdsEngineeringOrder: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conOrganisationTasks
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvProductEngineeringOrder'
    BeforeOpen = cdsEngineeringOrderBeforeOpen
    Left = 112
    Top = 416
    object cdsEngineeringOrderENGINEERING_ORDER_CODE: TAbmesFloatField
      FieldName = 'ENGINEERING_ORDER_CODE'
    end
    object cdsEngineeringOrderEO_STATE_CODE: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'EO_STATE_CODE'
      OnGetText = cdsEngineeringOrderEO_STATE_CODEGetText
    end
    object cdsEngineeringOrderDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsEngineeringOrderDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsEngineeringOrderENGINEERING_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'ENGINEERING_DEPT_IDENTIFIER'
      Size = 46
    end
    object cdsEngineeringOrderENGINEERING_ORDER_NO: TAbmesFloatField
      FieldName = 'ENGINEERING_ORDER_NO'
    end
    object cdsEngineeringOrderENGINEERING_ORDER_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'ENGINEERING_ORDER_TYPE_ABBREV'
      Size = 5
    end
    object cdsEngineeringOrderENGINEERING_REAL_WORKDAYS: TAbmesFloatField
      FieldName = 'ENGINEERING_REAL_WORKDAYS'
    end
    object cdsEngineeringOrderEO_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'EO_HAS_DOC_ITEMS'
      FieldValueType = fvtBoolean
    end
  end
  object dsEngineeringOrder: TDataSource
    DataSet = cdsEngineeringOrder
    Left = 144
    Top = 416
  end
  object cdsProductionOrder: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conOrganisationTasks
    Params = <
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvProductProductionOrder'
    BeforeOpen = cdsProductionOrderBeforeOpen
    Left = 448
    Top = 416
    object cdsProductionOrderSALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_BRANCH_CODE'
    end
    object cdsProductionOrderSALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_CODE'
    end
    object cdsProductionOrderML_STATE_CODE: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'ML_STATE_CODE'
      OnGetText = cdsProductionOrderML_STATE_CODEGetText
    end
    object cdsProductionOrderPRODUCTION_ORDER_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'PRODUCTION_ORDER_TYPE_ABBREV'
      Size = 100
    end
    object cdsProductionOrderSALE_BRANCH_IDENTIFIER: TAbmesWideStringField
      FieldName = 'SALE_BRANCH_IDENTIFIER'
      Size = 46
    end
    object cdsProductionOrderSALE_NO: TAbmesFloatField
      FieldName = 'SALE_NO'
    end
    object cdsProductionOrderSALE_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'SALE_TYPE_ABBREV'
      Size = 5
    end
    object cdsProductionOrderDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsProductionOrderDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsProductionOrderPRODUCTION_WORKDAYS: TAbmesFloatField
      FieldName = 'PRODUCTION_WORKDAYS'
    end
    object cdsProductionOrderPO_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'PO_HAS_DOC_ITEMS'
      FieldValueType = fvtBoolean
    end
    object cdsProductionOrder_REMAINING_QUANTITY_PERCENT: TAbmesFloatField
      FieldName = '_REMAINING_QUANTITY_PERCENT'
      ReadOnly = True
    end
  end
  object dsProductionOrder: TDataSource
    DataSet = cdsProductionOrder
    Left = 480
    Top = 416
  end
  object cdsBudgetParams: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 696
    Top = 416
    object cdsBudgetParamsCHOSEN_PRODUCTS: TAbmesWideStringField
      FieldName = 'CHOSEN_PRODUCTS'
      Size = 4000
    end
    object cdsBudgetParamsORG_TASK_PROPOSAL_STATE_CODE: TAbmesFloatField
      FieldName = 'ORG_TASK_PROPOSAL_STATE_CODE'
    end
    object cdsBudgetParamsMAX_STATUS_CODE: TAbmesFloatField
      FieldName = 'MAX_STATUS_CODE'
    end
    object cdsBudgetParamsBUDGET_ORDER_ITEM_TYPE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_ITEM_TYPE'
    end
  end
  object cdsEngineeringOrdersParams: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 232
    Top = 416
    object cdsEngineeringOrdersParamsMAX_EO_STATE_CODE: TAbmesFloatField
      FieldName = 'MAX_EO_STATE_CODE'
    end
    object cdsEngineeringOrdersParamsCHOSEN_PRODUCTS: TAbmesWideStringField
      FieldName = 'CHOSEN_PRODUCTS'
      Size = 4000
    end
  end
  object cdsAvailableProductionOrders: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conOrganisationTasks
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvAvailableProductionOrders'
    ReadOnly = True
    BeforeOpen = cdsAvailableProductionOrdersBeforeOpen
    Left = 632
    Top = 336
    object cdsAvailableProductionOrdersSALE_OBJECT_PK: TAbmesWideStringField
      FieldName = 'SALE_OBJECT_PK'
      Size = 81
    end
    object cdsAvailableProductionOrdersSALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_BRANCH_CODE'
      Required = True
    end
    object cdsAvailableProductionOrdersSALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_CODE'
      Required = True
    end
    object cdsAvailableProductionOrdersPROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'PROCESS_OBJECT_IDENTIFIER'
      Size = 100
    end
  end
  object dsAvailableProductionOrders: TDataSource
    DataSet = cdsAvailableProductionOrders
    Left = 664
    Top = 336
  end
  object cdsProductionOrdersParams: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 600
    Top = 416
    object cdsProductionOrdersParamsCHOSEN_PRODUCTS: TAbmesWideStringField
      FieldName = 'CHOSEN_PRODUCTS'
      Size = 4000
    end
    object cdsProductionOrdersParamsMIN_ML_STATE_CODE: TAbmesFloatField
      FieldName = 'MIN_ML_STATE_CODE'
    end
    object cdsProductionOrdersParamsMAX_ML_STATE_CODE: TAbmesFloatField
      FieldName = 'MAX_ML_STATE_CODE'
    end
  end
  object cdsOTPInvestPrices: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conOrganisationTasks
    Params = <
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvOTPInvestPrices'
    BeforeOpen = cdsOTPInvestPricesBeforeOpen
    Left = 488
    Top = 120
    object cdsOTPInvestPricesPRJ_PRICE_DEV_BOI: TAbmesFloatField
      FieldName = 'PRJ_PRICE_DEV_BOI'
      DisplayFormat = ',0'
    end
    object cdsOTPInvestPricesPRJ_PRICE_DEV_BOIO_PLAN: TAbmesFloatField
      FieldName = 'PRJ_PRICE_DEV_BOIO_PLAN'
      DisplayFormat = ',0'
    end
    object cdsOTPInvestPricesPRJ_PRICE_DEV_BOIO_ACCOUNT: TAbmesFloatField
      FieldName = 'PRJ_PRICE_DEV_BOIO_ACCOUNT'
      DisplayFormat = ',0'
    end
    object cdsOTPInvestPricesPRJ_APPLY_BOI_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PRJ_APPLY_BOI_TOTAL_PRICE'
      DisplayFormat = ',0'
    end
    object cdsOTPInvestPricesPRJ_APPLY_BOIO_PL_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PRJ_APPLY_BOIO_PL_TOTAL_PRICE'
      DisplayFormat = ',0'
    end
    object cdsOTPInvestPricesPRJ_APPLY_BOIO_ACC_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PRJ_APPLY_BOIO_ACC_TOTAL_PRICE'
      DisplayFormat = ',0'
    end
    object cdsOTPInvestPricesPRJ_BOI_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PRJ_BOI_TOTAL_PRICE'
      DisplayFormat = ',0'
    end
    object cdsOTPInvestPricesPRJ_BOIO_PLAN_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PRJ_BOIO_PLAN_TOTAL_PRICE'
      DisplayFormat = ',0'
    end
    object cdsOTPInvestPricesPRJ_BOIO_ACCOUNT_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PRJ_BOIO_ACCOUNT_TOTAL_PRICE'
      DisplayFormat = ',0'
    end
    object cdsOTPInvestPricesPRJ_DELIVERY_BOI_PRICE_P: TAbmesFloatField
      FieldName = 'PRJ_DELIVERY_BOI_PRICE_P'
      OnGetText = PricePercentFieldsGetText
      DisplayFormat = ',0'
    end
    object cdsOTPInvestPricesPRJ_EXPENSE_BOI_PRICE_P: TAbmesFloatField
      FieldName = 'PRJ_EXPENSE_BOI_PRICE_P'
      OnGetText = PricePercentFieldsGetText
      DisplayFormat = ',0'
    end
    object cdsOTPInvestPricesPRJ_ENG_BOI_PRICE_P: TAbmesFloatField
      FieldName = 'PRJ_ENG_BOI_PRICE_P'
      OnGetText = PricePercentFieldsGetText
      DisplayFormat = ',0'
    end
    object cdsOTPInvestPricesPRJ_PROD_BOI_PRICE_P: TAbmesFloatField
      FieldName = 'PRJ_PROD_BOI_PRICE_P'
      OnGetText = PricePercentFieldsGetText
      DisplayFormat = ',0'
    end
    object cdsOTPInvestPricesPRJ_DELIVERY_BOIO_PLAN_PRICE_P: TAbmesFloatField
      FieldName = 'PRJ_DELIVERY_BOIO_PLAN_PRICE_P'
      OnGetText = PricePercentFieldsGetText
      DisplayFormat = ',0'
    end
    object cdsOTPInvestPricesPRJ_EXPENSE_BOIO_PLAN_PRICE_P: TAbmesFloatField
      FieldName = 'PRJ_EXPENSE_BOIO_PLAN_PRICE_P'
      OnGetText = PricePercentFieldsGetText
      DisplayFormat = ',0'
    end
    object cdsOTPInvestPricesPRJ_ENG_BOIO_PLAN_PRICE_P: TAbmesFloatField
      FieldName = 'PRJ_ENG_BOIO_PLAN_PRICE_P'
      OnGetText = PricePercentFieldsGetText
      DisplayFormat = ',0'
    end
    object cdsOTPInvestPricesPRJ_PROD_BOIO_PLAN_PRICE_P: TAbmesFloatField
      FieldName = 'PRJ_PROD_BOIO_PLAN_PRICE_P'
      OnGetText = PricePercentFieldsGetText
      DisplayFormat = ',0'
    end
    object cdsOTPInvestPricesPRJ_DELIVERY_BOIO_ACC_PRICE_P: TAbmesFloatField
      FieldName = 'PRJ_DELIVERY_BOIO_ACC_PRICE_P'
      OnGetText = PricePercentFieldsGetText
      DisplayFormat = ',0'
    end
    object cdsOTPInvestPricesPRJ_EXPENSE_BOIO_ACC_PRICE_P: TAbmesFloatField
      FieldName = 'PRJ_EXPENSE_BOIO_ACC_PRICE_P'
      OnGetText = PricePercentFieldsGetText
      DisplayFormat = ',0'
    end
    object cdsOTPInvestPricesPRJ_ENG_BOIO_ACC_PRICE_P: TAbmesFloatField
      FieldName = 'PRJ_ENG_BOIO_ACC_PRICE_P'
      OnGetText = PricePercentFieldsGetText
      DisplayFormat = ',0'
    end
    object cdsOTPInvestPricesPRJ_PROD_BOIO_ACC_PRICE_P: TAbmesFloatField
      FieldName = 'PRJ_PROD_BOIO_ACC_PRICE_P'
      OnGetText = PricePercentFieldsGetText
      DisplayFormat = ',0'
    end
    object cdsOTPInvestPricesPRJ_ENG_BOI_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PRJ_ENG_BOI_TOTAL_PRICE'
      DisplayFormat = ',0'
    end
    object cdsOTPInvestPricesPRJ_ENG_BOI_TOTAL_PRICE_DEL_P: TAbmesFloatField
      FieldName = 'PRJ_ENG_BOI_TOTAL_PRICE_DEL_P'
      OnGetText = PricePercentFieldsGetText
      DisplayFormat = ',0'
    end
    object cdsOTPInvestPricesPRJ_ENG_BOI_TOTAL_PRICE_EXP_P: TAbmesFloatField
      FieldName = 'PRJ_ENG_BOI_TOTAL_PRICE_EXP_P'
      OnGetText = PricePercentFieldsGetText
      DisplayFormat = ',0'
    end
    object cdsOTPInvestPricesPRJ_ENG_BOIO_PLAN_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PRJ_ENG_BOIO_PLAN_TOTAL_PRICE'
      DisplayFormat = ',0'
    end
    object cdsOTPInvestPricesPRJ_ENG_BOIO_PL_TOTAL_PR_DEL_P: TAbmesFloatField
      FieldName = 'PRJ_ENG_BOIO_PL_TOTAL_PR_DEL_P'
      OnGetText = PricePercentFieldsGetText
      DisplayFormat = ',0'
    end
    object cdsOTPInvestPricesPRJ_ENG_BOIO_PL_TOTAL_PR_EXP_P: TAbmesFloatField
      FieldName = 'PRJ_ENG_BOIO_PL_TOTAL_PR_EXP_P'
      OnGetText = PricePercentFieldsGetText
      DisplayFormat = ',0'
    end
    object cdsOTPInvestPricesPRJ_ENG_BOIO_ACC_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PRJ_ENG_BOIO_ACC_TOTAL_PRICE'
      DisplayFormat = ',0'
    end
    object cdsOTPInvestPricesPRJ_ENG_BOIO_ACC_TOT_PR_DEL_P: TAbmesFloatField
      FieldName = 'PRJ_ENG_BOIO_ACC_TOT_PR_DEL_P'
      OnGetText = PricePercentFieldsGetText
      DisplayFormat = ',0'
    end
    object cdsOTPInvestPricesPRJ_ENG_BOIO_ACC_TOT_PR_EXP_P: TAbmesFloatField
      FieldName = 'PRJ_ENG_BOIO_ACC_TOT_PR_EXP_P'
      OnGetText = PricePercentFieldsGetText
      DisplayFormat = ',0'
    end
    object cdsOTPInvestPricesPRJ_PROD_BOI_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PRJ_PROD_BOI_TOTAL_PRICE'
      DisplayFormat = ',0'
    end
    object cdsOTPInvestPricesPRJ_PROD_BOI_TOTAL_PRICE_DEL_P: TAbmesFloatField
      FieldName = 'PRJ_PROD_BOI_TOTAL_PRICE_DEL_P'
      OnGetText = PricePercentFieldsGetText
      DisplayFormat = ',0'
    end
    object cdsOTPInvestPricesPRJ_PROD_BOI_TOTAL_PRICE_EXP_P: TAbmesFloatField
      FieldName = 'PRJ_PROD_BOI_TOTAL_PRICE_EXP_P'
      OnGetText = PricePercentFieldsGetText
      DisplayFormat = ',0'
    end
    object cdsOTPInvestPricesPRJ_PROD_BOIO_PLAN_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PRJ_PROD_BOIO_PLAN_TOTAL_PRICE'
      DisplayFormat = ',0'
    end
    object cdsOTPInvestPricesPRJ_PROD_BOIO_PL_TOT_PR_DEL_P: TAbmesFloatField
      FieldName = 'PRJ_PROD_BOIO_PL_TOT_PR_DEL_P'
      OnGetText = PricePercentFieldsGetText
      DisplayFormat = ',0'
    end
    object cdsOTPInvestPricesPRJ_PROD_BOIO_PL_TOT_PR_EXP_P: TAbmesFloatField
      FieldName = 'PRJ_PROD_BOIO_PL_TOT_PR_EXP_P'
      OnGetText = PricePercentFieldsGetText
      DisplayFormat = ',0'
    end
    object cdsOTPInvestPricesPRJ_PROD_BOIO_ACC_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PRJ_PROD_BOIO_ACC_TOTAL_PRICE'
      DisplayFormat = ',0'
    end
    object cdsOTPInvestPricesPRJ_PROD_BOIO_ACC_TOT_PR_DEL_P: TAbmesFloatField
      FieldName = 'PRJ_PROD_BOIO_ACC_TOT_PR_DEL_P'
      OnGetText = PricePercentFieldsGetText
      DisplayFormat = ',0'
    end
    object cdsOTPInvestPricesPRJ_PROD_BOIO_ACC_TOT_PR_EXP_P: TAbmesFloatField
      FieldName = 'PRJ_PROD_BOIO_ACC_TOT_PR_EXP_P'
      OnGetText = PricePercentFieldsGetText
      DisplayFormat = ',0'
    end
    object cdsOTPInvestPricesENGINEERING_REAL_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'ENGINEERING_REAL_END_DATE'
    end
    object cdsOTPInvestPricesPRODUCTION_REAL_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'PRODUCTION_REAL_END_DATE'
    end
  end
  object dsOTPInvestPrices: TDataSource
    DataSet = cdsOTPInvestPrices
    Left = 520
    Top = 120
  end
end
