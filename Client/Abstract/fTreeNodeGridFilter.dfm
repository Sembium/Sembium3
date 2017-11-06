inherited frTreeNodeGridFilter: TfrTreeNodeGridFilter
  inherited grpTreeNodeFilter: TGroupBox
    inherited pnlNodes: TPanel
      object pnlNodesButtons: TPanel
        Left = 336
        Top = 0
        Width = 25
        Height = 76
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        object btnAddNode: TSpeedButton
          Left = 0
          Top = 0
          Width = 25
          Height = 25
          Action = actAddNode
          Flat = True
        end
        object btnDelNode: TSpeedButton
          Left = 0
          Top = 24
          Width = 25
          Height = 25
          Action = actDelNode
          Flat = True
        end
        object btnEditNode: TSpeedButton
          Left = 0
          Top = 48
          Width = 25
          Height = 25
          Action = actEditNode
          Flat = True
        end
      end
      object grdChosenNodes: TAbmesDBGrid
        Left = 0
        Top = 0
        Width = 336
        Height = 76
        Align = alClient
        DataGrouping.GroupLevels = <>
        DataSource = dsChosenNodes
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'Microsoft Sans Serif'
        FooterFont.Style = []
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        RowDetailPanel.Color = clBtnFace
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Microsoft Sans Serif'
        TitleFont.Style = []
        OnDblClick = grdChosenNodesDblClick
        Columns = <
          item
            EditButtons = <>
            FieldName = 'NODE_NAME'
            Footers = <>
            Width = 238
          end
          item
            EditButtons = <>
            FieldName = 'NODE_NO'
            Footers = <>
            Width = 63
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  inherited alActions: TActionList
    object actAddNode: TAction
      Hint = #1044#1086#1073#1072#1074#1103#1085#1077
      ImageIndex = 4
      OnExecute = actAddNodeExecute
      OnUpdate = actAddNodeUpdate
    end
    object actDelNode: TAction
      Hint = #1048#1079#1090#1088#1080#1074#1072#1085#1077
      ImageIndex = 5
      OnExecute = actDelNodeExecute
      OnUpdate = actDelNodeUpdate
    end
    object actEditNode: TAction
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077
      ImageIndex = 6
      OnExecute = actEditNodeExecute
      OnUpdate = actEditNodeUpdate
    end
  end
  inherited cdsChosenNodes: TAbmesClientDataSet
    FieldDefs = <
      item
        Name = 'NODE_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'NODE_NAME'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 100
      end>
  end
end
