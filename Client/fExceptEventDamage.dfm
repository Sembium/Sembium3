inherited fmExceptEventDamage: TfmExceptEventDamage
  Caption = #1042#1077#1088#1080#1078#1085#1086' '#1055#1086#1088#1072#1078#1077#1085#1080#1077' - %s'
  ClientHeight = 655
  ClientWidth = 738
  ExplicitWidth = 744
  ExplicitHeight = 680
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 620
    Width = 738
    ExplicitTop = 620
    ExplicitWidth = 738
    inherited pnlOKCancel: TPanel
      Left = 470
      ExplicitLeft = 470
    end
    inherited pnlClose: TPanel
      Left = 381
      ExplicitLeft = 381
    end
    inherited pnlApply: TPanel
      Left = 649
      Visible = False
      ExplicitLeft = 649
    end
  end
  inherited pnlMain: TPanel
    Width = 738
    Height = 620
    ExplicitWidth = 738
    ExplicitHeight = 620
    DesignSize = (
      738
      620)
    object pnlMaterialListLine: TPanel [0]
      Left = 8
      Top = 152
      Width = 721
      Height = 73
      Anchors = [akLeft, akTop, akRight]
      BevelOuter = bvNone
      TabOrder = 2
      object gbMaterialListLine: TGroupBox
        Left = 0
        Top = 0
        Width = 721
        Height = 73
        Align = alClient
        Caption = 'ID '#1054#1055#1042' '
        TabOrder = 0
        inline frMaterialListLine: TfrMLLProcessObject
          Left = 2
          Top = 15
          Width = 367
          Height = 56
          Align = alLeft
          TabOrder = 0
          TabStop = True
          Visible = False
          OnExit = frMaterialListLineExit
          ExplicitLeft = 2
          ExplicitTop = 15
          ExplicitWidth = 367
          ExplicitHeight = 56
          inherited lblIsWasteCompensator: TLabel [0]
            Width = 85
            Visible = False
            ExplicitWidth = 85
          end
          inherited lblBranch: TLabel [1]
            Width = 51
            ExplicitWidth = 51
          end
          inherited lblPPNo: TLabel [2]
            Width = 40
            ExplicitWidth = 40
          end
          inherited lblNoAsText: TLabel [3]
            Left = 216
            Width = 85
            ExplicitLeft = 216
            ExplicitWidth = 85
          end
          inherited lblForkNo: TLabel [4]
            Left = 320
            Width = 13
            ExplicitLeft = 320
            ExplicitWidth = 13
          end
          inherited lblProductionOrderTypeAbbrev: TLabel [5]
            Width = 38
            ExplicitWidth = 38
          end
          inherited lblSaleTypeAbbrev: TLabel [6]
          end
          inherited edtIsWasteCompensator: TDBEdit [7]
            ReadOnly = True
            Visible = False
          end
          inherited edtPPNo: TDBEdit [8]
          end
          inherited edtNoAsText: TDBEdit [9]
            Left = 216
            ExplicitLeft = 216
          end
          inherited cbBranch: TJvDBLookupCombo [10]
          end
          inherited edtForkNo: TDBEdit [11]
            Left = 320
            ExplicitLeft = 320
          end
          inherited btnShowProcessObjectForm: TButton [12]
            Left = 376
            Width = 113
            Visible = False
            ExplicitLeft = 376
            ExplicitWidth = 113
          end
          inherited edtProductionOrderTypeAbbrev: TDBEdit [13]
            ReadOnly = True
          end
          inherited edtSaleTypeAbbrev: TDBEdit [14]
            ReadOnly = True
          end
          inherited edtIsWasteFork: TDBEdit
            Left = 344
            ReadOnly = True
            Visible = False
            ExplicitLeft = 344
          end
        end
        object btnMaterialListLine: TBitBtn
          Left = 376
          Top = 37
          Width = 75
          Height = 25
          Action = actMaterialListLine
          Caption = #1054#1055#1042'...'
          TabOrder = 1
        end
      end
    end
    object pnlDelivery: TPanel [1]
      Left = 8
      Top = 152
      Width = 721
      Height = 73
      Anchors = [akLeft, akTop, akRight]
      BevelOuter = bvNone
      TabOrder = 3
      object gbDelivery: TGroupBox
        Left = 0
        Top = 0
        Width = 721
        Height = 73
        Align = alClient
        Caption = ' ID '#1054#1055#1044' '
        TabOrder = 0
        inline frDelivery: TfrDeliveryProcessObject
          Left = 2
          Top = 15
          Width = 223
          Height = 56
          Align = alLeft
          TabOrder = 0
          TabStop = True
          Visible = False
          OnExit = frDeliveryExit
          ExplicitLeft = 2
          ExplicitTop = 15
          ExplicitWidth = 223
          ExplicitHeight = 56
          inherited lblBranch: TLabel
            Width = 51
            ExplicitWidth = 51
          end
          inherited lblRPDNo: TLabel
            Width = 43
            ExplicitWidth = 43
          end
          inherited lblDeliveryProjectCode: TLabel
            Width = 42
            ExplicitWidth = 42
          end
          inherited lblInvoiceNo: TLabel
            Width = 62
            Visible = False
            ExplicitWidth = 62
          end
          inherited lblInvoiceDate: TLabel
            Width = 86
            Visible = False
            ExplicitWidth = 86
          end
          inherited lblSaleDealTypeAbbrev: TLabel
            Width = 19
            ExplicitWidth = 19
          end
          inherited lblIsProformInvoiceStatusOnDeliveryPanel: TLabel
            Width = 36
            Visible = False
            ExplicitWidth = 36
          end
          inherited lblVendorName: TLabel
            Visible = False
          end
          inherited edtInvoiceNo: TDBEdit
            Visible = False
          end
          inherited edtInvoiceAbbrev: TDBEdit
            Visible = False
          end
          inherited frInvoiceDate: TfrDateFieldEditFrame
            Left = 100
            Visible = False
            ExplicitLeft = 100
            inherited dsData: TDataSource
              DataSet = frDelivery.pdsProcessObjectParams
            end
          end
          inherited edtVendorName: TDBEdit [15]
            Visible = False
          end
          inherited btnShowProcessObjectForm: TButton
            Left = 440
            Top = 6
            Width = 113
            Visible = False
            ExplicitLeft = 440
            ExplicitTop = 6
            ExplicitWidth = 113
          end
          inherited edtSaleDealTypeAbbrev: TDBEdit [17]
            ReadOnly = True
          end
        end
        object btnDelivery: TBitBtn
          Left = 240
          Top = 36
          Width = 75
          Height = 25
          Action = actDelivery
          Caption = #1054#1055#1044'...'
          TabOrder = 1
        end
      end
    end
    object pnlSaleShipment: TPanel [2]
      Left = 8
      Top = 152
      Width = 721
      Height = 73
      Anchors = [akLeft, akTop, akRight]
      BevelOuter = bvNone
      TabOrder = 4
      object gbSaleShipment: TGroupBox
        Left = 0
        Top = 0
        Width = 569
        Height = 73
        Align = alLeft
        Caption = ' ID '#1054#1055#1055' '
        TabOrder = 0
        inline frSaleShipment: TfrSaleShipmentProcessObject
          Left = 2
          Top = 15
          Width = 327
          Height = 56
          Align = alLeft
          TabOrder = 1
          TabStop = True
          Visible = False
          OnExit = frSaleShipmentExit
          ExplicitLeft = 2
          ExplicitTop = 15
          ExplicitWidth = 327
          ExplicitHeight = 56
          inherited lblBranch: TLabel
            Width = 51
            ExplicitWidth = 51
          end
          inherited lblPPNo: TLabel
            Width = 41
            ExplicitWidth = 41
          end
          inherited lblShipmentNo: TLabel
            Width = 48
            ExplicitWidth = 48
          end
          inherited lblSaleDealTypeAbbrev: TLabel
            Width = 19
            ExplicitWidth = 19
          end
          inherited lblClientName: TLabel
            Width = 36
            Visible = False
            ExplicitWidth = 36
          end
          inherited edtClientName: TDBEdit [6]
            Visible = False
          end
          inherited cbBranch: TJvDBLookupCombo [7]
          end
          inherited edtPPNo: TDBEdit [8]
          end
          inherited edtShipmentNo: TDBEdit [9]
          end
          inherited btnShowProcessObjectForm: TButton [10]
            Left = 336
            Visible = False
            ExplicitLeft = 336
          end
          inherited edtSaleDealTypeAbbrev: TDBEdit [11]
          end
          inherited edtSaleTypeAbbrev: TDBEdit [12]
          end
        end
        object btnSaleShipment: TBitBtn
          Left = 344
          Top = 36
          Width = 75
          Height = 25
          Action = actSaleShipment
          Caption = #1054#1055#1055'...'
          TabOrder = 0
        end
      end
      object gbSalePrice: TGroupBox
        Left = 576
        Top = 0
        Width = 145
        Height = 73
        Caption = ' '#1055#1057' '#1087#1086' '#1042#1077#1088'. '#1055#1088#1078'.'
        TabOrder = 1
        object lblCurrencyAbbrev: TDBText
          Left = 104
          Top = 36
          Width = 33
          Height = 17
          DataField = 'CURRENCY_ABBREV'
          DataSource = dsProcessData
        end
        object edtSalePrice: TDBEdit
          Left = 16
          Top = 32
          Width = 81
          Height = 21
          Color = clBtnFace
          DataField = '_DAMAGED_TOTAL_PRICE'
          DataSource = dsProcessData
          ReadOnly = True
          TabOrder = 0
        end
      end
    end
    inherited pnlGrid: TPanel
      Top = 390
      Width = 722
      Height = 222
      Align = alBottom
      TabOrder = 7
      ExplicitTop = 390
      ExplicitWidth = 722
      ExplicitHeight = 222
      inherited pnlNavigator: TPanel
        Width = 722
        ExplicitWidth = 722
        inherited pnlFilterButton: TPanel
          Left = 168
          ExplicitLeft = 168
        end
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
        inherited tlbTopGridButtons: TToolBar
          Left = 192
          ExplicitLeft = 192
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 722
        Height = 198
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = '_STATE_CODE'
            Footers = <>
            Title.Caption = #1057#1090#1072#1090#1091#1089
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'EXCEPT_EVENT_DAMAGE_ATTACK_NO'
            Footers = <>
            Title.Caption = 'No'
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'PRODUCT_QUANTITY'
            Footers = <>
            Width = 67
          end
          item
            EditButtons = <>
            FieldName = 'PROPOSED_PLAN_SHIFT_WORKDAYS'
            Footers = <>
            Title.Caption = #1044#1085#1080
            Width = 36
          end
          item
            EditButtons = <>
            FieldName = 'NOTES'
            Footers = <>
            Title.Caption = #1041#1077#1083#1077#1078#1082#1080
            Width = 465
          end
          item
            EditButtons = <>
            FieldName = 'NORMALIZE_DATE'
            Footers = <>
            Title.Caption = #1044#1072#1090#1072' '#1053#1086#1088#1084
            Width = 31
          end>
      end
    end
    inline frExceptEventIdentification: TfrExceptEventIdentification
      Left = 8
      Top = 8
      Width = 721
      Height = 64
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      TabStop = True
      ExplicitLeft = 8
      ExplicitTop = 8
      inherited gbExceptEventIdentification: TGroupBox
        inherited lblState: TLabel
          Width = 34
          ExplicitWidth = 34
        end
        inherited lblExceptEventNo: TLabel
          Width = 14
          ExplicitWidth = 14
        end
        inherited lblExceptEventCreateTime: TLabel
          Width = 20
          ExplicitWidth = 20
        end
        inherited lblLevel: TLabel
          Width = 36
          ExplicitWidth = 36
        end
        inherited lblConsequences: TLabel
          Width = 54
          ExplicitWidth = 54
        end
        inherited frExceptEventCreateDate: TfrDateFieldEditFrame
          inherited dsData: TDataSource
            DataSet = frExceptEventIdentification.cdsExceptEvent
          end
        end
        inherited frExceptEventCreateTime: TfrTimeFieldEditFrame
          inherited edtTime: TDBDateTimeEditEh
            EditFormat = 'HH:NN'
          end
          inherited dsData: TDataSource
            DataSet = frExceptEventIdentification.cdsExceptEvent
          end
        end
      end
    end
    object gbExceptEventDamageId: TGroupBox
      Left = 8
      Top = 80
      Width = 721
      Height = 65
      Anchors = [akLeft, akTop, akRight]
      Caption = 'ID '#1042#1077#1088#1080#1078#1085#1086' '#1055#1086#1088#1072#1078#1077#1085#1080#1077' '
      TabOrder = 1
      DesignSize = (
        721
        65)
      object lblState: TLabel
        Left = 16
        Top = 16
        Width = 34
        Height = 13
        Caption = #1057#1090#1072#1090#1091#1089
      end
      object lblCreateDate: TLabel
        Left = 64
        Top = 16
        Width = 26
        Height = 13
        Caption = #1044#1072#1090#1072
      end
      object lblDamageWorkdays: TLabel
        Left = 176
        Top = 16
        Width = 44
        Height = 13
        Caption = #1055#1077#1088'. '#1040#1090#1082
      end
      object lblParentFullNo: TLabel
        Left = 232
        Top = 16
        Width = 54
        Height = 13
        Caption = #1057#1090#1088#1091#1082#1090'. No'
      end
      object lblProcessType: TLabel
        Left = 564
        Top = 16
        Width = 97
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1055#1088#1086#1094#1077#1089#1085#1072' '#1057#1080#1089#1090#1077#1084#1072
      end
      object edtState: TDBEdit
        Left = 16
        Top = 32
        Width = 41
        Height = 21
        Color = clBtnFace
        DataField = 'STATE_CODE'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 0
      end
      inline frCreateDate: TfrDateFieldEditFrame
        Left = 64
        Top = 32
        Width = 105
        Height = 21
        Constraints.MaxHeight = 21
        Constraints.MaxWidth = 105
        Constraints.MinHeight = 21
        Constraints.MinWidth = 105
        TabOrder = 1
        TabStop = True
        ExplicitLeft = 64
        ExplicitTop = 32
      end
      object edtDamageWorkdays: TDBEdit
        Left = 176
        Top = 32
        Width = 49
        Height = 21
        Color = clBtnFace
        DataField = 'DAMAGE_WORKDAYS'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 2
      end
      object edtParentFullNo: TDBEdit
        Left = 232
        Top = 32
        Width = 73
        Height = 21
        Color = clBtnFace
        DataField = 'PARENT_FULL_NO'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 3
      end
      object edtLocalNo: TDBEdit
        Left = 306
        Top = 32
        Width = 31
        Height = 21
        DataField = 'LOCAL_NO'
        DataSource = dsData
        TabOrder = 4
      end
      object cbExceptEventDamageProcessType: TJvDBLookupCombo
        Left = 564
        Top = 32
        Width = 145
        Height = 21
        DropDownCount = 5
        EscapeClear = False
        DataField = 'EE_DAMAGE_PROCESS_TYPE_CODE'
        DataSource = dsData
        Anchors = [akTop, akRight]
        LookupField = 'EE_DAMAGE_PROCESS_TYPE_CODE'
        LookupDisplay = 'EE_DAMAGE_PROCESS_TYPE_ABBREV'
        LookupSource = dsExceptEventDamageProcessTypes
        TabOrder = 5
      end
    end
    object gbProcessFinalization: TGroupBox
      Left = 8
      Top = 304
      Width = 721
      Height = 73
      Anchors = [akLeft, akTop, akRight]
      Caption = ' '#1060#1080#1085#1072#1083' ID '#1054#1055' '
      TabOrder = 6
      object lblPlanDateInterval: TLabel
        Left = 16
        Top = 24
        Width = 81
        Height = 13
        Caption = #1055#1083#1072#1085#1086#1074' '#1042#1088#1084#1048#1085#1090
      end
      object lblProcessProductQuantity: TLabel
        Left = 176
        Top = 24
        Width = 51
        Height = 13
        Caption = #1050'-'#1074#1086' '#1055#1083#1072#1085
      end
      object lblProcessProductMeasureAbbrev: TDBText
        Left = 240
        Top = 44
        Width = 33
        Height = 17
        DataField = 'MEASURE_ABBREV'
        DataSource = dsProcessData
      end
      object lblProductQuantity: TLabel
        Left = 280
        Top = 24
        Width = 28
        Height = 13
        Caption = #1054#1090#1082#1083'.'
      end
      object lblProductMeasureAbbrev: TDBText
        Left = 344
        Top = 44
        Width = 33
        Height = 17
        DataField = 'MEASURE_ABBREV'
        DataSource = dsProcessData
      end
      inline frPlanDateInterval: TfrDateIntervalFrame
        Left = 16
        Top = 40
        Width = 145
        Height = 21
        Constraints.MaxHeight = 21
        Constraints.MaxWidth = 145
        Constraints.MinHeight = 21
        Constraints.MinWidth = 145
        TabOrder = 0
        TabStop = True
        ExplicitLeft = 16
        ExplicitTop = 40
        inherited dsData: TDataSource
          DataSet = cdsProcessData
        end
      end
      object edtProcessProductQuantity: TDBEdit
        Left = 176
        Top = 40
        Width = 57
        Height = 21
        Color = clBtnFace
        DataField = 'PRODUCT_QUANTITY'
        DataSource = dsProcessData
        ReadOnly = True
        TabOrder = 1
      end
      object edtProductQuantity: TDBEdit
        Left = 280
        Top = 40
        Width = 57
        Height = 21
        DataField = 'PRODUCT_QUANTITY'
        DataSource = dsData
        TabOrder = 2
      end
    end
    inline frProduct: TfrProductFieldEditFrameLabeled
      Left = 8
      Top = 232
      Width = 721
      Height = 65
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Anchors = [akLeft, akTop, akRight]
      Constraints.MaxHeight = 65
      TabOrder = 5
      TabStop = True
      ExplicitLeft = 8
      ExplicitTop = 232
      ExplicitWidth = 721
      inherited gbTreeNode: TGroupBox
        Width = 721
        Caption = ' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090' '#1087#1086' ID '#1054#1055' '
        ExplicitWidth = 721
        inherited pnlTreeNode: TPanel
          Width = 705
          ExplicitWidth = 705
          inherited pnlTreeNodeName: TPanel
            Width = 535
            ExplicitWidth = 535
            inherited edtTreeNodeName: TDBEdit
              Width = 534
              ExplicitWidth = 534
            end
          end
          inherited pnlTreeNodeNo: TPanel
            Left = 535
            ExplicitLeft = 535
          end
          inherited pnlRightButtons: TPanel
            Left = 646
            ExplicitLeft = 646
          end
        end
      end
      inherited dsData: TDataSource
        DataSet = cdsProcessData
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    DataSetField = cdsDataqryExceptEventDamageAttacks
    FieldDefs = <
      item
        Name = 'EXCEPT_EVENT_DMG_ATTACK_CODE'
        DataType = ftFloat
      end
      item
        Name = 'EXCEPT_EVENT_DAMAGE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'STATE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'EXCEPT_EVENT_DAMAGE_ATTACK_NO'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'PROPOSED_PLAN_SHIFT_WORKDAYS'
        DataType = ftFloat
      end
      item
        Name = 'NOTES'
        DataType = ftWideString
        Size = 250
      end
      item
        Name = 'NORMALIZE_EMPLOYEE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'NORMALIZE_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'NORMALIZE_TIME'
        DataType = ftTimeStamp
      end>
    OnCalcFields = cdsGridDataCalcFields
    OnNewRecord = cdsGridDataNewRecord
    object cdsGridDataEXCEPT_EVENT_DMG_ATTACK_CODE: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_DMG_ATTACK_CODE'
    end
    object cdsGridDataEXCEPT_EVENT_DAMAGE_CODE: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_DAMAGE_CODE'
    end
    object cdsGridDataEXCEPT_EVENT_DAMAGE_ATTACK_NO: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_DAMAGE_ATTACK_NO'
    end
    object cdsGridDataPRODUCT_QUANTITY: TAbmesFloatField
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'PRODUCT_QUANTITY'
      Required = True
      DisplayFormat = '0.###'
    end
    object cdsGridDataPROPOSED_PLAN_SHIFT_WORKDAYS: TAbmesFloatField
      FieldName = 'PROPOSED_PLAN_SHIFT_WORKDAYS'
    end
    object cdsGridDataNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object cdsGridDataNORMALIZE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'NORMALIZE_EMPLOYEE_CODE'
    end
    object cdsGridDataNORMALIZE_DATE: TAbmesSQLTimeStampField
      FieldName = 'NORMALIZE_DATE'
    end
    object cdsGridDataNORMALIZE_TIME: TAbmesSQLTimeStampField
      FieldName = 'NORMALIZE_TIME'
    end
    object cdsGridData_STATE_CODE: TAbmesFloatField
      Alignment = taLeftJustify
      FieldKind = fkCalculated
      FieldName = '_STATE_CODE'
      OnGetText = cdsGridData_STATE_CODEGetText
      Calculated = True
    end
    object cdsGridData_MAX_DAMAGE_ATTACK_NO: TAggregateField
      FieldName = '_MAX_DAMAGE_ATTACK_NO'
      Active = True
      Expression = 'Max(EXCEPT_EVENT_DAMAGE_ATTACK_NO)'
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1042#1077#1088#1080#1078#1085#1086' '#1055#1086#1088#1072#1078#1077#1085#1080#1077' - %s'
    end
    object actDelivery: TAction
      Caption = #1054#1055#1044'...'
      Hint = #1054#1055#1044
      OnExecute = actDeliveryExecute
      OnUpdate = actDeliveryUpdate
    end
    object actSaleShipment: TAction
      Caption = #1054#1055#1055'...'
      Hint = #1054#1055#1055
      OnExecute = actSaleShipmentExecute
      OnUpdate = actSaleShipmentUpdate
    end
    object actMaterialListLine: TAction
      Caption = #1054#1055#1042'...'
      Hint = #1054#1055#1042
      OnExecute = actMaterialListLineExecute
      OnUpdate = actMaterialListLineUpdate
    end
  end
  inherited cdsData: TAbmesClientDataSet
    Params = <
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_DAMAGE_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvExceptEventDamage'
    ConnectionBroker = dmMain.conExceptEvents
    BeforePost = cdsDataBeforePost
    object cdsDataEXCEPT_EVENT_DAMAGE_CODE: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_DAMAGE_CODE'
    end
    object cdsDataEXCEPT_EVENT_CODE: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_CODE'
    end
    object cdsDataPARENT_CODE: TAbmesFloatField
      FieldName = 'PARENT_CODE'
    end
    object cdsDataSTATE_CODE: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'STATE_CODE'
      OnGetText = cdsDataSTATE_CODEGetText
    end
    object cdsDataDAMAGE_WORKDAYS: TAbmesFloatField
      FieldName = 'DAMAGE_WORKDAYS'
    end
    object cdsDataPARENT_FULL_NO: TAbmesWideStringField
      FieldName = 'PARENT_FULL_NO'
      Size = 100
    end
    object cdsDataLOCAL_NO: TAbmesFloatField
      DisplayLabel = #1057#1090#1088#1091#1082#1090'. No'
      FieldName = 'LOCAL_NO'
      Required = True
    end
    object cdsDataEE_DAMAGE_PROCESS_TYPE_CODE: TAbmesFloatField
      FieldName = 'EE_DAMAGE_PROCESS_TYPE_CODE'
      Required = True
      OnChange = cdsDataEE_DAMAGE_PROCESS_TYPE_CODEChange
    end
    object cdsDataPRODUCT_QUANTITY: TAbmesFloatField
      DisplayLabel = #1054#1090#1082#1083'.'
      FieldName = 'PRODUCT_QUANTITY'
      Required = True
      DisplayFormat = '0.###'
    end
    object cdsDataCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object cdsDataCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object cdsDataCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object cdsDataCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object cdsDataCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object cdsDataCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object cdsDataMLL_OBJECT_BRANCH_CODE: TAbmesFloatField
      DisplayLabel = #1054#1055#1042
      FieldName = 'MLL_OBJECT_BRANCH_CODE'
    end
    object cdsDataMLL_OBJECT_CODE: TAbmesFloatField
      DisplayLabel = #1054#1055#1042
      FieldName = 'MLL_OBJECT_CODE'
    end
    object cdsDataDELIVERY_OBJECT_BRANCH_CODE: TAbmesFloatField
      DisplayLabel = #1054#1055#1044
      FieldName = 'DELIVERY_OBJECT_BRANCH_CODE'
    end
    object cdsDataDELIVERY_OBJECT_CODE: TAbmesFloatField
      DisplayLabel = #1054#1055#1044
      FieldName = 'DELIVERY_OBJECT_CODE'
    end
    object cdsDataSHIPMENT_OBJECT_BRANCH_CODE: TAbmesFloatField
      DisplayLabel = #1054#1055#1055
      FieldName = 'SHIPMENT_OBJECT_BRANCH_CODE'
    end
    object cdsDataSHIPMENT_OBJECT_CODE: TAbmesFloatField
      DisplayLabel = #1054#1055#1055
      FieldName = 'SHIPMENT_OBJECT_CODE'
    end
    object cdsDataqryExceptEventDamageAttacks: TDataSetField
      FieldName = 'qryExceptEventDamageAttacks'
    end
    object cdsDataBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_BRANCH_CODE'
      OnChange = cdsDataBND_PROCESS_OBJECT_BRANCH_CODEChange
    end
    object cdsDataBND_PROCESS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_CODE'
      OnChange = cdsDataBND_PROCESS_OBJECT_CODEChange
    end
  end
  object cdsExceptEventDamageProcessTypes: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvExceptEventDamgeProcessTypes'
    ConnectionBroker = dmMain.conExceptEvents
    Left = 448
    Top = 104
    object cdsExceptEventDamageProcessTypesEE_DAMAGE_PROCESS_TYPE_CODE: TAbmesFloatField
      FieldName = 'EE_DAMAGE_PROCESS_TYPE_CODE'
    end
    object cdsExceptEventDamageProcessTypesEE_DAMAGE_PROCESS_TYPE_NO: TAbmesFloatField
      FieldName = 'EE_DAMAGE_PROCESS_TYPE_NO'
    end
    object cdsExceptEventDamageProcessTypesEE_DAMAGE_PROCESS_TYPE_NAME: TAbmesWideStringField
      FieldName = 'EE_DAMAGE_PROCESS_TYPE_NAME'
      Size = 100
    end
    object cdsExceptEventDamageProcessTypesEE_DAMAGE_PROCESS_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'EE_DAMAGE_PROCESS_TYPE_ABBREV'
      Size = 100
    end
  end
  object dsExceptEventDamageProcessTypes: TDataSource
    DataSet = cdsExceptEventDamageProcessTypes
    Left = 480
    Top = 104
  end
  object cdsProcessData: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    OnCalcFields = cdsProcessDataCalcFields
    Left = 360
    Top = 184
    object cdsProcessDataPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object cdsProcessDataPRODUCT_QUANTITY: TAbmesFloatField
      FieldName = 'PRODUCT_QUANTITY'
      DisplayFormat = '0.###'
    end
    object cdsProcessDataMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object cdsProcessDataPLAN_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'PLAN_BEGIN_DATE'
    end
    object cdsProcessDataPLAN_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'PLAN_END_DATE'
    end
    object cdsProcessDataSINGLE_PRICE: TAbmesFloatField
      FieldName = 'SINGLE_PRICE'
    end
    object cdsProcessDataCURRENCY_ABBREV: TAbmesWideStringField
      FieldName = 'CURRENCY_ABBREV'
      Size = 5
    end
    object cdsProcessData_DAMAGED_TOTAL_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_DAMAGED_TOTAL_PRICE'
      DisplayFormat = ',0'
      Calculated = True
    end
  end
  object cdsMaterialListLineData: TAbmesClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftFloat
        Name = 'MLL_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_OBJECT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvMaterialListLineData'
    ConnectionBroker = dmMain.conExceptEvents
    BeforeOpen = cdsMaterialListLineDataBeforeOpen
    Left = 344
    Top = 144
    object cdsMaterialListLineDataPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object cdsMaterialListLineDataPRODUCT_QUANTITY: TAbmesFloatField
      FieldName = 'PRODUCT_QUANTITY'
    end
    object cdsMaterialListLineDataMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object cdsMaterialListLineDataPLAN_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'PLAN_BEGIN_DATE'
    end
    object cdsMaterialListLineDataPLAN_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'PLAN_END_DATE'
    end
  end
  object cdsDeliveryData: TAbmesClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftFloat
        Name = 'DELIVERY_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_OBJECT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvDeliveryData'
    ConnectionBroker = dmMain.conExceptEvents
    BeforeOpen = cdsDeliveryDataBeforeOpen
    Left = 376
    Top = 144
    object cdsDeliveryDataPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object cdsDeliveryDataPRODUCT_QUANTITY: TAbmesFloatField
      FieldName = 'PRODUCT_QUANTITY'
    end
    object cdsDeliveryDataMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object cdsDeliveryDataPLAN_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'PLAN_BEGIN_DATE'
    end
    object cdsDeliveryDataPLAN_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'PLAN_END_DATE'
    end
  end
  object cdsSaleShipmentData: TAbmesClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftFloat
        Name = 'SHIPMENT_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIPMENT_OBJECT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvSaleShipmentData'
    ConnectionBroker = dmMain.conExceptEvents
    BeforeOpen = cdsSaleShipmentDataBeforeOpen
    Left = 408
    Top = 144
    object cdsSaleShipmentDataPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object cdsSaleShipmentDataPRODUCT_QUANTITY: TAbmesFloatField
      FieldName = 'PRODUCT_QUANTITY'
    end
    object cdsSaleShipmentDataMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object cdsSaleShipmentDataPLAN_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'PLAN_BEGIN_DATE'
    end
    object cdsSaleShipmentDataPLAN_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'PLAN_END_DATE'
    end
    object cdsSaleShipmentDataSINGLE_PRICE: TAbmesFloatField
      FieldName = 'SINGLE_PRICE'
    end
    object cdsSaleShipmentDataCURRENCY_ABBREV: TAbmesWideStringField
      FieldName = 'CURRENCY_ABBREV'
      Size = 5
    end
  end
  object dsProcessData: TDataSource
    DataSet = cdsProcessData
    Left = 392
    Top = 184
  end
  object cdsMLLSale: TAbmesClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftFloat
        Name = 'MLL_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_OBJECT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvMllSale'
    ConnectionBroker = dmMain.conExceptEvents
    BeforeOpen = cdsMLLSaleBeforeOpen
    Left = 512
    Top = 184
    object cdsMLLSaleSALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_BRANCH_CODE'
    end
    object cdsMLLSaleSALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_CODE'
    end
    object cdsMLLSaleSALE_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_ORDER_TYPE_CODE'
    end
  end
end
