inherited frPartnerFieldEditFrame: TfrPartnerFieldEditFrame
  Width = 257
  Height = 49
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  Constraints.MaxHeight = 49
  Constraints.MinHeight = 49
  object gbPartner: TGroupBox [0]
    Left = 0
    Top = 0
    Width = 257
    Height = 49
    Align = alClient
    Caption = ' '#1055#1072#1088#1090#1085#1100#1086#1088' '
    TabOrder = 0
    object pnlNameAndButtons: TPanel
      Left = 81
      Top = 15
      Width = 168
      Height = 32
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 2
      object pnlRightButtons: TPanel
        Left = 132
        Top = 0
        Width = 36
        Height = 32
        Align = alRight
        AutoSize = True
        BevelOuter = bvNone
        TabOrder = 1
        object tlbDocButton: TToolBar
          Left = 0
          Top = 0
          Width = 36
          Align = alRight
          AutoSize = True
          ButtonWidth = 36
          EdgeInner = esNone
          Images = dmMain.ilDocs
          TabOrder = 0
          Visible = False
          object btnDocumentation: TToolButton
            Left = 0
            Top = 0
            Action = actDocumentation
            ParentShowHint = False
            ShowHint = True
          end
        end
      end
      object pnlPartnerName: TPanel
        Left = 0
        Top = 0
        Width = 132
        Height = 32
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          132
          32)
        object edtPartnerName: TDBEdit
          Left = 0
          Top = 0
          Width = 133
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          Color = clBtnFace
          DataField = '_PARTNER_NAME'
          DataSource = dsPartner
          ReadOnly = True
          TabOrder = 1
          Visible = False
        end
        object cbPartner: TJvDBLookupCombo
          Left = 0
          Top = 0
          Width = 133
          Height = 21
          EscapeKeyReset = False
          DeleteKeyClear = False
          DataField = '_PARTNER_NAME'
          DataSource = dsPartner
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 0
        end
      end
    end
    object pnlPaddingRight: TPanel
      Left = 249
      Top = 15
      Width = 6
      Height = 32
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 3
    end
    object pnlPartnerCode: TPanel
      Left = 8
      Top = 15
      Width = 73
      Height = 32
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        73
        32)
      object edtPartnerCode: TDBEdit
        Left = 0
        Top = 0
        Width = 73
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        BevelInner = bvNone
        DataField = 'COMPANY_NO'
        DataSource = dsPartner
        TabOrder = 0
        OnChange = edtPartnerCodeChange
      end
    end
    object pnlPaddingLeft: TPanel
      Left = 2
      Top = 15
      Width = 6
      Height = 32
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
    end
  end
  inherited alActions: TActionList
    Left = 40
    Top = 24
    object actDocumentation: TAction
      Caption = 'actDocumentation'
      Hint = #1052#1048#1048#1054
      OnExecute = actDocumentationExecute
      OnUpdate = actDocumentationUpdate
    end
  end
  inherited dsData: TDataSource
    Left = 56
    Top = 24
  end
  object cdsPartners: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompanies
    Params = <
      item
        DataType = ftFloat
        Name = 'PRIORITY_COMPANY_KIND'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRIORITY_COMPANY_KIND'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRIORITY_COMPANY_KIND'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_KIND_FILTER'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SECONDARY_COMPANY_KIND_FILTER'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_KIND_FILTER'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SECONDARY_COMPANY_KIND_FILTER'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_KIND_FILTER'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SECONDARY_COMPANY_KIND_FILTER'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_KIND_FILTER'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SECONDARY_COMPANY_KIND_FILTER'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_KIND_FILTER'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SECONDARY_COMPANY_KIND_FILTER'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_KIND_FILTER'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SECONDARY_COMPANY_KIND_FILTER'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_KIND_FILTER'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SECONDARY_COMPANY_KIND_FILTER'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_KIND_FILTER'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SECONDARY_COMPANY_KIND_FILTER'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_COMPANY_OR_PERSON_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_COMPANY_OR_PERSON_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_COMPANY_OR_PERSON_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHOW_CC_FIRM'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHOW_CC_FIRM'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHOW_CC_PERSON'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHOW_CC_PERSON'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHOW_CC_CUMULATIVE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHOW_CC_CUMULATIVE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHOW_CC_COMMON'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHOW_CC_COMMON'
        ParamType = ptInput
      end>
    ProviderName = 'prvPartners'
    OnFilterRecord = cdsPartnersFilterRecord
    Left = 160
    Top = 24
    object cdsPartnersCOMPANY_CODE: TAbmesFloatField
      FieldName = 'COMPANY_CODE'
    end
    object cdsPartnersCOMPANY_NO: TAbmesFloatField
      FieldName = 'COMPANY_NO'
    end
    object cdsPartnersPARTNER_NAME: TAbmesWideStringField
      FieldName = 'PARTNER_NAME'
      Size = 62
    end
    object cdsPartnersDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsPartnersDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsPartnersHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
    end
    object cdsPartnersCOMPANY_STATUS_CODE: TAbmesFloatField
      FieldName = 'COMPANY_STATUS_CODE'
    end
    object cdsPartnersPARTNER_ID: TAbmesWideStringField
      FieldName = 'PARTNER_ID'
      Size = 10
    end
  end
  object dsPartners: TDataSource
    DataSet = cdsPartners
    Left = 168
    Top = 24
  end
  object cdsPartner: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 104
    Top = 24
    object cdsPartnerCOMPANY_CODE: TAbmesFloatField
      FieldName = 'COMPANY_CODE'
      OnChange = cdsPartnerCOMPANY_CODEChange
    end
    object cdsPartnerCOMPANY_NO: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'COMPANY_NO'
      OnChange = cdsPartnerCOMPANY_NOChange
      OnSetText = cdsPartnerCOMPANY_NOSetText
    end
    object cdsPartner_PARTNER_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_PARTNER_NAME'
      LookupDataSet = cdsPartners
      LookupKeyFields = 'COMPANY_CODE'
      LookupResultField = 'PARTNER_NAME'
      KeyFields = 'COMPANY_CODE'
      Size = 100
      Lookup = True
    end
    object cdsPartner_DOC_BRANCH_CODE: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_DOC_BRANCH_CODE'
      LookupDataSet = cdsPartners
      LookupKeyFields = 'COMPANY_CODE'
      LookupResultField = 'DOC_BRANCH_CODE'
      KeyFields = 'COMPANY_CODE'
      Lookup = True
    end
    object cdsPartner_DOC_CODE: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_DOC_CODE'
      LookupDataSet = cdsPartners
      LookupKeyFields = 'COMPANY_CODE'
      LookupResultField = 'DOC_CODE'
      KeyFields = 'COMPANY_CODE'
      Lookup = True
    end
    object cdsPartner_HAS_DOCUMENTATION: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_HAS_DOCUMENTATION'
      LookupDataSet = cdsPartners
      LookupKeyFields = 'COMPANY_CODE'
      LookupResultField = 'HAS_DOCUMENTATION'
      KeyFields = 'COMPANY_CODE'
      Lookup = True
    end
  end
  object dsPartner: TDataSource
    DataSet = cdsPartner
    Left = 120
    Top = 24
  end
end
