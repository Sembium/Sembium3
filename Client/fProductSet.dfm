inherited fmProductSet: TfmProductSet
  Caption = #1054#1073#1077#1082#1090#1086#1074' '#1085#1072#1073#1086#1088' - %s'
  ClientHeight = 428
  ClientWidth = 562
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 393
    Width = 562
    TabOrder = 1
    inherited pnlOKCancel: TPanel
      Left = 294
    end
    inherited pnlClose: TPanel
      Left = 205
    end
    inherited pnlApply: TPanel
      Left = 473
      Visible = False
    end
  end
  object pnlMain: TPanel [1]
    Left = 0
    Top = 0
    Width = 562
    Height = 393
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object pnlTop: TPanel
      Left = 0
      Top = 0
      Width = 562
      Height = 73
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object bvlTop: TBevel
        Left = 8
        Top = 8
        Width = 545
        Height = 57
        Shape = bsFrame
      end
      object lblProductSetName: TLabel
        Left = 80
        Top = 16
        Width = 76
        Height = 13
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      end
      object lblProductSetNo: TLabel
        Left = 16
        Top = 16
        Width = 19
        Height = 13
        Caption = #1050#1086#1076
      end
      object lblDateInterval: TLabel
        Left = 400
        Top = 16
        Width = 40
        Height = 13
        Caption = #1042#1088#1084#1048#1085#1090
      end
      object edtProductSetNo: TDBEdit
        Left = 16
        Top = 32
        Width = 57
        Height = 21
        DataField = 'PRODUCT_SET_NO'
        DataSource = dsData
        TabOrder = 0
      end
      object edtProductSetName: TDBEdit
        Left = 80
        Top = 32
        Width = 313
        Height = 21
        DataField = 'PRODUCT_SET_NAME'
        DataSource = dsData
        TabOrder = 1
      end
      inline frDateInterval: TfrDateIntervalFrame
        Left = 400
        Top = 32
        Width = 145
        Height = 21
        Constraints.MaxHeight = 21
        Constraints.MaxWidth = 145
        Constraints.MinHeight = 21
        Constraints.MinWidth = 145
        TabOrder = 2
        TabStop = True
      end
    end
    object pnlProductParams: TPanel
      Left = 0
      Top = 73
      Width = 562
      Height = 320
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      inline frParamProductFilter: TfrParamProductFilter
        Left = 8
        Top = 4
        Width = 545
        Height = 310
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        inherited grpTreeNodeFilter: TGroupBox
          Width = 545
          Height = 310
          inherited lblUsedBy: TLabel
            Top = 258
            Width = 61
          end
          inherited lblProvidedBy: TLabel
            Top = 258
          end
          inherited lblProductOrigin: TLabel
            Top = 258
            Width = 23
          end
          inherited lblCommonStatus: TLabel
            Top = 258
            Width = 45
          end
          inherited lblIsActive: TLabel
            Top = 258
            Width = 53
          end
          inherited pnlNodes: TPanel
            Width = 529
            Height = 130
            inherited pnlNodesButtons: TPanel
              Left = 504
              Height = 130
            end
            inherited grdChosenNodes: TAbmesDBGrid
              Width = 504
              Height = 130
              FooterFont.Name = 'Microsoft Sans Serif'
              TitleFont.Name = 'Microsoft Sans Serif'
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'NODE_NAME'
                  Footers = <>
                  Width = 375
                end
                item
                  EditButtons = <>
                  FieldName = 'NODE_NO'
                  Footers = <>
                  Width = 94
                end>
            end
          end
          inherited pnlParams: TPanel
            Top = 155
            Width = 529
            Height = 94
            inherited grdChosenNodeParams: TAbmesDBGrid
              Width = 504
              Height = 94
              FooterFont.Name = 'Microsoft Sans Serif'
              TitleFont.Name = 'Microsoft Sans Serif'
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'NODE_PARAM_NAME'
                  Footers = <>
                  Width = 222
                end
                item
                  EditButtons = <>
                  FieldName = 'DISPLAY_VALUE'
                  Footers = <>
                  Width = 247
                end>
            end
            inherited pnlParamsButtons: TPanel
              Left = 504
              Height = 94
            end
          end
          inherited cbProductOrigin: TJvDBLookupCombo
            Top = 274
          end
          inherited cbProvidedBy: TJvDBLookupCombo
            Top = 274
          end
          inherited cbUsedBy: TJvDBLookupCombo
            Top = 274
          end
          inherited cbCommonStatuses: TJvDBLookupCombo
            Top = 274
          end
          inherited cbIsActive: TJvDBLookupCombo
            Top = 274
          end
        end
        inherited cdsProductOrigins: TAbmesClientDataSet
          Top = 258
        end
        inherited dsProductOrigins: TDataSource
          Top = 258
        end
        inherited cdsUsedBy: TAbmesClientDataSet
          Top = 258
        end
        inherited cdsProvidedBy: TAbmesClientDataSet
          Top = 258
        end
        inherited dsUsedBy: TDataSource
          Top = 258
        end
        inherited dsProvidedBy: TDataSource
          Top = 258
        end
        inherited cdsCommonStatuses: TAbmesClientDataSet
          Top = 258
        end
        inherited dsCommonStatuses: TDataSource
          Top = 258
        end
        inherited cdsIsActive: TAbmesClientDataSet
          Top = 258
        end
        inherited dsIsActive: TDataSource
          Top = 258
        end
      end
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1054#1073#1077#1082#1090#1086#1074' '#1085#1072#1073#1086#1088' - %s'
    end
  end
  inherited cdsData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conProductsTreeEditor
    Params = <
      item
        DataType = ftInteger
        Name = 'PRODUCT_SET_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvProductSet'
    object cdsDataPRODUCT_SET_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_SET_CODE'
      Required = True
    end
    object cdsDataPRODUCT_SET_NO: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'PRODUCT_SET_NO'
      Required = True
    end
    object cdsDataPRODUCT_SET_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'PRODUCT_SET_NAME'
      Required = True
      Size = 50
    end
    object cdsDataBEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1053#1072#1095#1072#1083#1085#1072' '#1076#1072#1090#1072' '#1085#1072' '#1042#1088#1084#1048#1085#1090
      FieldName = 'BEGIN_DATE'
      Required = True
    end
    object cdsDataEND_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1050#1088#1072#1081#1085#1072' '#1076#1072#1090#1072' '#1085#1072' '#1042#1088#1084#1048#1085#1090
      FieldName = 'END_DATE'
      Required = True
    end
    object cdsDataCHOSEN_PRODUCTS: TBlobField
      FieldName = 'CHOSEN_PRODUCTS'
      ProviderFlags = []
      BlobType = ftOraBlob
      Size = 1
    end
  end
end
