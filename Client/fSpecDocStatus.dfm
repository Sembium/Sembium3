inherited fmSpecDocStatus: TfmSpecDocStatus
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlModel: TPanel
    inherited pnlModelStruct: TPanel
      inherited grdModel: TAbmesDBGrid
        TitleParams.RowHeight = 18
      end
    end
    inherited pnlModelDoc: TPanel
      inherited frModelDoc: TfrDoc
        inherited dsData: TDataSource
          DataSet = cdsDSModel
        end
      end
    end
    inherited pnlModelTop: TPanel
      inherited pnlDetail: TPanel
        inherited frDetail: TfrProductFieldEditFrameBald
          inherited dsData: TDataSource
            DataSet = cdsDSLines
          end
        end
      end
      inherited pnlProduct: TPanel
        inherited frProduct: TfrProductFieldEditFrameBald
          inherited dsData: TDataSource
            DataSet = cdsDSLines
          end
        end
      end
    end
  end
  inherited pnlLines: TPanel
    inherited pnlLinesDoc: TPanel
      inherited frLineDoc: TfrDoc
        inherited dsData: TDataSource
          DataSet = cdsDSLines
        end
      end
      inherited pnlDetailPanels: TPanel
        object pnlUpdateImportedSpecButton: TPanel
          Left = 383
          Top = 0
          Width = 24
          Height = 24
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 3
          object btnUpdateImportedSpec: TSpeedButton
            Left = 0
            Top = 1
            Width = 23
            Height = 22
            Action = actUpdateImportedSpec
            Flat = True
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00000000000000
              0000FFFFFF00000000000000000000000000FFFFFF0000000000FF00FF00FF00
              FF00FF00FF0000000000FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
              FF00FF00FF000000FF0000000000FF00FF0000000000FFFFFF0000000000BDBD
              BD000000000000000000FFFFFF0000000000FFFFFF0000000000FF00FF00FF00
              FF00FF00FF000000FF000000FF000000000000000000FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
              FF000000FF000000FF000000FF000000FF0000000000FFFFFF00000000000000
              0000FFFFFF000000000000000000000000000000000000000000000000000000
              FF000000FF000000FF000000FF000000FF000000FF0000000000FFFFFF00FFFF
              FF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FF00FF00000000000000
              FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000BDBD
              BD00FFFFFF0000000000FFFFFF0000000000FF00FF00FF00FF00000000000000
              FF000000FF000000FF000000FF000000FF000000FF0000000000FFFFFF00FFFF
              FF00FFFFFF000000000000000000FF00FF00FF00FF00FF00FF00000000000000
              FF000000FF000000FF000000FF000000FF000000000000000000000000000000
              00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF000000FF000000FF0000000000FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF000000FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            ParentShowHint = False
            ShowHint = True
          end
        end
      end
    end
    inherited pnlLinesTop: TPanel
      inherited pnlLinesTopLeft: TPanel
        DesignSize = (
          68
          22)
        inherited udShowLevel: TUpDown
          Anchors = [akLeft, akTop, akBottom]
        end
        inherited edtShowLevel: TEdit
          Anchors = [akLeft, akTop, akBottom]
        end
      end
      object pnlLinesTopClient: TPanel [1]
        Left = 68
        Top = 0
        Width = 262
        Height = 22
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        DesignSize = (
          262
          22)
        object lblModelVariant: TLabel
          Left = 0
          Top = 4
          Width = 110
          Height = 13
          Caption = #1042#1072#1088#1080#1072#1085#1090' '#1085#1072' '#1055'-'#1052#1054#1044#1045#1083
          FocusControl = cbSpecModelVariant
        end
        object cbSpecModelVariant: TJvDBLookupCombo
          Left = 112
          Top = 0
          Width = 146
          Height = 21
          DeleteKeyClear = False
          EmptyValue = ' '
          Anchors = [akLeft, akTop, akRight]
          LookupField = 'SPEC_MODEL_VARIANT_NO'
          LookupDisplay = 'MODEL_VARIANT_IDENTIFIER'
          LookupSource = dsSpecModelVariants
          TabOrder = 0
          OnChange = cbSpecModelVariantChange
        end
      end
      inherited tlbLines: TToolBar
        TabOrder = 2
      end
    end
  end
  inherited alActions: TActionList
    object actUpdateImportedSpec: TAction [8]
      Hint = #1054#1073#1085#1086#1074#1103#1074#1072#1085#1077
      ImageIndex = 59
      OnExecute = actUpdateImportedSpecExecute
      OnUpdate = actUpdateImportedSpecUpdate
    end
    inherited actModel: TAction
      Hint = #1055'-'#1052#1054#1044#1045#1083
      OnExecute = actModelExecute
    end
  end
  inherited dsData: TDataSource
    Left = 160
    Top = 104
  end
  inherited cdsData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conSpecifications
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvDSSpec'
    Left = 128
    Top = 104
    object cdsDataSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
    end
    object cdsDataSPEC_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'SPEC_PRODUCT_NAME'
      Size = 100
    end
    object cdsDataAUTHOR_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'AUTHOR_EMPLOYEE_CODE'
    end
    object cdsDataWORK_BRANCH_CODE: TAbmesFloatField
      FieldName = 'WORK_BRANCH_CODE'
    end
    object cdsDataqryDSSpecModelVariants: TDataSetField
      FieldName = 'qryDSSpecModelVariants'
    end
    object cdsDataqryDSSpecLines: TDataSetField
      FieldName = 'qryDSSpecLines'
    end
  end
  inherited cdsDSLines: TAbmesClientDataSet
    DataSetField = cdsDataqryDSSpecLines
    Left = 80
    Top = 136
    object cdsDSLinesSPEC_PRODUCT_CODE: TAbmesFloatField [0]
      FieldName = 'SPEC_PRODUCT_CODE'
    end
    object cdsDSLinesSPEC_LINE_CODE: TAbmesFloatField [1]
      FieldName = 'SPEC_LINE_CODE'
    end
    object cdsDSLinesPARENT_SPEC_LINE_CODE: TAbmesFloatField [2]
      FieldName = 'PARENT_SPEC_LINE_CODE'
    end
    object cdsDSLinesIS_IMPORTED: TAbmesFloatField [14]
      FieldName = 'IS_IMPORTED'
      FieldValueType = fvtBoolean
    end
    object cdsDSLinesIS_IMPORTED_SUBDETAIL: TAbmesFloatField [15]
      FieldName = 'IS_IMPORTED_SUBDETAIL'
      FieldValueType = fvtBoolean
    end
    object cdsDSLinesqryDSSpecModelVariantLines: TDataSetField [20]
      FieldName = 'qryDSSpecModelVariantLines'
    end
    object cdsDSLines_SPEC_PRODUCT_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_SPEC_PRODUCT_NAME'
      Size = 100
      Calculated = True
    end
  end
  inherited dsDSLines: TDataSource
    Left = 112
    Top = 136
  end
  inherited cdsDSModel: TAbmesClientDataSet
    DataSetField = cdsDSSpecModelVariantLinesqryDSSpecModel
    Left = 80
    Top = 200
  end
  inherited dsDSModel: TDataSource
    Left = 112
    Top = 200
  end
  object cdsDSSpecModelVariantLines: TAbmesClientDataSet [12]
    Aggregates = <>
    DataSetField = cdsDSLinesqryDSSpecModelVariantLines
    Filtered = True
    Params = <>
    OnFilterRecord = cdsDSSpecModelVariantLinesFilterRecord
    Left = 80
    Top = 168
    object cdsDSSpecModelVariantLinesSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
    end
    object cdsDSSpecModelVariantLinesSPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_CODE'
    end
    object cdsDSSpecModelVariantLinesSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
    end
    object cdsDSSpecModelVariantLinesAPPROVE_CYCLE_NO: TAbmesFloatField
      FieldName = 'APPROVE_CYCLE_NO'
    end
    object cdsDSSpecModelVariantLinesMAIN_DEPT_CODE: TAbmesFloatField
      FieldName = 'MAIN_DEPT_CODE'
    end
    object cdsDSSpecModelVariantLinesIMPORT_SPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'IMPORT_SPEC_MODEL_VARIANT_NO'
    end
    object cdsDSSpecModelVariantLinesqryDSSpecModel: TDataSetField
      FieldName = 'qryDSSpecModel'
    end
  end
  object cdsSpecModelVariants: TAbmesClientDataSet [13]
    Aggregates = <>
    DataSetField = cdsDataqryDSSpecModelVariants
    Params = <>
    AfterOpen = cdsSpecModelVariantsAfterOpen
    Left = 176
    Top = 136
    object cdsSpecModelVariantsSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
    end
    object cdsSpecModelVariantsSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
    end
    object cdsSpecModelVariantsMODEL_VARIANT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'MODEL_VARIANT_IDENTIFIER'
      OnGetText = cdsSpecModelVariantsMODEL_VARIANT_IDENTIFIERGetText
      Size = 84
    end
  end
  object dsSpecModelVariants: TDataSource [16]
    DataSet = cdsSpecModelVariants
    Left = 208
    Top = 136
  end
end
