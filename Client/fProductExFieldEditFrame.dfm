inherited frProductExFieldEditFrame: TfrProductExFieldEditFrame
  Width = 983
  Height = 65
  Constraints.MaxHeight = 549
  Font.Name = 'Microsoft Sans Serif'
  ParentFont = False
  inherited gbTreeNode: TGroupBox
    Width = 983
    Height = 65
    inherited pnlTreeNode: TPanel
      Left = 130
      Top = 15
      Width = 81
      Height = 48
      Align = alClient
      Constraints.MaxHeight = 323
      TabOrder = 1
      inherited pnlTreeNodeName: TPanel
        Top = 16
        Width = 43
        Height = 32
        DesignSize = (
          43
          32)
        inherited edtTreeNodeName: TDBEdit
          Width = 42
          BevelEdges = [beLeft, beTop, beRight]
          Constraints.MaxHeight = 21
          Constraints.MinHeight = 21
        end
      end
      inherited pnlTreeNodeNo: TPanel
        Left = -101
        Top = 16
        Height = 32
        DesignSize = (
          123
          32)
      end
      inherited pnlRightButtons: TPanel
        Left = 22
        Top = 16
        Height = 32
        inherited tlbDocButton: TToolBar
          Height = 32
        end
      end
      object pnlProductLabels: TPanel
        Left = 0
        Top = 0
        Width = 81
        Height = 16
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 3
        object lblTreeNodeName: TLabel
          Left = 0
          Top = 0
          Width = 63
          Height = 13
          Caption = 'id '#1083#1086#1075#1080#1095#1077#1089#1082#1080
          FocusControl = edtTreeNodeName
        end
        object lblTreeNodeNo: TLabel
          Left = 256
          Top = 0
          Width = 49
          Height = 13
          Caption = 'id '#1094#1080#1092#1088#1086#1074
          FocusControl = edtTreeNodeNo
        end
      end
    end
    object pnlLeft: TPanel
      Left = 2
      Top = 15
      Width = 128
      Height = 48
      Align = alLeft
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 0
      object pnlSpecState: TPanel
        Left = 8
        Top = 0
        Width = 72
        Height = 48
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        object lblSpecState: TLabel
          Left = 0
          Top = 0
          Width = 60
          Height = 13
          Caption = #1055#1048#1056' '#1057#1090#1072#1090#1091#1089
          FocusControl = edtSpecState
        end
        object edtSpecState: TDBEdit
          Left = 0
          Top = 16
          Width = 65
          Height = 21
          Color = clBtnFace
          DataField = 'SPEC_STATE_CODE'
          DataSource = dsExtendedInfo
          ReadOnly = True
          TabOrder = 0
        end
      end
      object pnlLeftLeft: TPanel
        Left = 0
        Top = 0
        Width = 8
        Height = 48
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
      end
      object pnlPriority: TPanel
        Left = 80
        Top = 0
        Width = 48
        Height = 48
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 2
        object lblPriorityNo: TLabel
          Left = 0
          Top = 0
          Width = 42
          Height = 13
          Caption = #1041#1055#1088#1080#1086#1088'.'
          FocusControl = edtPriorityNo
        end
        object edtPriorityNo: TDBEdit
          Left = 0
          Top = 16
          Width = 41
          Height = 21
          Color = clBtnFace
          DataField = 'PRIORITY_NO'
          DataSource = dsExtendedInfo
          ReadOnly = True
          TabOrder = 0
        end
      end
    end
    object pnlRight: TPanel
      Left = 211
      Top = 15
      Width = 770
      Height = 48
      Align = alRight
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 2
      object pnlRightLeft: TPanel
        Left = 0
        Top = 0
        Width = 8
        Height = 48
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
      end
      object pnlCommonStatus: TPanel
        Left = 152
        Top = 0
        Width = 72
        Height = 48
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 2
        object lblProductCommonStatus: TLabel
          Left = 0
          Top = 0
          Width = 23
          Height = 13
          Caption = #1055#1079#1094'.'
          FocusControl = edtProductCommonStatus
        end
        object lblProductCommonProductLevels: TLabel
          Left = 24
          Top = 0
          Width = 22
          Height = 13
          Caption = #1058#1049#1057
          FocusControl = edtProductCommonProductLevels
        end
        object edtProductCommonStatus: TDBEdit
          Left = 0
          Top = 16
          Width = 25
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = 'COMMON_STATUS_CODE'
          DataSource = dsExtendedInfo
          ReadOnly = True
          TabOrder = 0
        end
        object edtProductCommonProductLevels: TDBEdit
          Left = 24
          Top = 16
          Width = 41
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = '_COMMON_PRODUCTS_LEVELS_SHOW'
          DataSource = dsExtendedInfo
          ReadOnly = True
          TabOrder = 1
        end
      end
      object pnlPartnerProductNames: TPanel
        Left = 256
        Top = 0
        Width = 185
        Height = 48
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 4
        DesignSize = (
          185
          48)
        object lblPartnerProductNames: TLabel
          Left = 0
          Top = 0
          Width = 127
          Height = 13
          Caption = #1054#1079#1085#1072#1095#1077#1085#1080#1103' '#1086#1090' '#1055#1072#1088#1090#1085#1100#1086#1088#1080
          FocusControl = edtPartnerProductNames
        end
        object edtPartnerProductNames: TDBEdit
          Left = 0
          Top = 16
          Width = 178
          Height = 21
          TabStop = False
          Anchors = [akLeft, akTop, akRight]
          Color = clBtnFace
          DataField = 'PARTNER_PRODUCT_NAMES'
          DataSource = dsExtendedInfo
          ReadOnly = True
          TabOrder = 0
        end
      end
      object pnlProductPeriodsButton: TPanel
        Left = 702
        Top = 0
        Width = 68
        Height = 48
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 6
        DesignSize = (
          68
          48)
        object btnProductPeriods: TBitBtn
          Left = 0
          Top = 13
          Width = 60
          Height = 25
          Action = actProductPeriods
          Anchors = [akLeft, akTop, akRight]
          Caption = #1059#1052' '#1059#1054#1073'...'
          TabOrder = 0
        end
      end
      object pnlNotes: TPanel
        Left = 441
        Top = 0
        Width = 185
        Height = 48
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 5
        DesignSize = (
          185
          48)
        object lblNotes: TLabel
          Left = 0
          Top = 0
          Width = 45
          Height = 13
          Caption = #1041#1077#1083#1077#1078#1082#1080
          FocusControl = edtNotes
        end
        object edtNotes: TDBEdit
          Left = 0
          Top = 16
          Width = 178
          Height = 21
          TabStop = False
          Anchors = [akLeft, akTop, akRight]
          Color = clBtnFace
          DataField = 'NOTES'
          DataSource = dsExtendedInfo
          ReadOnly = True
          TabOrder = 0
        end
      end
      object pnlProductOrigin: TPanel
        Left = 224
        Top = 0
        Width = 32
        Height = 48
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 3
        DesignSize = (
          32
          48)
        object lblProductOrigin: TLabel
          Left = 0
          Top = 0
          Width = 23
          Height = 13
          Caption = #1059#1059#1057
          FocusControl = edtProductOrigin
        end
        object edtProductOrigin: TDBEdit
          Left = 0
          Top = 16
          Width = 25
          Height = 21
          TabStop = False
          Anchors = [akLeft, akTop, akRight]
          Color = clBtnFace
          DataField = 'PRODUCT_ORIGIN_ABBREV'
          DataSource = dsExtendedInfo
          ReadOnly = True
          TabOrder = 0
        end
      end
      object pnlMeasures: TPanel
        Left = 8
        Top = 0
        Width = 144
        Height = 48
        Align = alLeft
        AutoSize = True
        BevelOuter = bvNone
        TabOrder = 1
        object pnlMeasure: TPanel
          Left = 0
          Top = 0
          Width = 48
          Height = 48
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          object lblMeasure: TLabel
            Left = 0
            Top = 0
            Width = 36
            Height = 13
            Caption = #1056'.'#1084'.'#1077#1076'.'
            FocusControl = edtMeasure
          end
          object edtMeasure: TDBEdit
            Left = 0
            Top = 16
            Width = 41
            Height = 21
            TabStop = False
            Color = clBtnFace
            DataField = 'MEASURE_ABBREV'
            DataSource = dsExtendedInfo
            ReadOnly = True
            TabOrder = 0
          end
        end
        object pnlAccountMeasure: TPanel
          Left = 48
          Top = 0
          Width = 48
          Height = 48
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          object lblAccountMeasure: TLabel
            Left = 0
            Top = 0
            Width = 41
            Height = 13
            Caption = #1057#1095'.'#1084'.'#1077#1076'.'
            FocusControl = edtAccountMeasure
          end
          object edtAccountMeasure: TDBEdit
            Left = 0
            Top = 16
            Width = 41
            Height = 21
            TabStop = False
            Color = clBtnFace
            DataField = 'ACCOUNT_MEASURE_ABBREV'
            DataSource = dsExtendedInfo
            ReadOnly = True
            TabOrder = 0
          end
        end
        object pnlTechMeasure: TPanel
          Left = 96
          Top = 0
          Width = 48
          Height = 48
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 2
          object lblTechMeasure: TLabel
            Left = 0
            Top = 0
            Width = 47
            Height = 13
            Caption = #1058#1093#1085'.'#1084'.'#1077#1076'.'
            FocusControl = edtTechMeasure
          end
          object edtTechMeasure: TDBEdit
            Left = 0
            Top = 16
            Width = 41
            Height = 21
            TabStop = False
            Color = clBtnFace
            DataField = 'ACCOUNT_MEASURE_ABBREV'
            DataSource = dsExtendedInfo
            ReadOnly = True
            TabOrder = 0
          end
        end
      end
      object pnlEngineeringButtons: TPanel
        Left = 626
        Top = 0
        Width = 76
        Height = 48
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 7
        object pnlEngineeringButtonsRightMargin: TPanel
          Left = 69
          Top = 15
          Width = 7
          Height = 33
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
        end
        object pnlEngineeringButtonsTopMargin: TPanel
          Left = 0
          Top = 0
          Width = 76
          Height = 15
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
        end
        object tlbEngineeringButtons: TToolBar
          Left = 0
          Top = 15
          Width = 69
          Height = 33
          Align = alLeft
          AutoSize = True
          Caption = 'tlbEngineeringButtons'
          Images = dmMain.ilActions
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          object btnSpecification: TToolButton
            Left = 0
            Top = 0
            Action = actSpecification
          end
          object btnSpecDocStatus: TToolButton
            Left = 23
            Top = 0
            Action = actSpecDocStatus
          end
          object btnCommonGroups: TToolButton
            Left = 46
            Top = 0
            Action = actCommonGroups
          end
        end
      end
    end
  end
  inherited alActions: TActionList
    Left = 280
    Top = 0
    object actProductPeriods: TAction
      Caption = #1052#1048#1054#1073'...'
      OnExecute = actProductPeriodsExecute
      OnUpdate = actProductPeriodsUpdate
    end
    object actSpecification: TAction
      Hint = #1055'-'#1052#1054#1044#1045#1083
      ImageIndex = 18
      OnExecute = actSpecificationExecute
      OnUpdate = actSpecificationUpdate
    end
    object actSpecDocStatus: TAction
      Hint = #1057#1080#1052' '#1052#1048#1048#1054
      ImageIndex = 113
      OnExecute = actSpecDocStatusExecute
      OnUpdate = actSpecDocStatusUpdate
    end
    object actCommonGroups: TAction
      Hint = #1058#1080#1087#1080#1079#1080#1088#1072#1097#1080' '#1049#1077#1088#1072#1088#1093#1080#1095#1085#1080' '#1057#1090#1088#1091#1082#1090#1091#1088#1080
      ImageIndex = 127
      OnExecute = actCommonGroupsExecute
      OnUpdate = actCommonGroupsUpdate
    end
  end
  inherited dsData: TDataSource
    Left = 312
    Top = 0
  end
  inherited cdsTreeNode: TAbmesClientDataSet
    Left = 344
  end
  inherited dsTreeNode: TDataSource
    Left = 376
  end
  object cdsExtendedInfo: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conProductsTree
    Params = <
      item
        DataType = ftFloat
        Name = 'PARTNER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvProductExFrame'
    BeforeOpen = cdsExtendedInfoBeforeOpen
    OnCalcFields = cdsExtendedInfoCalcFields
    Left = 408
    object cdsExtendedInfoCOMMON_STATUS_CODE: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'COMMON_STATUS_CODE'
      OnGetText = cdsExtendedInfoCOMMON_STATUS_CODEGetText
    end
    object cdsExtendedInfoCOMMON_PRODUCTS_LEVEL_NO: TAbmesFloatField
      FieldName = 'COMMON_PRODUCTS_LEVEL_NO'
    end
    object cdsExtendedInfoCOMMON_PRODUCTS_SUB_LEVELS: TAbmesFloatField
      FieldName = 'COMMON_PRODUCTS_SUB_LEVELS'
    end
    object cdsExtendedInfoSPEC_STATE_CODE: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'SPEC_STATE_CODE'
      OnGetText = cdsExtendedInfoSPEC_STATE_CODEGetText
    end
    object cdsExtendedInfoPARTNER_PRODUCT_NAMES: TAbmesWideStringField
      FieldName = 'PARTNER_PRODUCT_NAMES'
      Size = 250
    end
    object cdsExtendedInfoPRIORITY_NO: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'PRIORITY_NO'
    end
    object cdsExtendedInfoPRIORITY_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_COLOR'
    end
    object cdsExtendedInfoPRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_BACKGROUND_COLOR'
    end
    object cdsExtendedInfoMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object cdsExtendedInfoACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      Size = 5
    end
    object cdsExtendedInfoTECH_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'TECH_MEASURE_ABBREV'
      Size = 5
    end
    object cdsExtendedInfoNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object cdsExtendedInfoPRODUCT_ORIGIN_ABBREV: TAbmesWideStringField
      Alignment = taCenter
      FieldName = 'PRODUCT_ORIGIN_ABBREV'
      Size = 100
    end
    object cdsExtendedInfo_COMMON_PRODUCTS_LEVELS_SHOW: TAbmesWideStringField
      Alignment = taCenter
      FieldKind = fkCalculated
      FieldName = '_COMMON_PRODUCTS_LEVELS_SHOW'
      Calculated = True
    end
    object cdsExtendedInfoSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
    end
  end
  object dsExtendedInfo: TDataSource
    DataSet = cdsExtendedInfo
    Left = 440
  end
  object cdsProductPeriodsParams: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 472
    object cdsProductPeriodsParamsPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
  end
  object cdsSpecParams: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 504
    object cdsSpecParamsSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
    end
  end
end
