inherited frProductFieldEditFrame: TfrProductFieldEditFrame
  Width = 460
  inherited gbTreeNode: TGroupBox
    Width = 460
    Caption = ' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090' '
    DesignSize = (
      460
      49)
    inherited pnlTreeNode: TPanel
      Width = 444
      inherited pnlTreeNodeName: TPanel
        Width = 262
        DesignSize = (
          262
          22)
        inherited edtTreeNodeName: TDBEdit
          Width = 261
        end
      end
      inherited pnlTreeNodeNo: TPanel
        Left = 262
        Width = 123
        inherited edtTreeNodeNo: TJvDBComboEdit
          Width = 123
        end
        inherited pnlEditButtons: TPanel
          Left = 83
        end
      end
      inherited pnlRightButtons: TPanel
        Left = 385
        Width = 59
        AutoSize = False
        object btnProductVIM: TSpeedButton [0]
          Left = 0
          Top = 0
          Width = 23
          Height = 22
          Action = actShowProductVIM
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF007B7B7B00FF00FF00FF00FF00FF00FF007B7B7B00FF00FF00FF00FF00FF00
            FF007B7B7B00FF00FF00FF00FF00FF00FF007B7B7B00FF00FF00FF00FF00FF00
            FF007B7B7B00FF00FF007B7B7B00FF00FF007B7B7B00FF00FF007B7B7B00FF00
            FF007B7B7B00FF00FF007B7B7B00FF00FF007B7B7B00FF00FF007B7B7B007B7B
            7B00000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FF00FF00FF00
            FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007B7B
            7B00000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF0000000000FF00FF000000FF00FF00FF000000FF000000FF00FF00FF00FF00
            0000FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF007B7B7B007B7B
            7B00000000007B7B7B000000FF007B7B7B000000FF007B7B7B000000FF007B7B
            7B007B7B7B00FF0000007B7B7B007B7B7B007B7B7B007B7B7B00FF00FF00FF00
            FF0000000000FF00FF00FF00FF000000FF00FF00FF00FF00FF000000FF00FF00
            FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF007B7B
            7B0000000000FF000000FF00FF00FF00FF00FF00FF00FF000000FF00FF000000
            FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF0000000000FF00FF00FF000000FF00FF00FF000000FF00FF00FF00FF000000
            FF00FF00FF000000FF00FF0000000000FF00FF00FF00FF00FF007B7B7B007B7B
            7B00000000007B7B7B00FF0000007B7B7B00FF0000007B7B7B007B7B7B007B7B
            7B000000FF007B7B7B007B7B7B00FF0000000000FF007B7B7B00FF00FF00FF00
            FF0000000000FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF007B7B
            7B0000000000FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00
            FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007B7B7B007B7B
            7B00000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
            7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        end
        inherited tlbDocButton: TToolBar
          Left = 23
        end
      end
    end
  end
  inherited alActions: TActionList
    object actShowProductVIM: TAction
      Hint = 
        #1055#1086#1082#1072#1079#1074#1072' '#1042#1048#1052' - '#1053#1072#1083#1080#1095#1085#1086#1089#1090' '#1079#1072' '#1080#1079#1073#1088#1072#1085#1080#1103' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090' / '#1043#1088#1091#1087#1072' '#1059#1087#1088#1072 +
        #1074#1083#1103#1077#1084#1080' '#1054#1073#1077#1082#1090#1080
      ImageIndex = 30
      OnExecute = actShowProductVIMExecute
      OnUpdate = actShowProductVIMUpdate
    end
  end
end
