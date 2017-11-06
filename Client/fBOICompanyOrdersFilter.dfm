inherited fmBOICompanyOrdersFilter: TfmBOICompanyOrdersFilter
  ClientHeight = 556
  ExplicitHeight = 582
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 521
    ExplicitTop = 521
  end
  inherited gbBudgetOrder: TGroupBox
    inherited lblFormCaption: TLabel
      Width = 463
      Caption = 
        '%s '#1085#1072' '#1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1088#1076#1077#1088#1080' - '#1054#1073#1089#1083#1091#1078#1074#1072#1097#1080' '#1087#1086' '#1051#1080#1084#1080#1090#1080' '#1086#1090' %BudgetOrderN' +
        'amePlural% '#1079#1072' '#1057#1088#1077#1076#1072
      ExplicitWidth = 463
    end
  end
  inherited gbBOIOrders: TGroupBox
    Height = 185
    ExplicitHeight = 185
    inherited frConsumerDept: TfrDeptFieldEditFrame
      Width = 417
      ExplicitWidth = 417
      inherited gbTreeNode: TGroupBox
        Width = 417
        ExplicitWidth = 417
        inherited pnlTreeNode: TPanel
          Width = 401
          ExplicitWidth = 401
          inherited pnlTreeNodeName: TPanel
            Width = 254
            ExplicitWidth = 254
            inherited edtTreeNodeName: TDBEdit
              Width = 253
              ExplicitWidth = 253
            end
          end
          inherited pnlTreeNodeNo: TPanel
            Left = 254
            ExplicitLeft = 254
          end
          inherited pnlRightButtons: TPanel
            Left = 365
            ExplicitLeft = 365
          end
        end
      end
    end
    inherited gbBOIOPlanDate: TGroupBox
      Left = 400
      TabOrder = 4
      ExplicitLeft = 400
    end
    inline frPartner: TfrPartnerFieldEditFrame
      Left = 8
      Top = 72
      Width = 385
      Height = 49
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 49
      Constraints.MinHeight = 49
      TabOrder = 3
      TabStop = True
      ExplicitLeft = 8
      ExplicitTop = 72
      ExplicitWidth = 385
      inherited gbPartner: TGroupBox
        Width = 385
        ExplicitWidth = 385
        inherited pnlNameAndButtons: TPanel
          Width = 296
          ExplicitWidth = 296
          inherited pnlRightButtons: TPanel
            Left = 260
            ExplicitLeft = 260
            inherited tlbDocButton: TToolBar
              Height = 32
              ExplicitHeight = 32
            end
          end
          inherited pnlPartnerName: TPanel
            Width = 260
            ExplicitWidth = 260
            DesignSize = (
              260
              32)
            inherited edtPartnerName: TDBEdit
              Width = 93
              ExplicitWidth = 93
            end
            inherited cbPartner: TJvDBLookupCombo
              Width = 261
              ExplicitWidth = 261
            end
          end
        end
        inherited pnlPaddingRight: TPanel
          Left = 377
          ExplicitLeft = 377
        end
      end
    end
    object gbDocumentIDText: TGroupBox
      Left = 8
      Top = 128
      Width = 385
      Height = 49
      Caption = ' ID '#1044#1086#1082#1091#1084#1077#1085#1090' '
      TabOrder = 5
      object edtDocumentIDText: TDBEdit
        Left = 8
        Top = 16
        Width = 369
        Height = 21
        DataField = 'DOCUMENT_ID_TEXT'
        DataSource = dsData
        TabOrder = 0
      end
    end
    object gbBOIOAccountDate: TGroupBox
      Left = 400
      Top = 128
      Width = 209
      Height = 49
      Caption = ' '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1054#1090#1095#1077#1090#1085#1072' '#1076#1072#1090#1072' '#1085#1072' %BudgetOrderItemOrderAbbrev% '
      TabOrder = 6
      inline frBOIOAccountDate: TfrDateIntervalFrame
        Left = 32
        Top = 16
        Width = 145
        Height = 21
        Constraints.MaxHeight = 21
        Constraints.MaxWidth = 145
        Constraints.MinHeight = 21
        Constraints.MinWidth = 145
        TabOrder = 0
        TabStop = True
        ExplicitLeft = 32
        ExplicitTop = 16
      end
    end
  end
  inherited pnlFilterByBOIOrdersExistance: TPanel
    Width = 353
    ExplicitWidth = 353
    inherited chbFilterByBOIOrdersExistance: TAbmesDBCheckBox
      Width = 349
      Caption = ' '#1060#1080#1083#1090#1088#1080#1088#1072#1085#1077' '#1087#1086' '#1057#1098#1076#1098#1088#1078#1072#1085#1077' '#1085#1072' '#1054#1088#1076#1077#1088#1080' - '#1054#1073#1089#1083#1091#1078#1074#1072#1097#1080' '#1087#1086' '#1051#1080#1084#1080#1090
      ExplicitWidth = 349
    end
  end
end
