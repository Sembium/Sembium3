inherited TreeOnlyNomForm: TTreeOnlyNomForm
  ActiveControl = pnlFind
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSizeable
  Caption = 'TreeOnlyNomForm'
  ClientHeight = 519
  ClientWidth = 604
  Constraints.MinWidth = 620
  ShowHint = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 476
    Width = 604
    Height = 43
    TabOrder = 2
    inherited pnlOKCancel: TPanel
      Left = 336
      Height = 43
      Visible = False
      inherited btnOK: TBitBtn
        Top = 10
      end
      inherited btnCancel: TBitBtn
        Top = 10
      end
    end
    inherited pnlClose: TPanel
      Left = 247
      Height = 43
      Visible = True
      inherited btnClose: TBitBtn
        Top = 10
      end
    end
    inherited pnlApply: TPanel
      Left = 515
      Height = 43
      Visible = False
      inherited btnApply: TBitBtn
        Top = 10
      end
    end
  end
  object tvTree: TJvDBTreeView [1]
    Left = 0
    Top = 24
    Width = 604
    Height = 452
    UseFilter = False
    PersistentNode = True
    ReadOnly = True
    RightClickSelect = True
    HideSelection = False
    Indent = 19
    Align = alClient
    TabOrder = 1
    OnDblClick = tvTreeDblClick
    PopupMenu = pmNodesEdit
    Images = ilTreeIcons
    ToolTips = False
    Mirror = False
  end
  object pnlTop: TPanel [2]
    Left = 0
    Top = 0
    Width = 604
    Height = 24
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object tlbButtons: TToolBar
      Left = 0
      Top = 0
      Width = 263
      Height = 24
      Align = alLeft
      AutoSize = True
      ButtonHeight = 24
      ButtonWidth = 24
      Customizable = True
      Images = dmMain.ilActions
      TabOrder = 0
      object btnInsertNode: TToolButton
        Left = 0
        Top = 0
        Action = actInsertDefiniteNode
        DropdownMenu = pmInsertNode
        Style = tbsDropDown
      end
      object btnDeleteNode: TToolButton
        Left = 39
        Top = 0
        Action = actDeleteNode
      end
      object btnEditNode: TToolButton
        Left = 63
        Top = 0
        Action = actEditNode
      end
      object sepBetweenEditAndMove: TToolButton
        Left = 87
        Top = 0
        Width = 8
        ImageIndex = 19
        Style = tbsSeparator
      end
      object btnToggleMoving: TToolButton
        Left = 95
        Top = 0
        Action = actToggleMoving
      end
      object btnFinishMoving: TToolButton
        Left = 119
        Top = 0
        Action = actFinishMoving
      end
      object sepBetweenMoveAndPrint: TToolButton
        Left = 143
        Top = 0
        Width = 8
        Caption = 'sepBetweenMoveAndPrint'
        ImageIndex = 4
        Style = tbsSeparator
      end
      object btnPrintSubTree: TToolButton
        Left = 151
        Top = 0
        Action = actPrintSubTree
      end
      object sepBetweenShowPrintAndExpandCollapse: TToolButton
        Left = 175
        Top = 0
        Width = 8
        Caption = 'sepBetweenShowPrintAndExpandCollapse'
        ImageIndex = 5
        Style = tbsSeparator
      end
      object btnExpandAllNodes: TToolButton
        Left = 183
        Top = 0
        Action = actExpandAllNodes
      end
      object btnExpandCollapseAllNodes: TToolButton
        Left = 207
        Top = 0
        Action = actCollapseAllNodes
      end
      object sepAfterCollapse: TToolButton
        Left = 231
        Top = 0
        Width = 8
        Caption = 'sepAfterCollapseAllNodes'
        ImageIndex = 17
        Style = tbsSeparator
      end
      object btnShowInactive: TToolButton
        Left = 239
        Top = 0
        Action = actShowInactive
        Style = tbsCheck
      end
    end
    object pnlFind: TPanel
      Left = 388
      Top = 0
      Width = 216
      Height = 24
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      object edtFind: TEdit
        Left = 0
        Top = 0
        Width = 168
        Height = 24
        Align = alClient
        TabOrder = 0
        TextHint = #1053#1086#1074#1086' '#1090#1098#1088#1089#1077#1085#1077' (Ctrl+F)'
      end
      object tlbFind: TToolBar
        Left = 168
        Top = 0
        Width = 48
        Height = 24
        Align = alRight
        ButtonHeight = 24
        ButtonWidth = 24
        Caption = 'tlbFind'
        Images = dmMain.ilActions
        TabOrder = 1
        object tlbFindNext: TToolButton
          Left = 0
          Top = 0
          Action = actFindNext
        end
        object btnFindPrev: TToolButton
          Left = 24
          Top = 0
          Action = actFindPrev
        end
      end
    end
  end
  inherited alActions: TActionList
    Left = 128
    Top = 40
    inherited actForm: TAction
      Caption = 'TreeOnlyNomForm'
    end
    object actInsertDefiniteNode: TAction
      Caption = #1044#1086#1073#1072#1074#1103#1085#1077
      Hint = #1044#1086#1073#1072#1074#1103#1085#1077
      ImageIndex = 145
      ShortCut = 45
      OnExecute = actInsertDefiniteNodeExecute
      OnUpdate = actInsertDefiniteNodeUpdate
    end
    object actInsertGroupNode: TAction
      Caption = #1044#1086#1073#1072#1074#1103#1085#1077' '#1085#1072' '#1043#1088#1091#1087#1072
      Hint = #1044#1086#1073#1072#1074#1103#1085#1077' '#1085#1072' '#1043#1088#1091#1087#1072
      ImageIndex = 145
      ShortCut = 16429
      OnExecute = actInsertGroupNodeExecute
      OnUpdate = actInsertGroupNodeUpdate
    end
    object actDeleteNode: TAction
      Caption = #1048#1079#1090#1088#1080#1074#1072#1085#1077
      Hint = #1048#1079#1090#1088#1080#1074#1072#1085#1077
      ImageIndex = 146
      ShortCut = 46
      OnExecute = actDeleteNodeExecute
      OnUpdate = actDeleteNodeUpdate
    end
    object actEditNode: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077
      ImageIndex = 147
      ShortCut = 32
      OnExecute = actEditNodeExecute
      OnUpdate = actEditNodeUpdate
    end
    object actShowInactive: TAction
      Caption = #1053#1077#1072#1082#1090#1080#1074#1085#1080
      Hint = #1053#1077#1072#1082#1090#1080#1074#1085#1080
      ImageIndex = 16
      OnExecute = actShowInactiveExecute
      OnUpdate = actShowInactiveUpdate
    end
    object actPrintSubTree: TAction
      Caption = #1055#1077#1095#1072#1090' '#1085#1072' '#1087#1086#1076#1076#1098#1088#1074#1086
      Hint = #1055#1077#1095#1072#1090' '#1085#1072' '#1087#1086#1076#1076#1098#1088#1074#1086
      ImageIndex = 2
      OnExecute = actPrintSubTreeExecute
    end
    object actExpandAllNodes: TAction
      Caption = #1056#1072#1079#1075#1098#1074#1072#1085#1077
      Hint = #1056#1072#1079#1075#1098#1074#1072#1085#1077
      ImageIndex = 141
      OnExecute = actExpandAllNodesExecute
      OnUpdate = actExpandAllNodesUpdate
    end
    object actCollapseAllNodes: TAction
      Caption = #1057#1074#1080#1074#1072#1085#1077
      Hint = #1057#1074#1080#1074#1072#1085#1077
      ImageIndex = 142
      OnExecute = actCollapseAllNodesExecute
      OnUpdate = actCollapseAllNodesUpdate
    end
    object actToggleMoving: TAction
      ImageIndex = 121
      OnExecute = actToggleMovingExecute
      OnUpdate = actToggleMovingUpdate
    end
    object actFinishMoving: TAction
      ImageIndex = 123
      OnExecute = actFinishMovingExecute
      OnUpdate = actFinishMovingUpdate
    end
    object actFocusFind: TAction
      Caption = 'actFocusFind'
      ShortCut = 16454
      OnExecute = actFocusFindExecute
    end
    object actFindNext: TAction
      Caption = 'actFindNext'
      Hint = #1058#1098#1088#1089#1077#1085#1077' '#1085#1072#1087#1088#1077#1076
      ImageIndex = 25
      ShortCut = 13
      OnExecute = actFindNextExecute
      OnUpdate = actFindNextUpdate
    end
    object actFindPrev: TAction
      Caption = 'actFindPrev'
      Hint = #1058#1098#1088#1089#1077#1085#1077' '#1085#1072#1079#1072#1076
      ImageIndex = 43
      ShortCut = 16397
      OnExecute = actFindPrevExecute
      OnUpdate = actFindPrevUpdate
    end
  end
  inherited dsData: TDataSource
    Left = 40
    Top = 40
  end
  inherited cdsData: TAbmesClientDataSet
    Filtered = True
    AfterOpen = cdsDataAfterOpen
    OnFilterRecord = cdsDataFilterRecord
    Left = 8
    Top = 40
  end
  object pmNodesEdit: TPopupMenu
    Images = dmMain.ilActions
    OnPopup = pmNodesEditPopup
    Left = 128
    Top = 72
    object miInsertDefiniteNode: TMenuItem
      Action = actInsertDefiniteNode
    end
    object miInsertGroupNode: TMenuItem
      Action = actInsertGroupNode
    end
    object miDeleteNode: TMenuItem
      Action = actDeleteNode
    end
    object miEditNode: TMenuItem
      Action = actEditNode
    end
  end
  object cdsPrintTree: TAbmesClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Filtered = True
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    BeforeOpen = cdsPrintTreeBeforeOpen
    Left = 8
    Top = 72
  end
  object ilTreeIcons: TImageList
    Left = 224
    Top = 40
  end
  object pmInsertNode: TPopupMenu
    Left = 160
    Top = 72
    object miInsNodeInsertDefiniteNode: TMenuItem
      Action = actInsertDefiniteNode
      Default = True
    end
    object miInsNodeInsertGroupNode: TMenuItem
      Action = actInsertGroupNode
    end
  end
end
