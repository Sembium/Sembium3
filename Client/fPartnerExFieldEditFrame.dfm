inherited frPartnerExFieldEditFrame: TfrPartnerExFieldEditFrame
  Width = 691
  Height = 60
  Constraints.MaxHeight = 155
  inherited gbPartner: TGroupBox
    Width = 691
    Height = 60
    inherited pnlNameAndButtons: TPanel
      Left = 304
      Width = 266
      Height = 43
      TabOrder = 4
      inherited pnlRightButtons: TPanel
        Left = 230
        Top = 15
        Height = 28
        inherited tlbDocButton: TToolBar
          Height = 28
          inherited btnDocumentation: TToolButton
            Wrap = True
          end
        end
      end
      inherited pnlPartnerName: TPanel
        Top = 15
        Width = 230
        Height = 28
        DesignSize = (
          230
          28)
        inherited edtPartnerName: TDBEdit
          Top = 1
          Width = 217
        end
        inherited cbPartner: TJvDBLookupCombo
          Top = 1
          Width = 231
        end
      end
      object pnlNameAndButtonsTop: TPanel
        Left = 0
        Top = 0
        Width = 266
        Height = 15
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
        object lblPartner: TLabel
          Left = 0
          Top = 0
          Width = 73
          Height = 13
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          FocusControl = cbPartner
        end
      end
    end
    inherited pnlPaddingRight: TPanel
      Left = 570
      Height = 43
      TabOrder = 5
    end
    inherited pnlPartnerCode: TPanel
      Left = 231
      Height = 43
      TabOrder = 3
      DesignSize = (
        73
        43)
      object lblPartnerCode: TLabel [0]
        Left = 0
        Top = 0
        Width = 20
        Height = 13
        Caption = #1050#1086#1076
        FocusControl = edtPartnerCode
      end
      inherited edtPartnerCode: TDBEdit
        Top = 16
      end
    end
    inherited pnlPaddingLeft: TPanel
      Height = 43
    end
    inline frPartnerStatus: TfrCompanyStatus
      Left = 8
      Top = 15
      Width = 167
      Height = 43
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Align = alLeft
      Constraints.MaxHeight = 43
      Constraints.MaxWidth = 167
      Constraints.MinHeight = 38
      Constraints.MinWidth = 167
      TabOrder = 1
      TabStop = True
      inherited dsData: TDataSource
        DataSet = cdsPartner
      end
    end
    object pnlPriority: TPanel
      Left = 175
      Top = 15
      Width = 56
      Height = 43
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 2
      object lblPriority: TLabel
        Left = 0
        Top = 0
        Width = 36
        Height = 13
        Caption = #1055#1088#1080#1086#1088'?'
        FocusControl = edtPriority
      end
      object edtPriority: TDBEdit
        Left = 0
        Top = 16
        Width = 49
        Height = 21
        Color = clBtnFace
        DataField = '_PRIORITY_NO'
        DataSource = dsPartner
        ReadOnly = True
        TabOrder = 0
      end
    end
    object pnlCountry: TPanel
      Left = 576
      Top = 15
      Width = 40
      Height = 43
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 6
      object lblCountry: TLabel
        Left = 0
        Top = 0
        Width = 33
        Height = 13
        Caption = #1044#1098#1088#1078'.'
        FocusControl = edtCountry
      end
      object edtCountry: TDBEdit
        Left = 0
        Top = 16
        Width = 32
        Height = 21
        Color = clBtnFace
        DataField = '_COUNTRY_ABBREV'
        DataSource = dsPartner
        ReadOnly = True
        TabOrder = 0
      end
    end
    object pnlParRelButton: TPanel
      Left = 616
      Top = 15
      Width = 73
      Height = 43
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 7
      DesignSize = (
        73
        43)
      object btnParRel: TBitBtn
        Left = 0
        Top = 12
        Width = 65
        Height = 25
        Action = actParRel
        Anchors = [akLeft, akTop, akRight]
        Caption = 'actParRel'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 0
      end
    end
  end
  inherited alActions: TActionList
    Left = 104
    Top = 65528
    object actParRel: TAction
      Caption = 'actParRel'
      OnExecute = actParRelExecute
      OnUpdate = actParRelUpdate
    end
  end
  inherited dsData: TDataSource
    Left = 136
    Top = 65528
  end
  inherited cdsPartners: TAbmesClientDataSet
    BeforeOpen = cdsPartnersBeforeOpen
    Left = 232
    Top = 65528
    inherited cdsPartnersCOMPANY_CODE: TAbmesFloatField
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsPartnersPRIORITY_NO: TAbmesFloatField
      FieldName = 'PRIORITY_NO'
    end
    object cdsPartnersPRIORITY_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_COLOR'
    end
    object cdsPartnersPRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_BACKGROUND_COLOR'
    end
    object cdsPartnersCOUNTRY_ABBREV: TAbmesWideStringField
      FieldName = 'COUNTRY_ABBREV'
      Size = 5
    end
  end
  inherited dsPartners: TDataSource
    Left = 264
    Top = 65528
  end
  inherited cdsPartner: TAbmesClientDataSet
    Left = 168
    Top = 65528
    object cdsPartner_PRIORITY_NO: TAbmesFloatField
      Alignment = taCenter
      FieldKind = fkLookup
      FieldName = '_PRIORITY_NO'
      LookupDataSet = cdsPartners
      LookupKeyFields = 'COMPANY_CODE'
      LookupResultField = 'PRIORITY_NO'
      KeyFields = 'COMPANY_CODE'
      Lookup = True
    end
    object cdsPartner_PRIORITY_COLOR: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_PRIORITY_COLOR'
      LookupDataSet = cdsPartners
      LookupKeyFields = 'COMPANY_CODE'
      LookupResultField = 'PRIORITY_COLOR'
      KeyFields = 'COMPANY_CODE'
      Lookup = True
    end
    object cdsPartner_PRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_PRIORITY_BACKGROUND_COLOR'
      LookupDataSet = cdsPartners
      LookupKeyFields = 'COMPANY_CODE'
      LookupResultField = 'PRIORITY_BACKGROUND_COLOR'
      KeyFields = 'COMPANY_CODE'
      Lookup = True
    end
    object cdsPartner_COUNTRY_ABBREV: TAbmesWideStringField
      Alignment = taCenter
      FieldKind = fkLookup
      FieldName = '_COUNTRY_ABBREV'
      LookupDataSet = cdsPartners
      LookupKeyFields = 'COMPANY_CODE'
      LookupResultField = 'COUNTRY_ABBREV'
      KeyFields = 'COMPANY_CODE'
      Size = 5
      Lookup = True
    end
  end
  inherited dsPartner: TDataSource
    Left = 200
    Top = 65528
  end
end
