inherited fmMaterialListLineChange: TfmMaterialListLineChange
  Left = 242
  Caption = #1047#1072#1084#1103#1085#1072
  ClientHeight = 354
  ClientWidth = 792
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 319
    Width = 792
    inherited pnlOKCancel: TPanel
      Left = 524
    end
    inherited pnlClose: TPanel
      Left = 435
    end
    inherited pnlApply: TPanel
      Left = 703
      Visible = False
    end
    object pnlReplyAccept: TPanel
      Left = 305
      Top = 0
      Width = 120
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 3
      object pnlReplyAcceptInner1: TPanel
        Left = 8
        Top = 2
        Width = 112
        Height = 25
        TabOrder = 0
        object pnlReplyAcceptInner2: TPanel
          Left = 1
          Top = 1
          Width = 110
          Height = 23
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object chkReplyAccept: TDBCheckBox
            Left = 8
            Top = 4
            Width = 97
            Height = 17
            Caption = #1042#1080#1076#1103#1093' '#1086#1090#1082#1072#1079#1072
            DataField = 'REPLY_ACCEPT'
            DataSource = dsData
            TabOrder = 0
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
        end
      end
    end
    object pnlReply: TPanel
      Left = 0
      Top = 0
      Width = 305
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 4
      object pnlReplyInner1: TPanel
        Left = 8
        Top = 2
        Width = 297
        Height = 25
        TabOrder = 0
        object pnlReplyInner2: TPanel
          Left = 1
          Top = 1
          Width = 295
          Height = 23
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object rgReply: TDBRadioGroup
            Left = -2
            Top = -9
            Width = 323
            Height = 34
            Columns = 2
            DataField = 'REPLY'
            DataSource = dsData
            Items.Strings = (
              #1055#1088#1080#1077#1084#1072#1084' '#1079#1072#1084#1103#1085#1072#1090#1072
              #1054#1090#1082#1072#1079#1074#1072#1084' '#1079#1072#1084#1103#1085#1072#1090#1072)
            ParentBackground = True
            TabOrder = 0
            Values.Strings = (
              '1'
              '2')
          end
        end
      end
    end
  end
  object pnlMain: TPanel [1]
    Left = 0
    Top = 0
    Width = 792
    Height = 319
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 8
    TabOrder = 1
    object pcMain: TPageControl
      Left = 8
      Top = 8
      Width = 776
      Height = 303
      ActivePage = tsChange
      Align = alClient
      HotTrack = True
      TabOrder = 0
      object tsChange: TTabSheet
        Caption = #1047#1072#1084#1103#1085#1072
        object btnCopyOldToNew: TSpeedButton
          Left = 368
          Top = 163
          Width = 65
          Height = 13
          Action = actCopyOldToNew
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FF000000FF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000BF
            BF00000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FF000000BFBF00BFBF00BFBF00000000FF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000BFBF00BFBF00BF
            BF00BFBF00BFBF00000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FF000000BFBF00BFBF00BFBF00BFBF00BFBF00BFBF00BFBF00000000FF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FF000000000000000000000000BFBF00BF
            BF00BFBF00000000000000000000000000FF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FF000000BFBF00BFBF00BFBF00000000FF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000BFBF00BF
            BF00BFBF00000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FF000000BFBF00BFBF00BFBF00000000FF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000000000
            0000000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          ParentShowHint = False
          ShowHint = True
        end
        object grpNew: TGroupBox
          Left = 8
          Top = 176
          Width = 753
          Height = 89
          Caption = ' '#1053#1086#1074#1086' '
          TabOrder = 2
          object grpNewProductTechQuantity: TGroupBox
            Left = 624
            Top = 24
            Width = 113
            Height = 49
            Caption = ' '#1050'-'#1074#1086' '#1079#1072' 1 XXX '#1050#1057#1063' '
            TabOrder = 1
            object lblNewProductTechMeasure: TDBText
              Left = 77
              Top = 19
              Width = 33
              Height = 17
              DataField = '_N_PRODUCT_TECH_MEASURE_ABBREV'
              DataSource = dsData
            end
            object edtNewProductTechQuantity: TDBEdit
              Left = 8
              Top = 16
              Width = 65
              Height = 21
              DataField = 'N_PRODUCT_TECH_QUANTITY'
              DataSource = dsData
              TabOrder = 0
            end
          end
          inline frNewStore: TfrDeptFieldEditFrame
            Left = 395
            Top = 24
            Width = 222
            Height = 48
            HorzScrollBar.Visible = False
            VertScrollBar.Visible = False
            Constraints.MaxHeight = 49
            TabOrder = 0
            TabStop = True
            inherited gbTreeNode: TGroupBox
              Width = 222
              Height = 48
              Caption = ' '#1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086' '
              inherited pnlTreeNode: TPanel
                Width = 206
                inherited pnlTreeNodeName: TPanel
                  Width = 59
                  inherited edtTreeNodeName: TDBEdit
                    Width = 58
                  end
                end
                inherited pnlTreeNodeNo: TPanel
                  Left = 59
                end
                inherited pnlRightButtons: TPanel
                  Left = 170
                end
              end
            end
          end
          inline frNewProduct: TfrProductFieldEditFrame
            Left = 16
            Top = 24
            Width = 369
            Height = 49
            HorzScrollBar.Visible = False
            VertScrollBar.Visible = False
            Constraints.MaxHeight = 49
            TabOrder = 2
            TabStop = True
            inherited gbTreeNode: TGroupBox
              Width = 369
              Caption = ' '#1053#1057#1063' '
              inherited pnlTreeNode: TPanel
                Width = 353
                inherited pnlTreeNodeName: TPanel
                  Width = 183
                  inherited edtTreeNodeName: TDBEdit
                    Width = 182
                  end
                end
                inherited pnlTreeNodeNo: TPanel
                  Left = 183
                end
                inherited pnlRightButtons: TPanel
                  Left = 294
                end
              end
            end
          end
        end
        object grpOld: TGroupBox
          Left = 8
          Top = 72
          Width = 753
          Height = 89
          Caption = ' '#1057#1090#1072#1088#1086' '
          TabOrder = 1
          object grpOldProductTechQuantity: TGroupBox
            Left = 624
            Top = 24
            Width = 113
            Height = 49
            Caption = ' '#1050'-'#1074#1086' '#1079#1072' 1 XXX '#1050#1057#1063' '
            TabOrder = 2
            object lblOldProductTechMeasure: TDBText
              Left = 77
              Top = 19
              Width = 33
              Height = 17
              DataField = '_O_PRODUCT_TECH_MEASURE_ABBREV'
              DataSource = dsData
            end
            object edtOldProductTechQuantity: TDBEdit
              Left = 8
              Top = 16
              Width = 65
              Height = 21
              TabStop = False
              Color = clBtnFace
              DataField = 'O_PRODUCT_TECH_QUANTITY'
              DataSource = dsData
              ReadOnly = True
              TabOrder = 0
            end
          end
          inline frOldStore: TfrDeptFieldEditFrame
            Left = 395
            Top = 24
            Width = 222
            Height = 48
            HorzScrollBar.Visible = False
            VertScrollBar.Visible = False
            Constraints.MaxHeight = 49
            TabOrder = 1
            TabStop = True
            inherited gbTreeNode: TGroupBox
              Width = 222
              Height = 48
              Caption = ' '#1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086' '
              inherited pnlTreeNode: TPanel
                Width = 206
                inherited pnlTreeNodeName: TPanel
                  Width = 59
                  inherited edtTreeNodeName: TDBEdit
                    Width = 58
                  end
                end
                inherited pnlTreeNodeNo: TPanel
                  Left = 59
                end
                inherited pnlRightButtons: TPanel
                  Left = 170
                end
              end
            end
          end
          inline frOldProduct: TfrProductFieldEditFrame
            Left = 16
            Top = 24
            Width = 369
            Height = 49
            HorzScrollBar.Visible = False
            VertScrollBar.Visible = False
            Constraints.MaxHeight = 49
            TabOrder = 0
            TabStop = True
            inherited gbTreeNode: TGroupBox
              Width = 369
              Caption = ' '#1053#1057#1063' '
              inherited pnlTreeNode: TPanel
                Width = 353
                inherited pnlTreeNodeName: TPanel
                  Width = 183
                  inherited edtTreeNodeName: TDBEdit
                    Width = 182
                  end
                end
                inherited pnlTreeNodeNo: TPanel
                  Left = 183
                end
                inherited pnlRightButtons: TPanel
                  Left = 294
                end
              end
            end
          end
        end
        object cbMllIdentifier: TGroupBox
          Left = 8
          Top = 8
          Width = 369
          Height = 49
          Caption = ' '#1056#1077#1076' '#1086#1090' '#1056'-'#1052#1054#1044#1045#1083' '
          TabOrder = 0
          object edtMllIdentifier: TDBEdit
            Left = 8
            Top = 16
            Width = 353
            Height = 21
            TabStop = False
            Color = clBtnFace
            DataField = 'MLL_OBJECT_IDENTIFIER'
            DataSource = dsData
            ReadOnly = True
            TabOrder = 0
          end
        end
        inline frOldDetail: TfrProductFieldEditFrame
          Left = 392
          Top = 8
          Width = 369
          Height = 49
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Constraints.MaxHeight = 49
          TabOrder = 3
          TabStop = True
          inherited gbTreeNode: TGroupBox
            Width = 369
            Caption = '  '#1050#1057#1063' '
            inherited pnlTreeNode: TPanel
              Width = 353
              inherited pnlTreeNodeName: TPanel
                Width = 183
                inherited edtTreeNodeName: TDBEdit
                  Width = 182
                end
              end
              inherited pnlTreeNodeNo: TPanel
                Left = 183
              end
              inherited pnlRightButtons: TPanel
                Left = 294
              end
            end
          end
        end
      end
      object tsCommunication: TTabSheet
        Caption = #1050#1086#1084#1091#1085#1080#1082#1072#1094#1080#1103
        ImageIndex = 1
        object grpRequest: TGroupBox
          Left = 16
          Top = 8
          Width = 737
          Height = 73
          Caption = ' '#1055#1088#1077#1076#1083#1086#1078#1077#1085#1072' '#1079#1072#1084#1103#1085#1072' '
          TabOrder = 0
          object lblRequestEmployee: TLabel
            Left = 24
            Top = 16
            Width = 49
            Height = 13
            Caption = #1057#1083#1091#1078#1080#1090#1077#1083
            FocusControl = frRequestEmployee
          end
          object lblRequestDate: TLabel
            Left = 464
            Top = 16
            Width = 26
            Height = 13
            Caption = #1044#1072#1090#1072
          end
          object lblRequestTime: TLabel
            Left = 584
            Top = 16
            Width = 20
            Height = 13
            Caption = #1063#1072#1089
            FocusControl = edtRequestTime
          end
          object edtRequestTime: TDBEdit
            Left = 584
            Top = 32
            Width = 81
            Height = 21
            TabStop = False
            Color = clBtnFace
            DataField = 'REQUEST_TIME'
            DataSource = dsData
            ReadOnly = True
            TabOrder = 2
          end
          inline frRequestDate: TfrDateFieldEditFrame
            Left = 464
            Top = 32
            Width = 105
            Height = 21
            Constraints.MaxHeight = 21
            Constraints.MaxWidth = 105
            Constraints.MinHeight = 21
            Constraints.MinWidth = 105
            TabOrder = 1
            TabStop = True
            inherited deDate: TAbmesDBDateEdit
              Left = 712
              Top = 152
            end
          end
          inline frRequestEmployee: TfrEmployeeFieldEditFrameBald
            Left = 24
            Top = 32
            Width = 369
            Height = 22
            HorzScrollBar.Visible = False
            VertScrollBar.Visible = False
            Constraints.MaxHeight = 22
            Constraints.MinHeight = 22
            TabOrder = 0
            TabStop = True
            inherited gbEmployee: TGroupBox
              Width = 388
              inherited pnlEmployeeName: TPanel
                Width = 313
                inherited pnlRightButtons: TPanel
                  Left = 277
                end
                inherited pnlEmpoyeeNameInner: TPanel
                  Width = 277
                  inherited edtEmployeeName: TDBEdit
                    Width = 231
                  end
                  inherited cbEmployee: TJvDBLookupCombo
                    Width = 276
                  end
                end
              end
              inherited pnlPaddingRight: TPanel
                Left = 378
              end
            end
          end
        end
        object grpReply: TGroupBox
          Left = 16
          Top = 96
          Width = 737
          Height = 73
          Caption = ' '#1055#1088#1080#1077#1090#1072' / '#1054#1090#1082#1072#1079#1072#1085#1072' '#1079#1072#1084#1103#1085#1072' '
          TabOrder = 1
          object lblReplyEmployee: TLabel
            Left = 24
            Top = 16
            Width = 49
            Height = 13
            Caption = #1057#1083#1091#1078#1080#1090#1077#1083
            FocusControl = frReplyEmployee
          end
          object lblReplyDate: TLabel
            Left = 464
            Top = 16
            Width = 26
            Height = 13
            Caption = #1044#1072#1090#1072
          end
          object lblReplyTime: TLabel
            Left = 584
            Top = 16
            Width = 20
            Height = 13
            Caption = #1063#1072#1089
            FocusControl = edtReplyTime
          end
          object edtReplyTime: TDBEdit
            Left = 584
            Top = 32
            Width = 81
            Height = 21
            TabStop = False
            Color = clBtnFace
            DataField = 'REPLY_TIME'
            DataSource = dsData
            ReadOnly = True
            TabOrder = 2
          end
          inline frReplyDate: TfrDateFieldEditFrame
            Left = 464
            Top = 32
            Width = 105
            Height = 21
            Constraints.MaxHeight = 21
            Constraints.MaxWidth = 105
            Constraints.MinHeight = 21
            Constraints.MinWidth = 105
            TabOrder = 1
            TabStop = True
          end
          inline frReplyEmployee: TfrEmployeeFieldEditFrameBald
            Left = 24
            Top = 32
            Width = 369
            Height = 22
            HorzScrollBar.Visible = False
            VertScrollBar.Visible = False
            Constraints.MaxHeight = 22
            Constraints.MinHeight = 22
            TabOrder = 0
            TabStop = True
            inherited gbEmployee: TGroupBox
              Width = 388
              inherited pnlEmployeeName: TPanel
                Width = 313
                inherited pnlRightButtons: TPanel
                  Left = 277
                end
                inherited pnlEmpoyeeNameInner: TPanel
                  Width = 277
                  inherited edtEmployeeName: TDBEdit
                    Width = 231
                  end
                  inherited cbEmployee: TJvDBLookupCombo
                    Width = 276
                  end
                end
              end
              inherited pnlPaddingRight: TPanel
                Left = 378
              end
            end
          end
        end
        object grpReplyAccept: TGroupBox
          Left = 16
          Top = 184
          Width = 737
          Height = 73
          Caption = ' '#1042#1080#1076#1103#1085' '#1086#1090#1082#1072#1079' '
          TabOrder = 2
          object lblReplyAcceptEmployee: TLabel
            Left = 24
            Top = 16
            Width = 49
            Height = 13
            Caption = #1057#1083#1091#1078#1080#1090#1077#1083
            FocusControl = frReplyAcceptEmployee
          end
          object lblReplyAcceptDate: TLabel
            Left = 464
            Top = 16
            Width = 26
            Height = 13
            Caption = #1044#1072#1090#1072
          end
          object lblReplyAcceptTime: TLabel
            Left = 584
            Top = 16
            Width = 20
            Height = 13
            Caption = #1063#1072#1089
            FocusControl = edtReplyAcceptTime
          end
          object edtReplyAcceptTime: TDBEdit
            Left = 584
            Top = 32
            Width = 81
            Height = 21
            TabStop = False
            Color = clBtnFace
            DataField = 'REPLY_ACCEPT_TIME'
            DataSource = dsData
            ReadOnly = True
            TabOrder = 2
          end
          inline frReplyAcceptDate: TfrDateFieldEditFrame
            Left = 464
            Top = 32
            Width = 105
            Height = 21
            Constraints.MaxHeight = 21
            Constraints.MaxWidth = 105
            Constraints.MinHeight = 21
            Constraints.MinWidth = 105
            TabOrder = 1
            TabStop = True
          end
          inline frReplyAcceptEmployee: TfrEmployeeFieldEditFrameBald
            Left = 24
            Top = 32
            Width = 369
            Height = 22
            HorzScrollBar.Visible = False
            VertScrollBar.Visible = False
            Constraints.MaxHeight = 22
            Constraints.MinHeight = 22
            TabOrder = 0
            TabStop = True
            inherited gbEmployee: TGroupBox
              Width = 388
              inherited pnlEmployeeName: TPanel
                Width = 313
                inherited pnlRightButtons: TPanel
                  Left = 277
                end
                inherited pnlEmpoyeeNameInner: TPanel
                  Width = 277
                  inherited edtEmployeeName: TDBEdit
                    Width = 231
                  end
                  inherited cbEmployee: TJvDBLookupCombo
                    Width = 276
                  end
                end
              end
              inherited pnlPaddingRight: TPanel
                Left = 378
              end
            end
          end
        end
      end
    end
    object pnlStatus: TPanel
      Left = 432
      Top = 8
      Width = 352
      Height = 18
      TabOrder = 1
    end
  end
  inherited alActions: TActionList
    Left = 0
    Top = 152
    inherited actForm: TAction
      Caption = #1047#1072#1084#1103#1085#1072
    end
    object actCopyOldToNew: TAction
      Hint = #1050#1086#1087#1080#1088#1072' '#39#1089#1090#1072#1088#1086#39' '#1074' '#39#1085#1086#1074#1086#39
      OnExecute = actCopyOldToNewExecute
      OnUpdate = actCopyOldToNewUpdate
    end
  end
  inherited dsData: TDataSource
    Left = 200
  end
  inherited cdsData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conModelChanges
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
      end
      item
        DataType = ftFloat
        Name = 'MATERIAL_LIST_LINE_CHANGE_NO'
        ParamType = ptInput
      end>
    ProviderName = 'prvMaterialListLineChange'
    BeforeOpen = cdsDataBeforeOpen
    AfterClose = cdsDataAfterClose
    BeforePost = cdsDataBeforePost
    Left = 168
    object cdsDataMLL_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_BRANCH_CODE'
      Required = True
    end
    object cdsDataMLL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_CODE'
      Required = True
    end
    object cdsDataMATERIAL_LIST_LINE_CHANGE_NO: TAbmesFloatField
      FieldName = 'MATERIAL_LIST_LINE_CHANGE_NO'
      Required = True
    end
    object cdsDataN_DETAIL_CODE: TAbmesFloatField
      FieldName = 'N_DETAIL_CODE'
    end
    object cdsDataN_PRODUCT_CODE: TAbmesFloatField
      DisplayLabel = #1053#1086#1074' '#1053#1057#1063
      FieldName = 'N_PRODUCT_CODE'
      Required = True
      OnChange = cdsDataN_PRODUCT_CODEChange
    end
    object cdsDataN_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'N_DETAIL_TECH_QUANTITY'
    end
    object cdsDataN_PRODUCT_TECH_QUANTITY: TAbmesFloatField
      DisplayLabel = #1053#1086#1074#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'N_PRODUCT_TECH_QUANTITY'
      Required = True
    end
    object cdsDataN_TOTAL_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'N_TOTAL_DETAIL_TECH_QUANTITY'
    end
    object cdsDataN_LINE_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'N_LINE_DETAIL_TECH_QUANTITY'
      Required = True
    end
    object cdsDataN_STORE_CODE: TAbmesFloatField
      DisplayLabel = #1053#1086#1074#1086' '#1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086
      FieldName = 'N_STORE_CODE'
      Required = True
    end
    object cdsDataN_PRODUCT_NEED_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'N_PRODUCT_NEED_BEGIN_DATE'
      Required = True
    end
    object cdsDataN_PRODUCT_NEED_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'N_PRODUCT_NEED_END_DATE'
      Required = True
    end
    object cdsDataO_DETAIL_CODE: TAbmesFloatField
      FieldName = 'O_DETAIL_CODE'
    end
    object cdsDataO_PRODUCT_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1088' '#1053#1057#1063
      FieldName = 'O_PRODUCT_CODE'
      Required = True
      OnChange = cdsDataO_PRODUCT_CODEChange
    end
    object cdsDataO_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'O_DETAIL_TECH_QUANTITY'
    end
    object cdsDataO_PRODUCT_TECH_QUANTITY: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1088#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'O_PRODUCT_TECH_QUANTITY'
      Required = True
    end
    object cdsDataO_TOTAL_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'O_TOTAL_DETAIL_TECH_QUANTITY'
    end
    object cdsDataO_LINE_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'O_LINE_DETAIL_TECH_QUANTITY'
      Required = True
    end
    object cdsDataO_STORE_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1088#1086' '#1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086
      FieldName = 'O_STORE_CODE'
      Required = True
    end
    object cdsDataO_PRODUCT_NEED_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'O_PRODUCT_NEED_BEGIN_DATE'
      Required = True
    end
    object cdsDataO_PRODUCT_NEED_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'O_PRODUCT_NEED_END_DATE'
      Required = True
    end
    object cdsDataREQUEST_EMPLOYEE_CODE: TAbmesFloatField
      DisplayLabel = #1055#1088#1077#1076#1083#1086#1078#1080#1083
      FieldName = 'REQUEST_EMPLOYEE_CODE'
      ReadOnly = True
    end
    object cdsDataREQUEST_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1044#1072#1090#1072' '#1085#1072' '#1087#1088#1077#1076#1083#1086#1078#1077#1085#1080#1077
      FieldName = 'REQUEST_DATE'
      ReadOnly = True
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object cdsDataREQUEST_TIME: TAbmesSQLTimeStampField
      DisplayLabel = #1063#1072#1089' '#1085#1072' '#1087#1088#1077#1076#1083#1086#1078#1077#1085#1080#1077
      FieldName = 'REQUEST_TIME'
      ReadOnly = True
      DisplayFormat = 't'
      AbmesEditFormat = 't'
    end
    object cdsDataMLL_CHANGE_REPLY_TYPE_CODE: TAbmesFloatField
      FieldName = 'MLL_CHANGE_REPLY_TYPE_CODE'
      ReadOnly = True
    end
    object cdsDataREPLY_EMPLOYEE_CODE: TAbmesFloatField
      DisplayLabel = #1055#1088#1080#1077#1083'/'#1054#1090#1082#1072#1079#1072#1083
      FieldName = 'REPLY_EMPLOYEE_CODE'
      ReadOnly = True
    end
    object cdsDataREPLY_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1044#1072#1090#1072' '#1085#1072' '#1087#1088#1080#1077#1084#1072#1085#1077'/'#1086#1090#1082#1072#1079
      FieldName = 'REPLY_DATE'
      ReadOnly = True
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object cdsDataREPLY_TIME: TAbmesSQLTimeStampField
      DisplayLabel = #1063#1072#1089' '#1085#1072' '#1087#1088#1080#1077#1084#1072#1085#1077'/'#1086#1090#1082#1072#1079
      FieldName = 'REPLY_TIME'
      ReadOnly = True
      DisplayFormat = 't'
      AbmesEditFormat = 't'
    end
    object cdsDataREPLY_ACCEPT_EMPLOYEE_CODE: TAbmesFloatField
      DisplayLabel = #1042#1080#1076#1103#1083' '#1086#1090#1082#1072#1079#1072
      FieldName = 'REPLY_ACCEPT_EMPLOYEE_CODE'
      ReadOnly = True
    end
    object cdsDataREPLY_ACCEPT_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1044#1072#1090#1072' '#1085#1072' '#1074#1080#1078#1076#1072#1085#1077' '#1085#1072' '#1086#1090#1082#1072#1079#1072
      FieldName = 'REPLY_ACCEPT_DATE'
      ReadOnly = True
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object cdsDataREPLY_ACCEPT_TIME: TAbmesSQLTimeStampField
      DisplayLabel = #1063#1072#1089' '#1085#1072' '#1074#1080#1078#1076#1072#1085#1077' '#1085#1072' '#1086#1090#1082#1072#1079#1072
      FieldName = 'REPLY_ACCEPT_TIME'
      ReadOnly = True
      DisplayFormat = 't'
      AbmesEditFormat = 't'
    end
    object cdsDataN_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'N_PRODUCT_NAME'
      Size = 100
    end
    object cdsDataN_PRODUCT_NO: TAbmesFloatField
      FieldName = 'N_PRODUCT_NO'
    end
    object cdsDataN_PRODUCT_TECH_MEASURE_CODE: TAbmesFloatField
      FieldName = 'N_PRODUCT_TECH_MEASURE_CODE'
    end
    object cdsDataO_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'O_PRODUCT_NAME'
      Size = 100
    end
    object cdsDataO_PRODUCT_NO: TAbmesFloatField
      FieldName = 'O_PRODUCT_NO'
    end
    object cdsDataO_PRODUCT_TECH_MEASURE_CODE: TAbmesFloatField
      FieldName = 'O_PRODUCT_TECH_MEASURE_CODE'
    end
    object cdsDataDETAIL_CODE: TAbmesFloatField
      FieldName = 'DETAIL_CODE'
      OnChange = cdsDataDETAIL_CODEChange
    end
    object cdsDataDETAIL_NAME: TAbmesWideStringField
      FieldName = 'DETAIL_NAME'
      Size = 100
    end
    object cdsDataDETAIL_NO: TAbmesFloatField
      FieldName = 'DETAIL_NO'
    end
    object cdsDataDETAIL_TECH_MEASURE_CODE: TAbmesFloatField
      FieldName = 'DETAIL_TECH_MEASURE_CODE'
    end
    object cdsDataMLL_OBJECT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'MLL_OBJECT_IDENTIFIER'
      Size = 50
    end
    object cdsDataOWNER_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'OWNER_EMPLOYEE_CODE'
      Required = True
    end
    object cdsDataREPLY: TAbmesFloatField
      FieldName = 'REPLY'
      Required = True
    end
    object cdsDataREPLY_ACCEPT: TAbmesFloatField
      FieldName = 'REPLY_ACCEPT'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsData_DETAIL_TECH_MEASURE_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_DETAIL_TECH_MEASURE_ABBREV'
      LookupDataSet = cdsMeasures
      LookupKeyFields = 'MEASURE_CODE'
      LookupResultField = 'MEASURE_ABBREV'
      KeyFields = 'DETAIL_TECH_MEASURE_CODE'
      LookupCache = True
      Size = 5
      Lookup = True
    end
    object cdsData_N_PRODUCT_TECH_MEASURE_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_N_PRODUCT_TECH_MEASURE_ABBREV'
      LookupDataSet = cdsMeasures
      LookupKeyFields = 'MEASURE_CODE'
      LookupResultField = 'MEASURE_ABBREV'
      KeyFields = 'N_PRODUCT_TECH_MEASURE_CODE'
      LookupCache = True
      Lookup = True
    end
    object cdsData_O_PRODUCT_TECH_MEASURE_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_O_PRODUCT_TECH_MEASURE_ABBREV'
      LookupDataSet = cdsMeasures
      LookupKeyFields = 'MEASURE_CODE'
      LookupResultField = 'MEASURE_ABBREV'
      KeyFields = 'O_PRODUCT_TECH_MEASURE_CODE'
      LookupCache = True
      Size = 5
      Lookup = True
    end
  end
  object cdsMeasures: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvMeasures'
    Left = 304
    object cdsMeasuresMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
      Required = True
    end
    object cdsMeasuresMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Required = True
      Size = 5
    end
    object cdsMeasuresMEASURE_NAME: TAbmesWideStringField
      FieldName = 'MEASURE_NAME'
      Required = True
      Size = 50
    end
  end
  object cdsMaterialListLine: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conModelChanges
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
    ProviderName = 'prvMaterialListLine'
    Top = 32
    object cdsMaterialListLineMLL_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_BRANCH_CODE'
    end
    object cdsMaterialListLineMLL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_CODE'
    end
    object cdsMaterialListLineML_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_BRANCH_CODE'
    end
    object cdsMaterialListLineML_OBJECT_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_CODE'
    end
    object cdsMaterialListLineDETAIL_CODE: TAbmesFloatField
      FieldName = 'DETAIL_CODE'
    end
    object cdsMaterialListLineDETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'DETAIL_TECH_QUANTITY'
    end
    object cdsMaterialListLineLINE_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'LINE_DETAIL_TECH_QUANTITY'
    end
    object cdsMaterialListLineTOTAL_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_DETAIL_TECH_QUANTITY'
    end
    object cdsMaterialListLinePRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object cdsMaterialListLinePRODUCT_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'PRODUCT_TECH_QUANTITY'
    end
    object cdsMaterialListLineSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
    end
    object cdsMaterialListLinePRODUCT_NEED_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'PRODUCT_NEED_BEGIN_DATE'
    end
    object cdsMaterialListLinePRODUCT_NEED_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'PRODUCT_NEED_END_DATE'
    end
    object cdsMaterialListLineFORK_0_DETAIL_CODE: TAbmesFloatField
      FieldName = 'FORK_0_DETAIL_CODE'
    end
    object cdsMaterialListLineMLL_OBJECT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'MLL_OBJECT_IDENTIFIER'
      Size = 50
    end
    object cdsMaterialListLineOWNER_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'OWNER_EMPLOYEE_CODE'
    end
  end
end
