inherited fmDeliveryStoreDeals: TfmDeliveryStoreDeals
  Caption = #1054#1090#1095#1077#1090
  ClientHeight = 323
  ClientWidth = 416
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 288
    Width = 416
    inherited pnlOKCancel: TPanel
      Left = 148
    end
    inherited pnlClose: TPanel
      Left = 59
    end
    inherited pnlApply: TPanel
      Left = 327
    end
  end
  inherited pnlMain: TPanel
    Width = 416
    Height = 288
    inherited pnlGrid: TPanel
      Width = 400
      Height = 272
      inherited pnlNavigator: TPanel
        Top = 113
        Width = 400
        TabOrder = 1
        inherited pnlFilterButton: TPanel
          Left = 96
        end
        inherited navData: TDBColorNavigator
          Width = 96
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Hints.Strings = ()
        end
        inherited tlbTopGridButtons: TToolBar
          Left = 120
        end
      end
      inherited grdData: TAbmesDBGrid
        Top = 137
        Width = 400
        Height = 111
        HorzScrollBar.Visible = False
        TabOrder = 0
        UseMultiTitle = True
        VTitleMargin = 4
        Columns = <
          item
            EditButtons = <>
            FieldName = 'STORE_DEAL_DATE'
            Footers = <>
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'STORE_DEAL_NO'
            Footers = <>
            Width = 22
          end
          item
            EditButtons = <>
            FieldName = 'QUANTITY'
            Footers = <>
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'ACCOUNT_QUANTITY'
            Footers = <>
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'STORE_NAME'
            Footers = <>
            Title.Caption = #1058#1055' '#1047#1072#1076'.'
            Width = 143
          end>
      end
      object pnlBottom: TPanel
        Left = 0
        Top = 248
        Width = 400
        Height = 24
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 2
        object lblDeviation: TLabel
          Left = 3
          Top = 6
          Width = 28
          Height = 13
          Caption = #1054#1090#1082#1083'.'
        end
        object lblDays: TLabel
          Left = 75
          Top = 5
          Width = 18
          Height = 13
          Caption = #1076#1085#1080
        end
        object edtDeviation: TDBEdit
          Left = 33
          Top = 2
          Width = 41
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = '_DEVIATION'
          DataSource = dsGridData
          ReadOnly = True
          TabOrder = 0
        end
        object edtTotalQuantity: TDBEdit
          Left = 95
          Top = 1
          Width = 70
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = '_SUM_QUANITITY'
          DataSource = dsGridData
          ReadOnly = True
          TabOrder = 1
        end
        object edtSDTotalAccountQuantity: TDBEdit
          Left = 166
          Top = 1
          Width = 72
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = '_SUM_ACCOUNT_QUANITTY'
          DataSource = dsGridData
          ReadOnly = True
          TabOrder = 2
        end
      end
      object pnlTop: TPanel
        Left = 0
        Top = 0
        Width = 400
        Height = 113
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 3
        DesignSize = (
          400
          113)
        object gbPlannedStoreDeal: TGroupBox
          Left = 0
          Top = 0
          Width = 400
          Height = 113
          Anchors = [akLeft, akTop, akRight]
          Caption = ' '#1055#1083#1072#1085' '
          TabOrder = 0
          object lblPSDStore: TLabel
            Left = 8
            Top = 64
            Width = 91
            Height = 13
            Caption = #1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086
          end
          object lblPSDQuantity: TLabel
            Left = 136
            Top = 16
            Width = 46
            Height = 13
            Caption = #1056#1072#1073'. '#1082'-'#1074#1086
            FocusControl = edtPSDQuantity
          end
          object lblSDDeliveryDate: TLabel
            Left = 8
            Top = 16
            Width = 26
            Height = 13
            Caption = #1044#1072#1090#1072
            FocusControl = frSDDeliveryDate
          end
          object lblPSDAccountQuantity: TLabel
            Left = 248
            Top = 16
            Width = 50
            Height = 13
            Caption = #1057#1095#1077#1090'. '#1082'-'#1074#1086
            FocusControl = edtPSDAccountQuantity
          end
          object lblPSDQuantityMeasure: TDBText
            Left = 198
            Top = 35
            Width = 33
            Height = 13
            DataField = '_MEASURE_ABBREV'
            DataSource = dsData
          end
          object lblPSDAccountQuantityMeasure: TDBText
            Left = 310
            Top = 35
            Width = 33
            Height = 13
            DataField = '_ACCOUNT_MEASURE_ABBREV'
            DataSource = dsData
          end
          object edtPSDQuantity: TDBEdit
            Left = 136
            Top = 32
            Width = 57
            Height = 21
            TabStop = False
            Color = clBtnFace
            DataField = 'WORK_QUANTITY'
            DataSource = dsData
            ReadOnly = True
            TabOrder = 1
          end
          object edtPSDAccountQuantity: TDBEdit
            Left = 248
            Top = 32
            Width = 57
            Height = 21
            TabStop = False
            Color = clBtnFace
            DataField = 'ACCOUNT_QUANTITY'
            DataSource = dsData
            ReadOnly = True
            TabOrder = 2
          end
          inline frSDDeliveryDate: TfrDateFieldEditFrame
            Left = 8
            Top = 32
            Width = 105
            Height = 21
            Constraints.MaxHeight = 21
            Constraints.MaxWidth = 105
            Constraints.MinHeight = 21
            Constraints.MinWidth = 105
            TabOrder = 0
            TabStop = True
          end
          inline frPSDStore: TfrDeptFieldEditFrameBald
            Left = 7
            Top = 80
            Width = 386
            Height = 22
            HorzScrollBar.Visible = False
            VertScrollBar.Visible = False
            Constraints.MaxHeight = 22
            Constraints.MinHeight = 22
            TabOrder = 3
            TabStop = True
            inherited gbTreeNode: TGroupBox
              Width = 402
              inherited pnlTreeNode: TPanel
                Width = 386
                inherited pnlTreeNodeName: TPanel
                  Width = 239
                  inherited edtTreeNodeName: TDBEdit
                    Width = 238
                  end
                end
                inherited pnlTreeNodeNo: TPanel
                  Left = 239
                end
                inherited pnlRightButtons: TPanel
                  Left = 350
                end
              end
            end
            inherited dsTreeNode: TDataSource
              Left = 32
              Top = 72
            end
          end
        end
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 72
    Top = 216
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    ConnectionBroker = dmMain.conDeliveries
    Params = <
      item
        DataType = ftInteger
        Name = 'DELIVERY_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'DELIVERY_OBJECT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvDeliveryStoreDeals'
    OnCalcFields = cdsGridDataCalcFields
    Left = 40
    Top = 216
    object cdsGridDataSTORE_DEAL_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'STORE_DEAL_DATE'
    end
    object cdsGridDataSTORE_DEAL_NO: TAbmesFloatField
      DisplayLabel = 'No'
      FieldName = 'STORE_DEAL_NO'
    end
    object cdsGridDataQUANTITY: TAbmesFloatField
      DisplayLabel = #1056#1072#1073'. '#1082'-'#1074#1086
      FieldName = 'QUANTITY'
      DisplayFormat = ',0.###'
    end
    object cdsGridDataACCOUNT_QUANTITY: TAbmesFloatField
      DisplayLabel = #1057#1095#1077#1090'. '#1082'-'#1074#1086
      FieldName = 'ACCOUNT_QUANTITY'
      DisplayFormat = ',0.###'
    end
    object cdsGridDataSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
    end
    object cdsGridDataSTORE_NAME: TAbmesWideStringField
      DisplayLabel = #1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086
      FieldName = 'STORE_NAME'
      Size = 45
    end
    object cdsGridDataSTORE_DEAL_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'STORE_DEAL_OBJECT_BRANCH_CODE'
    end
    object cdsGridDataSTORE_DEAL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'STORE_DEAL_OBJECT_CODE'
    end
    object cdsGridData_DEVIATION: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_DEVIATION'
      Calculated = True
    end
    object cdsGridData_MAX_STORE_DEAL_DATE: TAggregateField
      FieldName = '_MAX_STORE_DEAL_DATE'
      Active = True
      Expression = 'Max(STORE_DEAL_DATE)'
    end
    object cdsGridData_MIN_STORE_DEAL_DATE: TAggregateField
      FieldName = '_MIN_STORE_DEAL_DATE'
      Active = True
      Expression = 'Min(STORE_DEAL_DATE)'
    end
    object cdsGridData_SUM_ACCOUNT_QUANITTY: TAggregateField
      Alignment = taRightJustify
      FieldName = '_SUM_ACCOUNT_QUANITTY'
      Active = True
      DisplayFormat = ',0.###'
      Expression = 'Sum(ACCOUNT_QUANTITY)'
    end
    object cdsGridData_SUM_QUANITITY: TAggregateField
      Alignment = taRightJustify
      FieldName = '_SUM_QUANITITY'
      Active = True
      DisplayFormat = ',0.###'
      Expression = 'Sum(QUANTITY)'
    end
  end
  inherited alActions: TActionList
    Left = 160
    Top = 184
  end
  inherited pdsGridDataParams: TParamDataSet
    Left = 40
    Top = 248
  end
  inherited dsGridDataParams: TDataSource
    Left = 72
    Top = 248
  end
  inherited dsData: TDataSource
    Left = 72
    Top = 184
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 40
    Top = 184
  end
end
