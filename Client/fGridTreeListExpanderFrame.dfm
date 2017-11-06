inherited frGridTreeListExpanderFrame: TfrGridTreeListExpanderFrame
  Width = 56
  Height = 24
  Constraints.MaxHeight = 24
  Constraints.MaxWidth = 56
  Constraints.MinHeight = 24
  Constraints.MinWidth = 56
  object tlbMain: TToolBar [0]
    Left = 0
    Top = 0
    Width = 56
    Height = 24
    Align = alClient
    ButtonHeight = 24
    ButtonWidth = 24
    Images = dmMain.ilActions
    TabOrder = 0
    object sepLeft: TToolButton
      Left = 0
      Top = 0
      Width = 8
      ImageIndex = 143
      Style = tbsSeparator
    end
    object btnExpand: TToolButton
      Left = 8
      Top = 0
      Action = actExpand
    end
    object btnCollapse: TToolButton
      Left = 32
      Top = 0
      Action = actCollapse
    end
  end
  inherited alActions: TActionList
    Top = 32
    object actExpand: TAction
      Caption = #1056#1072#1079#1075#1098#1074#1072#1085#1077
      Hint = #1056#1072#1079#1075#1098#1074#1072#1085#1077' ('#1089' Ctrl '#1087#1086' '#1085#1080#1074#1072')'
      ImageIndex = 141
      OnExecute = actExpandExecute
      OnUpdate = actExpandUpdate
    end
    object actCollapse: TAction
      Caption = #1057#1074#1080#1074#1072#1085#1077
      Hint = #1057#1074#1080#1074#1072#1085#1077' ('#1089' Ctrl '#1087#1086' '#1085#1080#1074#1072')'
      ImageIndex = 142
      OnExecute = actCollapseExecute
      OnUpdate = actCollapseUpdate
    end
  end
end
