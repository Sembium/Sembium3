inherited frDBGridSearch: TfrDBGridSearch
  Width = 216
  Height = 22
  OnEnter = FrameEnter
  OnExit = FrameExit
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 216
    Height = 22
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      216
      22)
    object tlbSearchData: TToolBar
      Left = 170
      Top = 0
      Width = 46
      Height = 22
      Align = alNone
      Anchors = [akTop, akRight]
      AutoSize = True
      Images = dmMain.ilActions
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      object btnSearchDataForwards: TToolButton
        Left = 0
        Top = 0
        Action = actSearchForwards
      end
      object btnSearchDataBackwards: TToolButton
        Left = 23
        Top = 0
        Action = actSearchBackwards
      end
    end
    object edtSearch: TEdit
      Left = 0
      Top = 1
      Width = 169
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 1
      TextHint = #1053#1086#1074#1086' '#1090#1098#1088#1089#1077#1085#1077
    end
  end
  inherited alActions: TActionList
    Left = 64
    object actSearchForwards: TAction
      Hint = #1058#1098#1088#1089#1077#1085#1077
      ImageIndex = 44
      OnExecute = actSearchForwardsExecute
      OnUpdate = actSearchForwardsUpdate
    end
    object actSearchBackwards: TAction
      Hint = #1058#1098#1088#1089#1077#1085#1077' '#1085#1072#1079#1072#1076
      ImageIndex = 43
      OnExecute = actSearchBackwardsExecute
      OnUpdate = actSearchBackwardsUpdate
    end
    object actFocusSearch: TAction
      Caption = 'actFocusSearch'
      OnExecute = actFocusSearchExecute
      OnUpdate = actFocusSearchUpdate
    end
  end
  object ApplicationEvents: TApplicationEvents
    OnMessage = ApplicationEventsMessage
    Left = 112
  end
end
