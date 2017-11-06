inherited frFinOrderLineProcessObject: TfrFinOrderLineProcessObject
  Width = 783
  Height = 228
  object pnlFinProcessID: TPanel [0]
    Left = 0
    Top = 0
    Width = 234
    Height = 228
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 1
    object lblBranch: TLabel
      Left = 8
      Top = 8
      Width = 48
      Height = 13
      Caption = #1058#1055' '#1043#1083'.'
    end
    object lblFinOrderNo: TLabel
      Left = 72
      Top = 8
      Width = 39
      Height = 13
      Caption = #1054#1055#1060' No'
    end
    object lblFinModelLineTypeOnFinOrderAdminPanel: TLabel
      Left = 128
      Top = 8
      Width = 95
      Height = 13
      Caption = #1056#1077#1076' '#1086#1090' '#1056'-'#1052#1054#1044#1045#1083'-'#1060
      FocusControl = cbFinModelLineType
    end
    object cbBranch: TJvDBLookupCombo
      Left = 8
      Top = 24
      Width = 57
      Height = 21
      DataField = 'FIN_ORDER_BRANCH_CODE'
      DataSource = dsProcessObjectParams
      DisplayEmpty = ' '
      EmptyValue = '0'
      LookupField = 'BRANCH_CODE'
      LookupDisplay = 'BRANCH_IDENTIFIER'
      LookupSource = dsBranches
      TabOrder = 0
    end
    object edtFinOrderNo: TDBEdit
      Left = 72
      Top = 24
      Width = 48
      Height = 21
      DataField = 'FIN_ORDER_NO'
      DataSource = dsProcessObjectParams
      TabOrder = 1
    end
    object cbFinModelLineType: TJvDBLookupCombo
      Left = 128
      Top = 24
      Width = 56
      Height = 21
      DataField = 'FIN_MODEL_LINE_TYPE_CODE'
      DataSource = dsProcessObjectParams
      LookupField = 'FIN_MODEL_LINE_TYPE_CODE'
      LookupDisplay = 'FIN_MODEL_LINE_TYPE_ABBREV'
      LookupSource = dsFinModelLineTypes
      TabOrder = 2
    end
    object edtFinModelLineNo: TDBEdit
      Left = 183
      Top = 24
      Width = 42
      Height = 21
      DataField = 'FIN_MODEL_LINE_NO'
      DataSource = dsProcessObjectParams
      TabOrder = 3
    end
  end
  object pnlPartner: TPanel [1]
    Left = 234
    Top = 0
    Width = 177
    Height = 228
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 2
    object lblPartnerCode: TLabel
      Left = 0
      Top = 8
      Width = 49
      Height = 13
      Caption = #1055#1072#1088#1090#1085#1100#1086#1088
    end
    inline frPartner: TfrPartnerFieldEditFrameBald
      Left = 0
      Top = 24
      Width = 177
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 0
      TabStop = True
      inherited gbPartner: TGroupBox
        Width = 192
        inherited pnlNameAndButtons: TPanel
          Width = 103
          inherited pnlRightButtons: TPanel
            Left = 67
          end
          inherited pnlPartnerName: TPanel
            Width = 67
            inherited edtPartnerName: TDBEdit
              Width = 53
            end
            inherited cbPartner: TJvDBLookupCombo
              Width = 68
            end
          end
        end
        inherited pnlPaddingRight: TPanel
          Left = 184
        end
      end
      inherited dsData: TDataSource
        DataSet = pdsProcessObjectParams
      end
      inherited cdsPartners: TAbmesClientDataSet
        Left = 144
      end
      inherited dsPartners: TDataSource
        Left = 152
      end
    end
  end
  object pnlBaseDateAndFinStatus: TPanel [2]
    Left = 411
    Top = 0
    Width = 166
    Height = 228
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 3
    object lblBorderProcessObjectBaseDate: TLabel
      Left = 8
      Top = 8
      Width = 64
      Height = 13
      Caption = #1041#1072#1079#1086#1074#1072' '#1044#1072#1090#1072
    end
    object lblFinStatus: TLabel
      Left = 120
      Top = 8
      Width = 33
      Height = 13
      Caption = #1060#1080#1085#1057#1090
    end
    inline frBorderProcessObjectBaseDate: TfrDateFieldEditFrame
      Left = 8
      Top = 24
      Width = 105
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 105
      Constraints.MinHeight = 21
      Constraints.MinWidth = 105
      TabOrder = 0
      TabStop = True
      inherited dsData: TDataSource
        DataSet = pdsProcessObjectParams
      end
    end
    object edtFinStatus: TDBEdit
      Left = 120
      Top = 24
      Width = 41
      Height = 21
      Color = clBtnFace
      DataField = 'HAS_DOCUMENT'
      DataSource = dsProcessObjectParams
      ReadOnly = True
      TabOrder = 1
    end
  end
  object pnlDocument: TPanel [3]
    Left = 659
    Top = 0
    Width = 107
    Height = 228
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 5
    object lblShowProcessObjectForm: TLabel
      Left = 3
      Top = 8
      Width = 80
      Height = 13
      Caption = #1044#1086#1082'. '#1086#1089#1085#1086#1074#1072#1085#1080#1077
    end
    object edtDocumentIdentifier: TDBEdit
      Left = 3
      Top = 24
      Width = 102
      Height = 21
      Color = clBtnFace
      DataField = 'DOCUMENT_IDENTIFIER'
      DataSource = dsProcessObjectParams
      ReadOnly = True
      TabOrder = 0
    end
  end
  object pnlInvoiceNo: TPanel [4]
    Left = 577
    Top = 0
    Width = 82
    Height = 228
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 6
    object lblInvoiceNo: TLabel
      Left = 3
      Top = 8
      Width = 60
      Height = 13
      Caption = #8470' '#1060#1072#1082#1090#1091#1088#1072
    end
    object edtInvoiceNo: TDBEdit
      Left = 3
      Top = 24
      Width = 79
      Height = 21
      Color = clBtnFace
      DataField = 'DOCUMENT_IDENTIFIER'
      DataSource = dsProcessObjectParams
      ReadOnly = True
      TabOrder = 0
    end
  end
  object btnShowProcessObjectForm: TButton [5]
    Left = 664
    Top = 22
    Width = 97
    Height = 25
    Action = actShowProcessObjectForm
    TabOrder = 0
  end
  object pnlFinOrderBndObject: TPanel [6]
    Left = 525
    Top = 47
    Width = 135
    Height = 178
    BevelOuter = bvNone
    TabOrder = 4
    object pnlSale: TPanel
      Left = 0
      Top = 0
      Width = 135
      Height = 47
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object lblSaleID: TLabel
        Left = 7
        Top = 4
        Width = 36
        Height = 13
        Caption = 'ID '#1054#1055#1055
      end
      object edtSaleID: TDBEdit
        Left = 6
        Top = 20
        Width = 128
        Height = 21
        Color = clBtnFace
        DataField = 'SALE_ID'
        DataSource = dsProcessObjectParams
        ReadOnly = True
        TabOrder = 0
      end
    end
    object pnlDelivery: TPanel
      Left = 0
      Top = 47
      Width = 135
      Height = 47
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object lblDeliveryID: TLabel
        Left = 7
        Top = 4
        Width = 65
        Height = 13
        Caption = 'ID '#1055#1044#1044'/'#1054#1044#1044
      end
      object edtDeliveryID: TDBEdit
        Left = 6
        Top = 20
        Width = 128
        Height = 21
        Color = clBtnFace
        DataField = 'DELIVERY_ID'
        DataSource = dsProcessObjectParams
        ReadOnly = True
        TabOrder = 0
      end
    end
    object pnlProcessDelivery: TPanel
      Left = 0
      Top = 94
      Width = 135
      Height = 47
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
      object lblProcessID: TLabel
        Left = 7
        Top = 4
        Width = 45
        Height = 13
        Caption = #1054#1051#1056'/'#1048#1041#1057
      end
      object edtProcessID: TDBEdit
        Left = 6
        Top = 20
        Width = 128
        Height = 21
        Color = clBtnFace
        DataSource = dsProcessObjectParams
        ReadOnly = True
        TabOrder = 0
      end
    end
  end
  inherited alActions: TActionList
    Left = 40
    Top = 112
  end
  inherited dsData: TDataSource
    Left = 72
    Top = 112
  end
  inherited cdsProcessObjectID: TAbmesClientDataSet
    ConnectionBroker = dmMain.conStore
    Params = <
      item
        DataType = ftFloat
        Name = 'FIN_ORDER_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FIN_ORDER_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FIN_MODEL_LINE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FIN_MODEL_LINE_NO'
        ParamType = ptInput
      end>
    ProviderName = 'prvFinOrderLineProcessObjectID'
    Left = 8
    Top = 80
    object cdsProcessObjectIDPROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PROCESS_OBJECT_BRANCH_CODE'
    end
    object cdsProcessObjectIDPROCESS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'PROCESS_OBJECT_CODE'
    end
  end
  inherited pdsProcessObjectParams: TParamDataSet
    Left = 40
    Top = 80
    object pdsProcessObjectParamsFIN_ORDER_BRANCH_CODE: TAbmesFloatField
      FieldName = 'FIN_ORDER_BRANCH_CODE'
    end
    object pdsProcessObjectParamsFIN_ORDER_CODE: TAbmesFloatField
      FieldName = 'FIN_ORDER_CODE'
    end
    object pdsProcessObjectParamsFIN_ORDER_NO: TAbmesFloatField
      FieldName = 'FIN_ORDER_NO'
    end
    object pdsProcessObjectParamsFIN_MODEL_LINE_TYPE_CODE: TAbmesFloatField
      FieldName = 'FIN_MODEL_LINE_TYPE_CODE'
    end
    object pdsProcessObjectParamsFIN_MODEL_LINE_NO: TAbmesFloatField
      FieldName = 'FIN_MODEL_LINE_NO'
    end
    object pdsProcessObjectParamsPARTNER_CODE: TAbmesFloatField
      FieldName = 'PARTNER_CODE'
    end
    object pdsProcessObjectParamsBASE_DATE: TAbmesSQLTimeStampField
      FieldName = 'BASE_DATE'
    end
    object pdsProcessObjectParamsHAS_DOCUMENT: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'HAS_DOCUMENT'
      DisplayBoolValues = #1056#1077#1072#1083#1077#1085';'#1054#1095#1072#1082#1074#1072#1085
      FieldValueType = fvtBoolean
    end
    object pdsProcessObjectParamsDOCUMENT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DOCUMENT_IDENTIFIER'
      Size = 50
    end
    object pdsProcessObjectParamsSALE_ID: TAbmesWideStringField
      FieldName = 'SALE_ID'
      Size = 86
    end
    object pdsProcessObjectParamsDELIVERY_ID: TAbmesWideStringField
      FieldName = 'DELIVERY_ID'
      Size = 128
    end
    object pdsProcessObjectParamsRFML_OBJECT_CODE: TAbmesFloatField
      FieldName = 'RFML_OBJECT_CODE'
    end
    object pdsProcessObjectParamsRFML_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'RFML_OBJECT_BRANCH_CODE'
    end
  end
  inherited dsProcessObjectParams: TDataSource
    Left = 72
    Top = 80
  end
  inherited cdsProcessObjectCustomID: TAbmesClientDataSet
    ConnectionBroker = dmMain.conStore
    Params = <
      item
        DataType = ftFloat
        Name = 'BND_PROCESS_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BND_PROCESS_OBJECT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvFinOrderLineProcessObjectCustomID'
    Left = 8
    Top = 112
    object cdsProcessObjectCustomIDFIN_ORDER_BRANCH_CODE: TAbmesFloatField
      FieldName = 'FIN_ORDER_BRANCH_CODE'
    end
    object cdsProcessObjectCustomIDFIN_ORDER_CODE: TAbmesFloatField
      FieldName = 'FIN_ORDER_CODE'
    end
    object cdsProcessObjectCustomIDFIN_ORDER_NO: TAbmesFloatField
      FieldName = 'FIN_ORDER_NO'
    end
    object cdsProcessObjectCustomIDFIN_MODEL_LINE_TYPE_CODE: TAbmesFloatField
      FieldName = 'FIN_MODEL_LINE_TYPE_CODE'
    end
    object cdsProcessObjectCustomIDFIN_MODEL_LINE_NO: TAbmesFloatField
      FieldName = 'FIN_MODEL_LINE_NO'
    end
    object cdsProcessObjectCustomIDPARTNER_CODE: TAbmesFloatField
      FieldName = 'PARTNER_CODE'
    end
    object cdsProcessObjectCustomIDBASE_DATE: TAbmesSQLTimeStampField
      FieldName = 'BASE_DATE'
    end
    object cdsProcessObjectCustomIDHAS_DOCUMENT: TAbmesFloatField
      FieldName = 'HAS_DOCUMENT'
    end
    object cdsProcessObjectCustomIDDOCUMENT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DOCUMENT_IDENTIFIER'
      Size = 50
    end
    object cdsProcessObjectCustomIDSALE_ID: TAbmesWideStringField
      FieldName = 'SALE_ID'
      Size = 86
    end
    object cdsProcessObjectCustomIDDELIVERY_ID: TAbmesWideStringField
      FieldName = 'DELIVERY_ID'
      Size = 128
    end
    object cdsProcessObjectCustomIDRFML_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'RFML_OBJECT_BRANCH_CODE'
    end
    object cdsProcessObjectCustomIDRFML_OBJECT_CODE: TAbmesFloatField
      FieldName = 'RFML_OBJECT_CODE'
    end
  end
  object dsBranches: TDataSource
    DataSet = cdsBranches
    Left = 40
    Top = 40
  end
  object cdsBranches: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompany
    Params = <>
    ProviderName = 'prvBranches'
    Left = 8
    Top = 40
    object cdsBranchesBRANCH_CODE: TAbmesFloatField
      FieldName = 'BRANCH_CODE'
    end
    object cdsBranchesBRANCH_NO: TAbmesFloatField
      FieldName = 'BRANCH_NO'
    end
    object cdsBranchesNAME: TAbmesWideStringField
      FieldName = 'NAME'
      Size = 50
    end
    object cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField
      FieldName = 'BRANCH_IDENTIFIER'
      Size = 46
    end
    object cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField
      FieldName = 'BRANCH_CODE_AND_NAME'
      Size = 143
    end
    object cdsBranchesIS_LOCAL_BRANCH: TAbmesFloatField
      FieldName = 'IS_LOCAL_BRANCH'
    end
    object cdsBranchesIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
    end
  end
  object dsFinModelLineTypes: TDataSource
    DataSet = cdsFinModelLineTypes
    Left = 112
    Top = 112
  end
  object cdsFinModelLineTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conFinance
    Params = <>
    ProviderName = 'prvFinModelLineTypes'
    Left = 112
    Top = 80
    object cdsFinModelLineTypesFIN_MODEL_LINE_TYPE_CODE: TAbmesFloatField
      FieldName = 'FIN_MODEL_LINE_TYPE_CODE'
    end
    object cdsFinModelLineTypesFIN_MODEL_LINE_TYPE_NO: TAbmesFloatField
      FieldName = 'FIN_MODEL_LINE_TYPE_NO'
    end
    object cdsFinModelLineTypesFIN_MODEL_LINE_TYPE_NAME: TAbmesWideStringField
      FieldName = 'FIN_MODEL_LINE_TYPE_NAME'
      Size = 100
    end
    object cdsFinModelLineTypesFIN_MODEL_LINE_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'FIN_MODEL_LINE_TYPE_ABBREV'
      Size = 100
    end
  end
end
