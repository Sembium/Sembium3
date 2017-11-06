inherited frDateIntervalFrame: TfrDateIntervalFrame
  Width = 145
  Height = 21
  DesignSize = (
    145
    21)
  object edtInterval: TJvDBComboEdit [0]
    Left = 0
    Top = 0
    Width = 145
    Height = 21
    AutoSize = False
    BeepOnError = False
    Color = 16115403
    DataField = '_BEGIN_DATE'
    DataSource = dsDates
    DirectInput = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = []
    ImageIndex = 118
    Images = dmMain.ilActions
    ButtonWidth = 18
    Anchors = [akLeft, akTop, akRight, akBottom]
    ParentFont = False
    PopupMenu = pmCopyPaste
    TabOrder = 0
    OnButtonClick = edtIntervalButtonClick
    OnDblClick = edtIntervalDblClick
    OnKeyPress = edtIntervalKeyPress
    OnKeyUp = edtIntervalKeyUp
  end
  inherited alActions: TActionList
    Left = 8
    object actEditDateInterval: TAction
      Caption = 'actEditDateInterval'
      SecondaryShortCuts.Strings = (
        'Alt+Down')
      OnExecute = actEditDateIntervalExecute
    end
  end
  inherited dsData: TDataSource
    Left = 24
  end
  object cdsDates: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    AfterPost = cdsDatesAfterPost
    OnCalcFields = cdsDatesCalcFields
    Left = 64
    object cdsDatesBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
      OnChange = cdsDatesBEGIN_DATEChange
      DisplayFormat = 'ww\e\iiii'
      EditMask = '00\\0\\0000;1; '
      AbmesEditFormat = 'ww\e\iiii'
    end
    object cdsDatesEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
      OnChange = cdsDatesEND_DATEChange
      DisplayFormat = 'ww\e\iiii'
      EditMask = '00\\0\\0000;1; '
      AbmesEditFormat = 'ww\e\iiii'
    end
    object cdsDatesDAYS: TAbmesFloatField
      FieldName = 'DAYS'
      OnChange = cdsDatesDAYSChange
    end
    object cdsDatesWORKDAYS: TAbmesFloatField
      FieldName = 'WORKDAYS'
      OnChange = cdsDatesWORKDAYSChange
    end
    object cdsDates_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldKind = fkCalculated
      FieldName = '_BEGIN_DATE'
      OnGetText = cdsDates_BEGIN_DATEGetText
      Calculated = True
    end
  end
  object dsDates: TDataSource
    DataSet = cdsDates
    Left = 80
  end
  object pmCopyPaste: TPopupMenu
    Left = 104
    Top = 8
    object miCut: TMenuItem
      Action = actEditCut
    end
    object miCopy: TMenuItem
      Action = actEditCopy
    end
    object miPaste: TMenuItem
      Action = actEditPaste
    end
    object miDelete: TMenuItem
      Action = actEditDelete
    end
  end
  object alCopyPaste: TActionList
    Left = 120
    Top = 8
    object actEditCut: TAction
      Caption = 'Cut'
      ShortCut = 16472
      OnExecute = actEditCutExecute
      OnUpdate = actEditCutUpdate
    end
    object actEditCopy: TAction
      Caption = 'Copy'
      ShortCut = 16451
      OnExecute = actEditCopyExecute
      OnUpdate = actEditCopyUpdate
    end
    object actEditPaste: TAction
      Caption = 'Paste'
      ShortCut = 16470
      OnExecute = actEditPasteExecute
      OnUpdate = actEditPasteUpdate
    end
    object actEditDelete: TAction
      Caption = 'Delete'
      ShortCut = 46
      OnExecute = actEditDeleteExecute
      OnUpdate = actEditDeleteUpdate
    end
  end
  object tmrHint: TTimer
    Enabled = False
    Interval = 500
    OnTimer = tmrHintTimer
    Left = 96
    Top = 8
  end
end
