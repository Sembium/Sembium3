inherited TreeNodeFieldEditFrame: TTreeNodeFieldEditFrame
  Width = 417
  Height = 49
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  Constraints.MaxHeight = 49
  object gbTreeNode: TGroupBox [0]
    Left = 0
    Top = 0
    Width = 417
    Height = 49
    Align = alClient
    Caption = ' Node '
    TabOrder = 0
    DesignSize = (
      417
      49)
    object pnlTreeNode: TPanel
      Left = 8
      Top = 16
      Width = 401
      Height = 22
      Anchors = [akLeft, akTop, akRight]
      BevelOuter = bvNone
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 0
      object pnlTreeNodeName: TPanel
        Left = 0
        Top = 0
        Width = 254
        Height = 22
        Align = alClient
        Anchors = []
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          254
          22)
        object edtTreeNodeName: TDBEdit
          Left = 0
          Top = 0
          Width = 253
          Height = 21
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataField = 'NODE_NAME'
          DataSource = dsTreeNode
          ReadOnly = True
          TabOrder = 0
        end
      end
      object pnlTreeNodeNo: TPanel
        Left = 254
        Top = 0
        Width = 111
        Height = 22
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 1
        DesignSize = (
          111
          22)
        object edtTreeNodeNo: TJvDBComboEdit
          Left = 0
          Top = 0
          Width = 111
          Height = 21
          BeepOnError = False
          DataField = 'NODE_NO'
          DataSource = dsTreeNode
          ButtonWidth = 37
          Anchors = [akLeft, akTop, akRight, akBottom]
          Constraints.MaxHeight = 21
          Constraints.MinHeight = 21
          TabOrder = 0
          OnChange = edtTreeNodeNoChange
        end
        object pnlEditButtons: TPanel
          Left = 71
          Top = 2
          Width = 38
          Height = 18
          Anchors = [akTop, akRight, akBottom]
          BevelOuter = bvNone
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          object btnInvokeTreeEditor: TSpeedButton
            Left = 1
            Top = 0
            Width = 18
            Height = 18
            Action = actInvokeTreeEditor
            Glyph.Data = {
              4E000000424D4E000000000000003E000000280000000C000000040000000100
              010000000000100000000000000000000000020000000200000000000000FFFF
              FF00FFF0000039C0000039C00000FFF00000}
          end
          object btnClearFieldValues: TSpeedButton
            Left = 20
            Top = 0
            Width = 18
            Height = 18
            Action = actClearFieldValues
            Glyph.Data = {
              9E020000424D9E0200000000000036000000280000000E0000000E0000000100
              1800000000006802000000000000000000000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FF0000000000FF00FFFF00FFFF00FF000000FF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FF0000000000000000FF00FFFF00FF0000
              00000000FF00FF000000000000FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00
              FF000000000000FF00FF000000FF00FF000000000084000084000000FF00FFFF
              00FFFF00FFFF00FF0000FF00FFFF00FFFF00FF000000FF00FF0000000000FF00
              00FF0000FF000084000000FF00FFFF00FFFF00FF0000000000000000FF00FFFF
              00FFFF00FF0000000000FF0000FF0000FF0000FF000084000000FF00FFFF00FF
              0000000000000000FF00FF000000FF00FFFF00FF0000000000FF0000FF0000FF
              000000008484000000FF00FF0000FF00FF000000000000FF00FF000000FF00FF
              FF00FF0000000000FF00000000FFFF0000000084840000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000FFFF00000000FFFF0000
              000084840000FF00FFFF00FFFF00FF000000FF00FFFF00FFFF00FFFF00FFFF00
              FF00000000FFFF00000000FFFF0084840000FF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000FFFF00FFFF00FFFF0000FF00
              FFFF00FF000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00
              000000FFFF00FFFF0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FF00000000FFFF0000FF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              0000}
          end
        end
      end
      object pnlRightButtons: TPanel
        Left = 365
        Top = 0
        Width = 36
        Height = 22
        Align = alRight
        AutoSize = True
        BevelOuter = bvNone
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        object tlbDocButton: TToolBar
          Left = 0
          Top = 0
          Width = 36
          Height = 22
          Align = alRight
          AutoSize = True
          ButtonWidth = 36
          EdgeInner = esNone
          Images = dmMain.ilDocs
          TabOrder = 0
          object btnDocumentation: TToolButton
            Left = 0
            Top = 0
            Action = actTreeNodeDoc
          end
        end
      end
    end
  end
  inherited alActions: TActionList
    Left = 80
    Top = 8
    inherited actClearFieldValues: TAction
      ImageIndex = 102
    end
    object actInvokeTreeEditor: TAction
      ImageIndex = 101
      OnExecute = actInvokeTreeEditorExecute
      OnUpdate = actInvokeTreeEditorUpdate
    end
    object actTreeNodeDoc: TAction
      OnExecute = actTreeNodeDocExecute
      OnUpdate = actTreeNodeDocUpdate
    end
  end
  inherited dsData: TDataSource
    Left = 112
    Top = 8
  end
  object cdsTreeNode: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 168
    object cdsTreeNodeNODE_CODE: TAbmesFloatField
      FieldName = 'NODE_CODE'
      OnChange = cdsTreeNodeNODE_CODEChange
    end
    object cdsTreeNodeNODE_NAME: TAbmesWideStringField
      FieldName = 'NODE_NAME'
      OnChange = cdsTreeNodeNODE_NAMEChange
      OnGetText = cdsTreeNodeNODE_NAMEGetText
      Size = 100
    end
    object cdsTreeNodeNODE_NO: TAbmesWideStringField
      FieldName = 'NODE_NO'
      OnChange = cdsTreeNodeNODE_NOChange
      Size = 50
    end
    object cdsTreeNodeDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsTreeNodeDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsTreeNodeHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
      FieldValueType = fvtBoolean
    end
  end
  object dsTreeNode: TDataSource
    DataSet = cdsTreeNode
    Left = 200
  end
end
