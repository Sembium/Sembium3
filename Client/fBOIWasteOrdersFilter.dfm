inherited fmBOIWasteOrdersFilter: TfmBOIWasteOrdersFilter
  ClientHeight = 500
  ExplicitHeight = 525
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 465
    ExplicitTop = 409
  end
  inherited gbBudgetOrder: TGroupBox
    inherited lblFormCaption: TLabel
      Width = 474
      Caption = 
        '%s '#1085#1072' '#1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1088#1076#1077#1088#1080' - '#1055#1088#1077#1086#1094#1077#1085#1103#1074#1072#1097#1080' '#1087#1086' '#1051#1080#1084#1080#1090#1080' '#1086#1090' %BudgetOrde' +
        'rNamePlural% '#1079#1072' '#1057#1088#1077#1076#1072
      ExplicitWidth = 474
    end
  end
  inherited gbBOIOrders: TGroupBox
    Height = 129
    Caption = '  '
    ExplicitHeight = 129
    inherited frConsumerDept: TfrDeptFieldEditFrame
      Left = 224
      Width = 385
      ExplicitLeft = 224
      ExplicitWidth = 385
      inherited gbTreeNode: TGroupBox
        Width = 385
        ExplicitWidth = 417
        inherited pnlTreeNode: TPanel
          Width = 369
          ExplicitWidth = 233
          inherited pnlTreeNodeName: TPanel
            Width = 222
            ExplicitWidth = 86
            inherited edtTreeNodeName: TDBEdit
              Width = 221
              ExplicitWidth = 85
            end
          end
          inherited pnlTreeNodeNo: TPanel
            Left = 222
            ExplicitLeft = 86
          end
          inherited pnlRightButtons: TPanel
            Left = 333
            ExplicitLeft = 197
          end
        end
      end
    end
    inherited gbBOIOrderCode: TGroupBox
      Width = 73
      ExplicitWidth = 73
      inherited edtBOIOrderCode: TDBEdit
        Width = 57
        ExplicitWidth = 57
      end
    end
  end
  inherited pnlFilterByBOIOrdersExistance: TPanel
    Width = 361
    ExplicitWidth = 361
    inherited chbFilterByBOIOrdersExistance: TAbmesDBCheckBox
      Width = 357
      Caption = ' '#1060#1080#1083#1090#1088#1080#1088#1072#1085#1077' '#1087#1086' '#1057#1098#1076#1098#1088#1078#1072#1085#1077' '#1085#1072' '#1054#1088#1076#1077#1088#1080' - '#1055#1088#1077#1086#1094#1077#1085#1103#1074#1072#1097#1080' '#1087#1086' '#1051#1080#1084#1080#1090
      ExplicitWidth = 357
    end
  end
  inherited cdsFilterVariants: TAbmesClientDataSet
    Top = 456
  end
  inherited dsFilterVariants: TDataSource
    Top = 456
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Top = 472
  end
end
