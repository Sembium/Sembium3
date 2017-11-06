inherited TreeSplitForm: TTreeSplitForm
  Top = 155
  Caption = 'TreeSplitForm'
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  object sptMain: TSplitter [0]
    Left = 257
    Top = 26
    Width = 2
    Height = 275
    MinSize = 50
  end
  inherited pnlBottomButtons: TPanel
    TabOrder = 3
  end
  inherited pnlTree: TPanel
    Width = 257
    Align = alLeft
    ExplicitWidth = 257
    inherited tvTree: TTreeView
      Width = 257
      ExplicitWidth = 257
    end
  end
  inherited clbMain: TCoolBar
    Bands = <
      item
        Control = cbParents
        ImageIndex = -1
        MinHeight = 22
        MinWidth = 150
        Width = 219
      end
      item
        Break = False
        Control = tlbButtons
        ImageIndex = -1
        MinHeight = 22
        MinWidth = 54
        Width = 312
      end>
    ExplicitWidth = 535
    inherited tlbButtons: TToolBar [0]
      Left = 230
      Width = 299
      ExplicitLeft = 230
      ExplicitWidth = 299
    end
    inherited cbParents: TTreeParentsComboBox [1]
      Width = 215
      ExplicitWidth = 215
    end
  end
  object pnlDetails: TPanel [4]
    Left = 259
    Top = 26
    Width = 276
    Height = 275
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitWidth = 278
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = 'TreeSplitForm'
    end
  end
  inherited cdsTreeNode: TAbmesClientDataSet
    Params = <
      item
        DataType = ftFloat
        Name = 'NODE_ID'
        ParamType = ptInput
      end>
  end
end
