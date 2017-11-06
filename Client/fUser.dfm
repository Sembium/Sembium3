inherited fmUser: TfmUser
  Caption = #1055#1086#1090#1088#1077#1073#1080#1090#1077#1083' - %s'
  ClientHeight = 197
  ClientWidth = 547
  ShowHint = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 162
    Width = 547
    inherited pnlOKCancel: TPanel
      Left = 279
    end
    inherited pnlClose: TPanel
      Left = 190
    end
    inherited pnlApply: TPanel
      Left = 458
      Visible = False
    end
  end
  object pnlUserData: TPanel [1]
    Left = 8
    Top = 8
    Width = 529
    Height = 145
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object lblUser: TLabel
      Left = 16
      Top = 16
      Width = 49
      Height = 13
      Caption = #1057#1083#1091#1078#1080#1090#1077#1083
      FocusControl = frEmployee
    end
    object chkIsDisabled: TAbmesDBCheckBox
      Left = 16
      Top = 113
      Width = 89
      Height = 17
      Caption = #1044#1077#1072#1082#1090#1080#1074#1080#1088#1072#1085
      DataField = 'IS_DISABLED'
      DataSource = dsData
      TabOrder = 2
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    inline frEmployee: TfrEmployeeFieldEditFrameBald
      Left = 16
      Top = 32
      Width = 497
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 0
      TabStop = True
      inherited gbEmployee: TGroupBox
        Width = 516
        inherited pnlEmployeeName: TPanel
          Width = 441
          inherited pnlRightButtons: TPanel
            Left = 405
          end
          inherited pnlEmpoyeeNameInner: TPanel
            Width = 405
            inherited edtEmployeeName: TDBEdit
              Width = 359
            end
            inherited cbEmployee: TJvDBLookupCombo
              Width = 404
            end
          end
        end
        inherited pnlPaddingRight: TPanel
          Left = 506
        end
      end
    end
    object cbExternalIdentifier: TDBComboBoxEh
      Left = 16
      Top = 79
      Width = 497
      Height = 21
      ControlLabel.Width = 60
      ControlLabel.Height = 13
      ControlLabel.Caption = #1055#1086#1090#1088#1077#1073#1080#1090#1077#1083
      ControlLabel.Visible = True
      DynProps = <>
      EmptyDataInfo.Text = #1042#1098#1074#1077#1076#1077#1090#1077' '#1090#1077#1083#1077#1092#1086#1085#1077#1085' '#1085#1086#1084#1077#1088' '#1080#1083#1080' '#1077#1084#1077#1081#1083' '#1072#1076#1088#1077#1089' ('#1087#1086#1085#1077' 6 '#1089#1080#1084#1074#1086#1083#1072')'
      EditButton.Visible = False
      EditButtons = <
        item
          Action = actClearExternalIdentifier
          DefaultAction = False
          Images.NormalImages = dmMain.ilActions
          Images.NormalIndex = 11
          Images.HotIndex = 11
          Images.PressedIndex = 11
          Images.DisabledIndex = 11
          ShortCut = 46
          Style = ebsGlyphEh
          DrawBackTime = edbtWhenHotEh
        end>
      ShowHint = True
      TabOrder = 1
      Visible = True
      OnChange = cbExternalIdentifierChange
      OnCloseUp = cbExternalIdentifierCloseUp
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1055#1086#1090#1088#1077#1073#1080#1090#1077#1083' - %s'
    end
    object actClearExternalIdentifier: TAction
      Caption = #1048#1079#1095#1080#1089#1090#1074#1072#1085#1077
      Hint = #1048#1079#1095#1080#1089#1090#1074#1072#1085#1077
      ImageIndex = 11
      OnExecute = actClearExternalIdentifierExecute
    end
  end
  inherited cdsData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conCompany
    Params = <
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvUser'
    object cdsDataEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
    end
    object cdsDataIS_DISABLED: TAbmesFloatField
      FieldName = 'IS_DISABLED'
      FieldValueType = fvtBoolean
    end
    object cdsDataEXTERNAL_IDENTIFIER: TAbmesWideStringField
      DisplayLabel = #1055#1086#1090#1088#1077#1073#1080#1090#1077#1083
      FieldName = 'EXTERNAL_IDENTIFIER'
      Size = 100
    end
  end
  object tmrFindExternalIdentifier: TTimer
    OnTimer = tmrFindExternalIdentifierTimer
    Left = 320
    Top = 72
  end
end
