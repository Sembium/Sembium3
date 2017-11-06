inherited fmVendorProductSignatures: TfmVendorProductSignatures
  Left = 331
  Top = 226
  ActiveControl = pnlGrid
  Caption = #1054#1079#1085#1072#1095#1077#1085#1080#1103' '#1085#1072' '#1059#1054#1073' '#1086#1090' '#1055#1072#1088#1090#1085#1100#1086#1088#1080
  ClientHeight = 371
  ClientWidth = 756
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 336
    Width = 756
    inherited pnlOKCancel: TPanel
      Left = 488
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 399
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 667
      Visible = False
    end
  end
  inherited pnlMain: TPanel
    Width = 756
    Height = 336
    inherited pnlGrid: TPanel
      Width = 740
      Height = 320
      inherited pnlNavigator: TPanel
        Width = 740
        Height = 54
        inherited pnlFilterButton: TPanel
          Top = 30
        end
        inherited navData: TDBColorNavigator
          Top = 30
          Hints.Strings = ()
          TabOrder = 3
        end
        inherited tlbTopGridButtons: TToolBar
          Top = 30
        end
        object pnlTopInner: TPanel
          Left = 0
          Top = 0
          Width = 740
          Height = 30
          Align = alTop
          TabOrder = 0
          object lblProduct: TLabel
            Left = 10
            Top = 8
            Width = 22
            Height = 13
            Caption = #1059#1054#1073
          end
          object lblCompanyName: TLabel
            Left = 430
            Top = 8
            Width = 49
            Height = 13
            Caption = #1055#1072#1088#1090#1085#1100#1086#1088
          end
          object edtCompanyName: TDBEdit
            Left = 572
            Top = 5
            Width = 157
            Height = 21
            Color = clBtnFace
            DataField = '_COMPANY_NAME'
            DataSource = dsGridDataParams
            ReadOnly = True
            TabOrder = 0
          end
          object edtProductName: TDBEdit
            Left = 36
            Top = 5
            Width = 253
            Height = 21
            Color = clBtnFace
            DataField = '_PRODUCT_NAME'
            DataSource = dsGridDataParams
            ReadOnly = True
            TabOrder = 1
          end
          object edtProductNo: TDBEdit
            Left = 292
            Top = 5
            Width = 117
            Height = 21
            Color = clBtnFace
            DataField = '_PRODUCT_NO'
            DataSource = dsGridDataParams
            ReadOnly = True
            TabOrder = 2
          end
          object edtCompanyNo: TDBEdit
            Left = 487
            Top = 5
            Width = 82
            Height = 21
            Color = clBtnFace
            DataField = '_COMPANY_NO'
            DataSource = dsGridDataParams
            ReadOnly = True
            TabOrder = 3
          end
        end
        object tlbTopButtons: TToolBar
          Left = 248
          Top = 30
          Width = 185
          Height = 24
          Align = alLeft
          ButtonWidth = 37
          EdgeInner = esNone
          Images = dmMain.ilDocs
          TabOrder = 4
          object sepCompanyDoc: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'sepCompanyDoc'
            ImageIndex = 1
            Style = tbsSeparator
          end
          object lblCompanyDoc: TLabel
            Left = 8
            Top = 0
            Width = 55
            Height = 22
            Caption = ' '#1055#1072#1088#1090#1085#1100#1086#1088' '
            Layout = tlCenter
          end
          object btnCompanyDoc: TToolButton
            Left = 63
            Top = 0
            Action = actCompanyDoc
          end
          object sepProductDoc: TToolButton
            Left = 100
            Top = 0
            Width = 8
            Caption = 'sepProductDoc'
            ImageIndex = 12
            Style = tbsSeparator
          end
          object lblProductDoc: TLabel
            Left = 108
            Top = 0
            Width = 28
            Height = 22
            Caption = ' '#1059#1054#1073' '
            Layout = tlCenter
          end
          object btnProductDoc: TToolButton
            Left = 136
            Top = 0
            Action = actProductDoc
          end
        end
      end
      inherited grdData: TAbmesDBGrid
        Top = 54
        Width = 740
        Height = 266
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'COMPANY_NO'
            Footers = <>
            Title.Caption = #1055#1072#1088#1090#1085#1100#1086#1088'|'#1050#1086#1076
            Width = 54
          end
          item
            EditButtons = <>
            FieldName = 'COMPANY_NAME'
            Footers = <>
            Title.Caption = #1055#1072#1088#1090#1085#1100#1086#1088'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 129
          end
          item
            EditButtons = <>
            FieldName = 'PRODUCT_NAME'
            Footers = <>
            Title.Caption = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090'|id '#1083#1086#1075#1080#1095#1077#1089#1082#1080
            Width = 222
          end
          item
            EditButtons = <>
            FieldName = 'PRODUCT_NO'
            Footers = <>
            Title.Caption = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090'|id '#1094#1080#1092#1088#1086#1074
            Width = 75
          end
          item
            EditButtons = <>
            FieldName = 'NAME'
            Footers = <>
            Width = 223
          end>
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 48
    Top = 136
  end
  inherited cdsGridData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conCompanies
    FieldDefs = <
      item
        Name = 'COMPANY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'PRODUCT_NO'
        DataType = ftFloat
      end
      item
        Name = 'NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'COMPANY_NAME'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'COMPANY_DOC_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'COMPANY_DOC_CODE'
        DataType = ftFloat
      end
      item
        Name = 'COMPANY_HAS_DOC'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_DOC_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_DOC_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_HAS_DOC'
        DataType = ftFloat
      end
      item
        Name = 'COMPANY_NO'
        DataType = ftFloat
      end>
    Params = <
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_COMPANIES'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_PRODUCTS'
        ParamType = ptInput
      end>
    ProviderName = 'prvClientProductSignatures'
    OnNewRecord = cdsGridDataNewRecord
    Left = 16
    Top = 136
    object cdsGridDataCOMPANY_CODE: TAbmesFloatField
      DisplayLabel = #1055#1072#1088#1090#1085#1100#1086#1088
      FieldName = 'COMPANY_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnChange = cdsGridDataCOMPANY_CODEChange
    end
    object cdsGridDataCOMPANY_NO: TAbmesFloatField
      FieldName = 'COMPANY_NO'
    end
    object cdsGridDataCOMPANY_NAME: TAbmesWideStringField
      FieldName = 'COMPANY_NAME'
      ProviderFlags = []
    end
    object cdsGridDataCOMPANY_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'COMPANY_DOC_BRANCH_CODE'
    end
    object cdsGridDataCOMPANY_DOC_CODE: TAbmesFloatField
      FieldName = 'COMPANY_DOC_CODE'
    end
    object cdsGridDataCOMPANY_HAS_DOC: TAbmesFloatField
      FieldName = 'COMPANY_HAS_DOC'
    end
    object cdsGridDataPRODUCT_CODE: TAbmesFloatField
      DisplayLabel = #1040#1088#1090#1080#1082#1091#1083
      FieldName = 'PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnChange = cdsGridDataPRODUCT_CODEChange
    end
    object cdsGridDataPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
      ProviderFlags = []
    end
    object cdsGridDataPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      ProviderFlags = []
      Size = 50
    end
    object cdsGridDataPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_BRANCH_CODE'
    end
    object cdsGridDataPRODUCT_DOC_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_CODE'
    end
    object cdsGridDataPRODUCT_HAS_DOC: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOC'
    end
    object cdsGridDataNAME: TAbmesWideStringField
      DisplayLabel = #1054#1079#1085#1072#1095#1077#1085#1080#1077' '#1086#1090' '#1055#1072#1088#1090#1085#1100#1086#1088
      FieldName = 'NAME'
      Required = True
      Size = 50
    end
  end
  inherited alActions: TActionList
    Left = 16
    Top = 240
    inherited actForm: TAction
      Caption = #1054#1079#1085#1072#1095#1077#1085#1080#1103' '#1085#1072' '#1059#1054#1073' '#1086#1090' '#1055#1072#1088#1090#1085#1100#1086#1088#1080
    end
    inherited actFilter: TAction
      Visible = True
    end
    object actProductDoc: TAction
      Caption = 'actProductDoc'
      ImageIndex = 0
      OnExecute = actProductDocExecute
      OnUpdate = actProductDocUpdate
    end
    object actCompanyDoc: TAction
      Caption = 'actCompanyDoc'
      ImageIndex = 0
      OnExecute = actCompanyDocExecute
      OnUpdate = actCompanyDocUpdate
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    Left = 16
    Top = 168
    object pdsGridDataParamsCHOSEN_COMPANIES: TAbmesWideStringField
      DisplayLabel = #1055#1072#1088#1090#1085#1100#1086#1088
      FieldName = 'CHOSEN_COMPANIES'
      OnChange = pdsGridDataParamsCHOSEN_COMPANIESChange
      Size = 4000
    end
    object pdsGridDataParamsCHOSEN_PRODUCTS: TAbmesWideStringField
      DisplayLabel = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
      FieldName = 'CHOSEN_PRODUCTS'
      OnChange = pdsGridDataParamsCHOSEN_PRODUCTSChange
      Size = 4000
    end
    object pdsGridDataParams_PRODUCT_CODE: TAbmesFloatField
      FieldName = '_PRODUCT_CODE'
      ProviderFlags = []
    end
    object pdsGridDataParams_PRODUCT_NAME: TAbmesWideStringField
      FieldName = '_PRODUCT_NAME'
      ProviderFlags = []
      OnGetText = pdsGridDataParams_PRODUCT_NAMEGetText
      Size = 100
    end
    object pdsGridDataParams_PRODUCT_NO: TAbmesFloatField
      FieldName = '_PRODUCT_NO'
      ProviderFlags = []
    end
    object pdsGridDataParams_COMPANY_CODE: TAbmesFloatField
      FieldName = '_COMPANY_CODE'
      ProviderFlags = []
    end
    object pdsGridDataParams_COMPANY_NO: TAbmesFloatField
      FieldName = '_COMPANY_NO'
      ProviderFlags = []
    end
    object pdsGridDataParams_COMPANY_NAME: TAbmesWideStringField
      FieldName = '_COMPANY_NAME'
      ProviderFlags = []
      OnGetText = pdsGridDataParams_COMPANY_NAMEGetText
      Size = 50
    end
  end
  inherited dsGridDataParams: TDataSource
    Left = 48
    Top = 168
  end
  inherited dsData: TDataSource
    Left = 48
    Top = 272
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 16
    Top = 272
  end
end
