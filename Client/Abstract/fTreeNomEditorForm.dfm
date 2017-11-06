inherited TreeNomEditorForm: TTreeNomEditorForm
  Left = 283
  Top = 176
  Caption = 'TreeNomEditorForm'
  PixelsPerInch = 96
  TextHeight = 13
  inherited sptMain: TSplitter
    Top = 50
    Height = 214
  end
  inherited pnlBottomButtons: TPanel
    inherited pnlOKCancel: TPanel
      Visible = False
    end
    inherited pnlClose: TPanel
      Visible = True
    end
  end
  inherited pnlTree: TPanel
    Top = 50
    Height = 214
    inherited tvTree: TTreeView
      Height = 214
      OnDragDrop = tvTreeDragDrop
      OnDragOver = tvTreeDragOver
    end
  end
  inherited clbMain: TCoolBar
    Height = 50
    Bands = <
      item
        Control = cbParents
        ImageIndex = -1
        MinHeight = 22
        MinWidth = 150
        Width = 208
      end
      item
        Break = False
        Control = tlbButtons
        ImageIndex = -1
        MinHeight = 22
        MinWidth = 152
        Width = 394
      end
      item
        Control = pnlNavChildren
        ImageIndex = -1
        MinHeight = 22
        MinWidth = 203
        Width = 604
      end>
    inherited pnlNavChildren: TPanel
      Left = 9
      Top = 24
      Width = 595
      inherited navChildren: TDBColorNavigator
        Hints.Strings = ()
      end
      object tlbEditChildren: TToolBar
        Left = 88
        Top = 0
        Width = 507
        Height = 22
        Align = alClient
        HotImages = dmMain.ilActions
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        object sepAdd: TToolButton
          Left = 0
          Top = 0
          Width = 8
          Caption = 'sepAdd'
          ImageIndex = 148
          Style = tbsSeparator
        end
        object btnAdd: TToolButton
          Left = 8
          Top = 0
          Action = actInsertChild
          DropdownMenu = pmAdd
          Style = tbsDropDown
        end
        object btnDel: TToolButton
          Left = 46
          Top = 0
          Action = actDelChild
          DropdownMenu = pmDelete
        end
        object btnEdit: TToolButton
          Left = 69
          Top = 0
          Action = actEditChild
          DropdownMenu = pmEdit
        end
      end
    end
    inherited tlbButtons: TToolBar
      Left = 219
      Width = 385
      inherited btnCopy: TToolButton
        DropdownMenu = pmCopy
        Style = tbsDropDown
      end
    end
    inherited cbParents: TTreeParentsComboBox
      Width = 204
    end
  end
  inherited pnlDetails: TPanel
    Top = 50
    Height = 214
    TabOrder = 1
    inherited sptParams: TSplitter
      Top = 96
    end
    inherited grdChildren: TAbmesDBGrid
      Height = 79
      PopupMenu = pmChildren
      OnMouseDown = grdChildrenMouseDown
    end
    inherited frTreeNodeParams: TfrTreeNodeParams
      Top = 98
    end
  end
  inherited pnlFind: TPanel
    inherited pnlQuickFind: TPanel
      inherited pnlQuickFindClient: TPanel
        inherited navFind: TDBColorNavigator
          Hints.Strings = ()
        end
      end
    end
  end
  inherited alActions: TActionList
    Left = 152
    Top = 208
    inherited actForm: TAction
      Caption = 'TreeNomEditorForm'
    end
    inherited actCopyToClipboard: TAction
      Hint = #1050#1086#1087#1080#1088#1072#1085#1077' '#1085#1086#1084#1077#1088#1072' '#1074' '#1073#1091#1092#1077#1088#1072
    end
    inherited actFilterParams: TAction
      ImageIndex = 12
    end
    object actInsertChild: TAction
      Category = 'ChildActions'
      Caption = #1044#1086#1073#1072#1074#1103#1085#1077'...'
      Hint = #1044#1086#1073#1072#1074#1103#1085#1077
      ImageIndex = 145
      ShortCut = 45
      OnExecute = actInsertChildExecute
      OnUpdate = actInsertChildUpdate
    end
    object actNewDescendant: TAction
      Category = 'ChildActions'
      Caption = #1044#1086#1073#1072#1074#1103#1085#1077' '#1085#1072' '#1085#1072#1089#1083#1077#1076#1085#1080#1082'...'
      Hint = #1044#1086#1073#1072#1074#1103#1085#1077' '#1085#1072' '#1085#1072#1089#1083#1077#1076#1085#1080#1082
      ImageIndex = 145
      OnExecute = actNewDescendantExecute
      OnUpdate = actNewDescendantUpdate
    end
    object actDelChild: TAction
      Category = 'ChildActions'
      Caption = #1048#1079#1090#1088#1080#1074#1072#1085#1077'...'
      Hint = #1048#1079#1090#1088#1080#1074#1072#1085#1077
      ImageIndex = 146
      ShortCut = 46
      OnExecute = actDelChildExecute
      OnUpdate = actDelChildUpdate
    end
    object actEditChild: TAction
      Category = 'ChildActions'
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077'...'
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077
      ImageIndex = 147
      ShortCut = 32
      OnExecute = actEditChildExecute
      OnUpdate = actEditChildUpdate
    end
    object actCreateLike: TAction
      Category = 'ChildActions'
      Caption = #1044#1086#1073#1072#1074#1103#1085#1077' '#1082#1072#1090#1086'...'
      Hint = #1044#1086#1073#1072#1074#1103#1085#1077' '#1082#1072#1090#1086
      ImageIndex = 145
      ShortCut = 32813
      OnExecute = actCreateLikeExecute
      OnUpdate = actCreateLikeUpdate
    end
    object actInsertGroup: TAction
      Category = 'ChildActions'
      Caption = #1044#1086#1073#1072#1074#1103#1085#1077' '#1085#1072' '#1075#1088#1091#1087#1072'...'
      Hint = #1044#1086#1073#1072#1074#1103#1085#1077' '#1085#1072' '#1075#1088#1091#1087#1072
      ImageIndex = 145
      ShortCut = 16429
      OnExecute = actInsertGroupExecute
      OnUpdate = actInsertGroupUpdate
    end
  end
  inherited cdsTreeToNode: TAbmesClientDataSet
    object cdsTreeToNodeNODE_NO: TAbmesFloatField [4]
      FieldName = 'NODE_NO'
    end
  end
  inherited cdsTreeNodeChildren: TAbmesClientDataSet
    object cdsTreeNodeChildrenNODE_NO: TAbmesFloatField [3]
      FieldName = 'NODE_NO'
    end
  end
  inherited cdsNodeChildren: TAbmesClientDataSet
    AggregatesActive = True
    BeforeInsert = cdsNodeChildrenBeforeInsert
    BeforePost = cdsNodeChildrenBeforePost
    AfterPost = cdsNodeChildrenAfterPost
    AfterDelete = cdsNodeChildrenAfterDelete
    OnNewRecord = cdsNodeChildrenNewRecord
    OnReconcileError = cdsNodeChildrenReconcileError
    object cdsNodeChildrenNODE_NO: TAbmesFloatField
      DisplayLabel = #1053#1086#1084#1077#1088
      FieldName = 'NODE_NO'
    end
    object cdsNodeChildren_MAX_NODE_NO: TAggregateField
      FieldName = '_MAX_NODE_NO'
      Active = True
      Expression = 'Max(NODE_NO)'
    end
  end
  inherited cdsTreeNode: TAbmesClientDataSet
    object cdsTreeNodeNODE_NO: TAbmesFloatField [4]
      FieldName = 'NODE_NO'
    end
  end
  inherited cdsPrintTree: TAbmesClientDataSet
    object cdsPrintTreeHAS_CHILDREN: TAbmesFloatField [6]
      FieldName = 'HAS_CHILDREN'
    end
  end
  object pmChildren: TPopupMenu
    Images = dmMain.ilActions
    Left = 539
    Top = 50
    object miOpenChild: TMenuItem
      Action = actOpen
      Default = True
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object miInsertChild: TMenuItem
      Action = actInsertChild
    end
    object miInsertGroup: TMenuItem
      Action = actInsertGroup
    end
    object miCreateLike: TMenuItem
      Action = actCreateLike
    end
    object miDelChild: TMenuItem
      Action = actDelChild
    end
    object miEditChild: TMenuItem
      Action = actEditChild
    end
  end
  object pmAdd: TPopupMenu
    Left = 288
    Top = 128
    object miDropInsertChild: TMenuItem
      Action = actInsertChild
      Default = True
    end
    object miDropInsertGroup: TMenuItem
      Action = actInsertGroup
    end
    object miDropCreateLike: TMenuItem
      Action = actCreateLike
    end
  end
  object pmDelete: TPopupMenu
    Left = 320
    Top = 128
    object miDropDelChild: TMenuItem
      Action = actDelChild
      Default = True
    end
  end
  object pmEdit: TPopupMenu
    Left = 352
    Top = 128
    object miDropEditChild: TMenuItem
      Action = actEditChild
      Default = True
    end
  end
end
