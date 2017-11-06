inherited fmBOIProductOrdersFilter: TfmBOIProductOrdersFilter
  ClientHeight = 629
  ExplicitHeight = 654
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 594
    ExplicitTop = 594
  end
  inherited gbBudgetOrder: TGroupBox
    inherited lblFormCaption: TLabel
      Width = 454
      Caption = 
        '%s '#1085#1072' '#1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1088#1076#1077#1088#1080' - '#1055#1088#1077#1076#1084#1077#1090#1085#1080' '#1087#1086' '#1051#1080#1084#1080#1090#1080' '#1086#1090' %BudgetOrderNa' +
        'mePlural% '#1079#1072' '#1057#1088#1077#1076#1072
      ExplicitWidth = 454
    end
  end
  inherited gbBOIOrders: TGroupBox
    Height = 257
    Caption = ' '
    ExplicitHeight = 257
    inherited gbBOIOStatus: TGroupBox
      Width = 170
      ExplicitWidth = 170
      inherited lblDash3: TLabel
        Left = 83
        ExplicitLeft = 83
      end
      inherited cbMinBOIOStatus: TJvDBComboBox
        Left = 32
        ExplicitLeft = 32
      end
      inherited cbMaxBOIOStatus: TJvDBComboBox
        Left = 96
        ExplicitLeft = 96
      end
    end
    inherited frConsumerDept: TfrDeptFieldEditFrame
      Left = 8
      Top = 136
      Width = 217
      TabOrder = 3
      ExplicitLeft = 8
      ExplicitTop = 136
      ExplicitWidth = 217
      inherited gbTreeNode: TGroupBox
        Width = 217
        ExplicitWidth = 217
        inherited pnlTreeNode: TPanel
          Width = 201
          ExplicitWidth = 201
          inherited pnlTreeNodeName: TPanel
            Width = 54
            ExplicitWidth = 54
            inherited edtTreeNodeName: TDBEdit
              Width = 53
              ExplicitWidth = 53
            end
          end
          inherited pnlTreeNodeNo: TPanel
            Left = 54
            ExplicitLeft = 54
          end
          inherited pnlRightButtons: TPanel
            Left = 165
            ExplicitLeft = 165
          end
        end
      end
    end
    inherited gbBOIOPlanDate: TGroupBox
      Width = 217
      TabOrder = 2
      ExplicitWidth = 217
    end
    inherited gbBOIOrderCode: TGroupBox
      Left = 184
      ExplicitLeft = 184
    end
    inline frStore: TfrDeptFieldEditFrame
      Left = 8
      Top = 200
      Width = 217
      Height = 49
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 49
      TabOrder = 4
      TabStop = True
      ExplicitLeft = 8
      ExplicitTop = 200
      ExplicitWidth = 217
      inherited gbTreeNode: TGroupBox
        Width = 217
        Caption = ' '#1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086' '
        ExplicitWidth = 217
        inherited pnlTreeNode: TPanel
          Width = 201
          ExplicitWidth = 201
          inherited pnlTreeNodeName: TPanel
            Width = 54
            ExplicitWidth = 54
            inherited edtTreeNodeName: TDBEdit
              Width = 53
              ExplicitWidth = 53
            end
          end
          inherited pnlTreeNodeNo: TPanel
            Left = 54
            ExplicitLeft = 54
          end
          inherited pnlRightButtons: TPanel
            Left = 165
            ExplicitLeft = 165
          end
        end
      end
    end
    inline frParamProductFilter: TfrParamProductFilter
      Left = 232
      Top = 16
      Width = 377
      Height = 233
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      TabStop = True
      ExplicitLeft = 232
      ExplicitTop = 16
      inherited grpTreeNodeFilter: TGroupBox
        inherited lblUsedBy: TLabel
          Width = 61
          ExplicitWidth = 61
        end
        inherited lblProductOrigin: TLabel
          Width = 23
          ExplicitWidth = 23
        end
        inherited lblCommonStatus: TLabel
          Width = 45
          ExplicitWidth = 45
        end
        inherited lblIsActive: TLabel
          Width = 53
          ExplicitWidth = 53
        end
        inherited pnlNodes: TPanel
          inherited grdChosenNodes: TAbmesDBGrid
            FooterFont.Name = 'Microsoft Sans Serif'
            TitleFont.Name = 'Microsoft Sans Serif'
          end
        end
        inherited pnlParams: TPanel
          inherited grdChosenNodeParams: TAbmesDBGrid
            FooterFont.Name = 'Microsoft Sans Serif'
            TitleFont.Name = 'Microsoft Sans Serif'
          end
        end
      end
    end
  end
  inherited pnlFilterByBOIOrdersExistance: TPanel
    Width = 345
    ExplicitWidth = 345
    inherited chbFilterByBOIOrdersExistance: TAbmesDBCheckBox
      Width = 341
      Caption = ' '#1060#1080#1083#1090#1088#1080#1088#1072#1085#1077' '#1087#1086' '#1057#1098#1076#1098#1088#1078#1072#1085#1077' '#1085#1072' '#1054#1088#1076#1077#1088#1080' - '#1055#1088#1077#1076#1084#1077#1090#1085#1080' '#1087#1086' '#1051#1080#1084#1080#1090
      ExplicitWidth = 341
    end
  end
  inherited cdsFilterVariants: TAbmesClientDataSet
    Left = 8
    Top = 592
  end
  inherited dsFilterVariants: TDataSource
    Left = 32
    Top = 592
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Left = 56
    Top = 608
  end
end
