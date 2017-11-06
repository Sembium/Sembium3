inherited fmProcessAction: TfmProcessAction
  Caption = #1055#1086#1079#1085#1072#1074#1072#1090#1077#1083#1085#1072' '#1060#1091#1085#1082#1094#1080#1103' - %s'
  ClientHeight = 180
  ClientWidth = 664
  DesignSize = (
    664
    180)
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 648
    Height = 129
    Anchors = [akLeft, akTop, akRight]
  end
  object lblNo: TLabel [1]
    Left = 24
    Top = 16
    Width = 14
    Height = 13
    Caption = 'No'
  end
  object lblComputerName: TLabel [2]
    Left = 103
    Top = 16
    Width = 112
    Height = 13
    Caption = #1055#1098#1083#1085#1086' '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
  end
  object lblMaxAllowedConnections: TLabel [3]
    Left = 459
    Top = 16
    Width = 115
    Height = 13
    Caption = #1050#1088#1072#1090#1082#1086' '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
  end
  inherited pnlBottomButtons: TPanel
    Top = 145
    Width = 664
    TabOrder = 5
    inherited pnlOKCancel: TPanel
      Left = 396
    end
    inherited pnlClose: TPanel
      Left = 307
    end
    inherited pnlApply: TPanel
      Left = 575
      Visible = False
    end
  end
  object edtProcessActionNo: TDBEdit [5]
    Left = 24
    Top = 32
    Width = 68
    Height = 21
    DataField = 'PRC_ACTION_NO'
    DataSource = dsData
    TabOrder = 0
  end
  object edtProcessActionName: TDBEdit [6]
    Left = 103
    Top = 32
    Width = 338
    Height = 21
    DataField = 'PRC_ACTION_NAME'
    DataSource = dsData
    TabOrder = 1
  end
  object edtProcessActionAbbrev: TDBEdit [7]
    Left = 459
    Top = 32
    Width = 124
    Height = 21
    DataField = 'PRC_ACTION_ABBREV'
    DataSource = dsData
    TabOrder = 2
  end
  object tbDocButton: TToolBar [8]
    Left = 601
    Top = 32
    Width = 39
    Height = 22
    Align = alNone
    ButtonWidth = 36
    EdgeInner = esNone
    EdgeOuter = esNone
    Images = dmMain.ilDocs
    TabOrder = 3
    object btnDoc: TToolButton
      Left = 0
      Top = 0
      Action = actDoc
      ParentShowHint = False
      ShowHint = True
    end
  end
  object gbApplicability: TGroupBox [9]
    Left = 24
    Top = 64
    Width = 617
    Height = 57
    Caption = ' '#1054#1073#1093#1074#1072#1090' '#1085#1072' '#1087#1088#1080#1083#1086#1078#1077#1085#1080#1077' '#1085#1072' '#1055#1086#1079#1085#1072#1074#1072#1090#1077#1083#1085#1072#1090#1072' '#1060#1091#1085#1082#1094#1080#1103' '
    TabOrder = 4
    object chbIsBaseAction: TAbmesDBCheckBox
      Left = 16
      Top = 24
      Width = 169
      Height = 17
      Caption = #1047#1072' '#1055#1086#1079#1085#1072#1074#1072#1090#1077#1083#1085#1080' '#1054#1087#1077#1088#1072#1090#1086#1088#1080
      DataField = 'IS_BASE_ACTION'
      DataSource = dsData
      Enabled = False
      TabOrder = 0
      ValueChecked = 'True'
      ValueUnchecked = 'False'
      ImmediateUpdateField = True
    end
    object chbIsConcreteAction: TAbmesDBCheckBox
      Left = 232
      Top = 24
      Width = 169
      Height = 17
      Caption = #1047#1072' '#1055#1086#1079#1085#1072#1074#1072#1090#1077#1083#1085#1080' '#1054#1087#1077#1088#1072#1085#1090#1080
      DataField = 'IS_CONCRETE_ACTION'
      DataSource = dsData
      TabOrder = 1
      ValueChecked = 'True'
      ValueUnchecked = 'False'
      ImmediateUpdateField = True
    end
    object chbIsProjectAction: TAbmesDBCheckBox
      Left = 440
      Top = 24
      Width = 169
      Height = 17
      Caption = #1047#1072' '#1055#1088#1086#1077#1082#1090#1080
      DataField = 'IS_PROJECT_ACTION'
      DataSource = dsData
      TabOrder = 2
      ValueChecked = 'True'
      ValueUnchecked = 'False'
      ImmediateUpdateField = True
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1055#1086#1079#1085#1072#1074#1072#1090#1077#1083#1085#1072' '#1060#1091#1085#1082#1094#1080#1103' - %s'
    end
    object actDoc: TAction
      Hint = #1052#1048#1048#1054' '#1085#1072' '#1055#1086#1079#1085#1072#1074#1072#1090#1077#1083#1085#1072' '#1060#1091#1085#1082#1094#1080#1103
      ImageIndex = 98
      OnExecute = actDocExecute
      OnUpdate = actDocUpdate
    end
  end
end
