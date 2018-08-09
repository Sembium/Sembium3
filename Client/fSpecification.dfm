inherited fmSpecification: TfmSpecification
  Left = 228
  Top = 170
  ActiveControl = frSpecProduct
  Caption = #1055#1088#1080#1085#1094#1080#1087#1077#1085' '#1052#1054#1044#1045#1083' '#1085#1072' '#1059#1054#1073' - %s'
  ClientHeight = 605
  ClientWidth = 953
  ShowHint = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 570
    Width = 953
    inherited pnlOKCancel: TPanel
      Left = 685
      TabOrder = 4
    end
    inherited pnlClose: TPanel
      Left = 596
      TabOrder = 3
    end
    inherited pnlApply: TPanel
      Left = 864
      TabOrder = 5
    end
    inherited pnlBottomButtonsClient: TPanel
      Left = 135
      Width = 461
      TabOrder = 2
      inherited pnlResizeWorkspaceButton: TPanel
        Left = 427
      end
    end
    inherited pnlDocStatusButton: TPanel
      Width = 33
    end
    object pnlCommonGroups: TPanel
      Left = 33
      Top = 0
      Width = 102
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        102
        35)
      object btnCommonGroups: TBitBtn
        Left = 8
        Top = 2
        Width = 93
        Height = 25
        Action = actCommonGroups
        Anchors = [akLeft, akTop, akRight]
        Caption = #1058#1049#1057'...'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          0000FF00FF00FF00FF000000000000000000000000000000000000000000FF00
          FF000000000000000000FF00FF000000000000000000FF00FF00FF00FF000000
          0000000000000000000000000000FF800000FF800000FF80000000000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          0000FF00FF00FF00FF0000000000FF800000FF8000000000000000000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          0000FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          0000FF00FF00FF00FF000000000000000000000000000000000000000000FF00
          FF000000000000000000FF00FF000000000000000000FF00FF00FF00FF000000
          0000000000000000000000000000FF800000FF800000FF80000000000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          0000FF00FF00FF00FF0000000000FF800000FF8000000000000000000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          0000FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
          0000000000000000000000000000FF00FF000000000000000000FF00FF000000
          00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF0000000000FF80
          0000FF800000FF80000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF80
          0000FF8000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        Spacing = -1
        TabOrder = 0
      end
    end
  end
  inherited pnlMain: TPanel
    inherited pnlGrid: TPanel
      inherited pnlNavigator: TPanel
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdData: TAbmesDBGrid
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'SPEC_PRODUCT_CODE'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'SPEC_LINE_CODE'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PARENT_SPEC_LINE_CODE'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NO_1'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NO_2'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NO_3'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NO_4'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NO_5'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DETAIL_CODE'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DETAIL_NAME'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DETAIL_NO'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DETAIL_HAS_DOCUMENTATION'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DETAIL_TECH_QUANTITY'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TOTAL_DETAIL_TECH_QUANTITY'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PAR_TOTAL_DETAIL_TECH_QUANTITY'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DETAIL_TECH_MEASURE_CODE'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PRODUCT_CODE'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PRODUCT_NAME'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PRODUCT_NO'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PRODUCT_HAS_DOCUMENTATION'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PRODUCT_TECH_QUANTITY'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TOTAL_PRODUCT_TECH_QUANTITY'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PRODUCT_TECH_MEASURE_CODE'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PRODUCT_TECH_MEASURE_COEF'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TOTAL_PRODUCT_ACCOUNT_QUANTITY'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PRODUCT_ACCOUNT_MEASURE_CODE'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PRODUCT_ACCOUNT_MEASURE_COEF'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PRODUCT_SECONDARY_SINGLE_PRICE'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PRODUCT_SECONDARY_TOTAL_PRICE'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PRODUCT_IS_FOR_TREATMENT_USE'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PRODUCT_IS_FOR_DIRECT_USE'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NOTES'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'qrySpecModelVariantStages'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_DETAIL_TECH_MEASURE_ABBREV'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_PRODUCT_TECH_MEASURE_ABBREV'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_PRODUCT_ACCOUNT_MEASURE_ABBREV'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_PRODUCT_TREATMENT_TYPE_ABBREV'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_IS_FIRST_CHILD'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_IS_LAST_CHILD'
            Footers = <>
          end>
      end
    end
  end
  inherited pnlMainData: TPanel
    Width = 953
    Height = 178
    DesignSize = (
      953
      178)
    object pnlSpecData: TPanel [0]
      Left = 8
      Top = 8
      Width = 937
      Height = 170
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 0
      object gbVersion: TGroupBox
        Left = 8
        Top = 52
        Width = 921
        Height = 61
        Caption = ' '#1048#1085#1078#1077#1085#1077#1088#1085#1072' '#1057#1090#1088#1091#1082#1090#1091#1088#1072' '
        TabOrder = 4
        object lblVersionNo: TLabel
          Left = 168
          Top = 16
          Width = 14
          Height = 13
          Caption = 'No'
          FocusControl = edtVersionNo
        end
        object lblSpecType: TLabel
          Left = 8
          Top = 16
          Width = 19
          Height = 13
          Caption = #1042#1080#1076
          FocusControl = cbSpecType
          Transparent = True
        end
        object lblIsValid: TLabel
          Left = 96
          Top = 16
          Width = 55
          Height = 13
          Caption = #1057#1098#1089#1090#1086#1103#1085#1080#1077
          Transparent = True
        end
        object lblAuthorizationEmployeeName: TLabel
          Left = 565
          Top = 16
          Width = 66
          Height = 13
          Caption = #1040#1074#1090#1086#1088#1080#1079#1080#1088#1072#1083
        end
        object lblAuthorizationDate: TLabel
          Left = 696
          Top = 16
          Width = 23
          Height = 13
          Caption = #1076#1072#1090#1072
        end
        object lblStructureCoef: TLabel
          Left = 200
          Top = 16
          Width = 22
          Height = 13
          Hint = #1050#1086#1077#1092#1080#1094#1080#1077#1085#1090' '#1085#1072' '#1057#1090#1088#1091#1082#1090#1091#1088#1085#1072' '#1071#1089#1085#1086#1089#1090
          Caption = #1050#1057#1071
          FocusControl = edtStructureCoef
          ParentShowHint = False
          ShowHint = True
        end
        object lblDate: TLabel
          Left = 452
          Top = 16
          Width = 23
          Height = 13
          Caption = #1076#1072#1090#1072
        end
        object lblAuthor: TLabel
          Left = 256
          Top = 16
          Width = 38
          Height = 13
          Caption = #1057#1098#1079#1076#1072#1083
          FocusControl = frAuthor
        end
        object edtVersionNo: TDBEdit
          Left = 168
          Top = 32
          Width = 25
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = 'SPEC_VERSION_NO'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 2
        end
        object cbSpecType: TJvDBLookupCombo
          Left = 8
          Top = 32
          Width = 81
          Height = 21
          DeleteKeyClear = False
          DataField = '_SPEC_TYPE_NAME'
          DataSource = dsData
          TabOrder = 0
        end
        object edtIsValid: TDBEdit
          Left = 96
          Top = 32
          Width = 65
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = '_IS_VALID'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 1
        end
        object edtAuthorizationEmployeeName: TDBEdit
          Left = 565
          Top = 32
          Width = 129
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = '_AUTHORIZATION_EMPLOYEE_NAME'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 6
        end
        object edtStructureCoef: TJvEdit
          Left = 200
          Top = 32
          Width = 48
          Height = 21
          Alignment = taCenter
          ClipboardCommands = [caCopy]
          Color = 12971970
          ReadOnly = True
          TabOrder = 3
          Text = ''
        end
        inline frAuthorizationDate: TfrDateFieldEditFrame
          Left = 697
          Top = 32
          Width = 105
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 105
          Constraints.MinHeight = 21
          Constraints.MinWidth = 105
          TabOrder = 7
          TabStop = True
        end
        inline frCreateDate: TfrDateFieldEditFrame
          Left = 452
          Top = 32
          Width = 105
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 105
          Constraints.MinHeight = 21
          Constraints.MinWidth = 105
          TabOrder = 5
          TabStop = True
        end
        inline frAuthor: TfrEmployeeFieldEditFrameBald
          Left = 256
          Top = 32
          Width = 193
          Height = 22
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Constraints.MaxHeight = 22
          Constraints.MinHeight = 22
          TabOrder = 4
          TabStop = True
          DesignSize = (
            193
            22)
          inherited gbEmployee: TGroupBox
            Width = 212
            inherited pnlEmployeeName: TPanel
              Width = 137
              inherited pnlRightButtons: TPanel
                Left = 101
              end
              inherited pnlEmpoyeeNameInner: TPanel
                Width = 101
                DesignSize = (
                  101
                  32)
                inherited cbEmployee: TJvDBLookupCombo
                  Width = 100
                end
              end
            end
            inherited pnlPaddingRight: TPanel
              Left = 202
            end
          end
          inherited cdsEmployees: TAbmesClientDataSet
            inherited cdsEmployeesEMPLOYEE_CODE: TAbmesFloatField
              ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
            end
          end
        end
        object pnlVersionButtons: TPanel
          Left = 808
          Top = 27
          Width = 110
          Height = 32
          BevelOuter = bvNone
          TabOrder = 8
          object pnlNewVersion: TPanel
            Left = 0
            Top = 0
            Width = 105
            Height = 32
            Align = alLeft
            AutoSize = True
            BevelOuter = bvNone
            TabOrder = 0
            DesignSize = (
              105
              32)
            object btnNewVersion: TBitBtn
              Left = 0
              Top = 2
              Width = 105
              Height = 25
              Action = actNewVersion
              Anchors = [akLeft, akTop, akRight]
              Caption = #1053#1086#1074#1072' '#1074#1077#1088#1089#1080#1103
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF00FF00FF0000FF
                FF0000FFFF00FF00FF007B7B7B007B7B7B007B7B7B0000FFFF0000FFFF007B7B
                7B007B7B7B007B7B7B007B7B7B0000FFFF0000FFFF00FF00FF00FF00FF00FF00
                FF0000FFFF000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000FFFF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00000000007B7B7B00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00000000007B7B7B00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00000000007B7B7B00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00000000007B7B7B00FF00FF00FF00FF0000FFFF0000FF
                FF0000FFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF000000000000FFFF0000FFFF00FF00FF00FF00FF0000FF
                FF0000FFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF000000000000FFFF0000FFFF0000FFFF00FF00FF00FF00
                FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
                0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
                FF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
                FF000000000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
                0000FF00FF0000FFFF0000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF0000FFFF00000000000000000000000000000000000000000000000000FF00
                FF00FF00FF00FF00FF0000FFFF0000FFFF00FF00FF00FF00FF00FF00FF0000FF
                FF0000FFFF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF0000FFFF00FF00
                FF00FF00FF00FF00FF00FF00FF0000FFFF0000FFFF00FF00FF0000FFFF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF00}
              Spacing = -1
              TabOrder = 0
            end
          end
          object pnlAuthorize: TPanel
            Left = 105
            Top = 0
            Width = 105
            Height = 32
            Align = alLeft
            AutoSize = True
            BevelOuter = bvNone
            TabOrder = 1
            object btnAuthorize: TBitBtn
              Left = 0
              Top = 2
              Width = 105
              Height = 25
              Action = actAuthorize
              Caption = #1040#1074#1090#1086#1088#1080#1079#1080#1088#1072#1085#1077
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF0000000000FF00FF00FF00FF00FF00FF00FF00FF0000FFFF0000000000FF00
                FF00FF00FF00FF00FF00FF00FF007B7B7B0000000000FF00FF00FF00FF0000FF
                FF00FF00FF0000000000FF00FF00FF00FF00FF00FF0000FFFF0000000000FF00
                FF00FF00FF00FF00FF007B7B7B0000FFFF00FF00FF00FF00FF00FF00FF00FF00
                FF0000FFFF00FF00FF0000000000FF00FF00FF00FF0000FFFF00FF00FF00FF00
                FF00FF00FF007B7B7B0000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF0000FFFF00FF00FF00FF00FF00FF00FF0000000000000000000000
                0000FF00FF0000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF0000FFFF0000FFFF000000
                000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
                FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
                0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
                FF0000FFFF0000000000FF00FF0000000000000000000000000000FFFF0000FF
                FF0000FFFF00FF00FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
                FF0000FFFF000000000000FFFF0000FFFF0000FFFF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
                FF0000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF007B7B7B0000000000FF00FF0000FFFF0000FFFF0000FFFF00FF00
                FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF007B7B7B0000FFFF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00
                FF00FF00FF0000FFFF00FF00FF0000000000FF00FF00FF00FF00FF00FF007B7B
                7B0000FFFF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF0000000000FF00
                FF00FF00FF00FF00FF0000FFFF00FF00FF0000000000FF00FF00FF00FF0000FF
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF0000000000FF00
                FF00FF00FF00FF00FF00FF00FF0000FFFF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
              Spacing = -1
              TabOrder = 0
            end
          end
        end
      end
      object gbPrices: TGroupBox
        Left = 8
        Top = 116
        Width = 657
        Height = 46
        Caption = ' '#1042#1083#1086#1078#1077#1085#1072' '#1057#1090#1086#1081#1085#1086#1089#1090' '
        TabOrder = 5
        object lblInvestedValueType: TLabel
          Left = 265
          Top = 19
          Width = 19
          Height = 13
          Caption = #1058#1080#1087
          FocusControl = edtInvestedValueType
        end
        object lblTotalInvestedValue: TLabel
          Left = 375
          Top = 19
          Width = 29
          Height = 13
          Caption = #1054#1073#1097#1086
          FocusControl = edtTotalInvestedValue
        end
        object lblTotalInvestedValueCurrencyAbbrev: TLabel
          Left = 491
          Top = 19
          Width = 37
          Height = 13
          Caption = 'CRNCY'
        end
        object lblInvestedValueResultProductTechQuantity: TLabel
          Left = 136
          Top = 19
          Width = 43
          Height = 13
          Caption = #1055#1072#1088#1090#1080#1076#1072
          FocusControl = edtInvestedValueResultProductTechQuantity
        end
        object txtSpecProductTechMeasureAbbrev: TDBText
          Left = 229
          Top = 19
          Width = 30
          Height = 13
          DataField = '_TECH_MEASURE_ABBREV'
          DataSource = dsData
        end
        object btnInvestedValuesGraph: TSpeedButton
          Left = 624
          Top = 13
          Width = 25
          Height = 25
          Action = actInvestedValuesGraph
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF007B7B7B00FF00FF00FF00FF00FF00FF007B7B7B00FF00FF00FF00FF00FF00
            FF007B7B7B00FF00FF00FF00FF00FF00FF007B7B7B00FF00FF00FF00FF00FF00
            FF007B7B7B00FF00FF007B7B7B00FF00FF007B7B7B00FF00FF007B7B7B00FF00
            FF007B7B7B00FF00FF007B7B7B00FF00FF007B7B7B00FF00FF007B7B7B007B7B
            7B00000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FF00FF00FF00
            FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007B7B
            7B00000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF0000000000FF00FF000000FF00FF00FF000000FF000000FF00FF00FF00FF00
            0000FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF007B7B7B007B7B
            7B00000000007B7B7B000000FF007B7B7B000000FF007B7B7B000000FF007B7B
            7B007B7B7B00FF0000007B7B7B007B7B7B007B7B7B007B7B7B00FF00FF00FF00
            FF0000000000FF00FF00FF00FF000000FF00FF00FF00FF00FF000000FF00FF00
            FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF007B7B
            7B0000000000FF000000FF00FF00FF00FF00FF00FF00FF000000FF00FF000000
            FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF0000000000FF00FF00FF000000FF00FF00FF000000FF00FF00FF00FF000000
            FF00FF00FF000000FF00FF0000000000FF00FF00FF00FF00FF007B7B7B007B7B
            7B00000000007B7B7B00FF0000007B7B7B00FF0000007B7B7B007B7B7B007B7B
            7B000000FF007B7B7B007B7B7B00FF0000000000FF007B7B7B00FF00FF00FF00
            FF0000000000FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF007B7B
            7B0000000000FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00
            FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007B7B7B007B7B
            7B00000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
            7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        end
        object lblInvestedValuesDate: TLabel
          Left = 8
          Top = 19
          Width = 48
          Height = 13
          Caption = #1050#1098#1084' '#1076#1072#1090#1072
          FocusControl = edtInvestedValueResultProductTechQuantity
        end
        object edtInvestedValueType: TEdit
          Left = 288
          Top = 16
          Width = 81
          Height = 21
          Color = clBtnFace
          ReadOnly = True
          TabOrder = 2
        end
        object btnInvestedValueFilter: TBitBtn
          Left = 528
          Top = 13
          Width = 89
          Height = 25
          Action = actInvestedValueFilter
          Caption = #1047#1072#1076#1072#1074#1072#1085#1077'...'
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
            0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF000000000000000000000000000000000000000000FF00FF0000000000FFFF
            FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF0000000000FFFFFF00000000000000000000000000FF00FF0000000000FFFF
            FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF0000000000FFFFFF00000000000000000000000000FF00FF00000000000000
            00000000000000000000000000000000000000000000FF00FF00000000000000
            00000000000000000000000000000000000000000000FF00FF00000000000000
            0000FFFFFF00000000000000000000000000000000000000000000000000FFFF
            FF000000000000000000000000000000000000000000FF00FF00000000000000
            0000FFFFFF00000000000000000000000000FF00FF000000000000000000FFFF
            FF000000000000000000000000000000000000000000FF00FF00000000000000
            0000FFFFFF00000000000000000000000000FF00FF000000000000000000FFFF
            FF000000000000000000000000000000000000000000FF00FF00FF00FF000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
            FF0000000000FFFFFF00000000000000000000000000FF00FF0000000000FFFF
            FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF000000000000000000000000000000000000000000FF00FF00000000000000
            0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
            00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF000000
            0000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
            00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          Spacing = -1
          TabOrder = 4
        end
        object edtTotalInvestedValue: TJvEdit
          Left = 408
          Top = 16
          Width = 81
          Height = 21
          Alignment = taRightJustify
          ClipboardCommands = [caCopy]
          Color = clBtnFace
          ReadOnly = True
          TabOrder = 3
          Text = ''
        end
        object edtInvestedValueResultProductTechQuantity: TJvEdit
          Left = 184
          Top = 16
          Width = 41
          Height = 21
          Alignment = taRightJustify
          ClipboardCommands = [caCopy]
          Color = clBtnFace
          ReadOnly = True
          TabOrder = 1
          Text = ''
        end
        object edtInvestedValuesDate: TJvEdit
          Left = 62
          Top = 16
          Width = 65
          Height = 21
          ClipboardCommands = [caCopy]
          Color = 14276044
          ReadOnly = True
          TabOrder = 0
          Text = ''
        end
      end
      object gbNotes: TGroupBox
        Left = 672
        Top = 116
        Width = 257
        Height = 46
        Caption = ' '#1041#1077#1083#1077#1078#1082#1080' '
        TabOrder = 6
        DesignSize = (
          257
          46)
        object edtNotes: TDBEdit
          Left = 8
          Top = 16
          Width = 240
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'NOTES'
          DataSource = dsData
          TabOrder = 0
        end
      end
      inline frManufacturer: TfrPartnerFieldEditFrame
        Left = 640
        Top = 3
        Width = 289
        Height = 47
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        Constraints.MaxHeight = 47
        Constraints.MinHeight = 47
        TabOrder = 3
        TabStop = True
        inherited gbPartner: TGroupBox
          Width = 289
          Height = 47
          Caption = ' '#1057#1098#1079#1076#1072#1083' '#1059#1087#1088#1072#1074#1083#1077#1084#1080#1103' '#1054#1073#1077#1082#1090' '
          inherited pnlNameAndButtons: TPanel
            Width = 200
            Height = 30
            inherited pnlRightButtons: TPanel
              Left = 164
              Height = 30
              inherited tlbDocButton: TToolBar
                Top = 5
                Height = 22
                Align = alNone
              end
            end
            inherited pnlPartnerName: TPanel
              Width = 164
              Height = 30
              DesignSize = (
                164
                30)
              inherited edtPartnerName: TDBEdit
                Top = 5
                Width = 109
              end
              inherited cbPartner: TJvDBLookupCombo
                Top = 5
                Width = 165
              end
            end
          end
          inherited pnlPaddingRight: TPanel
            Left = 281
            Height = 30
          end
          inherited pnlPartnerCode: TPanel
            Height = 30
            DesignSize = (
              73
              30)
            inherited edtPartnerCode: TDBEdit
              Top = 5
            end
          end
          inherited pnlPaddingLeft: TPanel
            Height = 30
          end
        end
      end
      object gbSpecProduct: TGroupBox
        Left = 96
        Top = 3
        Width = 457
        Height = 47
        Caption = ' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090' '
        TabOrder = 1
        DesignSize = (
          457
          47)
        inline frSpecProduct: TfrProductFieldEditFrameBald
          Left = 8
          Top = 20
          Width = 441
          Height = 22
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Anchors = [akLeft, akTop, akRight]
          Constraints.MaxHeight = 22
          Constraints.MinHeight = 22
          TabOrder = 0
          TabStop = True
          DesignSize = (
            441
            22)
          inherited gbTreeNode: TGroupBox
            Width = 457
            DesignSize = (
              457
              49)
            inherited pnlTreeNode: TPanel
              Width = 441
              inherited pnlTreeNodeName: TPanel
                Width = 259
                DesignSize = (
                  259
                  22)
                inherited edtTreeNodeName: TDBEdit
                  Width = 258
                end
              end
              inherited pnlTreeNodeNo: TPanel
                Left = 259
              end
              inherited pnlRightButtons: TPanel
                Left = 382
              end
            end
          end
        end
      end
      object gbStatus: TGroupBox
        Left = 8
        Top = 3
        Width = 81
        Height = 47
        Caption = ' '#1055#1048#1056' '#1057#1090#1072#1090#1091#1089' '
        TabOrder = 0
        object edtSpecState: TDBEdit
          Left = 8
          Top = 20
          Width = 65
          Height = 21
          Color = clBtnFace
          DataField = 'SPEC_STATE_CODE'
          DataSource = dsData
          TabOrder = 0
        end
      end
      object gbTechMeasureAbbrev: TGroupBox
        Left = 560
        Top = 3
        Width = 73
        Height = 47
        Caption = ' '#1058#1077#1093#1085'.'#1084'.'#1077#1076'. '
        TabOrder = 2
        DesignSize = (
          73
          47)
        object edtTechMeasureAbbrev: TDBEdit
          Left = 8
          Top = 20
          Width = 57
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          Color = clBtnFace
          DataField = '_TECH_MEASURE_ABBREV'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 0
        end
      end
    end
    inherited grdPrint: TAbmesDBGrid
      Left = 1000
      Top = 192
      TabOrder = 1
      Columns = <
        item
          Alignment = taCenter
          CellButtons = <>
          Checkboxes = False
          DynProps = <>
          EditButtons = <>
          FieldName = 'IS_SHRUNK'
          Footers = <>
          Title.Caption = #177
          Width = 10
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'NO_AS_FORMATED_TEXT'
          Footers = <>
          Title.Caption = #1057#1090#1088#1091#1082#1090#1091#1088#1077#1085' '#1085#1086#1084#1077#1088
          Width = 167
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = '_LINE_TYPE_ABRREV'
          Footers = <>
          Title.Caption = #1042' '#1080' '#1076
          Width = 15
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DETAIL_NAME'
          Footers = <>
          Title.Caption = #1050#1088#1072#1081#1085#1072' '#1057#1090#1088#1091#1082#1090#1091#1088#1085#1072' '#1063#1072#1089#1090
          Width = 200
        end
        item
          Alignment = taCenter
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DETAIL_HAS_DOCUMENTATION'
          Footers = <>
          Title.Caption = #1048' '#1048' '#1054
          Width = 15
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = '_DETAIL_TECH_QUANTITY_SHOW'
          Footers = <>
          Title.Caption = #1058#1077#1093#1085#1086#1083#1086#1075#1080#1095#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1057#1090#1088#1091#1082#1090'.'
          Width = 45
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = '_LINE_DETAIL_TECH_QUANTITY_SHOW'
          Footers = <>
          Title.Caption = #1058#1077#1093#1085#1086#1083#1086#1075#1080#1095#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1054#1073#1097#1086
          Width = 45
        end
        item
          Alignment = taCenter
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = '_DETAIL_TECH_MEASURE_ABBREV'
          Footers = <>
          Title.Caption = #1058#1077#1093#1085#1086#1083#1086#1075#1080#1095#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1052'.'#1077#1076'.'
          Width = 29
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PRODUCT_NAME'
          Footers = <>
          Title.Caption = #1053#1072#1095#1072#1083#1085#1072' '#1057#1090#1088#1091#1082#1090#1091#1088#1085#1072' '#1063#1072#1089#1090
          Width = 200
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PRODUCT_HAS_DOCUMENTATION'
          Footers = <>
          Title.Caption = #1048' '#1048' '#1054
          Width = 15
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = '_PRODUCT_PRECISION_LEVEL_NO'
          Footers = <>
          Title.Caption = #1053#1058
          Width = 20
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PRODUCT_TECH_QUANTITY'
          Footers = <>
          Title.Caption = #1058#1077#1093#1085#1086#1083#1086#1075#1080#1095#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1047#1072' 1 '#1050#1057#1063
          Width = 45
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'TOTAL_PRODUCT_TECH_QUANTITY'
          Footers = <>
          Title.Caption = #1058#1077#1093#1085#1086#1083#1086#1075#1080#1095#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1054#1073#1097#1086
          Width = 45
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = '_PRODUCT_TECH_MEASURE_ABBREV'
          Footers = <>
          Title.Caption = #1058#1077#1093#1085#1086#1083#1086#1075#1080#1095#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1052'.'#1077#1076'.'
          Width = 29
        end>
    end
  end
  inherited pnlLinesData: TPanel
    Top = 178
    Width = 953
    Height = 392
    DesignSize = (
      953
      392)
    inherited pcMain: TPageControl
      Width = 937
      Height = 376
      MultiLine = True
      inherited tsLines1: TTabSheet
        inherited pnlDataButtons1: TPanel
          Top = 299
          Width = 917
          Height = 36
          DesignSize = (
            917
            36)
          object btnRefreshSpecification1: TBitBtn [5]
            Left = 698
            Top = 8
            Width = 105
            Height = 25
            Action = actRefreshSpecification
            Anchors = [akRight, akBottom]
            Caption = #1054#1073#1085#1086#1074#1103#1074#1072#1085#1077
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF0000000000FFFFFF0000000000000000000000000000000000FFFF
              FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF0000000000FFFFFF00000000000000000000000000000000000000
              000000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF0000000000FFFFFF00000000000000000000000000000000000000
              000000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF0000000000FFFFFF00000000000000000000000000FFFFFF00FFFF
              FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
              0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF0000000000FFFFFF000000000000000000FFFFFF00FFFFFF000000
              0000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
              000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF000000000000000000000000000000000000000000000000000000
              0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            Spacing = -1
            TabOrder = 4
          end
          object btnClearStructChanges: TBitBtn [6]
            Left = 558
            Top = 8
            Width = 131
            Height = 25
            Action = actClearStructChanges
            Anchors = [akRight, akBottom]
            Caption = #1055#1086#1090#1074'. '#1080#1079#1084#1077#1085#1077#1085#1080#1103#1090#1072
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
              000000000000000000000000000000000000000000000000000000000000FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FFFF
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FFFFFF0000000000FF00
              FF00FF00FF00FF00FF00FF00FF0000000000000000000000000000000000FFFF
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FFFFFF0000000000FF00
              FF00FF00FF00FF00FF00000000000000000000000000FF00FF0000000000FFFF
              FF00FF00FF00FF00FF00FF00FF00848484000000000000000000000000008484
              8400FF00FF00000000000000000000000000FF00FF00FF00FF0000000000FFFF
              FF00FF00FF00FF00FF000000000000000000FFFFFF00FFFFFF00FFFFFF000000
              0000000000000000000000000000FF00FF00FF00FF00FF00FF0000000000FFFF
              FF00FF00FF000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
              00008484840000000000FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
              FF008484840000000000FFFF0000000000000000000000000000FFFFFF000000
              0000FF00FF000000000084848400FF00FF00FF00FF00FF00FF0000000000FFFF
              FF0000000000FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF000000
              0000FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF0000000000FFFF
              FF0000000000FFFFFF0000000000000000000000000000000000FFFFFF000000
              0000FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00000000000000
              000000000000FFFF0000FFFFFF00FFFF0000FFFFFF00FFFFFF00FFFFFF000000
              0000FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00848484000000000000000000000000000000000000000000000000000000
              0000FF00FF000000000084848400FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF008484840000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF000000
              000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00848484000000000000000000000000008484
              8400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            Spacing = -1
            TabOrder = 3
          end
          inherited btnRecursivePrint: TBitBtn
            Left = 812
            Anchors = [akTop, akRight]
            TabOrder = 5
          end
        end
        inherited grdLines1: TAbmesDBGrid
          Width = 917
          Height = 299
          Columns = <
            item
              Alignment = taCenter
              AutoFitColWidth = False
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'IS_SHRUNK'
              Footers = <>
              Title.Caption = #177
              Width = 10
            end
            item
              AutoFitColWidth = False
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'NO_AS_FORMATED_TEXT'
              Footers = <>
              Title.Caption = #1057#1090#1088#1091#1082#1090#1091#1088#1077#1085' '#1085#1086#1084#1077#1088
              Width = 137
            end
            item
              AutoFitColWidth = False
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = '_LINE_TYPE_ABRREV'
              Footers = <>
              Title.Caption = #1042' '#1080' '#1076
              Width = 15
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'DETAIL_NAME'
              Footers = <>
              Title.Caption = #1050#1088#1072#1081#1085#1072' '#1057#1090#1088#1091#1082#1090#1091#1088#1085#1072' '#1063#1072#1089#1090
              Width = 451
            end
            item
              Alignment = taCenter
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'DETAIL_COMMON_STATUS_CODE'
              Footers = <>
              Title.Caption = #1055#1079#1094#1058#1049#1057
              Width = 51
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'DETAIL_NO'
              Footers = <>
              Title.Caption = #1053#1086#1084#1077#1088
              Visible = False
            end
            item
              Alignment = taCenter
              CellButtons = <>
              Color = 15532031
              DynProps = <>
              EditButtons = <>
              FieldName = 'DETAIL_HAS_DOCUMENTATION'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = [fsBold]
              Footers = <>
              Title.Caption = #1048' '#1048' '#1054
              Width = 15
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = '_DETAIL_TECH_QUANTITY_SHOW'
              Footers = <>
              Title.Caption = #1058#1077#1093#1085#1086#1083#1086#1075#1080#1095#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1057#1090#1088#1091#1082#1090#1091#1088#1085#1086
              Width = 71
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = '_LINE_DETAIL_TECH_QUANTITY_SHOW'
              Footers = <>
              Title.Caption = #1058#1077#1093#1085#1086#1083#1086#1075#1080#1095#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1054#1073#1097#1086
              Width = 71
            end
            item
              Alignment = taCenter
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = '_DETAIL_TECH_MEASURE_ABBREV'
              Footers = <>
              Title.Caption = #1058#1077#1093#1085#1086#1083#1086#1075#1080#1095#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1052'.'#1077#1076'.'
              Width = 39
            end
            item
              Alignment = taCenter
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'IS_FOR_SINGLE_USE'
              Footers = <>
              Title.Caption = #1041#1077#1079' '#1074#1088'.'
              Title.Hint = #1041#1077#1079' '#1074#1088#1098#1097#1072#1085#1077
              Title.Orientation = tohVertical
              Width = 15
            end>
        end
      end
      inherited tsLines2: TTabSheet
        inherited pnlDataButtons2: TPanel
          Top = 299
          Width = 917
          Height = 36
          object btnSpecInvestedValuesLevel1: TBitBtn
            Left = 792
            Top = 8
            Width = 126
            Height = 25
            Action = actSpecInvestedValuesLevel1
            Anchors = [akLeft, akTop, akRight]
            Caption = #1057#1090#1088#1091#1082#1090#1091#1088#1072' '#1085#1072' '#1042#1057'1...'
            TabOrder = 3
          end
        end
        inherited grdLines2: TAbmesDBGrid
          Width = 917
          Height = 299
          Columns = <
            item
              Alignment = taCenter
              AutoFitColWidth = False
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'IS_SHRUNK'
              Footers = <>
              Title.Caption = #177
              Width = 10
            end
            item
              AutoFitColWidth = False
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'NO_AS_FORMATED_TEXT'
              Footers = <>
              Title.Caption = #1057#1090#1088#1091#1082#1090#1091#1088#1077#1085' '#1085#1086#1084#1077#1088
              Width = 137
            end
            item
              AutoFitColWidth = False
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = '_LINE_TYPE_ABRREV'
              Footers = <>
              Title.Caption = #1042' '#1080' '#1076
              Width = 15
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'PRODUCT_NAME'
              Footers = <>
              Title.Caption = #1053#1072#1095#1072#1083#1085#1072' '#1057#1090#1088#1091#1082#1090#1091#1088#1085#1072' '#1063#1072#1089#1090
              Width = 285
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'PRODUCT_NO'
              Footers = <>
              Title.Caption = #1053#1086#1084#1077#1088
              Visible = False
            end
            item
              Alignment = taCenter
              CellButtons = <>
              Color = 15532031
              DynProps = <>
              EditButtons = <>
              FieldName = 'PRODUCT_HAS_DOCUMENTATION'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = [fsBold]
              Footers = <>
              Title.Caption = #1048' '#1048' '#1054
              Width = 15
            end
            item
              Alignment = taCenter
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'PRODUCT_COMMON_STATUS_CODE'
              Footers = <>
              Title.Caption = #1055#1079#1094#1058#1049#1057
              Width = 51
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = '_PRODUCT_PRECISION_LEVEL_NO'
              Footers = <>
              Title.Caption = #1053#1058
              Title.Hint = #1053#1080#1074#1086' '#1085#1072' '#1090#1086#1095#1085#1086#1089#1090
              Width = 20
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'PRODUCT_TECH_QUANTITY'
              Footers = <>
              Title.Caption = #1058#1077#1093#1085#1086#1083#1086#1075#1080#1095#1085#1086' '#1082'-'#1074#1086'|'#1047#1072' 1 '#1050#1057#1063
              Width = 55
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'TOTAL_PRODUCT_TECH_QUANTITY'
              Footers = <>
              Title.Caption = #1058#1077#1093#1085#1086#1083#1086#1075#1080#1095#1085#1086' '#1082'-'#1074#1086'|'#1054#1073#1097#1086
              Width = 55
            end
            item
              Alignment = taCenter
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = '_PRODUCT_TECH_MEASURE_ABBREV'
              Footers = <>
              Title.Caption = #1058#1077#1093#1085#1086#1083#1086#1075#1080#1095#1085#1086' '#1082'-'#1074#1086'|'#1052'.'#1077#1076'.'
              Width = 39
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'TOTAL_PRODUCT_ACCOUNT_QUANTITY'
              Footers = <>
              Title.Caption = #1057#1095#1077#1090#1086#1074#1086#1076#1085#1086' '#1082'-'#1074#1086'|'#1054#1073#1097#1086
              Width = 55
            end
            item
              Alignment = taCenter
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = '_PRODUCT_ACCOUNT_MEASURE_ABBREV'
              Footers = <>
              Title.Caption = #1057#1095#1077#1090#1086#1074#1086#1076#1085#1086' '#1082'-'#1074#1086'|'#1052'.'#1077#1076'.'
              Width = 39
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'PRODUCT_SECONDARY_SINGLE_PRICE'
              Footers = <>
              Title.Caption = #1062#1077#1085#1072' '#1074' %s|'#1045#1076'-'#1095#1085#1072
              Width = 40
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'PRODUCT_SECONDARY_TOTAL_PRICE'
              Footers = <>
              Title.Caption = #1062#1077#1085#1072' '#1074' %s|'#1054#1073#1097#1086
              Width = 55
            end>
        end
      end
      object tsModelVariants: TTabSheet [2]
        BorderWidth = 6
        Caption = #1042#1072#1088#1080#1072#1085#1090#1080' '#1085#1072' '#1052#1054#1044#1045#1083
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ImageIndex = 16
        ParentFont = False
        object grdModelVariants: TAbmesDBGrid
          Left = 0
          Top = 0
          Width = 917
          Height = 299
          Align = alClient
          AllowedOperations = [alopInsertEh, alopUpdateEh, alopAppendEh]
          DataSource = dsSpecModelVariants
          DynProps = <>
          FooterParams.Color = clWindow
          GridLineParams.VertEmptySpaceStyle = dessNonEh
          HorzScrollBar.VisibleMode = sbNeverShowEh
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghIncSearch, dghPreferIncSearch]
          TabOrder = 0
          TitleParams.MultiTitle = True
          TitleParams.RowHeight = 40
          TitleParams.VTitleMargin = 9
          OnDblClick = grdModelVariantsDblClick
          OnDrawColumnCell = grdDataDrawColumnCell
          OnGetCellParams = grdModelVariantsGetCellParams
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'SPEC_MODEL_VARIANT_NO'
              Footers = <>
              Title.Caption = #8470
              Width = 30
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'MAIN_DEPT_NAME'
              Footers = <>
              Title.Caption = #1058#1055' '#1056#1077#1072#1083#1080#1079#1072#1090#1086#1088'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
              Width = 220
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'MAIN_DEPT_IDENTIFIER'
              Footers = <>
              Title.Caption = #1058#1055' '#1056#1077#1072#1083#1080#1079#1072#1090#1086#1088'|'#1050#1086#1076
              Width = 70
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'MIN_TECH_QUANTITY'
              Footers = <>
              Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1054#1090
              Width = 65
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'MAX_TECH_QUANTITY'
              Footers = <>
              Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1044#1086
              Width = 65
            end
            item
              Alignment = taCenter
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'PRODUCT_PERIOD_ACTIVE_STATE'
              Footers = <>
              Title.Caption = #1059#1052#1059#1054#1073' '#1040#1082#1090#1080#1074#1085#1086#1089#1090
              Width = 75
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = '_AUTHORIZATION_EMPLOYEE_NO'
              Footers = <>
              Tag = 2
              Title.Caption = #1040#1074#1090#1086#1088#1080#1079#1080#1088#1072#1083'|'#1050#1086#1076
              Visible = False
              Width = 51
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = '_AUTHORIZATION_EMPLOYEE_NAME'
              Footers = <>
              Tag = 2
              Title.Caption = #1040#1074#1090#1086#1088#1080#1079#1080#1088#1072#1083'|'#1048#1084#1077
              Visible = False
              Width = 151
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'AUTHORIZATION_DATE'
              Footers = <>
              Tag = 2
              Title.Caption = #1040#1074#1090#1086#1088#1080#1079#1080#1088#1072#1083'|'#1085#1072' '#1076#1072#1090#1072
              Visible = False
              Width = 63
            end
            item
              Alignment = taCenter
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = '_AUTHORIZATION_OF_OPERATIONS'
              Footers = <>
              Tag = 2
              Title.Caption = #1040#1074#1090#1086#1088#1080#1079#1080#1088#1072#1083'|'#1053#1080#1074#1086
              Visible = False
              Width = 29
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'MAX_TOTAL_TREATMENT_WORKDAYS'
              Footers = <>
              Tag = 2
              Title.Caption = '  '#1055#1077#1088#1080#1086#1076'   ('#1088#1072#1073'. '#1076#1085#1080')'
              Visible = False
              Width = 55
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'NOTES'
              Footers = <>
              Tag = 3
              Title.Caption = #1041#1077#1083#1077#1078#1082#1080
              Width = 353
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
        object pnlModelVariantDataButtons: TPanel
          Left = 0
          Top = 299
          Width = 917
          Height = 36
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 1
          DesignSize = (
            917
            36)
          object btnAddModelVariant: TBitBtn
            Left = 0
            Top = 8
            Width = 105
            Height = 25
            Action = actAddModelVariant
            Caption = #1044#1086#1073#1072#1074#1103#1085#1077'...'
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
              FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF000000
              FF000000FF000000FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
              FF000000FF000000FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
              FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
              FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
              0000FF000000FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
              0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
              0000FF000000FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            Spacing = -1
            TabOrder = 0
          end
          object btnDelModelVariant: TBitBtn
            Left = 114
            Top = 8
            Width = 105
            Height = 25
            Action = actDelModelVariant
            Caption = #1048#1079#1090#1088#1080#1074#1072#1085#1077'...'
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF000000
              FF000000FF000000FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
              FF000000FF000000FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
              FF00FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
              0000FF000000FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
              0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
              0000FF000000FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            Spacing = -1
            TabOrder = 1
          end
          object btnEditModelVariant: TBitBtn
            Left = 228
            Top = 8
            Width = 105
            Height = 25
            Action = actEditModelVariant
            Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077'...'
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
              0000FF00FF000000000000000000000000000000000000000000FFFFFF00FFFF
              FF0000000000FFFFFF000000000000000000FFFFFF0000000000FFFF00000000
              00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF00000000
              000000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000FFFF
              FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFF00000000
              0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
              0000FFFFFF000000000000000000FFFFFF00FFFFFF0000000000FFFF00000000
              000000FFFF00FFFFFF0000FFFF00FFFFFF000000000000000000000000000000
              00000000000000FFFF0000000000FFFFFF00FFFFFF0000000000FFFF00000000
              0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
              FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFF00000000
              000000FFFF00FFFFFF0000000000000000000000000000000000000000000000
              000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
              00000000000000FFFF00FFFFFF0000FFFF00000000000000000000FFFF000000
              0000FFFFFF00FFFFFF000000000000000000FFFFFF0000000000FF00FF00FF00
              FF00FF00FF000000000000000000000000000000000000FFFF0000000000FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF000000000000FFFF0000000000FFFFFF00FFFF
              FF00FFFFFF00FFFFFF0000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF000000000000FFFF0000000000FFFFFF00FFFFFF000000
              000000000000FFFFFF0000000000FFFFFF00FFFFFF0000000000FF00FF00FF00
              FF00FF00FF000000000000FFFF000000000000000000FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00
              FF00000000000000FF0000000000FF00FF0000000000FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF000000000000000000FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF0000000000FF00FF00FF00FF000000000000000000000000000000
              0000000000000000000000000000FF00FF00FF00FF00FF00FF00}
            Spacing = -1
            TabOrder = 2
          end
          object btnAddModelVariantLike: TBitBtn
            Left = 342
            Top = 8
            Width = 137
            Height = 25
            Action = actAddModelVariantLike
            Anchors = [akTop, akRight]
            Caption = #1053#1086#1074' '#1074#1072#1088#1080#1072#1085#1090' '#1082#1072#1090#1086'...'
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
              8400000084000000840000008400000084000000840000008400000084000000
              8400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
              8400000000000000000000000000000000000000000000000000000000000000
              840000008400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
              8400000000000000000000000000000000000000000000000000000000000000
              84000000000000008400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
              8400000000000000000000000000000000000000000000000000000000000000
              8400000000000000000000008400FF00FF00FF00FF00FF00FF00FF00FF000000
              8400000000000000000000000000000000000000000000000000000000000000
              8400000000000000000000008400FF00FF00FF00FF00FF00FF00FF00FF000000
              8400000000000000000000000000000000000000000000000000000000000000
              8400000000000000000000008400FF00FF00FF00FF00FF00FF00FF00FF000000
              8400000084000000840000008400000084000000840000008400000084000000
              8400000000000000000000008400FF00FF00FF00FF00FF00FF00FF00FF00FFFF
              FF000084000000840000FFFFFF0000FF000000FF0000FFFFFF0000FF000000FF
              0000000084000000000000008400FF00FF00FF00FF00FF00FF00FF00FF00FFFF
              FF0000840000FFFFFF0000840000FFFFFF0000FF000000840000FFFFFF000084
              000000FF00000000840000008400FF00FF00FF00FF00FF00FF00FF00FF00FFFF
              FF0000840000008400000084000000840000008400000084000000840000FFFF
              FF0000FF00000084000000008400FF00FF00FF00FF00FF00FF00FF00FF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000084
              0000FFFFFF0000840000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FFFFFF000084000000840000008400000084000000840000FFFF
              FF000084000000840000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF0000840000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            TabOrder = 3
          end
          object tlbShowModelVariantNotes: TToolBar
            Left = 867
            Top = 8
            Width = 50
            Height = 25
            Align = alNone
            Anchors = [akTop, akRight]
            ButtonHeight = 25
            ButtonWidth = 25
            Caption = 'tlbShowModelVariantNotes'
            Images = dmMain.ilActions
            TabOrder = 4
            Transparent = True
            object btnShowModelVariantNotes: TToolButton
              Tag = 2
              Left = 0
              Top = 0
              Hint = #1055#1086#1082#1072#1079#1074#1072'/'#1057#1082#1088#1080#1074#1072' '#1041#1077#1083#1077#1078#1082#1080#1090#1077
              AllowAllUp = True
              AutoSize = True
              ImageIndex = 57
              Style = tbsCheck
            end
            object btnShowInactiveModelVariants: TToolButton
              Left = 23
              Top = 0
              Action = actShowInactiveModelVariants
              AllowAllUp = True
              Grouped = True
              Style = tbsCheck
            end
          end
        end
      end
      inherited tsStages: TTabSheet
        inherited pnlStagesDataButtons: TPanel
          Top = 299
          Width = 917
          Height = 36
          inherited pnlStagesDataButtonsInner: TPanel
            Left = 457
            Height = 36
          end
        end
        inherited pnlStages: TPanel
          Left = 462
          Width = 455
          Height = 299
          inherited grdStages: TAbmesDBGrid
            Top = 26
            Width = 455
            Height = 273
            DataSource = dsSpecModelVariantStages
            TabOrder = 1
            TitleParams.VTitleMargin = 14
            Columns = <
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'SPEC_LINE_STAGE_NO'
                Footers = <>
                Title.Caption = #8470
                Width = 20
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'DEPT_NAME'
                Footers = <>
                Title.Caption = #1045#1090#1058#1055'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                Width = 209
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'DEPT_IDENTIFIER'
                Footers = <>
                Title.Caption = #1045#1090#1058#1055'|'#1050#1086#1076
                Width = 61
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'TREATMENT_WORKDAYS'
                Footers = <>
                Title.Caption = #1056#1072#1073#1086#1090#1085#1080' '#1076#1085#1080' '#1079#1072'|'#1048#1079#1087#1098#1083#1085'.'
                Width = 45
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'OUTGOING_WORKDAYS'
                Footers = <>
                Title.Caption = #1056#1072#1073#1086#1090#1085#1080' '#1076#1085#1080' '#1079#1072'|'#1048#1079#1093#1086#1076
                Width = 45
              end
              item
                Alignment = taCenter
                CellButtons = <>
                Color = 15532031
                DynProps = <>
                EditButtons = <>
                FieldName = 'HAS_DOCUMENTATION'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Courier New'
                Font.Style = [fsBold]
                Footers = <>
                Title.Caption = #1048' '#1048' '#1054
                Width = 15
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'OPERATION_COUNT'
                Footers = <>
                Title.Caption = #1041#1088'. '#1054#1087'.'
                Title.Hint = #1041#1088#1086#1081' '#1086#1087#1077#1088#1072#1094#1080#1080
                Width = 21
              end>
          end
          object pnlStagesModelVariant: TPanel
            Left = 0
            Top = 0
            Width = 455
            Height = 26
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            DesignSize = (
              455
              26)
            object lblStagesModelVariant: TLabel
              Left = 0
              Top = 3
              Width = 99
              Height = 13
              Caption = #1042#1072#1088#1080#1072#1085#1090' '#1085#1072' '#1052#1054#1044#1045#1083
              FocusControl = cbStagesModelVariant
            end
            object cbStagesModelVariant: TJvDBLookupCombo
              Left = 104
              Top = 0
              Width = 351
              Height = 21
              DeleteKeyClear = False
              EmptyValue = ' '
              Anchors = [akLeft, akTop, akRight]
              LookupField = 'SPEC_MODEL_VARIANT_NO'
              LookupDisplay = 'MODEL_VARIANT_IDENTIFIER'
              LookupSource = dsSpecModelVariants
              TabOrder = 0
              OnChange = cbStagesModelVariantChange
            end
          end
        end
        inherited pnlSplitter: TPanel
          Left = 454
          Height = 299
        end
        inherited grdLines3: TAbmesDBGrid
          Width = 454
          Height = 299
          Columns = <
            item
              Alignment = taCenter
              AutoFitColWidth = False
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'IS_SHRUNK'
              Footers = <>
              Title.Caption = #177
              Width = 10
            end
            item
              AutoFitColWidth = False
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'NO_AS_FORMATED_TEXT'
              Footers = <>
              Title.Caption = #1057#1090#1088#1091#1082#1090#1091#1088#1077#1085' '#1085#1086#1084#1077#1088
              Width = 137
            end
            item
              AutoFitColWidth = False
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = '_LINE_TYPE_ABRREV'
              Footers = <>
              Title.Caption = #1042' '#1080' '#1076
              Width = 15
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'DETAIL_NAME'
              Footers = <>
              Title.Caption = #1050#1088#1072#1081#1085#1072' '#1057#1090#1088#1091#1082#1090#1091#1088#1085#1072' '#1063#1072#1089#1090
              Width = 256
            end>
        end
      end
      inherited tsModel: TTabSheet
        inherited grdModel: TAbmesDBGrid
          Width = 917
          Height = 241
          DataSource = dsModel
        end
        inherited pnlModelControls: TPanel
          Width = 929
          DesignSize = (
            929
            32)
          object lblModelModelVariant: TLabel [0]
            Left = 6
            Top = 10
            Width = 99
            Height = 13
            Caption = #1042#1072#1088#1080#1072#1085#1090' '#1085#1072' '#1052#1054#1044#1045#1083
            FocusControl = cbModelModelVariant
          end
          inherited btnToggleInvestedValue: TSpeedButton
            Left = 850
          end
          inherited btnMaximizeInModel: TSpeedButton
            Left = 901
          end
          inherited btnToggleInvestedValuePart: TSpeedButton
            Left = 871
          end
          object btnUnauthorizeModelVariant: TSpeedButton [4]
            Left = 416
            Top = 6
            Width = 21
            Height = 21
            Action = actUnauthorizeModelVariant
            AllowAllUp = True
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000FF0000000000FF00
              FF00FF00FF00FF00FF00FF00FF007B7B7B0000000000FF00FF00FF00FF000000
              FF00FF00FF0000000000FF00FF00FF00FF00FF00FF000000FF0000000000FF00
              FF00FF00FF00FF00FF007B7B7B000000FF00FF00FF00FF00FF00FF00FF00FF00
              FF000000FF00FF00FF0000000000FF00FF00FF00FF000000FF00FF00FF00FF00
              FF00FF00FF007B7B7B000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF0000000000000000000000
              0000FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000FF000000
              000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000FF000000FF000000
              FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
              000000000000000000000000FF000000FF000000FF000000FF000000FF000000
              FF000000FF0000000000FF00FF000000000000000000000000000000FF000000
              FF000000FF00FF00FF000000FF000000FF000000FF000000FF000000FF000000
              FF000000FF00000000000000FF000000FF000000FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF000000FF000000FF000000FF000000FF000000FF000000
              FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000FF000000FF000000
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF007B7B7B0000000000FF00FF000000FF000000FF000000FF00FF00
              FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF007B7B7B000000FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00
              FF00FF00FF000000FF00FF00FF0000000000FF00FF00FF00FF00FF00FF007B7B
              7B000000FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF0000000000FF00
              FF00FF00FF00FF00FF000000FF00FF00FF0000000000FF00FF00FF00FF000000
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF0000000000FF00
              FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            Layout = blGlyphRight
          end
          object cbModelModelVariant: TJvDBLookupCombo [5]
            Left = 110
            Top = 6
            Width = 294
            Height = 21
            DeleteKeyClear = False
            LookupField = 'SPEC_MODEL_VARIANT_NO'
            LookupDisplay = 'MODEL_VARIANT_IDENTIFIER'
            LookupSource = dsSpecModelVariants
            TabOrder = 0
            OnChange = cbModelModelVariantChange
          end
          object btnAuthorizeModelVariant: TBitBtn [6]
            Left = 538
            Top = 6
            Width = 111
            Height = 21
            Action = actAuthorizeModelVariant
            Caption = #1040#1074#1090#1086#1088#1080#1079#1080#1088#1072#1085#1077' '#1045
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF0000000000FF00FF00FF00FF00FF00FF00FF00FF0000FFFF0000000000FF00
              FF00FF00FF00FF00FF00FF00FF007B7B7B0000000000FF00FF00FF00FF0000FF
              FF00FF00FF0000000000FF00FF00FF00FF00FF00FF0000FFFF0000000000FF00
              FF00FF00FF00FF00FF007B7B7B0000FFFF00FF00FF00FF00FF00FF00FF00FF00
              FF0000FFFF00FF00FF0000000000FF00FF00FF00FF0000FFFF00FF00FF00FF00
              FF00FF00FF007B7B7B0000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF0000FFFF00FF00FF00FF00FF00FF00FF0000000000000000000000
              0000FF00FF0000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF0000FFFF0000FFFF000000
              000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
              FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
              0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
              FF0000FFFF0000000000FF00FF0000000000000000000000000000FFFF0000FF
              FF0000FFFF00FF00FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
              FF0000FFFF000000000000FFFF0000FFFF0000FFFF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
              FF0000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF007B7B7B0000000000FF00FF0000FFFF0000FFFF0000FFFF00FF00
              FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF007B7B7B0000FFFF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00
              FF00FF00FF0000FFFF00FF00FF0000000000FF00FF00FF00FF00FF00FF007B7B
              7B0000FFFF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF0000000000FF00
              FF00FF00FF00FF00FF0000FFFF00FF00FF0000000000FF00FF00FF00FF0000FF
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF0000000000FF00
              FF00FF00FF00FF00FF00FF00FF0000FFFF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            Spacing = -1
            TabOrder = 2
          end
          inherited btnCheckModel: TBitBtn
            Left = 445
            Width = 84
            TabOrder = 1
          end
          object btnAuthorizeOperationModelVariant: TBitBtn [8]
            Left = 658
            Top = 6
            Width = 111
            Height = 21
            Action = actAuthorizeOperationModelVariant
            Caption = #1040#1074#1090#1086#1088#1080#1079#1080#1088#1072#1085#1077' '#1054
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF0000000000FF00FF00FF00FF00FF00FF00FF00FF0000FFFF0000000000FF00
              FF00FF00FF00FF00FF00FF00FF007B7B7B0000000000FF00FF00FF00FF0000FF
              FF00FF00FF0000000000FF00FF00FF00FF00FF00FF0000FFFF0000000000FF00
              FF00FF00FF00FF00FF007B7B7B0000FFFF00FF00FF00FF00FF00FF00FF00FF00
              FF0000FFFF00FF00FF0000000000FF00FF00FF00FF0000FFFF00FF00FF00FF00
              FF00FF00FF007B7B7B0000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF0000FFFF00FF00FF00FF00FF00FF00FF0000000000000000000000
              0000FF00FF0000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF0000FFFF0000FFFF000000
              000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
              FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
              0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
              FF0000FFFF0000000000FF00FF0000000000000000000000000000FFFF0000FF
              FF0000FFFF00FF00FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
              FF0000FFFF000000000000FFFF0000FFFF0000FFFF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
              FF0000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF007B7B7B0000000000FF00FF0000FFFF0000FFFF0000FFFF00FF00
              FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF007B7B7B0000FFFF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00
              FF00FF00FF0000FFFF00FF00FF0000000000FF00FF00FF00FF00FF00FF007B7B
              7B0000FFFF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF0000000000FF00
              FF00FF00FF00FF00FF0000FFFF00FF00FF0000000000FF00FF00FF00FF0000FF
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF0000000000FF00
              FF00FF00FF00FF00FF00FF00FF0000FFFF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            Spacing = -1
            TabOrder = 3
          end
          inherited btnPrintModel: TBitBtn
            Left = 778
            Width = 63
            TabOrder = 4
          end
        end
        inherited pnlModelLeft: TPanel
          Height = 241
        end
        inherited pnlModelRight: TPanel
          Left = 923
          Height = 241
        end
        inherited pnlModelBottom: TPanel
          Top = 337
          Width = 929
          Height = 10
        end
        inherited pnlModelTaskEdit: TPanel
          Width = 929
          DesignSize = (
            929
            32)
          inherited btnMaximizeInModel2: TSpeedButton
            Left = 901
          end
          inherited lblEditTaskInModelCaption: TLabel
            Width = 662
          end
        end
        inherited pnlTaskModelTop: TPanel
          Width = 929
          inherited pnlTaskModelTopClient: TPanel
            Width = 815
            inherited btnMaximizeInModel3: TSpeedButton
              Left = 787
            end
            inherited lblTaskModelCaption: TLabel
              Width = 668
            end
          end
        end
      end
      object TabSheet1: TTabSheet [5]
        BorderWidth = 6
        Caption = '1'
        ImageIndex = -1
        TabVisible = False
        object pnlBottom: TPanel
          Left = 0
          Top = 303
          Width = 917
          Height = 33
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 0
          object btnMoveUp: TSpeedButton
            Left = 342
            Top = 8
            Width = 28
            Height = 13
            Hint = #1055#1088#1077#1084#1077#1089#1090#1080' '#1085#1072#1075#1086#1088#1077
            Glyph.Data = {
              96040000424D960400000000000036040000280000000B000000080000000100
              08000000000060000000120B0000120B00000001000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
              A6000020400000206000002080000020A0000020C0000020E000004000000040
              20000040400000406000004080000040A0000040C0000040E000006000000060
              20000060400000606000006080000060A0000060C0000060E000008000000080
              20000080400000806000008080000080A0000080C0000080E00000A0000000A0
              200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
              200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
              200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
              20004000400040006000400080004000A0004000C0004000E000402000004020
              20004020400040206000402080004020A0004020C0004020E000404000004040
              20004040400040406000404080004040A0004040C0004040E000406000004060
              20004060400040606000406080004060A0004060C0004060E000408000004080
              20004080400040806000408080004080A0004080C0004080E00040A0000040A0
              200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
              200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
              200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
              20008000400080006000800080008000A0008000C0008000E000802000008020
              20008020400080206000802080008020A0008020C0008020E000804000008040
              20008040400080406000804080008040A0008040C0008040E000806000008060
              20008060400080606000806080008060A0008060C0008060E000808000008080
              20008080400080806000808080008080A0008080C0008080E00080A0000080A0
              200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
              200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
              200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
              2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
              2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
              2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
              2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
              2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
              2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
              2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00070707000000
              00000707070007070700F0F0F0000707070000000000F0F0F000000000000700
              F0F0F0F0F0F0F0000700070700F0F0F0F0F00007070007070700F0F0F0000707
              07000707070700F0000707070700070707070700070707070700}
            Layout = blGlyphBottom
            OnClick = actMoveUpLineExecute
          end
          object btnMoveDown: TSpeedButton
            Left = 342
            Top = 21
            Width = 28
            Height = 12
            Hint = #1055#1088#1077#1084#1077#1089#1090#1080' '#1085#1072#1076#1086#1083#1091
            Glyph.Data = {
              96040000424D960400000000000036040000280000000B000000080000000100
              0800000000006000000000000000000000000001000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
              A6000020400000206000002080000020A0000020C0000020E000004000000040
              20000040400000406000004080000040A0000040C0000040E000006000000060
              20000060400000606000006080000060A0000060C0000060E000008000000080
              20000080400000806000008080000080A0000080C0000080E00000A0000000A0
              200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
              200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
              200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
              20004000400040006000400080004000A0004000C0004000E000402000004020
              20004020400040206000402080004020A0004020C0004020E000404000004040
              20004040400040406000404080004040A0004040C0004040E000406000004060
              20004060400040606000406080004060A0004060C0004060E000408000004080
              20004080400040806000408080004080A0004080C0004080E00040A0000040A0
              200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
              200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
              200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
              20008000400080006000800080008000A0008000C0008000E000802000008020
              20008020400080206000802080008020A0008020C0008020E000804000008040
              20008040400080406000804080008040A0008040C0008040E000806000008060
              20008060400080606000806080008060A0008060C0008060E000808000008080
              20008080400080806000808080008080A0008080C0008080E00080A0000080A0
              200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
              200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
              200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
              2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
              2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
              2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
              2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
              2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
              2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
              2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00070707070700
              0707070707000707070700F000070707070007070700F0F0F000070707000707
              00F0F0F0F0F0000707000700F0F0F0F0F0F0F000070000000000F0F0F0000000
              000007070700F0F0F00007070700070707000000000007070700}
          end
          object btnInsertRecord: TBitBtn
            Left = 0
            Top = 8
            Width = 105
            Height = 25
            Action = actInsertRecord
            Caption = #1044#1086#1073#1072#1074#1103#1085#1077'...'
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
              FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF000000
              FF000000FF000000FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
              FF000000FF000000FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
              FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
              FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
              0000FF000000FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
              0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
              0000FF000000FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            Spacing = -1
            TabOrder = 0
          end
          object btnDelRecord: TBitBtn
            Left = 114
            Top = 8
            Width = 105
            Height = 25
            Action = actDelRecord
            Caption = #1048#1079#1090#1088#1080#1074#1072#1085#1077'...'
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF000000
              FF000000FF000000FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
              FF000000FF000000FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
              FF00FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
              0000FF000000FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
              0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
              0000FF000000FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            Spacing = -1
            TabOrder = 1
          end
          object btnEditRecord: TBitBtn
            Left = 228
            Top = 8
            Width = 105
            Height = 25
            Action = actEditRecord
            Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077'...'
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
              0000FF00FF000000000000000000000000000000000000000000FFFFFF00FFFF
              FF0000000000FFFFFF000000000000000000FFFFFF0000000000FFFF00000000
              00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF00000000
              000000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000FFFF
              FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFF00000000
              0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
              0000FFFFFF000000000000000000FFFFFF00FFFFFF0000000000FFFF00000000
              000000FFFF00FFFFFF0000FFFF00FFFFFF000000000000000000000000000000
              00000000000000FFFF0000000000FFFFFF00FFFFFF0000000000FFFF00000000
              0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
              FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFF00000000
              000000FFFF00FFFFFF0000000000000000000000000000000000000000000000
              000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
              00000000000000FFFF00FFFFFF0000FFFF00000000000000000000FFFF000000
              0000FFFFFF00FFFFFF000000000000000000FFFFFF0000000000FF00FF00FF00
              FF00FF00FF000000000000000000000000000000000000FFFF0000000000FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF000000000000FFFF0000000000FFFFFF00FFFF
              FF00FFFFFF00FFFFFF0000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF000000000000FFFF0000000000FFFFFF00FFFFFF000000
              000000000000FFFFFF0000000000FFFFFF00FFFFFF0000000000FF00FF00FF00
              FF00FF00FF000000000000FFFF000000000000000000FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00
              FF00000000000000FF0000000000FF00FF0000000000FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF000000000000000000FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF0000000000FF00FF00FF00FF000000000000000000000000000000
              0000000000000000000000000000FF00FF00FF00FF00FF00FF00}
            Spacing = -1
            TabOrder = 2
          end
        end
      end
      inherited tsTasks: TTabSheet
        inherited pnlTasksTop: TPanel
          Width = 917
          object lblTasksModelVariant: TLabel
            Left = 0
            Top = 4
            Width = 99
            Height = 13
            Caption = #1042#1072#1088#1080#1072#1085#1090' '#1085#1072' '#1052#1054#1044#1045#1083
            FocusControl = cbTasksModelVariant
          end
          object cbTasksModelVariant: TJvDBLookupCombo
            Left = 104
            Top = 0
            Width = 294
            Height = 21
            DeleteKeyClear = False
            LookupField = 'SPEC_MODEL_VARIANT_NO'
            LookupDisplay = 'MODEL_VARIANT_IDENTIFIER'
            LookupSource = dsSelectModelVariants
            TabOrder = 0
            OnChange = cbTasksModelVariantChange
          end
        end
        inherited grdTasks: TAbmesDBGrid
          Width = 334
          Height = 309
          DataSource = dsSpecModelVariantTasks
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'SPEC_MODEL_VARIANT_TASK_NO'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #8470
              Width = 30
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'SPEC_MODEL_VARIANT_TASK_NAME'
              Footers = <>
              Title.Alignment = taCenter
              Width = 270
            end>
        end
        inherited pnlTasksButtons: TPanel
          Left = 334
          Height = 309
          inherited blvDivider: TBevel
            Height = 310
          end
        end
        inherited grdTaskDepts: TAbmesDBGrid
          Left = 469
          Width = 335
          Height = 309
          DataSource = dsSpecModelVariantTaskDepts
          TitleParams.VTitleMargin = 5
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'DEPT_NAME'
              Footers = <>
              Title.Caption = #1045#1090#1058#1055'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
              Width = 252
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'DEPT_IDENTIFIER'
              Footers = <>
              Title.Caption = #1045#1090#1058#1055'|'#1050#1086#1076
              Width = 49
            end>
        end
        inherited pnlTaskDeptsButtons: TPanel
          Left = 804
          Height = 309
        end
      end
    end
    inherited pnlNav: TPanel
      Left = 577
      inherited tlbTopButtons: TToolBar
        inherited navLines: TDBColorNavigator
          Hints.Strings = ()
        end
        inherited btnExcelExportLines: TSpeedButton
          Transparent = False
        end
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 88
    Top = 264
  end
  inherited cdsGridData: TAbmesClientDataSet
    Aggregates = <
      item
        Active = True
        GroupingLevel = 1
        IndexName = 'idxNo'
        Visible = False
      end
      item
        Active = True
        GroupingLevel = 2
        IndexName = 'idxNo'
        Visible = False
      end
      item
        Active = True
        GroupingLevel = 3
        IndexName = 'idxNo'
        Visible = False
      end
      item
        Active = True
        GroupingLevel = 4
        IndexName = 'idxNo'
        Visible = False
      end
      item
        Active = True
        GroupingLevel = 5
        IndexName = 'idxNo'
        Visible = False
      end
      item
        Active = True
        GroupingLevel = 6
        IndexName = 'idxNo'
        Visible = False
      end
      item
        Active = True
        GroupingLevel = 7
        IndexName = 'idxNo'
        Visible = False
      end>
    DataSetField = cdsDataqrySpecLines
    FieldDefs = <
      item
        Name = 'SPEC_PRODUCT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SPEC_LINE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PARENT_SPEC_LINE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'NO_1'
        DataType = ftFloat
      end
      item
        Name = 'NO_2'
        DataType = ftFloat
      end
      item
        Name = 'NO_3'
        DataType = ftFloat
      end
      item
        Name = 'NO_4'
        DataType = ftFloat
      end
      item
        Name = 'NO_5'
        DataType = ftFloat
      end
      item
        Name = 'NO_6'
        DataType = ftFloat
      end
      item
        Name = 'NO_7'
        DataType = ftFloat
      end
      item
        Name = 'NO_8'
        DataType = ftFloat
      end
      item
        Name = 'NO_9'
        DataType = ftFloat
      end
      item
        Name = 'NO_10'
        DataType = ftFloat
      end
      item
        Name = 'NO_11'
        DataType = ftFloat
      end
      item
        Name = 'NO_12'
        DataType = ftFloat
      end
      item
        Name = 'NO_13'
        DataType = ftFloat
      end
      item
        Name = 'NO_14'
        DataType = ftFloat
      end
      item
        Name = 'NO_15'
        DataType = ftFloat
      end
      item
        Name = 'NO_16'
        DataType = ftFloat
      end
      item
        Name = 'NO_17'
        DataType = ftFloat
      end
      item
        Name = 'NO_18'
        DataType = ftFloat
      end
      item
        Name = 'NO_19'
        DataType = ftFloat
      end
      item
        Name = 'NO_20'
        DataType = ftFloat
      end
      item
        Name = 'NO_21'
        DataType = ftFloat
      end
      item
        Name = 'NO_22'
        DataType = ftFloat
      end
      item
        Name = 'NO_23'
        DataType = ftFloat
      end
      item
        Name = 'NO_24'
        DataType = ftFloat
      end
      item
        Name = 'NO_25'
        DataType = ftFloat
      end
      item
        Name = 'NO_AS_TEXT'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'NO_AS_FORMATED_TEXT'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'DETAIL_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DETAIL_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'DETAIL_NO'
        DataType = ftFloat
      end
      item
        Name = 'DETAIL_HAS_DOCUMENTATION'
        DataType = ftFloat
      end
      item
        Name = 'DETAIL_IS_INACTIVE'
        DataType = ftFloat
      end
      item
        Name = 'DETAIL_IS_SELF_APPROVED'
        DataType = ftFloat
      end
      item
        Name = 'DETAIL_PARENT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DETAIL_TECH_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_DETAIL_TECH_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'PAR_TOTAL_DETAIL_TECH_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'DETAIL_TECH_MEASURE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'PRODUCT_NO'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_HAS_DOCUMENTATION'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_IS_INACTIVE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_TECH_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_PRODUCT_TECH_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_TECH_MEASURE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_TECH_MEASURE_COEF'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_PRODUCT_ACCOUNT_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_ACCOUNT_MEASURE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_ACCOUNT_MEASURE_COEF'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_SECONDARY_SINGLE_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_SINGLE_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_INVESTMENT_VALUE_2'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_INVESTMENT_VALUE_3'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_INVESTMENT_VALUE_4'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_INVESTMENT_VALUE_5'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_PRECISION_LEVEL_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_SECONDARY_TOTAL_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_IS_FOR_TREATMENT_USE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_IS_FOR_DIRECT_USE'
        DataType = ftFloat
      end
      item
        Name = 'NOTES'
        DataType = ftWideString
        Size = 250
      end
      item
        Name = 'CONSTRUCTION_NOTES'
        DataType = ftWideString
        Size = 250
      end
      item
        Name = 'IS_IMPORTED'
        DataType = ftFloat
      end
      item
        Name = 'IS_FOR_SINGLE_USE'
        DataType = ftFloat
      end
      item
        Name = 'IS_IMPORTED_SUBDETAIL'
        DataType = ftFloat
      end
      item
        Name = 'IS_STRUCT_CHANGED'
        DataType = ftFloat
      end
      item
        Name = 'STRUCT_CHANGE_EMPLOYEE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'STRUCT_CHANGE_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'STRUCT_CHANGE_TIME'
        DataType = ftTimeStamp
      end
      item
        Name = 'IS_COMPLETE'
        DataType = ftFloat
      end
      item
        Name = 'qrySpecModelVariantLines'
        DataType = ftDataSet
      end>
    IndexDefs = <
      item
        Name = 'idxNoNew'
        Fields = 'NO_AS_FORMATED_TEXT'
      end>
    IndexName = 'idxNoNew'
    BeforeEdit = cdsGridDataBeforeEdit
    BeforeDelete = cdsGridDataBeforeDelete
    Left = 56
    Top = 264
    object cdsGridDataSPEC_PRODUCT_CODE: TAbmesFloatField [0]
      FieldName = 'SPEC_PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsGridDataSPEC_LINE_CODE: TAbmesFloatField [1]
      FieldName = 'SPEC_LINE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsGridDataPARENT_SPEC_LINE_CODE: TAbmesFloatField [2]
      FieldName = 'PARENT_SPEC_LINE_CODE'
    end
    inherited cdsGridDataPRODUCT_IS_FOR_DIRECT_USE: TAbmesFloatField [30]
      ProviderFlags = []
    end
    inherited cdsGridDataPRODUCT_SECONDARY_SINGLE_PRICE: TAbmesFloatField [31]
      ProviderFlags = []
    end
    inherited cdsGridDataPRODUCT_SECONDARY_TOTAL_PRICE: TAbmesFloatField [32]
      ProviderFlags = []
    end
    inherited cdsGridDataPRODUCT_IS_FOR_TREATMENT_USE: TAbmesFloatField [33]
      ProviderFlags = []
    end
    object cdsGridDataIS_IMPORTED: TAbmesFloatField [34]
      FieldName = 'IS_IMPORTED'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataIS_IMPORTED_SUBDETAIL: TAbmesFloatField [35]
      FieldName = 'IS_IMPORTED_SUBDETAIL'
      ProviderFlags = []
    end
    object cdsGridDataIS_STRUCT_CHANGED: TAbmesFloatField [36]
      FieldName = 'IS_STRUCT_CHANGED'
      ProviderFlags = []
      OnChange = cdsGridDataIS_STRUCT_CHANGEDChange
      FieldValueType = fvtBoolean
    end
    object cdsGridDataSTRUCT_CHANGE_EMPLOYEE_CODE: TAbmesFloatField [37]
      FieldName = 'STRUCT_CHANGE_EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsGridDataSTRUCT_CHANGE_EMPLOYEE_CODEChange
    end
    object cdsGridDataSTRUCT_CHANGE_DATE: TAbmesSQLTimeStampField [38]
      FieldName = 'STRUCT_CHANGE_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsGridDataSTRUCT_CHANGE_TIME: TAbmesSQLTimeStampField [39]
      FieldName = 'STRUCT_CHANGE_TIME'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = 't'
    end
    inherited cdsGridDataDETAIL_CODE: TAbmesFloatField [40]
    end
    object cdsGridDataqrySpecModelVariantLines: TDataSetField [41]
      FieldName = 'qrySpecModelVariantLines'
    end
    inherited cdsGridDataDETAIL_NAME: TAbmesWideStringField [42]
      ProviderFlags = []
    end
    inherited cdsGridDataDETAIL_NO: TAbmesFloatField [43]
      ProviderFlags = []
    end
    inherited cdsGridDataDETAIL_PARENT_CODE: TAbmesFloatField [44]
      ProviderFlags = []
    end
    inherited cdsGridDataDETAIL_HAS_DOCUMENTATION: TAbmesFloatField [45]
      ProviderFlags = []
    end
    object cdsGridDataDETAIL_HAS_SPEC: TAbmesFloatField [46]
      FieldName = 'DETAIL_HAS_SPEC'
      FieldValueType = fvtBoolean
    end
    inherited cdsGridDataDETAIL_TECH_QUANTITY: TAbmesFloatField [47]
      DisplayLabel = #1057#1090#1091#1082#1090#1091#1088#1085#1086' '#1090#1077#1093#1085#1086#1083#1086#1075#1080#1095#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086
    end
    inherited cdsGridDataTOTAL_DETAIL_TECH_QUANTITY: TAbmesFloatField [48]
    end
    inherited cdsGridDataDETAIL_TECH_MEASURE_CODE: TAbmesFloatField [49]
      ProviderFlags = []
    end
    object cdsGridDataPAR_TOTAL_DETAIL_TECH_QUANTITY: TAbmesFloatField [50]
      FieldName = 'PAR_TOTAL_DETAIL_TECH_QUANTITY'
      ProviderFlags = []
      OnChange = cdsGridDataPAR_TOTAL_DETAIL_TECH_QUANTITYChange
      DisplayFormat = ',0.###'
    end
    inherited cdsGridDataPRODUCT_CODE: TAbmesFloatField [51]
    end
    inherited cdsGridDataPRODUCT_NAME: TAbmesWideStringField [52]
      ProviderFlags = []
    end
    inherited cdsGridDataPRODUCT_NO: TAbmesFloatField [53]
      ProviderFlags = []
    end
    inherited cdsGridDataPRODUCT_HAS_DOCUMENTATION: TAbmesFloatField [54]
      ProviderFlags = []
    end
    inherited cdsGridDataPRODUCT_TECH_QUANTITY: TAbmesFloatField [55]
      DisplayLabel = #1058#1077#1093#1085#1086#1083#1086#1075#1080#1095#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1079#1072' '#1077#1076#1080#1085#1080#1094#1072' '#1050#1057#1063
    end
    inherited cdsGridDataTOTAL_PRODUCT_TECH_QUANTITY: TAbmesFloatField [56]
      ProviderFlags = []
    end
    inherited cdsGridDataPRODUCT_TECH_MEASURE_CODE: TAbmesFloatField [57]
      ProviderFlags = []
    end
    inherited cdsGridDataPRODUCT_TECH_MEASURE_COEF: TAbmesFloatField [58]
      ProviderFlags = []
    end
    inherited cdsGridDataTOTAL_PRODUCT_ACCOUNT_QUANTITY: TAbmesFloatField [59]
      ProviderFlags = []
    end
    inherited cdsGridDataPRODUCT_ACCOUNT_MEASURE_CODE: TAbmesFloatField [60]
      ProviderFlags = []
    end
    inherited cdsGridDataNOTES: TAbmesWideStringField [61]
    end
    inherited cdsGridDataPRODUCT_ACCOUNT_MEASURE_COEF: TAbmesFloatField [62]
      ProviderFlags = []
    end
    inherited cdsGridDataDETAIL_IS_SELF_APPROVED: TAbmesFloatField [63]
      ProviderFlags = []
    end
    inherited cdsGridDataDETAIL_IS_INACTIVE: TAbmesFloatField [64]
      ProviderFlags = []
    end
    inherited cdsGridDataCONSTRUCTION_NOTES: TAbmesWideStringField [65]
    end
    inherited cdsGridDataIS_FOR_SINGLE_USE: TAbmesFloatField [66]
      ProviderFlags = [pfInUpdate]
    end
    inherited cdsGridData_DETAIL_TECH_MEASURE_ABBREV: TAbmesWideStringField [67]
    end
    inherited cdsGridData_PRODUCT_TECH_MEASURE_ABBREV: TAbmesWideStringField [68]
    end
    inherited cdsGridData_PRODUCT_ACCOUNT_MEASURE_ABBREV: TAbmesWideStringField [69]
    end
    inherited cdsGridData_PRODUCT_TREATMENT_TYPE_ABBREV: TAbmesWideStringField [70]
    end
    inherited cdsGridData_LINE_TYPE_ABRREV: TAbmesWideStringField [71]
    end
    inherited cdsGridData_IS_FIRST_CHILD: TBooleanField [72]
    end
    inherited cdsGridData_IS_LAST_CHILD: TBooleanField [73]
    end
    inherited cdsGridData_DETAIL_TECH_QUANTITY_SHOW: TAbmesFloatField [74]
    end
    inherited cdsGridDataPRODUCT_INVESTMENT_VALUE_4: TAbmesFloatField [75]
      ProviderFlags = []
    end
    inherited cdsGridDataPRODUCT_SINGLE_PRICE: TAbmesFloatField [76]
      ProviderFlags = []
    end
    inherited cdsGridDataPRODUCT_INVESTMENT_VALUE_5: TAbmesFloatField [77]
      ProviderFlags = []
    end
    inherited cdsGridDataPRODUCT_INVESTMENT_VALUE_2: TAbmesFloatField [78]
      ProviderFlags = []
    end
    inherited cdsGridDataPRODUCT_INVESTMENT_VALUE_3: TAbmesFloatField [79]
      ProviderFlags = []
    end
    inherited cdsGridDataPRODUCT_PRECISION_LEVEL_CODE: TAbmesFloatField [80]
      ProviderFlags = []
    end
    inherited cdsGridDataPRODUCT_IS_INACTIVE: TAbmesFloatField [81]
      ProviderFlags = []
    end
    inherited cdsGridData_LINE_DETAIL_TECH_QUANTITY_SHOW: TAbmesFloatField [82]
    end
    inherited cdsGridDataIS_COMPLETE: TAbmesFloatField [83]
    end
    inherited cdsGridDataDETAIL_COMMON_STATUS_CODE: TAbmesFloatField [84]
    end
    inherited cdsGridDataPRODUCT_COMMON_STATUS_CODE: TAbmesFloatField [85]
    end
    object cdsGridData_MAX_SPEC_LINE_CODE: TAggregateField
      FieldName = '_MAX_SPEC_LINE_CODE'
      Active = True
      DisplayName = ''
      Expression = 'Max(SPEC_LINE_CODE)'
    end
    object cdsGridData_HAS_STRUCT_CHANGES: TAggregateField
      FieldName = '_HAS_STRUCT_CHANGES'
      Active = True
      DisplayName = ''
      Expression = 'Max(IS_STRUCT_CHANGED)'
    end
  end
  inherited alActions: TActionList
    Left = 256
    Top = 320
    inherited actForm: TAction
      Caption = #1055#1088#1080#1085#1094#1080#1087#1077#1085' '#1052#1054#1044#1045#1083' '#1085#1072' '#1059#1054#1073' - %s'
    end
    object actAddModelVariant: TAction [10]
      Category = 'ModelVariants'
      Caption = #1044#1086#1073#1072#1074#1103#1085#1077'...'
      Hint = #1044#1086#1073#1072#1074#1103#1085#1077
      ImageIndex = 4
      OnExecute = actAddModelVariantExecute
      OnUpdate = actAddModelVariantUpdate
    end
    object actDelModelVariant: TAction [11]
      Category = 'ModelVariants'
      Caption = #1048#1079#1090#1088#1080#1074#1072#1085#1077'...'
      Hint = #1048#1079#1090#1088#1080#1074#1072#1085#1077
      ImageIndex = 5
      OnExecute = actDelModelVariantExecute
      OnUpdate = actDelModelVariantUpdate
    end
    object actEditModelVariant: TAction [12]
      Category = 'ModelVariants'
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077'...'
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077
      ImageIndex = 6
      OnExecute = actEditModelVariantExecute
      OnUpdate = actEditModelVariantUpdate
    end
    object actAuthorizeModelVariant: TAction [13]
      Category = 'ModelVariants'
      Caption = #1040#1074#1090#1086#1088#1080#1079#1080#1088#1072#1085#1077' '#1045
      Hint = #1040#1074#1090#1086#1088#1080#1079#1080#1088#1072#1085#1077' '#1085#1072' '#1074#1072#1088#1080#1072#1085#1090#1072' '#1085#1072' '#1055#1088#1080#1085#1094#1080#1087#1085#1080#1103' '#1052#1054#1044#1045#1083' '#1085#1072' '#1045#1090#1072#1087#1085#1086' '#1085#1080#1074#1086
      ImageIndex = 55
      OnExecute = actAuthorizeModelVariantExecute
      OnUpdate = actAuthorizeModelVariantUpdate
    end
    object actAuthorize: TAction [14]
      Caption = #1040#1074#1090#1086#1088#1080#1079#1080#1088#1072#1085#1077
      Hint = #1040#1074#1090#1086#1088#1080#1079#1080#1088#1072#1085#1077' '#1085#1072' '#1074#1072#1088#1080#1072#1085#1090#1072' '#1085#1072' '#1055#1088#1080#1085#1094#1080#1087#1085#1080#1103' '#1052#1054#1044#1045#1083
      ImageIndex = 55
      OnExecute = actAuthorizeExecute
      OnUpdate = actAuthorizeUpdate
    end
    object actNewVersion: TAction [15]
      Caption = #1053#1086#1074#1072' '#1074#1077#1088#1089#1080#1103
      ImageIndex = 34
      OnExecute = actNewVersionExecute
      OnUpdate = actNewVersionUpdate
    end
    inherited actAddSpecification: TAction
      OnExecute = actAddSpecificationExecute
    end
    object actAddBasedOn: TAction [29]
      Category = 'ModelVariants'
      Caption = #1053#1086#1074#1072' '#1087#1072#1088#1090#1080#1076#1072'...'
      ImageIndex = 4
      OnExecute = actAddBasedOnExecute
      OnUpdate = actAddBasedOnUpdate
    end
    inherited actInsertSpecification: TAction
      OnExecute = actInsertSpecificationExecute
    end
    object actRefreshSpecification: TAction [31]
      Category = 'Lines'
      Caption = #1054#1073#1085#1086#1074#1103#1074#1072#1085#1077
      Hint = #1054#1073#1085#1086#1074#1103#1074#1072#1085#1077' '#1085#1072' '#1076#1086#1073#1072#1074#1077#1085#1080#1103#1090' '#1055#1088#1080#1085#1094#1080#1087#1077#1085' '#1052#1054#1044#1045#1083
      ImageIndex = 21
      OnExecute = actRefreshSpecificationExecute
      OnUpdate = actRefreshSpecificationUpdate
    end
    object actAddModelVariantLike: TAction [34]
      Category = 'ModelVariants'
      Caption = #1053#1086#1074' '#1074#1072#1088#1080#1072#1085#1090' '#1082#1072#1090#1086'...'
      Hint = #1044#1086#1073#1072#1074#1103' '#1085#1086#1074' '#1074#1072#1088#1080#1072#1085#1090' '#1082#1072#1090#1086' '#1080#1079#1073#1088#1072#1085#1080#1103
      ImageIndex = 22
      OnExecute = actAddModelVariantLikeExecute
      OnUpdate = actAddModelVariantLikeUpdate
    end
    inherited actCheckModel: TAction
      Hint = #1055#1088#1086#1074#1077#1088#1082#1072' '#1079#1072' '#1082#1086#1088#1077#1082#1090#1085#1086#1089#1090' '#1085#1072' '#1042#1072#1088#1080#1072#1085#1090#1072' '#1085#1072' '#1052#1054#1044#1045#1083'-'#1072
    end
    object actClearStructChanges: TAction [49]
      Caption = #1055#1086#1090#1074'. '#1080#1079#1084#1077#1085#1077#1085#1080#1103#1090#1072
      Hint = #1055#1086#1090#1074#1098#1088#1078#1076#1077#1085#1080#1077' '#1085#1072' '#1080#1079#1084#1077#1085#1077#1085#1080#1103#1090#1072
      ImageIndex = 61
      OnExecute = actClearStructChangesExecute
      OnUpdate = actClearStructChangesUpdate
    end
    object actAuthorizeOperationModelVariant: TAction [54]
      Category = 'ModelVariants'
      Caption = #1040#1074#1090#1086#1088#1080#1079#1080#1088#1072#1085#1077' '#1054
      Hint = #1040#1074#1090#1086#1088#1080#1079#1080#1088#1072#1085#1077' '#1085#1072' '#1074#1072#1088#1080#1072#1085#1090#1072' '#1085#1072' '#1055#1088#1080#1085#1094#1080#1087#1085#1080#1103' '#1052#1054#1044#1045#1083' '#1085#1072' '#1054#1087#1077#1088#1072#1094#1080#1086#1085#1085#1086' '#1085#1080#1074#1086
      ImageIndex = 55
      OnExecute = actAuthorizeOperationModelVariantExecute
      OnUpdate = actAuthorizeOperationModelVariantUpdate
    end
    inherited actResizeFormHeight: TAction
      ImageIndex = 60
    end
    object actCommonGroups: TAction [59]
      Caption = #1058#1049#1057'...'
      ImageIndex = 127
      OnExecute = actCommonGroupsExecute
      OnUpdate = actCommonGroupsUpdate
    end
    object actInvestedValuesGraph: TAction [60]
      Hint = #1054#1073#1086#1073#1097#1077#1085' '#1048#1085#1078#1077#1085#1077#1088#1077#1085' '#1054#1075#1088#1072#1085#1080#1079#1072#1094#1080#1086#1085#1085#1086'-'#1057#1090#1086#1081#1085#1086#1089#1090#1077#1085' '#1040#1085#1072#1083#1080#1079
      ImageIndex = 30
      OnExecute = actInvestedValuesGraphExecute
      OnUpdate = actInvestedValuesGraphUpdate
    end
    inherited actDocStatus: TAction
      OnExecute = actDocStatusExecute
    end
    object actUnauthorizeModelVariant: TAction
      Category = 'ModelVariants'
      Hint = #1056#1072#1079#1072#1074#1090#1086#1088#1080#1079#1080#1088#1072#1085#1077
      ImageIndex = 110
      OnExecute = actUnauthorizeModelVariantExecute
      OnUpdate = actUnauthorizeModelVariantUpdate
    end
    object actSpecInvestedValuesLevel1: TAction
      Caption = #1057#1090#1088#1091#1082#1090#1091#1088#1072' '#1085#1072' '#1042#1057'1...'
      OnExecute = actSpecInvestedValuesLevel1Execute
      OnUpdate = actSpecInvestedValuesLevel1Update
    end
    object actShowInactiveModelVariants: TAction
      Category = 'ModelVariants'
      GroupIndex = 15
      Hint = #1055#1086#1082#1072#1079#1074#1072'/'#1089#1082#1088#1080#1074#1072' '#1085#1077#1072#1082#1090#1080#1074#1085#1080#1090#1077' '#1074#1072#1088#1080#1072#1085#1090#1080' '#1085#1072' '#1052#1054#1044#1045#1083
      ImageIndex = 16
      OnExecute = actShowInactiveModelVariantsExecute
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    AfterOpen = pdsGridDataParamsAfterOpen
    DataSet = cdsCLSpec
    Left = 256
    Top = 264
    object pdsGridDataParamsNEW_SPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'NEW_SPEC_PRODUCT_CODE'
      OnChange = pdsGridDataParamsNEW_SPEC_PRODUCT_CODEChange
    end
    object pdsGridDataParamsORIGINAL_SPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'ORIGINAL_SPEC_PRODUCT_CODE'
      OnChange = pdsGridDataParamsORIGINAL_SPEC_PRODUCT_CODEChange
    end
    object pdsGridDataParamsORIGINAL_SPEC_VERSION_NO: TAbmesFloatField
      FieldName = 'ORIGINAL_SPEC_VERSION_NO'
    end
    object pdsGridDataParams_NEW_SPEC_PRODUCT_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1086#1074' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
      FieldName = '_NEW_SPEC_PRODUCT_NAME'
      Size = 100
    end
    object pdsGridDataParams_NEW_SPEC_PRODUCT_NO: TAbmesFloatField
      FieldName = '_NEW_SPEC_PRODUCT_NO'
    end
    object pdsGridDataParams_ORIGINAL_SPEC_PRODUCT_NAME: TAbmesWideStringField
      DisplayLabel = #1050#1072#1090#1086' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
      FieldName = '_ORIGINAL_SPEC_PRODUCT_NAME'
      Size = 100
    end
    object pdsGridDataParams_ORIGINAL_SPEC_PRODUCT_NO: TAbmesFloatField
      FieldName = '_ORIGINAL_SPEC_PRODUCT_NO'
    end
  end
  inherited dsGridDataParams: TDataSource
    Left = 288
    Top = 264
  end
  inherited dsData: TDataSource
    Left = 128
    Top = 232
  end
  object cdsSpecificationTypes: TAbmesClientDataSet [10]
    Aggregates = <>
    ConnectionBroker = dmMain.conSpecifications
    Params = <>
    ProviderName = 'prvSpecificationTypes'
    Left = 664
    Top = 136
    object cdsSpecificationTypesSPEC_TYPE_CODE: TAbmesFloatField
      FieldName = 'SPEC_TYPE_CODE'
    end
    object cdsSpecificationTypesSPEC_TYPE_NAME: TAbmesWideStringField
      FieldName = 'SPEC_TYPE_NAME'
      Size = 100
    end
  end
  inherited cdsData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conSpecifications
    FieldDefs = <
      item
        Name = 'SPEC_PRODUCT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SPEC_PRODUCT_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'SPEC_PRODUCT_NO'
        DataType = ftFloat
      end
      item
        Name = 'SPEC_PRODUCT_PARENT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'TECH_MEASURE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SPEC_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SPEC_VERSION_NO'
        DataType = ftFloat
      end
      item
        Name = 'WORK_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'MANUFACTURER_COMPANY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'AUTHOR_EMPLOYEE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'AUTHORIZATION_EMPLOYEE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'AUTHORIZATION_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'AUTHORIZATION_TIME'
        DataType = ftTimeStamp
      end
      item
        Name = 'VERSION_CREATE_EMPLOYEE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'VERSION_CREATE_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'VERSION_CREATE_TIME'
        DataType = ftTimeStamp
      end
      item
        Name = 'CREATE_EMPLOYEE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'CREATE_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'CREATE_TIME'
        DataType = ftTimeStamp
      end
      item
        Name = 'CHANGE_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'CHANGE_EMPLOYEE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'CHANGE_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'CHANGE_TIME'
        DataType = ftTimeStamp
      end
      item
        Name = 'STRUCT_CHANGE_CLEAR_EMPL_CODE'
        DataType = ftFloat
      end
      item
        Name = 'STRUCT_CHANGE_CLEAR_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'STRUCT_CHANGE_CLEAR_TIME'
        DataType = ftTimeStamp
      end
      item
        Name = 'NOTES'
        DataType = ftWideString
        Size = 250
      end
      item
        Name = 'CREATE_LIKE'
        DataType = ftFloat
      end
      item
        Name = 'MANUFACTURER_NAME'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'SPEC_STATE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'COMPANY_PRODUCT_NAMES'
        DataType = ftWideString
        Size = 250
      end
      item
        Name = 'qrySpecModelVariants'
        DataType = ftDataSet
      end
      item
        Name = 'qrySpecLines'
        DataType = ftDataSet
      end>
    Params = <
      item
        DataType = ftFloat
        Name = 'CREATE_LIKE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvSpec'
    StoreDefs = True
    BeforeOpen = cdsDataBeforeOpen
    AfterOpen = cdsDataAfterOpen
    AfterEdit = cdsDataAfterEdit
    BeforePost = cdsDataBeforePost
    OnCalcFields = cdsDataCalcFields
    BeforeApplyUpdates = cdsDataBeforeApplyUpdates
    Left = 96
    Top = 232
    object cdsDataSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      OnChange = cdsDataSPEC_PRODUCT_CODEChange
    end
    object cdsDataSPEC_PRODUCT_NAME: TAbmesWideStringField
      DisplayLabel = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
      FieldName = 'SPEC_PRODUCT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object cdsDataSPEC_PRODUCT_NO: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_NO'
      ProviderFlags = []
    end
    object cdsDataSPEC_PRODUCT_PARENT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_PARENT_CODE'
      ProviderFlags = []
    end
    object cdsDataTECH_MEASURE_CODE: TAbmesFloatField
      FieldName = 'TECH_MEASURE_CODE'
      ProviderFlags = []
    end
    object cdsDataSPEC_TYPE_CODE: TAbmesFloatField
      FieldName = 'SPEC_TYPE_CODE'
    end
    object cdsDataSPEC_VERSION_NO: TAbmesFloatField
      FieldName = 'SPEC_VERSION_NO'
      OnChange = cdsDataSPEC_VERSION_NOChange
    end
    object cdsDataWORK_BRANCH_CODE: TAbmesFloatField
      FieldName = 'WORK_BRANCH_CODE'
    end
    object cdsDataMANUFACTURER_COMPANY_CODE: TAbmesFloatField
      DisplayLabel = #1057#1098#1079#1076#1072#1083' '#1059#1087#1088#1072#1074#1083#1077#1084#1080#1103' '#1054#1073#1077#1082#1090
      FieldName = 'MANUFACTURER_COMPANY_CODE'
      OnChange = cdsDataMANUFACTURER_COMPANY_CODEChange
    end
    object cdsDataAUTHOR_EMPLOYEE_CODE: TAbmesFloatField
      DisplayLabel = #1057#1098#1079#1076#1072#1083
      FieldName = 'AUTHOR_EMPLOYEE_CODE'
      OnChange = cdsDataAUTHOR_EMPLOYEE_CODEChange
    end
    object cdsDataAUTHORIZATION_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'AUTHORIZATION_EMPLOYEE_CODE'
      OnChange = cdsDataAUTHORIZATION_EMPLOYEE_CODEChange
    end
    object cdsDataAUTHORIZATION_DATE: TAbmesSQLTimeStampField
      FieldName = 'AUTHORIZATION_DATE'
      DisplayFormat = 'c'
    end
    object cdsDataAUTHORIZATION_TIME: TAbmesSQLTimeStampField
      FieldName = 'AUTHORIZATION_TIME'
      DisplayFormat = 't'
    end
    object cdsDataVERSION_CREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'VERSION_CREATE_EMPLOYEE_CODE'
    end
    object cdsDataVERSION_CREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'VERSION_CREATE_DATE'
      DisplayFormat = 'c'
    end
    object cdsDataVERSION_CREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'VERSION_CREATE_TIME'
      DisplayFormat = 't'
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
    object cdsDataCHANGE_BRANCH_CODE: TAbmesFloatField
      FieldName = 'CHANGE_BRANCH_CODE'
    end
    object cdsDataCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object cdsDataCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
      DisplayFormat = 'c'
    end
    object cdsDataCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
      DisplayFormat = 't'
    end
    object cdsDataSTRUCT_CHANGE_CLEAR_EMPL_CODE: TAbmesFloatField
      FieldName = 'STRUCT_CHANGE_CLEAR_EMPL_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDataSTRUCT_CHANGE_CLEAR_DATE: TAbmesSQLTimeStampField
      FieldName = 'STRUCT_CHANGE_CLEAR_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDataSTRUCT_CHANGE_CLEAR_TIME: TAbmesSQLTimeStampField
      FieldName = 'STRUCT_CHANGE_CLEAR_TIME'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDataNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object cdsDataSPEC_STATE_CODE: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'SPEC_STATE_CODE'
      ProviderFlags = []
      OnGetText = cdsDataSPEC_STATE_CODEGetText
    end
    object cdsDataqrySpecModelVariants: TDataSetField
      FieldName = 'qrySpecModelVariants'
    end
    object cdsDataqrySpecLines: TDataSetField
      FieldName = 'qrySpecLines'
    end
    object cdsData_SPEC_TYPE_NAME: TAbmesWideStringField
      DisplayLabel = #1042#1080#1076
      FieldKind = fkLookup
      FieldName = '_SPEC_TYPE_NAME'
      LookupDataSet = cdsSpecificationTypes
      LookupKeyFields = 'SPEC_TYPE_CODE'
      LookupResultField = 'SPEC_TYPE_NAME'
      KeyFields = 'SPEC_TYPE_CODE'
      Lookup = True
    end
    object cdsData_IS_VALID: TBooleanField
      FieldKind = fkCalculated
      FieldName = '_IS_VALID'
      DisplayValues = #1042#1072#1083#1080#1076#1085#1072';'#1053#1077#1074#1072#1083#1080#1076#1085#1072
      Calculated = True
    end
    object cdsData_AUTHOR_NAME: TAbmesWideStringField
      DisplayLabel = #1040#1074#1090#1086#1088' '#1085#1072' '#1048#1055
      FieldKind = fkLookup
      FieldName = '_AUTHOR_NAME'
      LookupDataSet = frAuthor.cdsEmployees
      LookupKeyFields = 'EMPLOYEE_CODE'
      LookupResultField = 'EMPLOYEE_NAME'
      KeyFields = 'AUTHOR_EMPLOYEE_CODE'
      Size = 70
      Lookup = True
    end
    object cdsData_AUTHORIZATION_EMPLOYEE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_AUTHORIZATION_EMPLOYEE_NAME'
      LookupDataSet = frAuthor.cdsEmployees
      LookupKeyFields = 'EMPLOYEE_CODE'
      LookupResultField = 'EMPLOYEE_NAME'
      KeyFields = 'AUTHORIZATION_EMPLOYEE_CODE'
      Size = 70
      Lookup = True
    end
    object cdsData_VERSION_CREATE_EMPLOYEE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_VERSION_CREATE_EMPLOYEE_NAME'
      LookupDataSet = frAuthor.cdsEmployees
      LookupKeyFields = 'EMPLOYEE_CODE'
      LookupResultField = 'EMPLOYEE_NAME'
      KeyFields = 'VERSION_CREATE_EMPLOYEE_CODE'
      Size = 70
      Lookup = True
    end
    object cdsData_CHANGE_EMPLOYEE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_CHANGE_EMPLOYEE_NAME'
      LookupDataSet = frAuthor.cdsEmployees
      LookupKeyFields = 'EMPLOYEE_CODE'
      LookupResultField = 'EMPLOYEE_NAME'
      KeyFields = 'CHANGE_EMPLOYEE_CODE'
      Size = 70
      Lookup = True
    end
    object cdsData_TECH_MEASURE_ABBREV: TAbmesWideStringField
      Alignment = taCenter
      FieldKind = fkLookup
      FieldName = '_TECH_MEASURE_ABBREV'
      LookupDataSet = cdsMeasures
      LookupKeyFields = 'MEASURE_CODE'
      LookupResultField = 'MEASURE_ABBREV'
      KeyFields = 'TECH_MEASURE_CODE'
      Size = 10
      Lookup = True
    end
    object cdsDataMANUFACTURER_NAME: TAbmesWideStringField
      FieldName = 'MANUFACTURER_NAME'
      ProviderFlags = []
    end
    object cdsData_PRINT_AUTHORIZATION_DATE: TAbmesSQLTimeStampField
      FieldKind = fkCalculated
      FieldName = '_PRINT_AUTHORIZATION_DATE'
      Calculated = True
    end
    object cdsDataCOMPANY_PRODUCT_NAMES: TAbmesWideStringField
      FieldName = 'COMPANY_PRODUCT_NAMES'
      ProviderFlags = []
      Size = 250
    end
    object cdsData_AUTHOR_EMPLOYEE_NO: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_AUTHOR_EMPLOYEE_NO'
      LookupDataSet = frAuthor.cdsEmployees
      LookupKeyFields = 'EMPLOYEE_CODE'
      LookupResultField = 'EMPLOYEE_NO'
      KeyFields = 'authOR_EMPLOYEE_CODE'
      Lookup = True
    end
    object cdsData_VERSION_CREATE_EMPLOYEE_NO: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_VERSION_CREATE_EMPLOYEE_NO'
      LookupDataSet = frAuthor.cdsEmployees
      LookupKeyFields = 'EMPLOYEE_CODE'
      LookupResultField = 'EMPLOYEE_NO'
      KeyFields = 'VERSION_CREATE_EMPLOYEE_CODE'
      Lookup = True
    end
    object cdsData_CHANGE_EMPLOYEE_NO: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_CHANGE_EMPLOYEE_NO'
      LookupDataSet = frAuthor.cdsEmployees
      LookupKeyFields = 'EMPLOYEE_CODE'
      LookupResultField = 'EMPLOYEE_NO'
      KeyFields = 'CHANGE_eMPLOYEE_CODE'
      Lookup = True
    end
    object cdsData_AUTHORIZATION_EMPLOYEE_NO: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_AUTHORIZATION_EMPLOYEE_NO'
      LookupDataSet = frAuthor.cdsEmployees
      LookupKeyFields = 'EMPLOYEE_CODE'
      LookupResultField = 'EMPLOYEE_NO'
      KeyFields = 'AUTHORIZATION_EMPLOYEE_CODE'
      Lookup = True
    end
  end
  inherited cdsMeasures: TAbmesClientDataSet
    Left = 696
    Top = 136
    inherited cdsMeasuresMEASURE_CODE: TAbmesFloatField
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object cdsSpecModelVariantStages: TAbmesClientDataSet [15]
    Aggregates = <>
    AggregatesActive = True
    DataSetField = cdsSpecModelVariantLinesqrySpecModelVariantStages
    FieldDefs = <
      item
        Name = 'SPEC_PRODUCT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SPEC_MODEL_VARIANT_NO'
        DataType = ftFloat
      end
      item
        Name = 'SPEC_LINE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SPEC_LINE_STAGE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SPEC_LINE_STAGE_NO'
        DataType = ftFloat
      end
      item
        Name = 'DEPT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DEPT_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'DEPT_IDENTIFIER'
        DataType = ftWideString
        Size = 46
      end
      item
        Name = 'DEPT_IS_STORE'
        DataType = ftFloat
      end
      item
        Name = 'DEPT_BEGIN_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'DEPT_END_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'TREATMENT_WORKDAYS'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_TREATMENT_WORKDAYS'
        DataType = ftFloat
      end
      item
        Name = 'OUTGOING_WORKDAYS'
        DataType = ftFloat
      end
      item
        Name = 'IS_AUTO_MOVEMENT'
        DataType = ftFloat
      end
      item
        Name = 'DOC_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DOC_CODE'
        DataType = ftFloat
      end
      item
        Name = 'HAS_DOCUMENTATION'
        DataType = ftFloat
      end
      item
        Name = 'DOC_EMPTINESS_REQUIREMENT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DOC_IS_COMPLETE'
        DataType = ftFloat
      end
      item
        Name = 'UNAPPROVED_ACTIVE_DI_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'SMVS_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'EXTERNAL_WORK_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'OPERATION_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'qrySMVSOperations'
        DataType = ftDataSet
      end>
    IndexDefs = <
      item
        Name = 'idxStageNo'
        Fields = 'SPEC_LINE_STAGE_NO;SPEC_LINE_STAGE_NO'
      end>
    IndexName = 'idxStageNo'
    Params = <>
    StoreDefs = True
    BeforePost = cdsSpecModelVariantStagesBeforePost
    AfterPost = cdsSpecModelVariantStagesAfterPost
    AfterCancel = cdsSpecModelVariantStagesAfterCancel
    BeforeDelete = cdsSpecModelVariantStagesBeforeDelete
    AfterDelete = cdsSpecModelVariantStagesAfterDelete
    OnCalcFields = cdsSpecModelVariantStagesCalcFields
    OnFilterRecord = cdsSpecModelVariantStagesFilterRecord
    OnNewRecord = cdsSpecModelVariantStagesNewRecord
    Left = 56
    Top = 328
    object cdsSpecModelVariantStagesSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsSpecModelVariantStagesSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsSpecModelVariantStagesSPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsSpecModelVariantStagesSPEC_LINE_STAGE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_STAGE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsSpecModelVariantStagesSPEC_LINE_STAGE_NO: TAbmesFloatField
      FieldName = 'SPEC_LINE_STAGE_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsSpecModelVariantStagesDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
      OnChange = cdsSpecModelVariantStagesDEPT_CODEChange
    end
    object cdsSpecModelVariantStagesDEPT_NAME: TAbmesWideStringField
      DisplayLabel = #1058#1055
      FieldName = 'DEPT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object cdsSpecModelVariantStagesDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object cdsSpecModelVariantStagesDEPT_IS_STORE: TAbmesFloatField
      FieldName = 'DEPT_IS_STORE'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object cdsSpecModelVariantStagesDEPT_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEPT_BEGIN_DATE'
      ProviderFlags = []
    end
    object cdsSpecModelVariantStagesDEPT_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEPT_END_DATE'
      ProviderFlags = []
    end
    object cdsSpecModelVariantStagesOUTGOING_WORKDAYS: TAbmesFloatField
      FieldName = 'OUTGOING_WORKDAYS'
      MaxValue = 1000000000.000000000000000000
      FieldValueType = fvtInteger
    end
    object cdsSpecModelVariantStagesTREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'TREATMENT_WORKDAYS'
      MaxValue = 1000000000.000000000000000000
      FieldValueType = fvtInteger
    end
    object cdsSpecModelVariantStagesTOTAL_TREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'TOTAL_TREATMENT_WORKDAYS'
    end
    object cdsSpecModelVariantStagesIS_AUTO_MOVEMENT: TAbmesFloatField
      FieldName = 'IS_AUTO_MOVEMENT'
      ProviderFlags = [pfInUpdate]
      FieldValueType = fvtBoolean
    end
    object cdsSpecModelVariantStagesDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsSpecModelVariantStagesDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsSpecModelVariantStagesHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
      ProviderFlags = []
      DisplayBoolValues = 'i;'
      FieldValueType = fvtBoolean
    end
    object cdsSpecModelVariantStagesDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'DOC_EMPTINESS_REQUIREMENT_CODE'
      ProviderFlags = []
    end
    object cdsSpecModelVariantStagesDOC_IS_COMPLETE: TAbmesFloatField
      FieldName = 'DOC_IS_COMPLETE'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object cdsSpecModelVariantStagesUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAPPROVED_ACTIVE_DI_COUNT'
      ProviderFlags = []
    end
    object cdsSpecModelVariantStagesSMVS_TYPE_CODE: TAbmesFloatField
      FieldName = 'SMVS_TYPE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsSpecModelVariantStagesEXTERNAL_WORK_PRICE: TAbmesFloatField
      DisplayLabel = #1054#1073#1086#1073#1097#1077#1085#1072' '#1089#1090#1086#1081#1085#1086#1089#1090' '#1079#1072' '#1080#1079#1087#1098#1083#1085#1077#1085#1080#1077' '#1085#1072' '#1077#1090#1072#1087
      FieldName = 'EXTERNAL_WORK_PRICE'
      ProviderFlags = [pfInUpdate]
      OnGetText = cdsSpecModelVariantStagesEXTERNAL_WORK_PRICEGetText
      MaxValue = 999999999999.000100000000000000
      MinValue = 0.010000000000000000
    end
    object cdsSpecModelVariantStagesOPERATION_COUNT: TAbmesFloatField
      FieldName = 'OPERATION_COUNT'
      ProviderFlags = []
    end
    object cdsSpecModelVariantStagesqrySMVSOperations: TDataSetField
      FieldName = 'qrySMVSOperations'
    end
    object cdsSpecModelVariantStages_SMVS_TYPE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_SMVS_TYPE_NAME'
      LookupDataSet = cdsSMVSTypes
      LookupKeyFields = 'SMVS_TYPE_CODE'
      LookupResultField = 'SMVS_TYPE_NAME'
      KeyFields = 'SMVS_TYPE_CODE'
      Size = 100
      Lookup = True
    end
    object cdsSpecModelVariantStages_SHOW_APPROVE_CYCLE_NO: TAbmesWideStringField
      Alignment = taCenter
      FieldKind = fkCalculated
      FieldName = '_SHOW_APPROVE_CYCLE_NO'
      Calculated = True
    end
    object cdsSpecModelVariantStages_MAX_SPEC_LINE_STAGE_NO: TAggregateField
      FieldName = '_MAX_SPEC_LINE_STAGE_NO'
      Active = True
      DisplayName = ''
      Expression = 'Max(SPEC_LINE_STAGE_NO)'
    end
    object cdsSpecModelVariantStages_MAX_SPEC_LINE_STAGE_CODE: TAggregateField
      FieldName = '_MAX_SPEC_LINE_STAGE_CODE'
      Active = True
      DisplayName = ''
      Expression = 'Max(SPEC_LINE_STAGE_CODE)'
    end
    object cdsSpecModelVariantStages_MIN_SPEC_LINE_STAGE_NO: TAggregateField
      FieldName = '_MIN_SPEC_LINE_STAGE_NO'
      Active = True
      DisplayName = ''
      Expression = 'Min(SPEC_LINE_STAGE_NO)'
    end
  end
  object dsSpecModelVariantStages: TDataSource [16]
    DataSet = cdsSpecModelVariantStages
    Left = 88
    Top = 328
  end
  object cdsSpecModelVariants: TAbmesClientDataSet [17]
    Aggregates = <>
    AggregatesActive = True
    DataSetField = cdsDataqrySpecModelVariants
    Filter = 'IS_INACTIVE = 0'
    Filtered = True
    FieldDefs = <
      item
        Name = 'SPEC_PRODUCT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SPEC_MODEL_VARIANT_NO'
        DataType = ftFloat
      end
      item
        Name = 'MAIN_DEPT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'MAIN_DEPT_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'MAIN_DEPT_IDENTIFIER'
        DataType = ftWideString
        Size = 46
      end
      item
        Name = 'MAIN_DEPT_BEGIN_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'MAIN_DEPT_END_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'RESULT_STORE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'MIN_TECH_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'MAX_TECH_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'AUTHORIZATION_EMPLOYEE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'AUTHORIZATION_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'AUTHORIZATION_TIME'
        DataType = ftTimeStamp
      end
      item
        Name = 'AUTHORIZATION_OF_OPERATIONS'
        DataType = ftFloat
      end
      item
        Name = 'CREATE_EMPLOYEE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'CREATE_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'CREATE_TIME'
        DataType = ftTimeStamp
      end
      item
        Name = 'CHANGE_EMPLOYEE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'CHANGE_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'CHANGE_TIME'
        DataType = ftTimeStamp
      end
      item
        Name = 'MODEL_VARIANT_IDENTIFIER'
        DataType = ftWideString
        Size = 191
      end
      item
        Name = 'MAX_TOTAL_TREATMENT_WORKDAYS'
        DataType = ftFloat
      end
      item
        Name = 'IS_CHANGED'
        DataType = ftFloat
      end
      item
        Name = 'qrySMVProductPeriods'
        DataType = ftDataSet
      end
      item
        Name = 'qrySpecModelVariantTasks'
        DataType = ftDataSet
      end>
    IndexDefs = <
      item
        Name = 'idxVariantNo'
        Fields = 'SPEC_MODEL_VARIANT_NO'
      end>
    IndexName = 'idxVariantNo'
    Params = <>
    StoreDefs = True
    AfterEdit = cdsSpecModelVariantsAfterEdit
    BeforePost = cdsSpecModelVariantsBeforePost
    AfterPost = cdsSpecModelVariantsAfterPost
    BeforeDelete = cdsSpecModelVariantsBeforeDelete
    AfterDelete = cdsSpecModelVariantsAfterDelete
    AfterScroll = cdsSpecModelVariantsAfterScroll
    OnCalcFields = cdsSpecModelVariantsCalcFields
    OnNewRecord = cdsSpecModelVariantsNewRecord
    Left = 136
    Top = 264
    object cdsSpecModelVariantsSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsSpecModelVariantsSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsSpecModelVariantsMAIN_DEPT_CODE: TAbmesFloatField
      DisplayLabel = #1043#1083#1072#1074#1085#1086' '#1080#1079#1087#1098#1083#1085#1080#1090#1077#1083#1085#1086' '#1058#1055
      FieldName = 'MAIN_DEPT_CODE'
      Required = True
      OnChange = cdsSpecModelVariantsMAIN_DEPT_CODEChange
    end
    object cdsSpecModelVariantsMAIN_DEPT_NAME: TAbmesWideStringField
      DisplayLabel = #1043#1083#1072#1074#1085#1086' '#1080#1079#1087#1098#1083#1085#1080#1090#1077#1083#1085#1086' '#1058#1055
      FieldName = 'MAIN_DEPT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object cdsSpecModelVariantsMAIN_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'MAIN_DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object cdsSpecModelVariantsMAIN_DEPT_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'MAIN_DEPT_BEGIN_DATE'
      ProviderFlags = []
    end
    object cdsSpecModelVariantsMAIN_DEPT_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'MAIN_DEPT_END_DATE'
      ProviderFlags = []
    end
    object cdsSpecModelVariantsRESULT_STORE_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086
      FieldName = 'RESULT_STORE_CODE'
    end
    object cdsSpecModelVariantsMIN_TECH_QUANTITY: TAbmesFloatField
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' - '#1054#1090
      FieldName = 'MIN_TECH_QUANTITY'
      OnChange = cdsSpecModelVariantsMIN_TECH_QUANTITYChange
      DisplayFormat = ',0.###'
      EditFormat = '0.###'
    end
    object cdsSpecModelVariantsMAX_TECH_QUANTITY: TAbmesFloatField
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' - '#1044#1086
      FieldName = 'MAX_TECH_QUANTITY'
      OnChange = cdsSpecModelVariantsMAX_TECH_QUANTITYChange
      DisplayFormat = ',0.###'
      EditFormat = '0.###'
    end
    object cdsSpecModelVariantsAUTHORIZATION_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'AUTHORIZATION_EMPLOYEE_CODE'
      OnChange = cdsSpecModelVariantsAUTHORIZATION_EMPLOYEE_CODEChange
    end
    object cdsSpecModelVariantsAUTHORIZATION_DATE: TAbmesSQLTimeStampField
      FieldName = 'AUTHORIZATION_DATE'
    end
    object cdsSpecModelVariantsAUTHORIZATION_TIME: TAbmesSQLTimeStampField
      FieldName = 'AUTHORIZATION_TIME'
    end
    object cdsSpecModelVariantsAUTHORIZATION_OF_OPERATIONS: TAbmesFloatField
      FieldName = 'AUTHORIZATION_OF_OPERATIONS'
      ProviderFlags = [pfInUpdate]
      DisplayBoolValues = 'EO;E'
      FieldValueType = fvtBoolean
    end
    object cdsSpecModelVariantsCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object cdsSpecModelVariantsCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object cdsSpecModelVariantsCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object cdsSpecModelVariantsCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object cdsSpecModelVariantsCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object cdsSpecModelVariantsCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object cdsSpecModelVariantsMODEL_VARIANT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'MODEL_VARIANT_IDENTIFIER'
      ProviderFlags = []
      Size = 191
    end
    object cdsSpecModelVariantsMAX_TOTAL_TREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'MAX_TOTAL_TREATMENT_WORKDAYS'
      ProviderFlags = []
    end
    object cdsSpecModelVariantsIS_CHANGED: TAbmesFloatField
      FieldName = 'IS_CHANGED'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object cdsSpecModelVariantsNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      OnChange = cdsSpecModelVariantsNOTESChange
      Size = 250
    end
    object cdsSpecModelVariantsIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
      FieldValueType = fvtBoolean
    end
    object cdsSpecModelVariantsPRODUCT_PERIOD_ACTIVE_STATE: TAbmesFloatField
      FieldName = 'PRODUCT_PERIOD_ACTIVE_STATE'
      OnGetText = cdsSpecModelVariantsPRODUCT_PERIOD_ACTIVE_STATEGetText
    end
    object cdsSpecModelVariantsqrySpecModelVariantTasks: TDataSetField
      FieldName = 'qrySpecModelVariantTasks'
    end
    object cdsSpecModelVariants_AUTHORIZATION_EMPLOYEE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_AUTHORIZATION_EMPLOYEE_NAME'
      LookupDataSet = frAuthor.cdsEmployees
      LookupKeyFields = 'EMPLOYEE_CODE'
      LookupResultField = 'EMPLOYEE_NAME'
      KeyFields = 'AUTHORIZATION_EMPLOYEE_CODE'
      Size = 70
      Lookup = True
    end
    object cdsSpecModelVariants_AUTHORIZATION_OF_OPERATIONS: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_AUTHORIZATION_OF_OPERATIONS'
      Size = 5
      Calculated = True
    end
    object cdsSpecModelVariants_AUTHORIZATION_EMPLOYEE_NO: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_AUTHORIZATION_EMPLOYEE_NO'
      LookupDataSet = frAuthor.cdsEmployees
      LookupKeyFields = 'EMPLOYEE_CODE'
      LookupResultField = 'EMPLOYEE_NO'
      KeyFields = 'AUTHORIZATION_EMPLOYEE_CODE'
      Lookup = True
    end
    object cdsSpecModelVariantsqrySMVProductPeriods: TDataSetField
      FieldName = 'qrySMVProductPeriods'
    end
    object cdsSpecModelVariants_MAX_SPEC_MODEL_VARIANT_NO: TAggregateField
      FieldName = '_MAX_SPEC_MODEL_VARIANT_NO'
      Active = True
      DisplayName = ''
      Expression = 'Max(SPEC_MODEL_VARIANT_NO)'
    end
    object cdsSpecModelVariants_MAX_AUTHORIZATION_EMPLOYEE_CODE: TAggregateField
      FieldName = '_MAX_AUTHORIZATION_EMPLOYEE_CODE'
      Active = True
      DisplayName = ''
      Expression = 'Max(AUTHORIZATION_EMPLOYEE_CODE)'
    end
    object cdsSpecModelVariants_MAX_IS_CHANGED: TAggregateField
      FieldName = '_MAX_IS_CHANGED'
      Active = True
      DisplayName = ''
      Expression = 'Max(IS_CHANGED)'
    end
  end
  object dsSpecModelVariants: TDataSource [18]
    DataSet = cdsSpecModelVariants
    Left = 168
    Top = 264
  end
  inherited cdsModel: TAbmesClientDataSet
    Top = 272
  end
  object cdsInsertSpecLines: TAbmesClientDataSet [20]
    Aggregates = <>
    ConnectionBroker = dmMain.conSpecifications
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvInsertSpecLines'
    Left = 432
    Top = 240
    object cdsInsertSpecLinesSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
    end
    object cdsInsertSpecLinesSPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_CODE'
    end
    object cdsInsertSpecLinesNO_1: TAbmesFloatField
      FieldName = 'NO_1'
    end
    object cdsInsertSpecLinesNO_2: TAbmesFloatField
      FieldName = 'NO_2'
    end
    object cdsInsertSpecLinesNO_3: TAbmesFloatField
      FieldName = 'NO_3'
    end
    object cdsInsertSpecLinesNO_4: TAbmesFloatField
      FieldName = 'NO_4'
    end
    object cdsInsertSpecLinesNO_5: TAbmesFloatField
      FieldName = 'NO_5'
    end
    object cdsInsertSpecLinesNO_6: TAbmesFloatField
      FieldName = 'NO_6'
    end
    object cdsInsertSpecLinesNO_7: TAbmesFloatField
      FieldName = 'NO_7'
    end
    object cdsInsertSpecLinesNO_8: TAbmesFloatField
      FieldName = 'NO_8'
    end
    object cdsInsertSpecLinesNO_9: TAbmesFloatField
      FieldName = 'NO_9'
    end
    object cdsInsertSpecLinesNO_10: TAbmesFloatField
      FieldName = 'NO_10'
    end
    object cdsInsertSpecLinesNO_11: TAbmesFloatField
      FieldName = 'NO_11'
    end
    object cdsInsertSpecLinesNO_12: TAbmesFloatField
      FieldName = 'NO_12'
    end
    object cdsInsertSpecLinesNO_13: TAbmesFloatField
      FieldName = 'NO_13'
    end
    object cdsInsertSpecLinesNO_14: TAbmesFloatField
      FieldName = 'NO_14'
    end
    object cdsInsertSpecLinesNO_15: TAbmesFloatField
      FieldName = 'NO_15'
    end
    object cdsInsertSpecLinesNO_16: TAbmesFloatField
      FieldName = 'NO_16'
    end
    object cdsInsertSpecLinesNO_17: TAbmesFloatField
      FieldName = 'NO_17'
    end
    object cdsInsertSpecLinesNO_18: TAbmesFloatField
      FieldName = 'NO_18'
    end
    object cdsInsertSpecLinesNO_19: TAbmesFloatField
      FieldName = 'NO_19'
    end
    object cdsInsertSpecLinesNO_20: TAbmesFloatField
      FieldName = 'NO_20'
    end
    object cdsInsertSpecLinesNO_21: TAbmesFloatField
      FieldName = 'NO_21'
    end
    object cdsInsertSpecLinesNO_22: TAbmesFloatField
      FieldName = 'NO_22'
    end
    object cdsInsertSpecLinesNO_23: TAbmesFloatField
      FieldName = 'NO_23'
    end
    object cdsInsertSpecLinesNO_24: TAbmesFloatField
      FieldName = 'NO_24'
    end
    object cdsInsertSpecLinesNO_25: TAbmesFloatField
      FieldName = 'NO_25'
    end
    object cdsInsertSpecLinesNO_AS_TEXT: TAbmesWideStringField
      FieldName = 'NO_AS_TEXT'
      Size = 100
    end
    object cdsInsertSpecLinesNO_AS_FORMATED_TEXT: TAbmesWideStringField
      FieldName = 'NO_AS_FORMATED_TEXT'
      Size = 100
    end
    object cdsInsertSpecLinesDETAIL_CODE: TAbmesFloatField
      FieldName = 'DETAIL_CODE'
    end
    object cdsInsertSpecLinesDETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'DETAIL_TECH_QUANTITY'
    end
    object cdsInsertSpecLinesPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object cdsInsertSpecLinesPRODUCT_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'PRODUCT_TECH_QUANTITY'
    end
    object cdsInsertSpecLinesNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object cdsInsertSpecLinesCONSTRUCTION_NOTES: TAbmesWideStringField
      FieldName = 'CONSTRUCTION_NOTES'
      Size = 250
    end
    object cdsInsertSpecLinesIS_IMPORTED: TAbmesFloatField
      FieldName = 'IS_IMPORTED'
    end
    object cdsInsertSpecLinesIS_FOR_SINGLE_USE: TAbmesFloatField
      FieldName = 'IS_FOR_SINGLE_USE'
      FieldValueType = fvtBoolean
    end
    object cdsInsertSpecLinesPARENT_NO_1: TAbmesFloatField
      FieldName = 'PARENT_NO_1'
    end
    object cdsInsertSpecLinesPARENT_NO_2: TAbmesFloatField
      FieldName = 'PARENT_NO_2'
    end
    object cdsInsertSpecLinesPARENT_NO_3: TAbmesFloatField
      FieldName = 'PARENT_NO_3'
    end
    object cdsInsertSpecLinesPARENT_NO_4: TAbmesFloatField
      FieldName = 'PARENT_NO_4'
    end
    object cdsInsertSpecLinesPARENT_NO_5: TAbmesFloatField
      FieldName = 'PARENT_NO_5'
    end
    object cdsInsertSpecLinesPARENT_NO_6: TAbmesFloatField
      FieldName = 'PARENT_NO_6'
    end
    object cdsInsertSpecLinesPARENT_NO_7: TAbmesFloatField
      FieldName = 'PARENT_NO_7'
    end
    object cdsInsertSpecLinesPARENT_NO_8: TAbmesFloatField
      FieldName = 'PARENT_NO_8'
    end
    object cdsInsertSpecLinesPARENT_NO_9: TAbmesFloatField
      FieldName = 'PARENT_NO_9'
    end
    object cdsInsertSpecLinesPARENT_NO_10: TAbmesFloatField
      FieldName = 'PARENT_NO_10'
    end
    object cdsInsertSpecLinesPARENT_NO_11: TAbmesFloatField
      FieldName = 'PARENT_NO_11'
    end
    object cdsInsertSpecLinesPARENT_NO_12: TAbmesFloatField
      FieldName = 'PARENT_NO_12'
    end
    object cdsInsertSpecLinesPARENT_NO_13: TAbmesFloatField
      FieldName = 'PARENT_NO_13'
    end
    object cdsInsertSpecLinesPARENT_NO_14: TAbmesFloatField
      FieldName = 'PARENT_NO_14'
    end
    object cdsInsertSpecLinesPARENT_NO_15: TAbmesFloatField
      FieldName = 'PARENT_NO_15'
    end
    object cdsInsertSpecLinesPARENT_NO_16: TAbmesFloatField
      FieldName = 'PARENT_NO_16'
    end
    object cdsInsertSpecLinesPARENT_NO_17: TAbmesFloatField
      FieldName = 'PARENT_NO_17'
    end
    object cdsInsertSpecLinesPARENT_NO_18: TAbmesFloatField
      FieldName = 'PARENT_NO_18'
    end
    object cdsInsertSpecLinesPARENT_NO_19: TAbmesFloatField
      FieldName = 'PARENT_NO_19'
    end
    object cdsInsertSpecLinesPARENT_NO_20: TAbmesFloatField
      FieldName = 'PARENT_NO_20'
    end
    object cdsInsertSpecLinesPARENT_NO_21: TAbmesFloatField
      FieldName = 'PARENT_NO_21'
    end
    object cdsInsertSpecLinesPARENT_NO_22: TAbmesFloatField
      FieldName = 'PARENT_NO_22'
    end
    object cdsInsertSpecLinesPARENT_NO_23: TAbmesFloatField
      FieldName = 'PARENT_NO_23'
    end
    object cdsInsertSpecLinesPARENT_NO_24: TAbmesFloatField
      FieldName = 'PARENT_NO_24'
    end
    object cdsInsertSpecLinesPARENT_NO_25: TAbmesFloatField
      FieldName = 'PARENT_NO_25'
    end
    object cdsInsertSpecLinesDETAIL_NAME: TAbmesWideStringField
      FieldName = 'DETAIL_NAME'
      Size = 100
    end
    object cdsInsertSpecLinesDETAIL_NO: TAbmesFloatField
      FieldName = 'DETAIL_NO'
    end
    object cdsInsertSpecLinesDETAIL_HAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'DETAIL_HAS_DOCUMENTATION'
    end
    object cdsInsertSpecLinesDETAIL_HAS_SPEC: TAbmesFloatField
      FieldName = 'DETAIL_HAS_SPEC'
    end
    object cdsInsertSpecLinesDETAIL_IS_INACTIVE: TAbmesFloatField
      FieldName = 'DETAIL_IS_INACTIVE'
    end
    object cdsInsertSpecLinesDETAIL_TECH_MEASURE_CODE: TAbmesFloatField
      FieldName = 'DETAIL_TECH_MEASURE_CODE'
    end
    object cdsInsertSpecLinesPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object cdsInsertSpecLinesPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object cdsInsertSpecLinesPRODUCT_HAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOCUMENTATION'
    end
    object cdsInsertSpecLinesPRODUCT_IS_INACTIVE: TAbmesFloatField
      FieldName = 'PRODUCT_IS_INACTIVE'
    end
    object cdsInsertSpecLinesDETAIL_PARENT_CODE: TAbmesFloatField
      FieldName = 'DETAIL_PARENT_CODE'
    end
    object cdsInsertSpecLinesDETAIL_IS_SELF_APPROVED: TAbmesFloatField
      FieldName = 'DETAIL_IS_SELF_APPROVED'
    end
    object cdsInsertSpecLinesPRODUCT_TECH_MEASURE_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_TECH_MEASURE_CODE'
    end
    object cdsInsertSpecLinesPRODUCT_TECH_MEASURE_COEF: TAbmesFloatField
      FieldName = 'PRODUCT_TECH_MEASURE_COEF'
    end
    object cdsInsertSpecLinesPRODUCT_ACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_ACCOUNT_MEASURE_CODE'
    end
    object cdsInsertSpecLinesPRODUCT_ACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'PRODUCT_ACCOUNT_MEASURE_COEF'
    end
    object cdsInsertSpecLinesPRODUCT_SECONDARY_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'PRODUCT_SECONDARY_SINGLE_PRICE'
    end
    object cdsInsertSpecLinesPRODUCT_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'PRODUCT_SINGLE_PRICE'
    end
    object cdsInsertSpecLinesPRODUCT_INVESTMENT_VALUE_2: TAbmesFloatField
      FieldName = 'PRODUCT_INVESTMENT_VALUE_2'
    end
    object cdsInsertSpecLinesPRODUCT_INVESTMENT_VALUE_3: TAbmesFloatField
      FieldName = 'PRODUCT_INVESTMENT_VALUE_3'
    end
    object cdsInsertSpecLinesPRODUCT_INVESTMENT_VALUE_4: TAbmesFloatField
      FieldName = 'PRODUCT_INVESTMENT_VALUE_4'
    end
    object cdsInsertSpecLinesPRODUCT_INVESTMENT_VALUE_5: TAbmesFloatField
      FieldName = 'PRODUCT_INVESTMENT_VALUE_5'
    end
    object cdsInsertSpecLinesPRODUCT_PRECISION_LEVEL_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_PRECISION_LEVEL_CODE'
    end
    object cdsInsertSpecLinesIS_COMPLETE: TAbmesFloatField
      FieldName = 'IS_COMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsInsertSpecLinesDETAIL_COMMON_STATUS_CODE: TAbmesFloatField
      FieldName = 'DETAIL_COMMON_STATUS_CODE'
    end
    object cdsInsertSpecLinesPRODUCT_COMMON_STATUS_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_COMMON_STATUS_CODE'
    end
    object cdsInsertSpecLinesqryInsertSpecModelVariantLines: TDataSetField
      FieldName = 'qryInsertSpecModelVariantLines'
    end
  end
  object cdsBranches: TAbmesClientDataSet [21]
    Aggregates = <>
    ConnectionBroker = dmMain.conCompany
    Params = <>
    ProviderName = 'prvBranches'
    Left = 728
    Top = 136
    object cdsBranchesBRANCH_CODE: TAbmesFloatField
      FieldName = 'BRANCH_CODE'
    end
    object cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField
      FieldName = 'BRANCH_CODE_AND_NAME'
      Size = 255
    end
  end
  object cdsInsertSpecLineModelStages: TAbmesClientDataSet [22]
    Aggregates = <>
    DataSetField = cdsInsertSpecModelVariantLinesqryInsertSpecLineModelStages
    IndexFieldNames = 'SPEC_LINE_STAGE_NO'
    Params = <>
    Left = 432
    Top = 304
    object cdsInsertSpecLineModelStagesSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
    end
    object cdsInsertSpecLineModelStagesSPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_CODE'
    end
    object cdsInsertSpecLineModelStagesSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
    end
    object cdsInsertSpecLineModelStagesSPEC_LINE_STAGE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_STAGE_CODE'
    end
    object cdsInsertSpecLineModelStagesSPEC_LINE_STAGE_NO: TAbmesFloatField
      FieldName = 'SPEC_LINE_STAGE_NO'
    end
    object cdsInsertSpecLineModelStagesDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object cdsInsertSpecLineModelStagesDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      Size = 100
    end
    object cdsInsertSpecLineModelStagesDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      Size = 46
    end
    object cdsInsertSpecLineModelStagesDEPT_IS_STORE: TAbmesFloatField
      FieldName = 'DEPT_IS_STORE'
    end
    object cdsInsertSpecLineModelStagesDEPT_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEPT_BEGIN_DATE'
    end
    object cdsInsertSpecLineModelStagesDEPT_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEPT_END_DATE'
    end
    object cdsInsertSpecLineModelStagesOUTGOING_WORKDAYS: TAbmesFloatField
      FieldName = 'OUTGOING_WORKDAYS'
    end
    object cdsInsertSpecLineModelStagesTOTAL_TREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'TOTAL_TREATMENT_WORKDAYS'
    end
    object cdsInsertSpecLineModelStagesTREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'TREATMENT_WORKDAYS'
    end
    object cdsInsertSpecLineModelStagesIS_AUTO_MOVEMENT: TAbmesFloatField
      FieldName = 'IS_AUTO_MOVEMENT'
      ProviderFlags = [pfInUpdate]
      FieldValueType = fvtBoolean
    end
    object cdsInsertSpecLineModelStagesDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInsertSpecLineModelStagesDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInsertSpecLineModelStagesHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
      ProviderFlags = []
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsInsertSpecLineModelStagesDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'DOC_EMPTINESS_REQUIREMENT_CODE'
    end
    object cdsInsertSpecLineModelStagesDOC_IS_COMPLETE: TAbmesFloatField
      FieldName = 'DOC_IS_COMPLETE'
    end
    object cdsInsertSpecLineModelStagesUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAPPROVED_ACTIVE_DI_COUNT'
    end
    object cdsInsertSpecLineModelStagesSMVS_TYPE_CODE: TAbmesFloatField
      FieldName = 'SMVS_TYPE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInsertSpecLineModelStagesEXTERNAL_WORK_PRICE: TAbmesFloatField
      FieldName = 'EXTERNAL_WORK_PRICE'
    end
    object cdsInsertSpecLineModelStagesOPERATION_COUNT: TAbmesFloatField
      FieldName = 'OPERATION_COUNT'
    end
    object cdsInsertSpecLineModelStagesqryInsertSMVSOperations: TDataSetField
      FieldName = 'qryInsertSMVSOperations'
    end
  end
  object cdsAuthorizedModelVariants: TAbmesClientDataSet [23]
    Aggregates = <>
    ConnectionBroker = dmMain.conSpecifications
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvAuthorizedModelVariants'
    Left = 400
    Top = 240
    object cdsAuthorizedModelVariantsSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
    end
    object cdsAuthorizedModelVariantsSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
    end
    object cdsAuthorizedModelVariantsMODEL_VARIANT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'MODEL_VARIANT_IDENTIFIER'
      Size = 207
    end
    object cdsAuthorizedModelVariantsSPEC_MODEL_VARIANT_STATE: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_STATE'
    end
  end
  inherited dsModel: TDataSource
    Top = 272
  end
  inherited pgdModel: TPrintDBGridEh
    Left = 792
    Top = 0
  end
  inherited cdsModelTasks: TAbmesClientDataSet
    Left = 634
    Top = 232
  end
  object cdsCLSpec: TAbmesClientDataSet [27]
    Aggregates = <>
    ConnectionBroker = dmMain.conSpecifications
    FieldDefs = <
      item
        Name = 'ORIGINAL_SPEC_PRODUCT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SPEC_PRODUCT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SPEC_PRODUCT_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'SPEC_PRODUCT_NO'
        DataType = ftFloat
      end
      item
        Name = 'SPEC_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'WORK_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'MANUFACTURER_COMPANY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'NOTES'
        DataType = ftWideString
        Size = 250
      end
      item
        Name = 'qryCLSpecModelVariants'
        DataType = ftDataSet
      end
      item
        Name = 'qryCLSpecLines'
        DataType = ftDataSet
      end>
    IndexDefs = <>
    Params = <
      item
        DataType = ftFloat
        Name = 'NEW_SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NEW_SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORIGINAL_SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvCLSpec'
    StoreDefs = True
    Left = 600
    Top = 232
    object cdsCLSpecORIGINAL_SPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'ORIGINAL_SPEC_PRODUCT_CODE'
    end
    object cdsCLSpecSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsCLSpecSPEC_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'SPEC_PRODUCT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object cdsCLSpecSPEC_PRODUCT_NO: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_NO'
      ProviderFlags = []
    end
    object cdsCLSpecSPEC_TYPE_CODE: TAbmesFloatField
      FieldName = 'SPEC_TYPE_CODE'
    end
    object cdsCLSpecWORK_BRANCH_CODE: TAbmesFloatField
      FieldName = 'WORK_BRANCH_CODE'
    end
    object cdsCLSpecMANUFACTURER_COMPANY_CODE: TAbmesFloatField
      FieldName = 'MANUFACTURER_COMPANY_CODE'
    end
    object cdsCLSpecNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object cdsCLSpecqryCLSpecModelVariants: TDataSetField
      FieldName = 'qryCLSpecModelVariants'
    end
    object cdsCLSpecqryCLSpecLines: TDataSetField
      FieldName = 'qryCLSpecLines'
    end
  end
  object cdsCLSpecLines: TAbmesClientDataSet [28]
    Aggregates = <
      item
        Active = True
        GroupingLevel = 1
        IndexName = 'idxNo'
        Visible = False
      end
      item
        Active = True
        GroupingLevel = 2
        IndexName = 'idxNo'
        Visible = False
      end
      item
        Active = True
        GroupingLevel = 3
        IndexName = 'idxNo'
        Visible = False
      end
      item
        Active = True
        GroupingLevel = 4
        IndexName = 'idxNo'
        Visible = False
      end>
    AggregatesActive = True
    DataSetField = cdsCLSpecqryCLSpecLines
    FieldDefs = <
      item
        Name = 'ORIGINAL_SPEC_PRODUCT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SPEC_PRODUCT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SPEC_LINE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PARENT_SPEC_LINE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'NO_1'
        DataType = ftFloat
      end
      item
        Name = 'NO_2'
        DataType = ftFloat
      end
      item
        Name = 'NO_3'
        DataType = ftFloat
      end
      item
        Name = 'NO_4'
        DataType = ftFloat
      end
      item
        Name = 'NO_5'
        DataType = ftFloat
      end
      item
        Name = 'NO_6'
        DataType = ftFloat
      end
      item
        Name = 'NO_7'
        DataType = ftFloat
      end
      item
        Name = 'NO_8'
        DataType = ftFloat
      end
      item
        Name = 'NO_9'
        DataType = ftFloat
      end
      item
        Name = 'NO_10'
        DataType = ftFloat
      end
      item
        Name = 'NO_11'
        DataType = ftFloat
      end
      item
        Name = 'NO_12'
        DataType = ftFloat
      end
      item
        Name = 'NO_13'
        DataType = ftFloat
      end
      item
        Name = 'NO_14'
        DataType = ftFloat
      end
      item
        Name = 'NO_15'
        DataType = ftFloat
      end
      item
        Name = 'NO_16'
        DataType = ftFloat
      end
      item
        Name = 'NO_17'
        DataType = ftFloat
      end
      item
        Name = 'NO_18'
        DataType = ftFloat
      end
      item
        Name = 'NO_19'
        DataType = ftFloat
      end
      item
        Name = 'NO_20'
        DataType = ftFloat
      end
      item
        Name = 'NO_21'
        DataType = ftFloat
      end
      item
        Name = 'NO_22'
        DataType = ftFloat
      end
      item
        Name = 'NO_23'
        DataType = ftFloat
      end
      item
        Name = 'NO_24'
        DataType = ftFloat
      end
      item
        Name = 'NO_25'
        DataType = ftFloat
      end
      item
        Name = 'NO_AS_TEXT'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'NO_AS_FORMATED_TEXT'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'DETAIL_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DETAIL_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'DETAIL_NO'
        DataType = ftFloat
      end
      item
        Name = 'DETAIL_HAS_DOCUMENTATION'
        DataType = ftFloat
      end
      item
        Name = 'DETAIL_IS_INACTIVE'
        DataType = ftFloat
      end
      item
        Name = 'DETAIL_PARENT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DETAIL_TECH_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_DETAIL_TECH_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'PAR_TOTAL_DETAIL_TECH_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'DETAIL_TECH_MEASURE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'PRODUCT_NO'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_HAS_DOCUMENTATION'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_IS_INACTIVE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_TECH_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_PRODUCT_TECH_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_TECH_MEASURE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_TECH_MEASURE_COEF'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_PRODUCT_ACCOUNT_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_ACCOUNT_MEASURE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_ACCOUNT_MEASURE_COEF'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_SECONDARY_SINGLE_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_SECONDARY_TOTAL_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_IS_FOR_TREATMENT_USE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_IS_FOR_DIRECT_USE'
        DataType = ftFloat
      end
      item
        Name = 'NOTES'
        DataType = ftWideString
        Size = 250
      end
      item
        Name = 'CONSTRUCTION_NOTES'
        DataType = ftWideString
        Size = 250
      end
      item
        Name = 'IS_IMPORTED'
        DataType = ftFloat
      end
      item
        Name = 'IS_FOR_SINGLE_USE'
        DataType = ftFloat
      end
      item
        Name = 'IS_IMPORTED_SUBDETAIL'
        DataType = ftFloat
      end
      item
        Name = 'qryCLSpecModelVariantLines'
        DataType = ftDataSet
      end>
    IndexDefs = <>
    IndexFieldNames = 'NO_AS_FORMATED_TEXT'
    Params = <>
    StoreDefs = True
    Left = 584
    Top = 264
    object cdsCLSpecLinesORIGINAL_SPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'ORIGINAL_SPEC_PRODUCT_CODE'
    end
    object cdsCLSpecLinesSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsCLSpecLinesSPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsCLSpecLinesPARENT_SPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'PARENT_SPEC_LINE_CODE'
    end
    object cdsCLSpecLinesNO_1: TAbmesFloatField
      FieldName = 'NO_1'
    end
    object cdsCLSpecLinesNO_2: TAbmesFloatField
      FieldName = 'NO_2'
    end
    object cdsCLSpecLinesNO_3: TAbmesFloatField
      FieldName = 'NO_3'
    end
    object cdsCLSpecLinesNO_4: TAbmesFloatField
      FieldName = 'NO_4'
    end
    object cdsCLSpecLinesNO_5: TAbmesFloatField
      FieldName = 'NO_5'
    end
    object cdsCLSpecLinesNO_6: TAbmesFloatField
      FieldName = 'NO_6'
    end
    object cdsCLSpecLinesNO_7: TAbmesFloatField
      FieldName = 'NO_7'
    end
    object cdsCLSpecLinesNO_8: TAbmesFloatField
      FieldName = 'NO_8'
    end
    object cdsCLSpecLinesNO_9: TAbmesFloatField
      FieldName = 'NO_9'
    end
    object cdsCLSpecLinesNO_10: TAbmesFloatField
      FieldName = 'NO_10'
    end
    object cdsCLSpecLinesNO_11: TAbmesFloatField
      FieldName = 'NO_11'
    end
    object cdsCLSpecLinesNO_12: TAbmesFloatField
      FieldName = 'NO_12'
    end
    object cdsCLSpecLinesNO_13: TAbmesFloatField
      FieldName = 'NO_13'
    end
    object cdsCLSpecLinesNO_14: TAbmesFloatField
      FieldName = 'NO_14'
    end
    object cdsCLSpecLinesNO_15: TAbmesFloatField
      FieldName = 'NO_15'
    end
    object cdsCLSpecLinesNO_16: TAbmesFloatField
      FieldName = 'NO_16'
    end
    object cdsCLSpecLinesNO_17: TAbmesFloatField
      FieldName = 'NO_17'
    end
    object cdsCLSpecLinesNO_18: TAbmesFloatField
      FieldName = 'NO_18'
    end
    object cdsCLSpecLinesNO_19: TAbmesFloatField
      FieldName = 'NO_19'
    end
    object cdsCLSpecLinesNO_20: TAbmesFloatField
      FieldName = 'NO_20'
    end
    object cdsCLSpecLinesNO_21: TAbmesFloatField
      FieldName = 'NO_21'
    end
    object cdsCLSpecLinesNO_22: TAbmesFloatField
      FieldName = 'NO_22'
    end
    object cdsCLSpecLinesNO_23: TAbmesFloatField
      FieldName = 'NO_23'
    end
    object cdsCLSpecLinesNO_24: TAbmesFloatField
      FieldName = 'NO_24'
    end
    object cdsCLSpecLinesNO_25: TAbmesFloatField
      FieldName = 'NO_25'
    end
    object cdsCLSpecLinesNO_AS_TEXT: TAbmesWideStringField
      FieldName = 'NO_AS_TEXT'
      Size = 100
    end
    object cdsCLSpecLinesNO_AS_FORMATED_TEXT: TAbmesWideStringField
      FieldName = 'NO_AS_FORMATED_TEXT'
      Size = 100
    end
    object cdsCLSpecLinesDETAIL_CODE: TAbmesFloatField
      FieldName = 'DETAIL_CODE'
    end
    object cdsCLSpecLinesDETAIL_NAME: TAbmesWideStringField
      FieldName = 'DETAIL_NAME'
      ProviderFlags = []
      Size = 100
    end
    object cdsCLSpecLinesDETAIL_NO: TAbmesFloatField
      FieldName = 'DETAIL_NO'
      ProviderFlags = []
    end
    object cdsCLSpecLinesDETAIL_HAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'DETAIL_HAS_DOCUMENTATION'
      ProviderFlags = []
    end
    object cdsCLSpecLinesDETAIL_HAS_SPEC: TAbmesFloatField
      FieldName = 'DETAIL_HAS_SPEC'
    end
    object cdsCLSpecLinesDETAIL_IS_INACTIVE: TAbmesFloatField
      FieldName = 'DETAIL_IS_INACTIVE'
    end
    object cdsCLSpecLinesDETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'DETAIL_TECH_QUANTITY'
    end
    object cdsCLSpecLinesDETAIL_PARENT_CODE: TAbmesFloatField
      FieldName = 'DETAIL_PARENT_CODE'
    end
    object cdsCLSpecLinesDETAIL_IS_SELF_APPROVED: TAbmesFloatField
      FieldName = 'DETAIL_IS_SELF_APPROVED'
    end
    object cdsCLSpecLinesTOTAL_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_DETAIL_TECH_QUANTITY'
    end
    object cdsCLSpecLinesPAR_TOTAL_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'PAR_TOTAL_DETAIL_TECH_QUANTITY'
      ProviderFlags = []
    end
    object cdsCLSpecLinesDETAIL_TECH_MEASURE_CODE: TAbmesFloatField
      FieldName = 'DETAIL_TECH_MEASURE_CODE'
      ProviderFlags = []
    end
    object cdsCLSpecLinesPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object cdsCLSpecLinesPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object cdsCLSpecLinesPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
      ProviderFlags = []
    end
    object cdsCLSpecLinesPRODUCT_HAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOCUMENTATION'
      ProviderFlags = []
    end
    object cdsCLSpecLinesPRODUCT_IS_INACTIVE: TAbmesFloatField
      FieldName = 'PRODUCT_IS_INACTIVE'
    end
    object cdsCLSpecLinesPRODUCT_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'PRODUCT_TECH_QUANTITY'
    end
    object cdsCLSpecLinesTOTAL_PRODUCT_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_PRODUCT_TECH_QUANTITY'
      ProviderFlags = []
    end
    object cdsCLSpecLinesPRODUCT_TECH_MEASURE_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_TECH_MEASURE_CODE'
      ProviderFlags = []
    end
    object cdsCLSpecLinesPRODUCT_TECH_MEASURE_COEF: TAbmesFloatField
      FieldName = 'PRODUCT_TECH_MEASURE_COEF'
      ProviderFlags = []
    end
    object cdsCLSpecLinesTOTAL_PRODUCT_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_PRODUCT_ACCOUNT_QUANTITY'
      ProviderFlags = []
    end
    object cdsCLSpecLinesPRODUCT_ACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_ACCOUNT_MEASURE_CODE'
      ProviderFlags = []
    end
    object cdsCLSpecLinesPRODUCT_ACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'PRODUCT_ACCOUNT_MEASURE_COEF'
      ProviderFlags = []
    end
    object cdsCLSpecLinesPRODUCT_SECONDARY_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'PRODUCT_SECONDARY_SINGLE_PRICE'
      ProviderFlags = []
    end
    object cdsCLSpecLinesPRODUCT_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'PRODUCT_SINGLE_PRICE'
    end
    object cdsCLSpecLinesPRODUCT_SECONDARY_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PRODUCT_SECONDARY_TOTAL_PRICE'
      ProviderFlags = []
    end
    object cdsCLSpecLinesPRODUCT_INVESTMENT_VALUE_2: TAbmesFloatField
      FieldName = 'PRODUCT_INVESTMENT_VALUE_2'
    end
    object cdsCLSpecLinesPRODUCT_INVESTMENT_VALUE_3: TAbmesFloatField
      FieldName = 'PRODUCT_INVESTMENT_VALUE_3'
    end
    object cdsCLSpecLinesPRODUCT_INVESTMENT_VALUE_4: TAbmesFloatField
      FieldName = 'PRODUCT_INVESTMENT_VALUE_4'
    end
    object cdsCLSpecLinesPRODUCT_INVESTMENT_VALUE_5: TAbmesFloatField
      FieldName = 'PRODUCT_INVESTMENT_VALUE_5'
    end
    object cdsCLSpecLinesPRODUCT_PRECISION_LEVEL_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_PRECISION_LEVEL_CODE'
    end
    object cdsCLSpecLinesPRODUCT_IS_FOR_TREATMENT_USE: TAbmesFloatField
      FieldName = 'PRODUCT_IS_FOR_TREATMENT_USE'
      ProviderFlags = []
    end
    object cdsCLSpecLinesPRODUCT_IS_FOR_DIRECT_USE: TAbmesFloatField
      FieldName = 'PRODUCT_IS_FOR_DIRECT_USE'
      ProviderFlags = []
    end
    object cdsCLSpecLinesNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object cdsCLSpecLinesCONSTRUCTION_NOTES: TAbmesWideStringField
      FieldName = 'CONSTRUCTION_NOTES'
      Size = 250
    end
    object cdsCLSpecLinesIS_IMPORTED: TAbmesFloatField
      FieldName = 'IS_IMPORTED'
    end
    object cdsCLSpecLinesIS_FOR_SINGLE_USE: TAbmesFloatField
      FieldName = 'IS_FOR_SINGLE_USE'
      FieldValueType = fvtBoolean
    end
    object cdsCLSpecLinesIS_IMPORTED_SUBDETAIL: TAbmesFloatField
      FieldName = 'IS_IMPORTED_SUBDETAIL'
    end
    object cdsCLSpecLinesIS_COMPLETE: TAbmesFloatField
      FieldName = 'IS_COMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsCLSpecLinesDETAIL_COMMON_STATUS_CODE: TAbmesFloatField
      FieldName = 'DETAIL_COMMON_STATUS_CODE'
    end
    object cdsCLSpecLinesPRODUCT_COMMON_STATUS_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_COMMON_STATUS_CODE'
    end
    object cdsCLSpecLinesqryCLSpecModelVariantLines: TDataSetField
      FieldName = 'qryCLSpecModelVariantLines'
    end
  end
  object cdsCLSpecModelVariantStages: TAbmesClientDataSet [29]
    Aggregates = <>
    DataSetField = cdsCLSpecModelVariantLinesqryCLSpecModelVariantStages
    FieldDefs = <
      item
        Name = 'ORIGINAL_SPEC_PRODUCT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SPEC_PRODUCT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SPEC_MODEL_VARIANT_NO'
        DataType = ftFloat
      end
      item
        Name = 'SPEC_LINE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SPEC_LINE_STAGE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SPEC_LINE_STAGE_NO'
        DataType = ftFloat
      end
      item
        Name = 'DEPT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DEPT_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'DEPT_IDENTIFIER'
        DataType = ftWideString
        Size = 46
      end
      item
        Name = 'DEPT_IS_STORE'
        DataType = ftFloat
      end
      item
        Name = 'TREATMENT_WORKDAYS'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_TREATMENT_WORKDAYS'
        DataType = ftFloat
      end
      item
        Name = 'OUTGOING_WORKDAYS'
        DataType = ftFloat
      end
      item
        Name = 'IS_AUTO_MOVEMENT'
        DataType = ftFloat
      end
      item
        Name = 'DOC_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DOC_CODE'
        DataType = ftFloat
      end
      item
        Name = 'HAS_DOCUMENTATION'
        DataType = ftFloat
      end
      item
        Name = 'SMVS_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'EXTERNAL_WORK_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'OPERATION_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'D_STAGE_LEVEL_ORG_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'D_ADDITIONAL_PRICE_COEF'
        DataType = ftFloat
      end
      item
        Name = 'qryCLSMVSOperations'
        DataType = ftDataSet
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 584
    Top = 328
    object cdsCLSpecModelVariantStagesORIGINAL_SPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'ORIGINAL_SPEC_PRODUCT_CODE'
    end
    object cdsCLSpecModelVariantStagesSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsCLSpecModelVariantStagesSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsCLSpecModelVariantStagesSPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsCLSpecModelVariantStagesSPEC_LINE_STAGE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_STAGE_CODE'
    end
    object cdsCLSpecModelVariantStagesSPEC_LINE_STAGE_NO: TAbmesFloatField
      FieldName = 'SPEC_LINE_STAGE_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsCLSpecModelVariantStagesDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object cdsCLSpecModelVariantStagesDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object cdsCLSpecModelVariantStagesDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object cdsCLSpecModelVariantStagesDEPT_IS_STORE: TAbmesFloatField
      FieldName = 'DEPT_IS_STORE'
      ProviderFlags = []
    end
    object cdsCLSpecModelVariantStagesDEPT_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEPT_BEGIN_DATE'
    end
    object cdsCLSpecModelVariantStagesDEPT_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEPT_END_DATE'
    end
    object cdsCLSpecModelVariantStagesOUTGOING_WORKDAYS: TAbmesFloatField
      FieldName = 'OUTGOING_WORKDAYS'
    end
    object cdsCLSpecModelVariantStagesTOTAL_TREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'TOTAL_TREATMENT_WORKDAYS'
    end
    object cdsCLSpecModelVariantStagesTREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'TREATMENT_WORKDAYS'
    end
    object cdsCLSpecModelVariantStagesIS_AUTO_MOVEMENT: TAbmesFloatField
      FieldName = 'IS_AUTO_MOVEMENT'
      ProviderFlags = [pfInUpdate]
      FieldValueType = fvtBoolean
    end
    object cdsCLSpecModelVariantStagesDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCLSpecModelVariantStagesDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCLSpecModelVariantStagesHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
      ProviderFlags = []
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsCLSpecModelVariantStagesDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'DOC_EMPTINESS_REQUIREMENT_CODE'
    end
    object cdsCLSpecModelVariantStagesDOC_IS_COMPLETE: TAbmesFloatField
      FieldName = 'DOC_IS_COMPLETE'
    end
    object cdsCLSpecModelVariantStagesUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAPPROVED_ACTIVE_DI_COUNT'
    end
    object cdsCLSpecModelVariantStagesSMVS_TYPE_CODE: TAbmesFloatField
      FieldName = 'SMVS_TYPE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCLSpecModelVariantStagesEXTERNAL_WORK_PRICE: TAbmesFloatField
      FieldName = 'EXTERNAL_WORK_PRICE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCLSpecModelVariantStagesOPERATION_COUNT: TAbmesFloatField
      FieldName = 'OPERATION_COUNT'
      ProviderFlags = []
    end
    object cdsCLSpecModelVariantStagesqryCLSMVSOperations: TDataSetField
      FieldName = 'qryCLSMVSOperations'
    end
  end
  object cdsCLSpecModelVariants: TAbmesClientDataSet [30]
    Aggregates = <>
    AggregatesActive = True
    DataSetField = cdsCLSpecqryCLSpecModelVariants
    FieldDefs = <
      item
        Name = 'ORIGINAL_SPEC_PRODUCT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SPEC_PRODUCT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SPEC_MODEL_VARIANT_NO'
        DataType = ftFloat
      end
      item
        Name = 'MAIN_DEPT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'MAIN_DEPT_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'MAIN_DEPT_IDENTIFIER'
        DataType = ftWideString
        Size = 46
      end
      item
        Name = 'RESULT_STORE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'MIN_TECH_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'MAX_TECH_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'MODEL_VARIANT_IDENTIFIER'
        DataType = ftWideString
        Size = 191
      end
      item
        Name = 'qryCLSpecModelVariantTasks'
        DataType = ftDataSet
      end>
    IndexDefs = <
      item
        Name = 'idxVariantNo'
        Fields = 'SPEC_MODEL_VARIANT_NO'
      end>
    IndexName = 'idxVariantNo'
    Params = <>
    StoreDefs = True
    Left = 616
    Top = 264
    object cdsCLSpecModelVariantsORIGINAL_SPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'ORIGINAL_SPEC_PRODUCT_CODE'
    end
    object cdsCLSpecModelVariantsSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsCLSpecModelVariantsSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsCLSpecModelVariantsMAIN_DEPT_CODE: TAbmesFloatField
      FieldName = 'MAIN_DEPT_CODE'
    end
    object cdsCLSpecModelVariantsMAIN_DEPT_NAME: TAbmesWideStringField
      FieldName = 'MAIN_DEPT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object cdsCLSpecModelVariantsMAIN_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'MAIN_DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object cdsCLSpecModelVariantsRESULT_STORE_CODE: TAbmesFloatField
      FieldName = 'RESULT_STORE_CODE'
    end
    object cdsCLSpecModelVariantsMIN_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'MIN_TECH_QUANTITY'
    end
    object cdsCLSpecModelVariantsMAX_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'MAX_TECH_QUANTITY'
    end
    object cdsCLSpecModelVariantsMODEL_VARIANT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'MODEL_VARIANT_IDENTIFIER'
      ProviderFlags = []
      Size = 191
    end
    object cdsCLSpecModelVariantsNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object cdsCLSpecModelVariantsPRODUCT_PERIOD_ACTIVE_STATE: TAbmesFloatField
      FieldName = 'PRODUCT_PERIOD_ACTIVE_STATE'
    end
    object cdsCLSpecModelVariantsqryCLSpecModelVariantTasks: TDataSetField
      FieldName = 'qryCLSpecModelVariantTasks'
    end
  end
  object cdsCopyModelVariant: TAbmesClientDataSet [31]
    Aggregates = <>
    Params = <>
    Left = 664
    Top = 304
    object cdsCopyModelVariantSPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_CODE'
    end
    object cdsCopyModelVariantSPEC_LINE_STAGE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_STAGE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsCopyModelVariantSPEC_LINE_STAGE_NO: TAbmesFloatField
      FieldName = 'SPEC_LINE_STAGE_NO'
    end
    object cdsCopyModelVariantDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object cdsCopyModelVariantDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      Size = 100
    end
    object cdsCopyModelVariantDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object cdsCopyModelVariantDEPT_IS_STORE: TAbmesFloatField
      FieldName = 'DEPT_IS_STORE'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object cdsCopyModelVariantDEPT_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEPT_BEGIN_DATE'
    end
    object cdsCopyModelVariantDEPT_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEPT_END_DATE'
    end
    object cdsCopyModelVariantOUTGOING_WORKDAYS: TAbmesFloatField
      FieldName = 'OUTGOING_WORKDAYS'
      MaxValue = 1000000000.000000000000000000
      FieldValueType = fvtInteger
    end
    object cdsCopyModelVariantTREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'TREATMENT_WORKDAYS'
      MaxValue = 1000000000.000000000000000000
      FieldValueType = fvtInteger
    end
    object cdsCopyModelVariantIS_AUTO_MOVEMENT: TAbmesFloatField
      FieldName = 'IS_AUTO_MOVEMENT'
      FieldValueType = fvtBoolean
    end
    object cdsCopyModelVariantDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCopyModelVariantDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCopyModelVariantHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
      ProviderFlags = []
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsCopyModelVariantDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'DOC_EMPTINESS_REQUIREMENT_CODE'
    end
    object cdsCopyModelVariantDOC_IS_COMPLETE: TAbmesFloatField
      FieldName = 'DOC_IS_COMPLETE'
    end
    object cdsCopyModelVariantUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAPPROVED_ACTIVE_DI_COUNT'
    end
    object cdsCopyModelVariantEXTERNAL_WORK_PRICE: TAbmesFloatField
      FieldName = 'EXTERNAL_WORK_PRICE'
    end
    object cdsCopyModelVariantD_STAGE_LEVEL_ORG_PRICE: TAbmesFloatField
      FieldName = 'D_STAGE_LEVEL_ORG_PRICE'
      ProviderFlags = []
    end
    object cdsCopyModelVariantD_ADDITIONAL_PRICE_COEF: TAbmesFloatField
      FieldName = 'D_ADDITIONAL_PRICE_COEF'
      ProviderFlags = []
    end
  end
  object dsBranches: TDataSource [32]
    DataSet = cdsBranches
    Left = 728
    Top = 106
  end
  object cdsSpecModelVariantLines: TAbmesClientDataSet [33]
    Aggregates = <>
    DataSetField = cdsGridDataqrySpecModelVariantLines
    IndexFieldNames = 'SPEC_MODEL_VARIANT_NO'
    Params = <>
    BeforePost = cdsDataBeforePost
    BeforeDelete = cdsSpecModelVariantLinesBeforeDelete
    OnFilterRecord = cdsSpecModelVariantLinesFilterRecord
    OnNewRecord = cdsSpecModelVariantLinesNewRecord
    Left = 56
    Top = 296
    object cdsSpecModelVariantLinesSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsSpecModelVariantLinesSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsSpecModelVariantLinesSPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsSpecModelVariantLinesIMPORT_SPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'IMPORT_SPEC_PRODUCT_CODE'
    end
    object cdsSpecModelVariantLinesIMPORT_SPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'IMPORT_SPEC_MODEL_VARIANT_NO'
    end
    object cdsSpecModelVariantLinesAPPROVE_CYCLE_NO: TAbmesFloatField
      FieldName = 'APPROVE_CYCLE_NO'
    end
    object cdsSpecModelVariantLinesqrySpecModelVariantStages: TDataSetField
      FieldName = 'qrySpecModelVariantStages'
    end
  end
  object dsSpecModelVariantLines: TDataSource [34]
    DataSet = cdsSpecModelVariantLines
    Left = 88
    Top = 296
  end
  object cdsCLSpecModelVariantLines: TAbmesClientDataSet [35]
    Aggregates = <>
    DataSetField = cdsCLSpecLinesqryCLSpecModelVariantLines
    FieldDefs = <
      item
        Name = 'ORIGINAL_SPEC_PRODUCT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SPEC_PRODUCT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SPEC_MODEL_VARIANT_NO'
        DataType = ftFloat
      end
      item
        Name = 'SPEC_LINE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'IMPORT_SPEC_PRODUCT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'IMPORT_SPEC_MODEL_VARIANT_NO'
        DataType = ftFloat
      end
      item
        Name = 'qryCLSpecModelVariantStages'
        DataType = ftDataSet
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 584
    Top = 296
    object cdsCLSpecModelVariantLinesORIGINAL_SPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'ORIGINAL_SPEC_PRODUCT_CODE'
    end
    object cdsCLSpecModelVariantLinesSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
    end
    object cdsCLSpecModelVariantLinesSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
    end
    object cdsCLSpecModelVariantLinesSPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_CODE'
    end
    object cdsCLSpecModelVariantLinesIMPORT_SPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'IMPORT_SPEC_PRODUCT_CODE'
    end
    object cdsCLSpecModelVariantLinesIMPORT_SPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'IMPORT_SPEC_MODEL_VARIANT_NO'
    end
    object cdsCLSpecModelVariantLinesAPPROVE_CYCLE_NO: TAbmesFloatField
      FieldName = 'APPROVE_CYCLE_NO'
    end
    object cdsCLSpecModelVariantLinesqryCLSpecModelVariantStages: TDataSetField
      FieldName = 'qryCLSpecModelVariantStages'
    end
  end
  object cdsInsertSpecModelVariantLines: TAbmesClientDataSet [36]
    Aggregates = <>
    DataSetField = cdsInsertSpecLinesqryInsertSpecModelVariantLines
    Params = <>
    Left = 432
    Top = 272
    object cdsInsertSpecModelVariantLinesSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
    end
    object cdsInsertSpecModelVariantLinesSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
    end
    object cdsInsertSpecModelVariantLinesSPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_CODE'
    end
    object cdsInsertSpecModelVariantLinesIMPORT_SPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'IMPORT_SPEC_PRODUCT_CODE'
    end
    object cdsInsertSpecModelVariantLinesIMPORT_SPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'IMPORT_SPEC_MODEL_VARIANT_NO'
    end
    object cdsInsertSpecModelVariantLinesAPPROVE_CYCLE_NO: TAbmesFloatField
      FieldName = 'APPROVE_CYCLE_NO'
    end
    object cdsInsertSpecModelVariantLinesqryInsertSpecLineModelStages: TDataSetField
      FieldName = 'qryInsertSpecLineModelStages'
    end
  end
  object cdsSpecLineLastModelStages: TAbmesClientDataSet [37]
    Aggregates = <>
    IndexFieldNames = 'SPEC_MODEL_VARIANT_NO'
    Params = <>
    Left = 506
    Top = 312
    object cdsSpecLineLastModelStagesSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
    end
    object cdsSpecLineLastModelStagesFIRST_STAGE_DEPT_CODE: TAbmesFloatField
      FieldName = 'FIRST_STAGE_DEPT_CODE'
    end
    object cdsSpecLineLastModelStagesFIRST_STAGE_DEPT_NAME: TAbmesWideStringField
      FieldName = 'FIRST_STAGE_DEPT_NAME'
      Size = 100
    end
    object cdsSpecLineLastModelStagesFIRST_STAGE_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'FIRST_STAGE_DEPT_IDENTIFIER'
      Size = 50
    end
    object cdsSpecLineLastModelStagesFIRST_STAGE_DEPT_IS_STORE: TAbmesFloatField
      FieldName = 'FIRST_STAGE_DEPT_IS_STORE'
      FieldValueType = fvtBoolean
    end
  end
  inherited cdsModelTasksHeader: TAbmesClientDataSet
    OnNewRecord = cdsModelTasksHeaderNewRecord
    Left = 666
    Top = 232
    object cdsModelTasksHeaderSPEC_STATE_CODE: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'SPEC_STATE_CODE'
      OnGetText = cdsDataSPEC_STATE_CODEGetText
    end
    object cdsModelTasksHeader_SPEC_TYPE_NAME: TAbmesWideStringField
      DisplayLabel = #1042#1080#1076
      FieldName = '_SPEC_TYPE_NAME'
    end
    object cdsModelTasksHeaderSPEC_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'SPEC_PRODUCT_NAME'
      Size = 100
    end
    object cdsModelTasksHeaderSPEC_PRODUCT_NO: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_NO'
    end
    object cdsModelTasksHeaderSTRUCTURE_COEF: TAbmesWideStringField
      FieldName = 'STRUCTURE_COEF'
    end
    object cdsModelTasksHeaderSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsModelTasksHeaderMAIN_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'MAIN_DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object cdsModelTasksHeaderMIN_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'MIN_TECH_QUANTITY'
      DisplayFormat = ',0.###'
    end
    object cdsModelTasksHeaderMAX_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'MAX_TECH_QUANTITY'
      DisplayFormat = ',0.###'
    end
    object cdsModelTasksHeaderMANUFACTURER_NAME: TAbmesWideStringField
      FieldName = 'MANUFACTURER_NAME'
    end
    object cdsModelTasksHeaderCOMPANY_PRODUCT_NAMES: TAbmesWideStringField
      FieldName = 'COMPANY_PRODUCT_NAMES'
      Size = 250
    end
  end
  inherited cdsFilteredGridData: TAbmesClientDataSet
    Top = 216
  end
  inherited dsFilteredGridData: TDataSource
    Top = 216
  end
  inherited cdsProfessions: TAbmesClientDataSet
    Left = 480
    Top = 152
    inherited cdsProfessionsPROFESSION_CODE: TAbmesFloatField
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object cdsCopyInSpecModelVariants: TAbmesClientDataSet [42]
    Aggregates = <>
    AggregatesActive = True
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'idxVariantNo'
        Fields = 'SPEC_MODEL_VARIANT_NO'
      end>
    IndexName = 'idxVariantNo'
    Params = <>
    StoreDefs = True
    OnCalcFields = cdsCopyInSpecModelVariantsCalcFields
    OnNewRecord = cdsCopyInSpecModelVariantsNewRecord
    Left = 368
    Top = 240
    object cdsCopyInSpecModelVariantsSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
    end
    object cdsCopyInSpecModelVariantsSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
    end
    object cdsCopyInSpecModelVariantsMAIN_DEPT_CODE: TAbmesFloatField
      DisplayLabel = #1043#1083#1072#1074#1085#1086' '#1080#1079#1087#1098#1083#1085#1080#1090#1077#1083#1085#1086' '#1058#1055
      FieldName = 'MAIN_DEPT_CODE'
      Required = True
    end
    object cdsCopyInSpecModelVariantsMAIN_DEPT_NAME: TAbmesWideStringField
      DisplayLabel = #1043#1083#1072#1074#1085#1086' '#1080#1079#1087#1098#1083#1085#1080#1090#1077#1083#1085#1086' '#1058#1055
      FieldName = 'MAIN_DEPT_NAME'
      Size = 100
    end
    object cdsCopyInSpecModelVariantsMAIN_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'MAIN_DEPT_IDENTIFIER'
      Size = 46
    end
    object cdsCopyInSpecModelVariantsRESULT_STORE_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086
      FieldName = 'RESULT_STORE_CODE'
    end
    object cdsCopyInSpecModelVariantsMIN_TECH_QUANTITY: TAbmesFloatField
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' - '#1054#1090
      FieldName = 'MIN_TECH_QUANTITY'
      DisplayFormat = ',0.###'
      EditFormat = '0.###'
    end
    object cdsCopyInSpecModelVariantsMAX_TECH_QUANTITY: TAbmesFloatField
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' - '#1044#1086
      FieldName = 'MAX_TECH_QUANTITY'
      DisplayFormat = ',0.###'
      EditFormat = '0.###'
    end
    object cdsCopyInSpecModelVariantsAUTHORIZATION_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'AUTHORIZATION_EMPLOYEE_CODE'
    end
    object cdsCopyInSpecModelVariantsAUTHORIZATION_DATE: TAbmesSQLTimeStampField
      FieldName = 'AUTHORIZATION_DATE'
    end
    object cdsCopyInSpecModelVariantsMODEL_VARIANT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'MODEL_VARIANT_IDENTIFIER'
      Size = 191
    end
    object cdsCopyInSpecModelVariantsINSERT_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'INSERT_MODEL_VARIANT_NO'
    end
    object cdsCopyInSpecModelVariantsIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
      FieldValueType = fvtBoolean
    end
    object cdsCopyInSpecModelVariants_INSERT_SPEC_MODEL_VARIANT_STATE: TAbmesFloatField
      Alignment = taLeftJustify
      FieldKind = fkLookup
      FieldName = '_INSERT_SPEC_MODEL_VARIANT_STATE'
      LookupDataSet = cdsAuthorizedModelVariants
      LookupKeyFields = 'SPEC_MODEL_VARIANT_NO'
      LookupResultField = 'SPEC_MODEL_VARIANT_STATE'
      KeyFields = 'INSERT_MODEL_VARIANT_NO'
      OnGetText = cdsCopyInSpecModelVariants_INSERT_SPEC_MODEL_VARIANT_STATEGetText
      Lookup = True
    end
    object cdsCopyInSpecModelVariants_INSERT_MODEL_VARIANT_IDENTIFIER: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_INSERT_MODEL_VARIANT_IDENTIFIER'
      LookupDataSet = cdsAuthorizedModelVariants
      LookupKeyFields = 'SPEC_MODEL_VARIANT_NO'
      LookupResultField = 'MODEL_VARIANT_IDENTIFIER'
      KeyFields = 'INSERT_MODEL_VARIANT_NO'
      Size = 500
      Lookup = True
    end
    object cdsCopyInSpecModelVariants_AUTHORIZATION_EMPLOYEE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_AUTHORIZATION_EMPLOYEE_NAME'
      LookupDataSet = frAuthor.cdsEmployees
      LookupKeyFields = 'EMPLOYEE_CODE'
      LookupResultField = 'EMPLOYEE_NAME'
      KeyFields = 'AUTHORIZATION_EMPLOYEE_CODE'
      Size = 70
      Lookup = True
    end
    object cdsCopyInSpecModelVariants_AUTHORIZATION_EMPLOYEE_NO: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_AUTHORIZATION_EMPLOYEE_NO'
      LookupDataSet = frAuthor.cdsEmployees
      LookupKeyFields = 'EMPLOYEE_CODE'
      LookupResultField = 'EMPLOYEE_NO'
      KeyFields = 'AUTHORIZATION_EMPLOYEE_CODE'
      Lookup = True
    end
    object cdsCopyInSpecModelVariantsPARENT_DETAIL_CODE: TAbmesFloatField
      FieldName = 'PARENT_DETAIL_CODE'
    end
    object cdsCopyInSpecModelVariants_INSERT_SPEC_MODEL_VARIANT_STATE_NAME: TAbmesStringField
      FieldKind = fkCalculated
      FieldName = '_INSERT_SPEC_MODEL_VARIANT_STATE_NAME'
      Size = 100
      Calculated = True
    end
    object cdsCopyInSpecModelVariants_MAX_INSERT_MODEL_VARIANT_NO: TAggregateField
      FieldName = '_MAX_INSERT_MODEL_VARIANT_NO'
      Active = True
      DisplayName = ''
      Expression = 'Max(INSERT_MODEL_VARIANT_NO)'
    end
  end
  object cdsSpecModelVariantTasks: TAbmesClientDataSet [43]
    Aggregates = <>
    AggregatesActive = True
    DataSetField = cdsSpecModelVariantsqrySpecModelVariantTasks
    FieldDefs = <
      item
        Name = 'SPEC_PRODUCT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SPEC_MODEL_VARIANT_NO'
        DataType = ftFloat
      end
      item
        Name = 'SPEC_MODEL_VARIANT_TASK_NO'
        DataType = ftFloat
      end
      item
        Name = 'SPEC_MODEL_VARIANT_TASK_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'qrySpecModelVariantTaskDepts'
        DataType = ftDataSet
      end>
    IndexDefs = <
      item
        Name = 'idxTaskNo'
        Fields = 
          'SPEC_PRODUCT_CODE; SPEC_MODEL_VARIANT_NO; SPEC_MODEL_VARIANT_TAS' +
          'K_NO'
        Options = [ixUnique]
      end>
    IndexName = 'idxTaskNo'
    Params = <>
    StoreDefs = True
    AfterPost = cdsSpecModelVariantTasksAfterPost
    BeforeDelete = cdsSpecModelVariantTasksBeforeDelete
    OnNewRecord = cdsSpecModelVariantTasksNewRecord
    Left = 136
    Top = 296
    object cdsSpecModelVariantTasksSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsSpecModelVariantTasksSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsSpecModelVariantTasksSPEC_MODEL_VARIANT_TASK_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_TASK_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsSpecModelVariantTasksSPEC_MODEL_VARIANT_TASK_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'SPEC_MODEL_VARIANT_TASK_NAME'
      Required = True
      Size = 100
    end
    object cdsSpecModelVariantTasksqrySpecModelVariantTaskDepts: TDataSetField
      FieldName = 'qrySpecModelVariantTaskDepts'
    end
    object cdsSpecModelVariantTasks_MAX_SPEC_MODEL_VARIANT_TASK_NO: TAggregateField
      FieldName = '_MAX_SPEC_MODEL_VARIANT_TASK_NO'
      Active = True
      DisplayName = ''
      Expression = 'Max(SPEC_MODEL_VARIANT_TASK_NO)'
    end
  end
  object dsSpecModelVariantTasks: TDataSource [44]
    DataSet = cdsSpecModelVariantTasks
    Left = 168
    Top = 296
  end
  object cdsSpecModelVariantTaskDepts: TAbmesClientDataSet [45]
    Aggregates = <>
    DataSetField = cdsSpecModelVariantTasksqrySpecModelVariantTaskDepts
    FieldDefs = <
      item
        Name = 'SPEC_PRODUCT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SPEC_MODEL_VARIANT_NO'
        DataType = ftFloat
      end
      item
        Name = 'SPEC_MODEL_VARIANT_TASK_NO'
        DataType = ftFloat
      end
      item
        Name = 'DEPT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DEPT_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'DEPT_IDENTIFIER'
        DataType = ftWideString
        Size = 46
      end>
    IndexDefs = <
      item
        Name = 'idxDept'
        Fields = 
          'SPEC_PRODUCT_CODE; SPEC_MODEL_VARIANT_NO; SPEC_MODEL_VARIANT_TAS' +
          'K_NO; DEPT_CODE'
        Options = [ixUnique]
      end>
    IndexName = 'idxDept'
    Params = <>
    StoreDefs = True
    AfterPost = cdsSpecModelVariantTaskDeptsAfterPost
    AfterCancel = cdsSpecModelVariantTaskDeptsAfterCancel
    OnNewRecord = cdsSpecModelVariantTaskDeptsNewRecord
    Left = 136
    Top = 328
    object cdsSpecModelVariantTaskDeptsSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsSpecModelVariantTaskDeptsSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsSpecModelVariantTaskDeptsSPEC_MODEL_VARIANT_TASK_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_TASK_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsSpecModelVariantTaskDeptsDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      OnChange = cdsSpecModelVariantTaskDeptsDEPT_CODEChange
    end
    object cdsSpecModelVariantTaskDeptsDEPT_NAME: TAbmesWideStringField
      DisplayLabel = #1058#1055
      FieldName = 'DEPT_NAME'
      ProviderFlags = []
      Required = True
      Size = 100
    end
    object cdsSpecModelVariantTaskDeptsDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
  end
  object dsSpecModelVariantTaskDepts: TDataSource [46]
    DataSet = cdsSpecModelVariantTaskDepts
    Left = 168
    Top = 328
  end
  object cdsCLSpecModelVariantTasks: TAbmesClientDataSet [47]
    Aggregates = <>
    DataSetField = cdsCLSpecModelVariantsqryCLSpecModelVariantTasks
    Params = <>
    Left = 616
    Top = 296
    object cdsCLSpecModelVariantTasksORIGINAL_SPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'ORIGINAL_SPEC_PRODUCT_CODE'
    end
    object cdsCLSpecModelVariantTasksSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsCLSpecModelVariantTasksSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsCLSpecModelVariantTasksSPEC_MODEL_VARIANT_TASK_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_TASK_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsCLSpecModelVariantTasksSPEC_MODEL_VARIANT_TASK_NAME: TAbmesWideStringField
      FieldName = 'SPEC_MODEL_VARIANT_TASK_NAME'
      Size = 100
    end
    object cdsCLSpecModelVariantTasksqryCLSpecModelVariantTaskDepts: TDataSetField
      FieldName = 'qryCLSpecModelVariantTaskDepts'
    end
  end
  object cdsCLSpecModelVariantTaskDepts: TAbmesClientDataSet [48]
    Aggregates = <>
    DataSetField = cdsCLSpecModelVariantTasksqryCLSpecModelVariantTaskDepts
    Params = <>
    Left = 616
    Top = 328
    object cdsCLSpecModelVariantTaskDeptsSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsCLSpecModelVariantTaskDeptsSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsCLSpecModelVariantTaskDeptsSPEC_MODEL_VARIANT_TASK_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_TASK_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsCLSpecModelVariantTaskDeptsDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsCLSpecModelVariantTaskDeptsDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object cdsCLSpecModelVariantTaskDeptsDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
  end
  inherited cdsOperations: TAbmesClientDataSet
    Aggregates = <
      item
        Active = True
        GroupingLevel = 1
        IndexName = 'idxOperationNo'
        Visible = False
      end
      item
        Active = True
        GroupingLevel = 2
        IndexName = 'idxOperationNo'
        Visible = False
      end>
    DataSetField = cdsSpecModelVariantStagesqrySMVSOperations
    FieldDefs = <
      item
        Name = 'SPEC_PRODUCT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SPEC_MODEL_VARIANT_NO'
        DataType = ftFloat
      end
      item
        Name = 'SPEC_LINE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SPEC_LINE_STAGE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SMVS_OPERATION_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SMVS_OPERATION_NO'
        DataType = ftFloat
      end
      item
        Name = 'SMVS_OPERATION_VARIANT_NO'
        DataType = ftFloat
      end
      item
        Name = 'OPERATION_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'IS_NORMAL_OPERATION'
        DataType = ftFloat
      end
      item
        Name = 'DEPT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DEPT_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'DEPT_IDENTIFIER'
        DataType = ftWideString
        Size = 46
      end
      item
        Name = 'DEPT_PRODUCT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DEPT_PARENT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DEPT_BEGIN_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'DEPT_END_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'SETUP_PROFESSION_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SETUP_EFFORT_COEF'
        DataType = ftFloat
      end
      item
        Name = 'SETUP_HOUR_TECH_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'SETUP_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'PROFESSION_CODE'
        DataType = ftFloat
      end
      item
        Name = 'EFFORT_COEF'
        DataType = ftFloat
      end
      item
        Name = 'HOUR_TECH_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'PROGRAM_TOOL_PRODUCT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PROGRAM_TOOL_PRODUCT_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'PROGRAM_TOOL_PRODUCT_NO'
        DataType = ftFloat
      end
      item
        Name = 'SPECIFIC_TOOL_PRODUCT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SPECIFIC_TOOL_PRODUCT_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'SPECIFIC_TOOL_PRODUCT_NO'
        DataType = ftFloat
      end
      item
        Name = 'TYPICAL_TOOL_PRODUCT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'TYPICAL_TOOL_PRODUCT_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'TYPICAL_TOOL_PRODUCT_NO'
        DataType = ftFloat
      end
      item
        Name = 'NOTES'
        DataType = ftWideString
        Size = 250
      end
      item
        Name = 'DOC_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DOC_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SPECIFIC_TOOL_DETAIL_TECH_QTY'
        DataType = ftFloat
      end
      item
        Name = 'TYPICAL_TOOL_DETAIL_TECH_QTY'
        DataType = ftFloat
      end
      item
        Name = 'PROGRAM_TOOL_REQUIREMENT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SPECIFIC_TOOL_REQUIREMENT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'TYPICAL_TOOL_REQUIREMENT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PROGRAM_TOOL_IS_COMPLETE'
        DataType = ftFloat
      end
      item
        Name = 'SPECIFIC_TOOL_IS_COMPLETE'
        DataType = ftFloat
      end
      item
        Name = 'TYPICAL_TOOL_IS_COMPLETE'
        DataType = ftFloat
      end
      item
        Name = 'TREATMENT_BEGIN_WORKDAY_NO'
        DataType = ftFloat
      end
      item
        Name = 'TREATMENT_WORKDAYS'
        DataType = ftFloat
      end
      item
        Name = 'HAS_DOCUMENTATION'
        DataType = ftFloat
      end
      item
        Name = 'DOC_EMPTINESS_REQUIREMENT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DOC_IS_COMPLETE'
        DataType = ftFloat
      end
      item
        Name = 'UNAPPROVED_ACTIVE_DI_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'HAS_SPECIAL_CONTROL'
        DataType = ftFloat
      end
      item
        Name = 'D_HOUR_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'D_MAINTAINANCE_HOUR_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'D_PARALLEL_OPERATOR_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'D_PARALLEL_PROCESS_COUNT'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'idxOperationNo'
        Fields = 
          'OPERATION_TYPE_CODE; SMVS_OPERATION_NO; SMVS_OPERATION_VARIANT_N' +
          'O'
      end>
    OnFilterRecord = cdsOperationsFilterRecord
    Left = 56
    Top = 360
    object cdsOperationsSPEC_PRODUCT_CODE: TAbmesFloatField [0]
      FieldName = 'SPEC_PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsOperationsSPEC_MODEL_VARIANT_NO: TAbmesFloatField [1]
      FieldName = 'SPEC_MODEL_VARIANT_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsOperationsSPEC_LINE_CODE: TAbmesFloatField [2]
      FieldName = 'SPEC_LINE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsOperationsSPEC_LINE_STAGE_CODE: TAbmesFloatField [3]
      FieldName = 'SPEC_LINE_STAGE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsOperationsSMVS_OPERATION_CODE: TAbmesFloatField [4]
      FieldName = 'SMVS_OPERATION_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsOperationsSMVS_OPERATION_NO: TAbmesFloatField [5]
      FieldName = 'SMVS_OPERATION_NO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsOperationsSMVS_OPERATION_VARIANT_NO: TAbmesFloatField [6]
      FieldName = 'SMVS_OPERATION_VARIANT_NO'
      ProviderFlags = [pfInUpdate]
    end
    inherited cdsOperationsIS_NORMAL_OPERATION: TAbmesFloatField
      ProviderFlags = []
    end
    inherited cdsOperationsDEPT_CODE: TAbmesFloatField
      ProviderFlags = [pfInUpdate]
    end
    inherited cdsOperationsDEPT_PRODUCT_CODE: TAbmesFloatField
      ProviderFlags = []
    end
    inherited cdsOperationsSETUP_PROFESSION_CODE: TAbmesFloatField
      ProviderFlags = [pfInUpdate]
    end
    inherited cdsOperationsSETUP_EFFORT_COEF: TAbmesFloatField
      ProviderFlags = [pfInUpdate]
    end
    inherited cdsOperationsSETUP_HOUR_TECH_QUANTITY: TAbmesFloatField
      ProviderFlags = [pfInUpdate]
    end
    inherited cdsOperationsHOUR_TECH_QUANTITY: TAbmesFloatField
      ProviderFlags = [pfInUpdate]
    end
    inherited cdsOperationsPROGRAM_TOOL_PRODUCT_CODE: TAbmesFloatField
      ProviderFlags = [pfInUpdate]
    end
    inherited cdsOperationsPROGRAM_TOOL_PRODUCT_NAME: TAbmesWideStringField
      ProviderFlags = []
    end
    inherited cdsOperationsPROGRAM_TOOL_PRODUCT_NO: TAbmesFloatField
      ProviderFlags = []
    end
    inherited cdsOperationsSPECIFIC_TOOL_PRODUCT_CODE: TAbmesFloatField
      ProviderFlags = [pfInUpdate]
    end
    inherited cdsOperationsSPECIFIC_TOOL_PRODUCT_NAME: TAbmesWideStringField
      ProviderFlags = []
    end
    inherited cdsOperationsSPECIFIC_TOOL_PRODUCT_NO: TAbmesFloatField
      ProviderFlags = []
    end
    inherited cdsOperationsTYPICAL_TOOL_PRODUCT_CODE: TAbmesFloatField
      ProviderFlags = [pfInUpdate]
    end
    inherited cdsOperationsTYPICAL_TOOL_PRODUCT_NAME: TAbmesWideStringField
      ProviderFlags = []
    end
    inherited cdsOperationsTYPICAL_TOOL_PRODUCT_NO: TAbmesFloatField
      ProviderFlags = []
    end
    inherited cdsOperationsNOTES: TAbmesWideStringField
      ProviderFlags = [pfInUpdate]
    end
    inherited cdsOperationsDOC_BRANCH_CODE: TAbmesFloatField
      ProviderFlags = [pfInUpdate]
    end
    inherited cdsOperationsDOC_CODE: TAbmesFloatField
      ProviderFlags = [pfInUpdate]
    end
    inherited cdsOperationsSPECIFIC_TOOL_DETAIL_TECH_QTY: TAbmesFloatField
      ProviderFlags = [pfInUpdate]
    end
    inherited cdsOperationsTYPICAL_TOOL_DETAIL_TECH_QTY: TAbmesFloatField
      ProviderFlags = [pfInUpdate]
    end
    inherited cdsOperationsDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField
      ProviderFlags = []
    end
    inherited cdsOperationsDOC_IS_COMPLETE: TAbmesFloatField
      ProviderFlags = []
    end
    inherited cdsOperationsUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField
      ProviderFlags = []
    end
    inherited cdsOperationsHAS_SPECIAL_CONTROL: TAbmesFloatField
      ProviderFlags = [pfInUpdate]
    end
    inherited cdsOperationsD_HOUR_PRICE: TAbmesFloatField
      ProviderFlags = []
    end
    inherited cdsOperationsD_MAINTAINANCE_HOUR_PRICE: TAbmesFloatField
      ProviderFlags = []
    end
    inherited cdsOperationsD_PARALLEL_OPERATOR_COUNT: TAbmesFloatField
      ProviderFlags = []
    end
    inherited cdsOperationsD_PARALLEL_PROCESS_COUNT: TAbmesFloatField
      ProviderFlags = []
    end
    inherited cdsOperations_MAX_OPERATION_NO: TAggregateField
      Expression = 'Max(SMVS_OPERATION_NO)'
    end
    inherited cdsOperations_MAX_OPERATION_VARIANT_NO: TAggregateField
      Expression = 'Max(SMVS_OPERATION_VARIANT_NO)'
    end
    inherited cdsOperations_OPERATION_COUNT: TAggregateField
      Expression = 
        'Count(OPERATION_TYPE_CODE) - Sum(SMVS_OPERATION_VARIANT_NO/SMVS_' +
        'OPERATION_VARIANT_NO)'
    end
    object cdsOperations_MAX_SMVS_OPERATION_CODE: TAggregateField
      FieldName = '_MAX_SMVS_OPERATION_CODE'
      Active = True
      DisplayName = ''
      Expression = 'Max(SMVS_OPERATION_CODE)'
    end
  end
  object cdsCopyModelVariantTasks: TAbmesClientDataSet [51]
    Aggregates = <>
    Params = <>
    Left = 696
    Top = 304
    object cdsCopyModelVariantTasksSPEC_MODEL_VARIANT_TASK_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_TASK_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsCopyModelVariantTasksSPEC_MODEL_VARIANT_TASK_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'SPEC_MODEL_VARIANT_TASK_NAME'
      Required = True
      Size = 100
    end
  end
  object cdsCopyModelVariantTaskDepts: TAbmesClientDataSet [52]
    Aggregates = <>
    Params = <>
    Left = 696
    Top = 336
    object cdsCopyModelVariantTaskDeptsSPEC_MODEL_VARIANT_TASK_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_TASK_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsCopyModelVariantTaskDeptsDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsCopyModelVariantTaskDeptsDEPT_NAME: TAbmesWideStringField
      DisplayLabel = #1058#1055
      FieldName = 'DEPT_NAME'
      Required = True
      Size = 100
    end
    object cdsCopyModelVariantTaskDeptsDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      Size = 46
    end
  end
  object cdsInsertSMVSOperations: TAbmesClientDataSet [53]
    Aggregates = <>
    DataSetField = cdsInsertSpecLineModelStagesqryInsertSMVSOperations
    Params = <>
    Left = 432
    Top = 336
    object cdsInsertSMVSOperationsSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsInsertSMVSOperationsSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsInsertSMVSOperationsSPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsInsertSMVSOperationsSPEC_LINE_STAGE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_STAGE_CODE'
    end
    object cdsInsertSMVSOperationsSMVS_OPERATION_CODE: TAbmesFloatField
      FieldName = 'SMVS_OPERATION_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsInsertSMVSOperationsSMVS_OPERATION_NO: TAbmesFloatField
      FieldName = 'SMVS_OPERATION_NO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInsertSMVSOperationsSMVS_OPERATION_VARIANT_NO: TAbmesFloatField
      FieldName = 'SMVS_OPERATION_VARIANT_NO'
    end
    object cdsInsertSMVSOperationsOPERATION_TYPE_CODE: TAbmesFloatField
      FieldName = 'OPERATION_TYPE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInsertSMVSOperationsIS_NORMAL_OPERATION: TAbmesFloatField
      FieldName = 'IS_NORMAL_OPERATION'
    end
    object cdsInsertSMVSOperationsDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object cdsInsertSMVSOperationsDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object cdsInsertSMVSOperationsDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object cdsInsertSMVSOperationsDEPT_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'DEPT_PRODUCT_CODE'
    end
    object cdsInsertSMVSOperationsDEPT_PARENT_CODE: TAbmesFloatField
      FieldName = 'DEPT_PARENT_CODE'
      ProviderFlags = []
    end
    object cdsInsertSMVSOperationsDEPT_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEPT_BEGIN_DATE'
    end
    object cdsInsertSMVSOperationsDEPT_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEPT_END_DATE'
    end
    object cdsInsertSMVSOperationsSETUP_PROFESSION_CODE: TAbmesFloatField
      FieldName = 'SETUP_PROFESSION_CODE'
    end
    object cdsInsertSMVSOperationsSETUP_EFFORT_COEF: TAbmesFloatField
      FieldName = 'SETUP_EFFORT_COEF'
    end
    object cdsInsertSMVSOperationsSETUP_HOUR_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'SETUP_HOUR_TECH_QUANTITY'
    end
    object cdsInsertSMVSOperationsSETUP_COUNT: TAbmesFloatField
      FieldName = 'SETUP_COUNT'
    end
    object cdsInsertSMVSOperationsPROFESSION_CODE: TAbmesFloatField
      FieldName = 'PROFESSION_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInsertSMVSOperationsEFFORT_COEF: TAbmesFloatField
      FieldName = 'EFFORT_COEF'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInsertSMVSOperationsHOUR_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'HOUR_TECH_QUANTITY'
    end
    object cdsInsertSMVSOperationsPROGRAM_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_PRODUCT_CODE'
    end
    object cdsInsertSMVSOperationsPROGRAM_TOOL_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PROGRAM_TOOL_PRODUCT_NAME'
      Size = 100
    end
    object cdsInsertSMVSOperationsPROGRAM_TOOL_PRODUCT_NO: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_PRODUCT_NO'
    end
    object cdsInsertSMVSOperationsSPECIFIC_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_PRODUCT_CODE'
    end
    object cdsInsertSMVSOperationsSPECIFIC_TOOL_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'SPECIFIC_TOOL_PRODUCT_NAME'
      Size = 100
    end
    object cdsInsertSMVSOperationsSPECIFIC_TOOL_PRODUCT_NO: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_PRODUCT_NO'
    end
    object cdsInsertSMVSOperationsTYPICAL_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_PRODUCT_CODE'
    end
    object cdsInsertSMVSOperationsTYPICAL_TOOL_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'TYPICAL_TOOL_PRODUCT_NAME'
      Size = 100
    end
    object cdsInsertSMVSOperationsTYPICAL_TOOL_PRODUCT_NO: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_PRODUCT_NO'
    end
    object cdsInsertSMVSOperationsNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object cdsInsertSMVSOperationsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsInsertSMVSOperationsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsInsertSMVSOperationsSPECIFIC_TOOL_DETAIL_TECH_QTY: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_DETAIL_TECH_QTY'
    end
    object cdsInsertSMVSOperationsTYPICAL_TOOL_DETAIL_TECH_QTY: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_DETAIL_TECH_QTY'
    end
    object cdsInsertSMVSOperationsPROGRAM_TOOL_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_REQUIREMENT_CODE'
    end
    object cdsInsertSMVSOperationsSPECIFIC_TOOL_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_REQUIREMENT_CODE'
    end
    object cdsInsertSMVSOperationsTYPICAL_TOOL_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_REQUIREMENT_CODE'
    end
    object cdsInsertSMVSOperationsPROGRAM_TOOL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_IS_COMPLETE'
    end
    object cdsInsertSMVSOperationsSPECIFIC_TOOL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_IS_COMPLETE'
    end
    object cdsInsertSMVSOperationsTYPICAL_TOOL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_IS_COMPLETE'
    end
    object cdsInsertSMVSOperationsTREATMENT_BEGIN_WORKDAY_NO: TAbmesFloatField
      FieldName = 'TREATMENT_BEGIN_WORKDAY_NO'
    end
    object cdsInsertSMVSOperationsTREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'TREATMENT_WORKDAYS'
    end
    object cdsInsertSMVSOperationsHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
      ProviderFlags = []
      DisplayBoolValues = 'i;'
      FieldValueType = fvtBoolean
    end
    object cdsInsertSMVSOperationsDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'DOC_EMPTINESS_REQUIREMENT_CODE'
    end
    object cdsInsertSMVSOperationsDOC_IS_COMPLETE: TAbmesFloatField
      FieldName = 'DOC_IS_COMPLETE'
    end
    object cdsInsertSMVSOperationsUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAPPROVED_ACTIVE_DI_COUNT'
    end
    object cdsInsertSMVSOperationsHAS_SPECIAL_CONTROL: TAbmesFloatField
      FieldName = 'HAS_SPECIAL_CONTROL'
    end
    object cdsInsertSMVSOperationsIS_AUTO_MOVEMENT: TAbmesFloatField
      FieldName = 'IS_AUTO_MOVEMENT'
    end
    object cdsInsertSMVSOperationsIS_AUTO_SETUP: TAbmesFloatField
      FieldName = 'IS_AUTO_SETUP'
    end
    object cdsInsertSMVSOperationsD_HOUR_PRICE: TAbmesFloatField
      FieldName = 'D_HOUR_PRICE'
    end
    object cdsInsertSMVSOperationsD_MAINTAINANCE_HOUR_PRICE: TAbmesFloatField
      FieldName = 'D_MAINTAINANCE_HOUR_PRICE'
    end
    object cdsInsertSMVSOperationsD_PARALLEL_OPERATOR_COUNT: TAbmesFloatField
      FieldName = 'D_PARALLEL_OPERATOR_COUNT'
    end
    object cdsInsertSMVSOperationsD_PARALLEL_PROCESS_COUNT: TAbmesFloatField
      FieldName = 'D_PARALLEL_PROCESS_COUNT'
    end
  end
  object cdsCLSMVSOperations: TAbmesClientDataSet [54]
    Aggregates = <>
    DataSetField = cdsCLSpecModelVariantStagesqryCLSMVSOperations
    Params = <>
    Left = 584
    Top = 360
    object cdsCLSMVSOperationsSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsCLSMVSOperationsSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsCLSMVSOperationsSPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsCLSMVSOperationsSPEC_LINE_STAGE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_STAGE_CODE'
    end
    object cdsCLSMVSOperationsSMVS_OPERATION_CODE: TAbmesFloatField
      FieldName = 'SMVS_OPERATION_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsCLSMVSOperationsSMVS_OPERATION_NO: TAbmesFloatField
      FieldName = 'SMVS_OPERATION_NO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCLSMVSOperationsSMVS_OPERATION_VARIANT_NO: TAbmesFloatField
      FieldName = 'SMVS_OPERATION_VARIANT_NO'
    end
    object cdsCLSMVSOperationsOPERATION_TYPE_CODE: TAbmesFloatField
      FieldName = 'OPERATION_TYPE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCLSMVSOperationsIS_NORMAL_OPERATION: TAbmesFloatField
      FieldName = 'IS_NORMAL_OPERATION'
    end
    object cdsCLSMVSOperationsDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object cdsCLSMVSOperationsDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object cdsCLSMVSOperationsDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object cdsCLSMVSOperationsDEPT_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'DEPT_PRODUCT_CODE'
    end
    object cdsCLSMVSOperationsDEPT_PARENT_CODE: TAbmesFloatField
      FieldName = 'DEPT_PARENT_CODE'
      ProviderFlags = []
    end
    object cdsCLSMVSOperationsDEPT_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEPT_BEGIN_DATE'
    end
    object cdsCLSMVSOperationsDEPT_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEPT_END_DATE'
    end
    object cdsCLSMVSOperationsSETUP_PROFESSION_CODE: TAbmesFloatField
      FieldName = 'SETUP_PROFESSION_CODE'
    end
    object cdsCLSMVSOperationsSETUP_EFFORT_COEF: TAbmesFloatField
      FieldName = 'SETUP_EFFORT_COEF'
    end
    object cdsCLSMVSOperationsSETUP_HOUR_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'SETUP_HOUR_TECH_QUANTITY'
    end
    object cdsCLSMVSOperationsSETUP_COUNT: TAbmesFloatField
      FieldName = 'SETUP_COUNT'
    end
    object cdsCLSMVSOperationsPROFESSION_CODE: TAbmesFloatField
      FieldName = 'PROFESSION_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCLSMVSOperationsEFFORT_COEF: TAbmesFloatField
      FieldName = 'EFFORT_COEF'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCLSMVSOperationsHOUR_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'HOUR_TECH_QUANTITY'
    end
    object cdsCLSMVSOperationsPROGRAM_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_PRODUCT_CODE'
    end
    object cdsCLSMVSOperationsPROGRAM_TOOL_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PROGRAM_TOOL_PRODUCT_NAME'
      Size = 100
    end
    object cdsCLSMVSOperationsPROGRAM_TOOL_PRODUCT_NO: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_PRODUCT_NO'
    end
    object cdsCLSMVSOperationsSPECIFIC_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_PRODUCT_CODE'
    end
    object cdsCLSMVSOperationsSPECIFIC_TOOL_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'SPECIFIC_TOOL_PRODUCT_NAME'
      Size = 100
    end
    object cdsCLSMVSOperationsSPECIFIC_TOOL_PRODUCT_NO: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_PRODUCT_NO'
    end
    object cdsCLSMVSOperationsTYPICAL_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_PRODUCT_CODE'
    end
    object cdsCLSMVSOperationsTYPICAL_TOOL_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'TYPICAL_TOOL_PRODUCT_NAME'
      Size = 100
    end
    object cdsCLSMVSOperationsTYPICAL_TOOL_PRODUCT_NO: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_PRODUCT_NO'
    end
    object cdsCLSMVSOperationsNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object cdsCLSMVSOperationsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCLSMVSOperationsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCLSMVSOperationsSPECIFIC_TOOL_DETAIL_TECH_QTY: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_DETAIL_TECH_QTY'
    end
    object cdsCLSMVSOperationsTYPICAL_TOOL_DETAIL_TECH_QTY: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_DETAIL_TECH_QTY'
    end
    object cdsCLSMVSOperationsPROGRAM_TOOL_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_REQUIREMENT_CODE'
    end
    object cdsCLSMVSOperationsSPECIFIC_TOOL_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_REQUIREMENT_CODE'
    end
    object cdsCLSMVSOperationsTYPICAL_TOOL_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_REQUIREMENT_CODE'
    end
    object cdsCLSMVSOperationsPROGRAM_TOOL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_IS_COMPLETE'
    end
    object cdsCLSMVSOperationsSPECIFIC_TOOL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_IS_COMPLETE'
    end
    object cdsCLSMVSOperationsTYPICAL_TOOL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_IS_COMPLETE'
    end
    object cdsCLSMVSOperationsTREATMENT_BEGIN_WORKDAY_NO: TAbmesFloatField
      FieldName = 'TREATMENT_BEGIN_WORKDAY_NO'
    end
    object cdsCLSMVSOperationsTREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'TREATMENT_WORKDAYS'
    end
    object cdsCLSMVSOperationsHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
      ProviderFlags = []
      DisplayBoolValues = 'i;'
      FieldValueType = fvtBoolean
    end
    object cdsCLSMVSOperationsDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'DOC_EMPTINESS_REQUIREMENT_CODE'
    end
    object cdsCLSMVSOperationsDOC_IS_COMPLETE: TAbmesFloatField
      FieldName = 'DOC_IS_COMPLETE'
    end
    object cdsCLSMVSOperationsUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAPPROVED_ACTIVE_DI_COUNT'
    end
    object cdsCLSMVSOperationsHAS_SPECIAL_CONTROL: TAbmesFloatField
      FieldName = 'HAS_SPECIAL_CONTROL'
    end
    object cdsCLSMVSOperationsIS_AUTO_MOVEMENT: TAbmesFloatField
      FieldName = 'IS_AUTO_MOVEMENT'
    end
    object cdsCLSMVSOperationsIS_AUTO_SETUP: TAbmesFloatField
      FieldName = 'IS_AUTO_SETUP'
    end
    object cdsCLSMVSOperationsD_HOUR_PRICE: TAbmesFloatField
      FieldName = 'D_HOUR_PRICE'
    end
    object cdsCLSMVSOperationsD_MAINTAINANCE_HOUR_PRICE: TAbmesFloatField
      FieldName = 'D_MAINTAINANCE_HOUR_PRICE'
    end
    object cdsCLSMVSOperationsD_PARALLEL_OPERATOR_COUNT: TAbmesFloatField
      FieldName = 'D_PARALLEL_OPERATOR_COUNT'
    end
    object cdsCLSMVSOperationsD_PARALLEL_PROCESS_COUNT: TAbmesFloatField
      FieldName = 'D_PARALLEL_PROCESS_COUNT'
    end
  end
  inherited cdsOperationCreateLike: TAbmesClientDataSet
    Left = 48
    Top = 226
  end
  inherited cdsStageInvestedValues: TAbmesClientDataSet
    IndexDefs = <
      item
        Name = 'idxDefault'
        Fields = 
          'SPEC_PRODUCT_CODE; SPEC_MODEL_VARIANT_NO; SPEC_LINE_CODE; SPEC_L' +
          'INE_STAGE_CODE'
        Options = [ixUnique]
      end>
    IndexName = 'idxDefault'
    StoreDefs = True
    Left = 120
    object cdsStageInvestedValuesSPEC_PRODUCT_CODE: TAbmesFloatField [0]
      FieldName = 'SPEC_PRODUCT_CODE'
    end
    object cdsStageInvestedValuesSPEC_MODEL_VARIANT_NO: TAbmesFloatField [1]
      FieldName = 'SPEC_MODEL_VARIANT_NO'
    end
    object cdsStageInvestedValuesSPEC_LINE_CODE: TAbmesFloatField [2]
      FieldName = 'SPEC_LINE_CODE'
    end
    object cdsStageInvestedValuesSPEC_LINE_STAGE_CODE: TAbmesFloatField [3]
      FieldName = 'SPEC_LINE_STAGE_CODE'
    end
  end
  object cdsSMVSTypes: TAbmesClientDataSet [58]
    Aggregates = <>
    ConnectionBroker = dmMain.conSpecifications
    Params = <>
    ProviderName = 'prvSMVSTypes'
    Left = 760
    Top = 136
    object cdsSMVSTypesSMVS_TYPE_CODE: TAbmesFloatField
      FieldName = 'SMVS_TYPE_CODE'
    end
    object cdsSMVSTypesSMVS_TYPE_NAME: TAbmesWideStringField
      FieldName = 'SMVS_TYPE_NAME'
      Size = 100
    end
  end
  object cdsCopyModelVariantOperations: TAbmesClientDataSet [59]
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'idxDefault'
        Fields = 
          'SPEC_LINE_CODE; SPEC_LINE_STAGE_CODE; SMVS_OPERATION_NO; SMVS_OP' +
          'ERATION_VARIANT_NO'
      end>
    IndexName = 'idxDefault'
    Params = <>
    StoreDefs = True
    Left = 664
    Top = 336
    object cdsCopyModelVariantOperationsSPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsCopyModelVariantOperationsSPEC_LINE_STAGE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_STAGE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsCopyModelVariantOperationsSMVS_OPERATION_CODE: TAbmesFloatField
      FieldName = 'SMVS_OPERATION_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsCopyModelVariantOperationsSMVS_OPERATION_NO: TAbmesFloatField
      FieldName = 'SMVS_OPERATION_NO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCopyModelVariantOperationsSMVS_OPERATION_VARIANT_NO: TAbmesFloatField
      FieldName = 'SMVS_OPERATION_VARIANT_NO'
    end
    object cdsCopyModelVariantOperationsOPERATION_TYPE_CODE: TAbmesFloatField
      FieldName = 'OPERATION_TYPE_CODE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsCopyModelVariantOperationsDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object cdsCopyModelVariantOperationsDEPT_NAME: TAbmesWideStringField
      DisplayLabel = #1054#1073#1086#1089#1086#1073#1077#1085' '#1056#1072#1073#1086#1090#1077#1085' '#1042#1098#1079#1077#1083
      FieldName = 'DEPT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object cdsCopyModelVariantOperationsDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object cdsCopyModelVariantOperationsDEPT_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEPT_BEGIN_DATE'
    end
    object cdsCopyModelVariantOperationsDEPT_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEPT_END_DATE'
    end
    object cdsCopyModelVariantOperationsSETUP_PROFESSION_CODE: TAbmesFloatField
      FieldName = 'SETUP_PROFESSION_CODE'
    end
    object cdsCopyModelVariantOperationsDEPT_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'DEPT_PRODUCT_CODE'
    end
    object cdsCopyModelVariantOperationsDEPT_PARENT_CODE: TAbmesFloatField
      FieldName = 'DEPT_PARENT_CODE'
      ProviderFlags = []
    end
    object cdsCopyModelVariantOperationsSETUP_EFFORT_COEF: TAbmesFloatField
      DisplayLabel = #1053#1072#1089#1090#1088#1086#1081#1082#1072' - '#1050#1086#1077#1092#1080#1094#1080#1077#1085#1090' '#1085#1072' '#1048#1085#1090#1077#1085#1079#1080#1090#1077#1090
      FieldName = 'SETUP_EFFORT_COEF'
    end
    object cdsCopyModelVariantOperationsSETUP_HOUR_TECH_QUANTITY: TAbmesFloatField
      DisplayLabel = #1053#1072#1089#1090#1088#1086#1081#1082#1072' - '#1048#1079#1093#1086#1076#1103#1097#1072' '#1055#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1085#1086#1089#1090
      FieldName = 'SETUP_HOUR_TECH_QUANTITY'
    end
    object cdsCopyModelVariantOperationsSETUP_COUNT: TAbmesFloatField
      FieldName = 'SETUP_COUNT'
    end
    object cdsCopyModelVariantOperationsPROFESSION_CODE: TAbmesFloatField
      FieldName = 'PROFESSION_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCopyModelVariantOperationsEFFORT_COEF: TAbmesFloatField
      DisplayLabel = #1050#1086#1077#1092#1080#1094#1080#1077#1085#1090' '#1085#1072' '#1048#1085#1090#1077#1085#1079#1080#1090#1077#1090
      FieldName = 'EFFORT_COEF'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCopyModelVariantOperationsHOUR_TECH_QUANTITY: TAbmesFloatField
      DisplayLabel = #1048#1079#1093#1086#1076#1103#1097#1072' '#1055#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1085#1086#1089#1090
      FieldName = 'HOUR_TECH_QUANTITY'
    end
    object cdsCopyModelVariantOperationsPROGRAM_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_PRODUCT_CODE'
    end
    object cdsCopyModelVariantOperationsPROGRAM_TOOL_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PROGRAM_TOOL_PRODUCT_NAME'
      Size = 100
    end
    object cdsCopyModelVariantOperationsPROGRAM_TOOL_PRODUCT_NO: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_PRODUCT_NO'
    end
    object cdsCopyModelVariantOperationsSPECIFIC_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_PRODUCT_CODE'
    end
    object cdsCopyModelVariantOperationsSPECIFIC_TOOL_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'SPECIFIC_TOOL_PRODUCT_NAME'
      Size = 100
    end
    object cdsCopyModelVariantOperationsSPECIFIC_TOOL_PRODUCT_NO: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_PRODUCT_NO'
    end
    object cdsCopyModelVariantOperationsTYPICAL_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_PRODUCT_CODE'
    end
    object cdsCopyModelVariantOperationsTYPICAL_TOOL_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'TYPICAL_TOOL_PRODUCT_NAME'
      Size = 100
    end
    object cdsCopyModelVariantOperationsTYPICAL_TOOL_PRODUCT_NO: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_PRODUCT_NO'
    end
    object cdsCopyModelVariantOperationsNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object cdsCopyModelVariantOperationsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsCopyModelVariantOperationsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsCopyModelVariantOperationsSPECIFIC_TOOL_DETAIL_TECH_QTY: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_DETAIL_TECH_QTY'
    end
    object cdsCopyModelVariantOperationsTYPICAL_TOOL_DETAIL_TECH_QTY: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_DETAIL_TECH_QTY'
    end
    object cdsCopyModelVariantOperationsPROGRAM_TOOL_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_REQUIREMENT_CODE'
    end
    object cdsCopyModelVariantOperationsSPECIFIC_TOOL_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_REQUIREMENT_CODE'
    end
    object cdsCopyModelVariantOperationsTYPICAL_TOOL_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_REQUIREMENT_CODE'
    end
    object cdsCopyModelVariantOperationsPROGRAM_TOOL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_IS_COMPLETE'
    end
    object cdsCopyModelVariantOperationsSPECIFIC_TOOL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_IS_COMPLETE'
    end
    object cdsCopyModelVariantOperationsTYPICAL_TOOL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_IS_COMPLETE'
    end
    object cdsCopyModelVariantOperationsTREATMENT_BEGIN_WORKDAY_NO: TAbmesFloatField
      FieldName = 'TREATMENT_BEGIN_WORKDAY_NO'
    end
    object cdsCopyModelVariantOperationsTREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'TREATMENT_WORKDAYS'
    end
    object cdsCopyModelVariantOperationsHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
      ProviderFlags = []
      DisplayBoolValues = 'i;'
      FieldValueType = fvtBoolean
    end
    object cdsCopyModelVariantOperationsDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'DOC_EMPTINESS_REQUIREMENT_CODE'
    end
    object cdsCopyModelVariantOperationsDOC_IS_COMPLETE: TAbmesFloatField
      FieldName = 'DOC_IS_COMPLETE'
    end
    object cdsCopyModelVariantOperationsUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAPPROVED_ACTIVE_DI_COUNT'
    end
    object cdsCopyModelVariantOperationsHAS_SPECIAL_CONTROL: TAbmesFloatField
      FieldName = 'HAS_SPECIAL_CONTROL'
    end
    object cdsCopyModelVariantOperationsIS_AUTO_MOVEMENT: TAbmesFloatField
      FieldName = 'IS_AUTO_MOVEMENT'
    end
    object cdsCopyModelVariantOperationsIS_AUTO_SETUP: TAbmesFloatField
      FieldName = 'IS_AUTO_SETUP'
    end
    object cdsCopyModelVariantOperationsD_HOUR_PRICE: TAbmesFloatField
      FieldName = 'D_HOUR_PRICE'
    end
    object cdsCopyModelVariantOperationsD_MAINTAINANCE_HOUR_PRICE: TAbmesFloatField
      FieldName = 'D_MAINTAINANCE_HOUR_PRICE'
    end
    object cdsCopyModelVariantOperationsD_PARALLEL_OPERATOR_COUNT: TAbmesFloatField
      FieldName = 'D_PARALLEL_OPERATOR_COUNT'
    end
    object cdsCopyModelVariantOperationsD_PARALLEL_PROCESS_COUNT: TAbmesFloatField
      FieldName = 'D_PARALLEL_PROCESS_COUNT'
    end
  end
  object cdsSelectModelVariants: TAbmesClientDataSet [60]
    Aggregates = <>
    Params = <>
    Left = 424
    Top = 194
    object cdsSelectModelVariantsSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsSelectModelVariantsMODEL_VARIANT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'MODEL_VARIANT_IDENTIFIER'
      ProviderFlags = []
      Size = 191
    end
  end
  object dsSelectModelVariants: TDataSource [61]
    DataSet = cdsSelectModelVariants
    Left = 456
    Top = 194
  end
  inherited pgdModelTask: TPrintDBGridEh
    Left = 888
    Top = 0
    BeforeGridText_Data = {
      7B5C727466315C616E73695C616E7369637067313235315C64656666305C6465
      666C616E67313032367B5C666F6E7474626C7B5C66305C6673776973735C6670
      7271325C66636861727365743230347B5C2A5C666E616D6520417269616C3B7D
      417269616C204359523B7D7B5C66315C66726F6D616E5C66707271325C666368
      61727365743230347B5C2A5C666E616D652054696D6573204E657720526F6D61
      6E3B7D54696D6573204E657720526F6D616E204359523B7D7B5C66325C666E69
      6C5C66636861727365743230347B5C2A5C666E616D6520417269616C3B7D4172
      69616C204359523B7D7D0D0A5C766965776B696E64345C7563315C706172645C
      747831333138335C747832323235355C6C616E67313033335C625C66305C6673
      323420205C7461625C7461625C6C616E67313032365C7061720D0A5C70617264
      5C747832313738305C747832313936305C6C616E67313033335C756C5C62305C
      66315C7461625C756C6E6F6E655C7461625C7061720D0A5C7061720D0A5C6C61
      6E67313032365C66325C6673323820706C626C5461736B4E616D653A205C6C61
      6E67313033335C625C66733330205441534B5F4E414D455C62305C66315C6673
      32385C7061720D0A5C706172645C6C616E67333038315C625C7061720D0A7D0D
      0A00}
  end
  inherited pgdModelRecursive: TPrintDBGridEh
    Left = 856
    Top = 0
    BeforeGridText_Data = {
      7B5C727466315C616E73695C616E7369637067313235315C64656666305C6465
      666C616E67313032367B5C666F6E7474626C7B5C66305C66726F6D616E5C6670
      7271325C66636861727365743230347B5C2A5C666E616D652054696D6573204E
      657720526F6D616E3B7D54696D6573204E657720526F6D616E204359523B7D7B
      5C66315C666E696C5C66636861727365743230347B5C2A5C666E616D65204172
      69616C3B7D417269616C204359523B7D7B5C66325C666E696C5C66707271325C
      6663686172736574323034204D532053616E732053657269663B7D7D0D0A7B5C
      636F6C6F7274626C203B5C7265643139325C677265656E3139325C626C756531
      39323B7D0D0A5C766965776B696E64345C7563315C706172645C756C5C625C66
      305C667333365C7061720D0A5C756C6E6F6E655C66315C6673323820706C626C
      44657461696C53747275637420205C6C616E673130333320205C62305C66305C
      6673323020205C663120205C6C616E673130323620706C626C4E6F4173546578
      745C6C616E673130333320205C686967686C696768743120204E4F5F41535F54
      455854205C686967686C696768743020205C6C616E673130323620706C626C44
      657461696C4E616D65205C686967686C69676874315C6C616E67313033332020
      44455441494C5F4E414D45205C686967686C696768743020205C6C616E673130
      323620706C626C44657461696C4E6F205C686967686C69676874315C6C616E67
      31303333202044455441494C5F4E4F205C686967686C69676874305C6C616E67
      313032365C667331365C7061720D0A5C66325C7061720D0A5C6C616E67333038
      315C625C66305C667332385C7061720D0A7D0D0A00}
  end
  inherited pgdInvestedValues: TPrintDBGridEh
    Left = 920
    Top = 0
    BeforeGridText_Data = {
      7B5C727466315C616E73695C616E7369637067313235315C64656666305C6465
      666C616E67313032367B5C666F6E7474626C7B5C66305C66726F6D616E5C6670
      7271325C66636861727365743230347B5C2A5C666E616D652054696D6573204E
      657720526F6D616E3B7D54696D6573204E657720526F6D616E204359523B7D7B
      5C66315C666E696C5C66636861727365743230347B5C2A5C666E616D65204172
      69616C3B7D417269616C204359523B7D7B5C66325C666E696C5C666368617273
      65743020417269616C3B7D7B5C66335C666E696C5C66707271325C6663686172
      736574323034204D532053616E732053657269663B7D7D0D0A7B5C636F6C6F72
      74626C203B5C7265643139325C677265656E3139325C626C75653139323B7D0D
      0A5C766965776B696E64345C7563315C706172645C756C5C625C66305C667333
      365C7061720D0A5C663120706C626C496E76657374656456616C75655C756C6E
      6F6E655C62305C6673323020205C6C616E6731303333202020205C6C616E6731
      30323620706C626C496E76657374656456616C75655174795C6C616E67313033
      3320205C686967686C696768743120205C663220494E5645535445445F56414C
      55455F5154595C663120205C686967686C696768743020205F524553554C545F
      50524F445543545F5C663220544543485F5C6631204D4541535552455F414242
      52455620202020202020202020205C6C616E673130323620706C626C496E7665
      7374656456616C756554797065205C686967686C69676874315C6C616E673130
      333320205C663220494E5645535445445F56414C55455F545950455C66312020
      5C686967686C6967687430202020202020202020205C6C616E67313032362070
      6C626C546F74616C496E76657374656456616C7565205C686967686C69676874
      315C6C616E673130333320205C663220544F54414C5F494E5645535445445F56
      414C55455C663120205C686967686C696768743020205C663220494E56455354
      45445F56414C55455F43555252454E43595F4142425245565C6C616E67313032
      365C66315C667331365C7061720D0A5C66335C7061720D0A5C6C616E67333038
      315C625C66305C667332385C7061720D0A7D0D0A00}
  end
  object pgdSpecModel: TPrintDBGridEh [68]
    DBGridEh = grdPrint
    Options = []
    Page.BottomMargin = 1.000000000000000000
    Page.LeftMargin = 1.500000000000000000
    Page.RightMargin = 1.500000000000000000
    Page.TopMargin = 1.000000000000000000
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'Microsoft Sans Serif'
    PageFooter.Font.Style = []
    PageFooter.LeftText.Strings = (
      #1054#1090#1087#1077#1095#1072#1090#1072#1085#1086' '#1085#1072' &[Date] , &[Time]')
    PageFooter.RightText.Strings = (
      #1057#1090#1088'. &[Page] ')
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -11
    PageHeader.Font.Name = 'Microsoft Sans Serif'
    PageHeader.Font.Style = []
    Units = MM
    Left = 824
    BeforeGridText_Data = {
      7B5C727466315C616E73695C616E7369637067313235315C64656666305C6465
      666C616E67313032367B5C666F6E7474626C7B5C66305C6673776973735C6670
      7271325C66636861727365743230347B5C2A5C666E616D6520417269616C3B7D
      417269616C204359523B7D7B5C66315C66726F6D616E5C66707271325C666368
      61727365743230347B5C2A5C666E616D652054696D6573204E657720526F6D61
      6E3B7D54696D6573204E657720526F6D616E204359523B7D7D0D0A7B5C636F6C
      6F7274626C203B5C7265643139325C677265656E3139325C626C75653139323B
      7D0D0A5C766965776B696E64345C7563315C706172645C6E6F77696463746C70
      61725C7478323838305C7478343332305C7478353934305C747831333931365C
      747831373634305C747832303639365C6C616E67313034395C66305C66733238
      5C7461625C6C616E67313032365C695C6673323020706C626C53706563537461
      7465436F64655C69305C7461625C6920706C626C537472756374436F65665C6C
      616E67313034395C69305C7461625C6C616E67313032365C6920706C626C5370
      6563547970654E616D65205C69305C7461625C6920706C626C5370656350726F
      647563744E616D655C7061720D0A5C625C69305C6673323820706C626C537065
      6353746174655C62305C667332305C7461625C686967686C69676874315C6C61
      6E67313033335C622020535045435F53544154455F434F44455C6C616E673130
      32362020205C686967686C696768743020205C7461625C686967686C69676874
      315C6C616E673130333320205F535045435F545950455F4E414D455C6C616E67
      3130323620205C686967686C69676874305C7461625C686967686C6967687431
      2020535C6C616E6731303333205045435F50524F445543545C6C616E67313032
      36205F4E414D45205C686967686C696768743020205C686967686C6967687431
      2020535045435F50524F445543545F4E4F205C686967686C69676874305C7461
      625C686967686C69676874315C6C616E673130333320205354525543545F434F
      45465C6C616E673130323620205C686967686C69676874305C62305C7061720D
      0A5C706172645C6E6F77696463746C7061725C7478323838305C747834333230
      5C7478353934305C747831333530305C747831373634305C747832303639365C
      667331325C7061720D0A5C706172645C6E6F77696463746C7061725C74783939
      345C7478323838305C7478353934305C7478393336305C747831303830305C74
      7831323439365C747831333836305C695C6673323020706C626C56617269616E
      744E6F5C6C616E67313034395C7461625C6C616E673130323620706C626C4D61
      696E446570744964656E7469666965725C74616220706C626C4D616E75666163
      74757265724E616D65205C74616220706C626C436F6D70616E7950726F647563
      744E616D6573205C6C616E67313034395C7461625C6C616E673130323620706C
      626C496E76657374656456616C7565446174655C74616220706C626C496E7665
      7374656456616C7565517479205C74616220706C626C496E7665737465645661
      6C7565547970655C74616220706C626C546F74616C496E76657374656456616C
      75655C686967686C69676874315C6C616E67313034395C7061720D0A5C706172
      645C74783939325C7478323838305C7478353934325C7478393336305C747831
      303830305C747831323439375C747831333835375C6C616E67323035375C625C
      693020205C6C616E67313033332056415249414E545F4E4F5C6C616E67313032
      3620205C686967686C69676874305C6C616E67323035375C7461625C68696768
      6C69676874315C6C616E673130323620205C6C616E6731303333204D41494E5F
      444550545F4944454E5449464945525C6C616E673130323620205C686967686C
      69676874305C6C616E67323035375C667332385C7461625C686967686C696768
      74315C6673323020205C6C616E6731303333204D5C6C616E673130323620414E
      5546414354555245525F4E414D45205C686967686C69676874305C6C616E6732
      3035375C7461625C686967686C696768743120205C6C616E673130323620434F
      4D50414E595F50524F445543545F4E414D4553205C686967686C69676874305C
      7461625C686967686C696768743120205C6C616E673130333320494E56455354
      45445F56414C55455F44415445205C686967686C696768743020205C62305C74
      61625C686967686C69676874315C622020494E5645535445445F56414C55455F
      515459205C686967686C696768743020205C6230205F544543485F4D45415355
      52455F4142425245565C7461625C686967686C69676874315C622020494E5645
      535445445F56414C55455F54595045205C686967686C69676874305C6C616E67
      313032365C7461625C686967686C69676874315C6C616E67313033332020544F
      54414C5F494E5645535445445F56414C5545205C686967686C69676874305C6C
      616E673130323620205C6C616E67313033335C623020494E5645535445445F56
      414C55455F43555252454E43595F4142425245565C6C616E67313032365C6631
      5C667332345C7061720D0A5C706172645C6C616E67313034395C66305C667332
      385C7061720D0A7D0D0A00}
  end
  object cdsModelVariantInvestedValues: TAbmesClientDataSet [70]
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'idxDefault'
        Fields = 
          'MAIN_DEPT_CODE; MIN_TECH_QUANTITY; MAX_TECH_QUANTITY; INVESTED_V' +
          'ALUE_LEVEL'
        Options = [ixUnique]
      end>
    IndexName = 'idxDefault'
    Params = <>
    StoreDefs = True
    Left = 352
    Top = 432
    object cdsModelVariantInvestedValuesMAIN_DEPT_CODE: TAbmesFloatField
      FieldName = 'MAIN_DEPT_CODE'
    end
    object cdsModelVariantInvestedValuesMIN_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'MIN_TECH_QUANTITY'
    end
    object cdsModelVariantInvestedValuesMAX_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'MAX_TECH_QUANTITY'
    end
    object cdsModelVariantInvestedValuesAUTHORIZATION_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'AUTHORIZATION_EMPLOYEE_CODE'
    end
    object cdsModelVariantInvestedValuesINVESTED_VALUE_LEVEL: TAbmesFloatField
      FieldName = 'INVESTED_VALUE_LEVEL'
    end
    object cdsModelVariantInvestedValuesFIXED_INVESTED_VALUE: TAbmesFloatField
      FieldName = 'FIXED_INVESTED_VALUE'
    end
    object cdsModelVariantInvestedValuesSINGLE_INVESTED_VALUE: TAbmesFloatField
      FieldName = 'SINGLE_INVESTED_VALUE'
    end
  end
  object cdsMainDepts: TAbmesClientDataSet [71]
    Aggregates = <>
    Params = <>
    Left = 320
    Top = 432
    object cdsMainDeptsSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      OnChange = cdsMainDeptsSPEC_PRODUCT_CODEChange
    end
    object cdsMainDeptsMAIN_DEPT_CODE: TAbmesFloatField
      FieldName = 'MAIN_DEPT_CODE'
    end
    object cdsMainDeptsMAIN_DEPT_NAME: TAbmesWideStringField
      DisplayLabel = #1043#1083#1072#1074#1085#1086' '#1080#1079#1087#1098#1083#1085#1080#1090#1077#1083#1085#1086' '#1058#1055
      FieldName = 'MAIN_DEPT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object cdsMainDeptsMAIN_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'MAIN_DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object cdsMainDeptsMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
    end
    object cdsMainDeptsACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_CODE'
    end
    object cdsMainDeptsACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_COEF'
    end
    object cdsMainDeptsTECH_MEASURE_CODE: TAbmesFloatField
      FieldName = 'TECH_MEASURE_CODE'
    end
    object cdsMainDeptsTECH_MEASURE_COEF: TAbmesFloatField
      FieldName = 'TECH_MEASURE_COEF'
    end
    object cdsMainDeptsTRANSPORT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'TRANSPORT_MEASURE_CODE'
    end
    object cdsMainDeptsTRANSPORT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'TRANSPORT_MEASURE_COEF'
    end
  end
  inherited cdsPrecisionLevels: TAbmesClientDataSet
    inherited cdsPrecisionLevelsPRECISION_LEVEL_CODE: TAbmesFloatField
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object cdsSpecModelVariantProductPeriods: TAbmesClientDataSet
    Aggregates = <>
    DataSetField = cdsSpecModelVariantsqrySMVProductPeriods
    Params = <>
    Left = 136
    Top = 360
    object cdsSpecModelVariantProductPeriodsPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object cdsSpecModelVariantProductPeriodsPRODUCT_PERIOD_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_PERIOD_CODE'
    end
    object cdsSpecModelVariantProductPeriodsBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
    end
    object cdsSpecModelVariantProductPeriodsEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
    end
  end
  object cdsSpecInvestedValuesLevelParams: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 760
    Top = 504
    object cdsSpecInvestedValuesLevelParamsSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
    end
    object cdsSpecInvestedValuesLevelParamsTHE_DATE: TAbmesSQLTimeStampField
      FieldName = 'THE_DATE'
    end
    object cdsSpecInvestedValuesLevelParamsRESULT_PRODUCT_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'RESULT_PRODUCT_TECH_QUANTITY'
      DisplayFormat = ',0.###'
      EditFormat = '0.###'
    end
  end
end
