inherited fmPriceListFilter: TfmPriceListFilter
  ClientHeight = 546
  ClientWidth = 617
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 511
    Width = 617
    TabOrder = 6
    inherited pnlOKCancel: TPanel
      Left = 349
    end
    inherited pnlClose: TPanel
      Left = 260
    end
    inherited pnlApply: TPanel
      Left = 528
    end
  end
  object pnlTop: TPanel [1]
    Left = 0
    Top = 122
    Width = 617
    Height = 241
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object pnlProducts: TPanel
      Left = 385
      Top = 0
      Width = 393
      Height = 241
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      inline frParamProductFilter: TfrParamProductFilter
        Left = 8
        Top = 8
        Width = 377
        Height = 233
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TabStop = True
        inherited grpTreeNodeFilter: TGroupBox
          inherited lblUsedBy: TLabel
            Width = 61
          end
          inherited lblProductOrigin: TLabel
            Width = 23
          end
          inherited lblCommonStatus: TLabel
            Width = 45
          end
          inherited lblIsActive: TLabel
            Width = 53
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
    object pnlCompanies: TPanel
      Left = 0
      Top = 0
      Width = 385
      Height = 241
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 1
      inline frCompanyFilter: TfrCompanyFilter
        Left = 8
        Top = 8
        Width = 377
        Height = 233
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TabStop = True
        inherited grpTreeNodeFilter: TGroupBox
          Caption = ' %Partner% '
          inherited pnlChosenCompanies: TPanel
            inherited grdChosenCompanies: TAbmesDBGrid
              FooterFont.Name = 'Microsoft Sans Serif'
              TitleFont.Name = 'Microsoft Sans Serif'
            end
          end
          inherited pnlNotChosenCompanies: TPanel
            inherited grdNotChosenCompanies: TAbmesDBGrid
              FooterFont.Name = 'Microsoft Sans Serif'
              TitleFont.Name = 'Microsoft Sans Serif'
            end
          end
          inherited pnlBottom: TPanel
            inherited lblCommonStatus: TLabel
              Width = 45
            end
          end
        end
      end
    end
  end
  inline frDateUnitsInterval: TfrDateUnitsIntervalEditFrame [2]
    Left = 8
    Top = 368
    Width = 601
    Height = 136
    TabOrder = 5
    TabStop = True
    inherited gbTimeUnits: TGroupBox
      inherited lblTimeUnit: TLabel
        Width = 84
      end
      inherited lblTimeUnitCount: TLabel
        Width = 111
      end
    end
  end
  object pnlObject: TPanel [3]
    Left = 0
    Top = 57
    Width = 617
    Height = 65
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object pnlPartner: TPanel
      Left = 0
      Top = 0
      Width = 620
      Height = 65
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      inline frPartner: TfrPartnerExFieldEditFrame
        Left = 8
        Top = 5
        Width = 601
        Height = 60
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        Constraints.MaxHeight = 155
        Constraints.MinHeight = 49
        TabOrder = 0
        TabStop = True
        inherited gbPartner: TGroupBox
          Width = 601
          Caption = ' %Partner% '
          inherited pnlNameAndButtons: TPanel
            Width = 176
            inherited pnlRightButtons: TPanel
              Left = 140
            end
            inherited pnlPartnerName: TPanel
              Width = 140
              inherited edtPartnerName: TDBEdit
                Width = 127
              end
              inherited cbPartner: TJvDBLookupCombo
                Width = 141
              end
            end
            inherited pnlNameAndButtonsTop: TPanel
              Width = 176
              inherited lblPartner: TLabel
                Width = 76
                Margins.Bottom = 0
              end
            end
          end
          inherited pnlPaddingRight: TPanel
            Left = 480
          end
          inherited pnlPartnerCode: TPanel
            inherited lblPartnerCode: TLabel
              Width = 19
              Margins.Bottom = 0
            end
          end
          inherited frPartnerStatus: TfrCompanyStatus
            inherited lblCurrentStatus: TLabel
              Width = 34
              Margins.Bottom = 0
            end
            inherited lblReachMonths: TLabel
              Width = 6
              Margins.Bottom = 0
            end
            inherited lblExistanceMonths: TLabel
              Width = 6
              Margins.Bottom = 0
            end
            inherited lblMonths: TLabel
              Width = 11
              Margins.Bottom = 0
            end
            inherited dsData: TDataSource
              DataSet = frPartner.cdsPartner
            end
          end
          inherited pnlPriority: TPanel
            inherited lblPriority: TLabel
              Width = 38
              Margins.Bottom = 0
            end
          end
          inherited pnlCountry: TPanel
            Left = 486
            inherited lblCountry: TLabel
              Margins.Bottom = 0
            end
          end
          inherited pnlParRelButton: TPanel
            Left = 526
          end
        end
      end
    end
    object pnlProduct: TPanel
      Left = 620
      Top = 0
      Width = 620
      Height = 65
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 1
      inline frProduct: TfrProductExFieldEditFrame
        Left = 8
        Top = 5
        Width = 601
        Height = 60
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        Constraints.MaxHeight = 549
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TabStop = True
        inherited gbTreeNode: TGroupBox
          Width = 601
          Height = 60
          inherited pnlTreeNode: TPanel
            Width = 7
            Height = 43
            inherited pnlTreeNodeName: TPanel
              Width = 5
              Height = 27
              inherited edtTreeNodeName: TDBEdit
                Width = 4
              end
            end
            inherited pnlTreeNodeNo: TPanel
              Left = -163
              Height = 27
              inherited pnlEditButtons: TPanel
                Height = 23
              end
            end
            inherited pnlRightButtons: TPanel
              Left = -52
              Height = 27
              inherited tlbDocButton: TToolBar
                Height = 27
              end
            end
            inherited pnlProductLabels: TPanel
              Width = 7
              inherited lblTreeNodeName: TLabel
                Margins.Bottom = 0
              end
              inherited lblTreeNodeNo: TLabel
                Margins.Bottom = 0
              end
            end
          end
          inherited pnlLeft: TPanel
            Height = 43
            inherited pnlSpecState: TPanel
              Height = 43
              inherited lblSpecState: TLabel
                Margins.Bottom = 0
              end
            end
            inherited pnlLeftLeft: TPanel
              Height = 43
            end
            inherited pnlPriority: TPanel
              Height = 43
              inherited lblPriorityNo: TLabel
                Margins.Bottom = 0
              end
            end
          end
          inherited pnlRight: TPanel
            Left = -163
            Height = 43
            inherited pnlRightLeft: TPanel
              Height = 43
            end
            inherited pnlCommonStatus: TPanel
              Height = 43
              inherited lblProductCommonStatus: TLabel
                Margins.Bottom = 0
              end
              inherited lblProductCommonProductLevels: TLabel
                Margins.Bottom = 0
              end
            end
            inherited pnlPartnerProductNames: TPanel
              Height = 43
              inherited lblPartnerProductNames: TLabel
                Margins.Bottom = 0
              end
            end
            inherited pnlProductPeriodsButton: TPanel
              Height = 43
            end
            inherited pnlNotes: TPanel
              Height = 43
              inherited lblNotes: TLabel
                Margins.Bottom = 0
              end
            end
            inherited pnlProductOrigin: TPanel
              Height = 43
              inherited lblProductOrigin: TLabel
                Margins.Bottom = 0
              end
            end
            inherited pnlMeasures: TPanel
              Height = 43
              inherited pnlMeasure: TPanel
                Height = 43
                inherited lblMeasure: TLabel
                  Margins.Bottom = 0
                end
              end
              inherited pnlAccountMeasure: TPanel
                Height = 43
                inherited lblAccountMeasure: TLabel
                  Margins.Bottom = 0
                end
              end
              inherited pnlTechMeasure: TPanel
                Height = 43
                inherited lblTechMeasure: TLabel
                  Margins.Bottom = 0
                end
              end
            end
            inherited pnlEngineeringButtons: TPanel
              Height = 43
              inherited pnlEngineeringButtonsRightMargin: TPanel
                Height = 28
              end
              inherited tlbEngineeringButtons: TToolBar
                Height = 28
              end
            end
          end
        end
      end
    end
  end
  object gbObtainmentType: TGroupBox [4]
    Left = 392
    Top = 129
    Width = 217
    Height = 49
    Caption = ' '#1062#1077#1085#1080' '#1079#1072' '
    TabOrder = 3
    DesignSize = (
      217
      49)
    object cbObtainmentType: TJvDBLookupCombo
      Left = 8
      Top = 16
      Width = 201
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      DataField = '_OBTAINMENT_TYPE_NAME'
      DataSource = dsData
      TabOrder = 0
    end
  end
  object pnlOrientation: TPanel [5]
    Left = 0
    Top = 0
    Width = 617
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object gbOrientation: TGroupBox
      Left = 8
      Top = 8
      Width = 201
      Height = 49
      Caption = ' '#1054#1088#1080#1077#1085#1090#1072#1094#1080#1103' '
      TabOrder = 0
      DesignSize = (
        201
        49)
      object cbOrientation: TJvDBComboBox
        Left = 8
        Top = 16
        Width = 185
        Height = 21
        DataField = 'PAR_REL_PRODUCT_ORIENTATION'
        DataSource = dsData
        Anchors = [akLeft, akTop, akRight]
        Items.Strings = (
          #1057#1091#1073#1077#1082#1090#1086#1074#1072
          #1054#1073#1077#1082#1090#1086#1074#1072)
        TabOrder = 0
        Values.Strings = (
          '0'
          '1')
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
        ListSettings.OutfilteredValueFont.Style = []
      end
    end
    object gbRequirePrpp: TGroupBox
      Left = 216
      Top = 8
      Width = 393
      Height = 49
      Caption = ' '#1056#1077#1078#1080#1084' '#1085#1072' '#1062#1077#1085#1080' '
      TabOrder = 1
      DesignSize = (
        393
        49)
      object cbRequirePrpp: TJvDBComboBox
        Left = 8
        Top = 16
        Width = 377
        Height = 21
        DataField = 'REQUIRE_PRPP'
        DataSource = dsData
        Anchors = [akLeft, akTop, akRight]
        Items.Strings = (
          #1062#1077#1085#1080' '#1079#1072' '#1074#1089#1080#1095#1082#1080
          #1062#1077#1085#1080' '#1089#1072#1084#1086' '#1079#1072' '#1091#1095#1072#1089#1090#1074#1072#1097#1080' '#1074' '#1048#1048#1056)
        TabOrder = 0
        Values.Strings = (
          '0'
          '1')
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
        ListSettings.OutfilteredValueFont.Style = []
      end
    end
  end
  object gbShowEmptyLines: TGroupBox [6]
    Left = 392
    Top = 185
    Width = 217
    Height = 32
    TabOrder = 4
    object chbShowEmptyLines: TAbmesDBCheckBox
      Left = 8
      Top = 8
      Width = 169
      Height = 17
      Caption = #1055#1086#1082#1072#1079#1074#1072#1085#1077' '#1085#1072' '#1087#1088#1072#1079#1085#1080' '#1088#1077#1076#1086#1074#1077
      DataField = 'SHOW_EMPTY_LINES'
      DataSource = dsData
      TabOrder = 0
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
  end
  inherited alActions: TActionList [7]
    Left = 464
  end
  inherited dsData: TDataSource [8]
    Left = 376
  end
  inherited cdsData: TAbmesClientDataSet [9]
    Left = 344
  end
  inherited cdsFilterVariants: TAbmesClientDataSet [10]
    Left = 32
    Top = 384
  end
  inherited dsFilterVariants: TDataSource [11]
    Left = 56
    Top = 384
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Left = 80
    Top = 400
  end
end
