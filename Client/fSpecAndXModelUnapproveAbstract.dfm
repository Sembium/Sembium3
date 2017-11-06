inherited fmSpecAndXModelUnapproveAbstract: TfmSpecAndXModelUnapproveAbstract
  Caption = #1042#1053#1048#1052#1040#1053#1048#1045' '#1056#1072#1079#1091#1090#1074#1098#1088#1078#1076#1072#1074#1072#1085#1077
  ClientHeight = 416
  ClientWidth = 449
  DesignSize = (
    449
    416)
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 381
    Width = 449
    TabOrder = 4
    ExplicitTop = 381
    ExplicitWidth = 449
    inherited pnlOKCancel: TPanel
      Left = 181
      ExplicitLeft = 181
    end
    inherited pnlClose: TPanel
      Left = 92
      ExplicitLeft = 92
    end
    inherited pnlApply: TPanel
      Left = 360
      Visible = False
      ExplicitLeft = 360
    end
  end
  object pnlCaption: TPanel [1]
    Left = 8
    Top = 8
    Width = 433
    Height = 49
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
    object lblCaption1: TLabel
      Left = 95
      Top = 10
      Width = 62
      Height = 13
      Caption = #1042#1053#1048#1052#1040#1053#1048#1045
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblCaption2: TLabel
      Left = 168
      Top = 10
      Width = 175
      Height = 13
      Caption = #1052#1048#1048#1054' '#1097#1077' '#1073#1098#1076#1077' '#1056#1040#1047#1059#1058#1042#1066#1056#1044#1045#1053#1054'!'
    end
    object lblCaption3: TLabel
      Left = 104
      Top = 27
      Width = 228
      Height = 13
      Caption = #1047#1072#1076#1072#1081#1090#1077' '#1076#1080#1072#1087#1072#1079#1086#1085' '#1085#1072' '#1056#1040#1047#1059#1058#1042#1066#1056#1046#1044#1040#1042#1040#1053#1045'!'
    end
  end
  object pnlObjectIdentifier: TPanel [2]
    Left = 8
    Top = 64
    Width = 433
    Height = 73
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object lblLineNo: TLabel
      Left = 8
      Top = 13
      Width = 75
      Height = 13
      Caption = #1056#1077#1076' '#1086#1090' '#1052#1054#1044#1045#1083
      FocusControl = edtLineNo
    end
    object lblStageNo: TLabel
      Left = 251
      Top = 13
      Width = 24
      Height = 13
      Caption = #1045#1090#1072#1087
      FocusControl = edtStageNo
    end
    object lblOperationNo: TLabel
      Left = 338
      Top = 13
      Width = 50
      Height = 13
      Caption = #1054#1087#1077#1088#1072#1094#1080#1103
      FocusControl = edtOperationNo
    end
    object lblModelIdentifier: TLabel
      Left = 8
      Top = 45
      Width = 99
      Height = 13
      Caption = #1042#1072#1088#1080#1072#1085#1090' '#1085#1072' '#1052#1054#1044#1045#1083
      FocusControl = edtModelIdentifier
    end
    object edtLineNo: TEdit
      Left = 88
      Top = 10
      Width = 137
      Height = 21
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 0
      Text = 'edtLineNo'
    end
    object edtStageNo: TEdit
      Left = 280
      Top = 10
      Width = 33
      Height = 21
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 1
      Text = 'edtStageNo'
    end
    object edtOperationNo: TEdit
      Left = 392
      Top = 10
      Width = 33
      Height = 21
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 2
      Text = 'edtOperationNo'
    end
    object edtModelIdentifier: TEdit
      Left = 120
      Top = 42
      Width = 305
      Height = 21
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 3
      Text = 'edtModelIdentifier'
    end
  end
  object pnlSelectedDocItem: TPanel [3]
    Left = 8
    Top = 144
    Width = 433
    Height = 41
    Anchors = [akLeft, akRight, akBottom]
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 2
    DesignSize = (
      433
      41)
    object lblSelectedDocItem: TLabel
      Left = 8
      Top = 13
      Width = 71
      Height = 13
      Caption = #1048#1079#1073#1088#1072#1085#1086' '#1048#1048#1054
    end
    object edtSelectedDocItemIdentifier: TEdit
      Left = 88
      Top = 10
      Width = 337
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 0
      Text = 'edtSelectedDocItemIdentifier'
    end
  end
  object gbUnapproveMethod: TGroupBox [4]
    Left = 8
    Top = 192
    Width = 433
    Height = 180
    Anchors = [akLeft, akRight, akBottom]
    Caption = ' '#1044#1080#1072#1087#1072#1079#1086#1085' '#1085#1072' '#1088#1072#1079#1091#1090#1074#1098#1088#1078#1076#1072#1074#1072#1085#1077' '
    TabOrder = 3
    DesignSize = (
      433
      180)
    object pnlOperationRange: TPanel
      Left = 280
      Top = 150
      Width = 145
      Height = 21
      Anchors = [akRight, akBottom]
      BevelOuter = bvNone
      TabOrder = 1
      object lblFromOperationNo: TLabel
        Left = 8
        Top = 3
        Width = 11
        Height = 13
        Caption = #1086#1090
        FocusControl = edtFromOperationNo
      end
      object lblToOperationNo: TLabel
        Left = 80
        Top = 3
        Width = 12
        Height = 13
        Caption = #1076#1086
        FocusControl = edtToOperationNo
      end
      object edtFromOperationNo: TDBEdit
        Left = 24
        Top = 0
        Width = 49
        Height = 21
        DataField = 'FROM_OPERATION_NO'
        DataSource = dsData
        TabOrder = 0
      end
      object edtToOperationNo: TDBEdit
        Left = 96
        Top = 0
        Width = 49
        Height = 21
        DataField = 'TO_OPERATION_NO'
        DataSource = dsData
        TabOrder = 1
      end
    end
    object pnlUnapproveMethod: TPanel
      Left = 8
      Top = 14
      Width = 417
      Height = 133
      Anchors = [akLeft, akTop, akRight]
      BevelOuter = bvNone
      TabOrder = 0
      DesignSize = (
        417
        133)
      object gbUnapproveMethods: TRadioGroup
        Left = -2
        Top = -13
        Width = 421
        Height = 148
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'gbUnapproveMethods'
        TabOrder = 0
        OnClick = gbUnapproveMethodsClick
      end
    end
  end
  inherited alActions: TActionList
    Left = 0
    Top = 32
    inherited actForm: TAction
      Caption = #1042#1053#1048#1052#1040#1053#1048#1045' '#1056#1072#1079#1091#1090#1074#1098#1088#1078#1076#1072#1074#1072#1085#1077
    end
  end
  inherited cdsData: TAbmesClientDataSet
    AfterOpen = cdsDataAfterOpen
    BeforePost = cdsDataBeforePost
    object cdsDataUNAPPROVE_METHOD_CODE: TAbmesFloatField
      DisplayLabel = #1044#1080#1072#1087#1072#1079#1086#1085' '#1085#1072' '#1088#1072#1079#1091#1090#1074#1098#1088#1078#1076#1072#1074#1072#1085#1077
      FieldName = 'UNAPPROVE_METHOD_CODE'
    end
    object cdsDataFROM_OPERATION_NO: TAbmesFloatField
      DisplayLabel = #1054#1090' '#1086#1087#1077#1088#1072#1094#1080#1103
      FieldName = 'FROM_OPERATION_NO'
      MaxValue = 10000.000000000000000000
      FieldValueType = fvtInteger
    end
    object cdsDataTO_OPERATION_NO: TAbmesFloatField
      DisplayLabel = #1044#1086' '#1086#1087#1077#1088#1072#1094#1080#1103
      FieldName = 'TO_OPERATION_NO'
      MaxValue = 10000.000000000000000000
      FieldValueType = fvtInteger
    end
  end
  object cdsUnapproveMethods: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    AfterOpen = cdsUnapproveMethodsAfterOpen
    Left = 224
    Top = 152
    object cdsUnapproveMethodsUNAPPROVE_METHOD_CODE: TAbmesFloatField
      FieldName = 'UNAPPROVE_METHOD_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsUnapproveMethodsUNAPPROVE_METHOD_NAME: TAbmesWideStringField
      FieldName = 'UNAPPROVE_METHOD_NAME'
      Size = 150
    end
  end
end
