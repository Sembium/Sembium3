inherited fmStoreRequest: TfmStoreRequest
  Left = 260
  Top = 148
  ActiveControl = cbBranch
  Caption = #1043#1088#1091#1087#1086#1074#1072' '#1047#1072#1103#1074#1082#1072' '#1079#1072' %s '#1085#1072' %ProductClassAbbrev% - %s'
  ClientHeight = 616
  ClientWidth = 993
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMain: TPanel [0]
    Left = 16
    Top = 215
    Width = 761
    Height = 167
    Align = alNone
    Anchors = [akLeft, akBottom]
    BorderWidth = 6
    inherited pnlGrid: TPanel
      Left = 6
      Top = 6
      Width = 749
      Height = 155
      Anchors = [akLeft, akRight]
      inherited pnlNavigator: TPanel
        Width = 749
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
        object tlbDeliveryDoc: TToolBar
          Left = 248
          Top = 0
          Width = 76
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 37
          EdgeInner = esNone
          Images = dmMain.ilDocs
          TabOrder = 3
          object sepDeliveryDoc: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'sepDeliveryDoc'
            ImageIndex = 1
            Style = tbsSeparator
          end
          object lblDeliveryDoc: TLabel
            Left = 8
            Top = 0
            Width = 31
            Height = 24
            Caption = ' '#1054#1055#1044' '
            Layout = tlCenter
          end
          object btnDeliveryDoc: TToolButton
            Left = 39
            Top = 0
            Action = actDeliveryDoc
          end
        end
      end
      inherited pnlDataButtons: TPanel
        Top = 126
        Width = 749
        Height = 29
        object txtStoreDealIdentifier: TDBText [0]
          Left = 392
          Top = 9
          Width = 369
          Height = 17
          Alignment = taRightJustify
          DataField = '_SHOW_STORE_DEAL_IDENTIFIER'
          DataSource = dsGridData
        end
        inherited btnAddData: TBitBtn
          Left = 256
          Top = 24
          TabOrder = 3
        end
        inherited btnDeleteData: TBitBtn
          Left = 220
          Top = 4
          TabOrder = 2
        end
        inherited btnEditData: TBitBtn
          Left = 110
          Top = 4
          TabOrder = 1
        end
        object btnMultiEdit: TBitBtn
          Left = 0
          Top = 4
          Width = 105
          Height = 25
          Action = actMultiEdit
          Caption = #1052#1085'. '#1088#1077#1076#1072#1082#1090'...'
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00000000000000000000000000FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
            FF00000000000000000000000000FFFFFF0000000000FFFFFF00000000000000
            00000000000000000000FFFFFF00FFFFFF00FFFFFF0000000000000000000000
            000000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
            FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
            000000000000000000000000000000000000FFFFFF000000000000000000FFFF
            FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
            FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
            000000000000000000000000000000000000FFFFFF000000000000000000FFFF
            FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
            FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
            000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
            FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF000000000000000000000000000000000000000000FFFF
            FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
            0000FFFFFF00FFFFFF0000000000FFFFFF0000000000FF00FF0000000000FFFF
            FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF000000000000000000FF00FF00FF00FF0000000000FFFF
            FF0000000000FFFFFF0000000000FFFFFF000000000000000000000000000000
            0000000000000000000000000000FF00FF00FF00FF00FF00FF0000000000FFFF
            FF0000000000FFFFFF0000000000000000000000000000000000000000000000
            000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
            FF0000000000000000000000000000000000000000000000000000000000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
            00000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          Spacing = -1
          TabOrder = 0
        end
        object btnPlannedStoreDeal: TBitBtn
          Left = 330
          Top = 4
          Width = 135
          Height = 25
          Action = actPlannedStoreDeal
          Caption = #1055#1083#1072#1085#1086#1074#1086' '#1055'/'#1058
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
          TabOrder = 4
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 749
        Height = 102
        TitleParams.MultiTitle = True
        TitleParams.VTitleMargin = 6
        OnGetCellParams = grdDataGetCellParams
        Columns = <
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'IN_OUT'
            Footers = <>
            Title.Caption = #1042#1080#1076
            Title.Orientation = tohVertical
            Width = 15
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_SHOW_PROCESS'
            Footers = <>
            Title.Caption = #1055#1088#1086#1094#1077#1089#1085#1072' '#1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090'|'#1042#1080#1076
            Width = 88
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PROCESS_OBJECT_IDENTIFIER'
            Footers = <>
            Title.Caption = #1055#1088#1086#1094#1077#1089#1085#1072' '#1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090'|ID'
            Width = 130
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PRIORITY_FULL_NAME'
            Footers = <>
            Title.Caption = #1055#1088'.'
            Title.Orientation = tohVertical
            Width = 16
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PRODUCT_NAME'
            Footers = <>
            Title.Caption = '%ProductClassName%|id '#1083#1086#1075#1080#1095#1077#1089#1082#1080
            Width = 245
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PRODUCT_NO'
            Footers = <>
            Title.Alignment = taRightJustify
            Title.Caption = '%ProductClassName%|id '#1094#1080#1092#1088#1086#1074
            Width = 76
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'STORE_IDENTIFIER'
            Footers = <>
            Width = 47
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PSD_BEGIN_DATE'
            Footers = <>
            Title.Caption = #1053#1072#1095'. '#1076#1072#1090#1072
            Width = 60
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'REQUEST_QUANTITY'
            Footers = <>
            Title.Alignment = taRightJustify
            Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1047#1072#1103#1074#1077#1085#1086
            Width = 80
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'COMPLETED_QUANTITY'
            Footers = <>
            Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1054#1090#1095#1077#1090#1077#1085#1086
            Width = 80
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'MEASURE_ABBREV'
            Footers = <>
            Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1052'.'#1077#1076'.'
            Width = 29
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_PSD_STATUS'
            Footers = <>
            Title.Caption = #1057#1090#1072#1090#1091#1089'|'#1055#1083
            Width = 25
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_SD_STATUS'
            Footers = <>
            Title.Caption = #1057#1090#1072#1090#1091#1089'|'#1054#1090#1095
            Width = 25
          end>
      end
    end
  end
  inherited pnlBottomButtons: TPanel [1]
    Top = 581
    Width = 993
    inherited pnlOKCancel: TPanel
      Left = 725
    end
    inherited pnlClose: TPanel
      Left = 636
    end
    inherited pnlApply: TPanel
      Left = 904
      Visible = False
    end
    object pnlFinishStoreRequest: TPanel
      Left = 0
      Top = 0
      Width = 115
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 3
      object btnFinishStoreRequest: TBitBtn
        Left = 8
        Top = 2
        Width = 105
        Height = 25
        Action = actFinishStoreRequest
        Caption = #1055#1088#1080#1082#1083#1102#1095#1074#1072#1085#1077
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
          000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBD
          BD00BDBDBD000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00000000007B7B7B007B7B7B00BDBDBD007B7B7B00000000007B7B
          7B00BDBDBD007B7B7B007B7B7B0000000000FF00FF00FF00FF00FF00FF00FF00
          FF0000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD007B7B7B00000000007B7B
          7B00BDBDBD00BDBDBD00BDBDBD00BDBDBD0000000000FF00FF00FF00FF00FF00
          FF00000000007B7B7B007B7B7B007B7B7B00BDBDBD00BDBDBD0000000000BDBD
          BD00BDBDBD007B7B7B007B7B7B007B7B7B0000000000FF00FF00FF00FF00FF00
          FF0000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD0000000000000000000000
          0000BDBDBD00BDBDBD00BDBDBD00BDBDBD0000000000FF00FF00FF00FF00FF00
          FF00000000007B7B7B007B7B7B007B7B7B007B7B7B0000000000000000000000
          00007B7B7B007B7B7B007B7B7B007B7B7B0000000000FF00FF00FF00FF00FF00
          FF0000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
          BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD0000000000FF00FF00FF00FF00FF00
          FF00FF00FF000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000BDBDBD0000000000FF00FF00FF00FF00FF00
          FF0000000000BDBDBD0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000BDBDBD0000000000FF00FF00FF00FF00FF00
          FF0000000000BDBDBD0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000BDBDBD0000000000FF00FF00FF00FF00FF00
          FF0000000000BDBDBD0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF007B7B7B007B7B7B00BDBDBD0000000000000000000000
          0000BDBDBD007B7B7B007B7B7B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0000000000BDBDBD00BDBDBD00BDBDBD00BDBD
          BD00BDBDBD0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
          000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        Spacing = -1
        TabOrder = 0
      end
    end
    object pnlAnnulStoreRequest: TPanel
      Left = 115
      Top = 0
      Width = 115
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 4
      object btnAnnulStoreRequest: TBitBtn
        Left = 8
        Top = 2
        Width = 105
        Height = 25
        Action = actAnnulStoreRequest
        Caption = #1040#1085#1091#1083#1080#1088#1072#1085#1077
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF0000000000000000000000000000000000000000000000
          0000000000000000000000000000FFFF0000FFFF0000FFFF0000FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF000000000000000000FFFF
          FF0000FFFF00FFFFFF0000FFFF0000000000FFFF0000FFFF0000FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FFFFFF000000000000FFFF00FFFFFF0000FF
          FF000000000000FFFF00FFFFFF0000FFFF0000000000FFFF0000FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF0000000000000000000000
          000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF000000000000FF
          FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FF00FF00FF00
          FF00FF00FF00000000000000000000000000000000000000000000FFFF00FFFF
          FF0000000000FFFFFF0000FFFF00FFFFFF0000FFFF0000000000000000000000
          000000000000FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFFFF000000
          0000FFFFFF0000FFFF000000000000FFFF00FFFFFF0000000000FFFF00000000
          0000FFFFFF0000FFFF0000000000000000000000000000000000000000000000
          0000000000000000000000FFFF00FFFFFF000000000000000000FFFF00000000
          000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
          FF0000FFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFF00000000
          0000FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
          0000000000000000000000000000FFFFFF00FFFFFF0000000000FFFF00000000
          000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
          FF0000FFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFF00000000
          0000FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
          000000000000FFFFFF0000000000000000000000000000000000FFFF00000000
          000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
          0000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
          0000FF00FF00000000000000000000000000000000000000000000000000FFFF
          FF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000000000000000000000000000000000000000
          0000000000000000000000000000FF00FF00FF00FF00FF00FF00}
        Spacing = -1
        TabOrder = 0
      end
    end
    object pnlBottomButtonsClient: TPanel
      Left = 230
      Top = 0
      Width = 406
      Height = 35
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 5
      object pnlFinishStoreRequestInfo: TPanel
        Left = 0
        Top = 0
        Width = 92
        Height = 35
        Align = alLeft
        BevelOuter = bvNone
        Enabled = False
        TabOrder = 0
        object chbFinished: TCheckBox
          Left = 8
          Top = 8
          Width = 84
          Height = 15
          Caption = #1055#1088#1080#1082#1083#1102#1095#1077#1085#1072
          Checked = True
          State = cbChecked
          TabOrder = 0
        end
      end
      object pnlAnnulStoreRequestInfo: TPanel
        Left = 92
        Top = 0
        Width = 87
        Height = 35
        Align = alLeft
        BevelOuter = bvNone
        Enabled = False
        TabOrder = 1
        object chbAnnuled: TCheckBox
          Left = 8
          Top = 8
          Width = 77
          Height = 17
          Caption = #1040#1085#1091#1083#1080#1088#1072#1085#1072
          Checked = True
          State = cbChecked
          TabOrder = 0
        end
      end
      object pnlReloadCheckBox: TPanel
        Left = 307
        Top = 0
        Width = 99
        Height = 35
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 2
        object chkReload: TCheckBox
          Left = 8
          Top = 8
          Width = 81
          Height = 17
          Caption = #1054#1073#1085#1086#1074#1103#1074#1072#1085#1077
          Checked = True
          State = cbChecked
          TabOrder = 0
        end
      end
    end
  end
  object pnlTop: TPanel [2]
    Left = 0
    Top = 0
    Width = 993
    Height = 122
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    DesignSize = (
      993
      122)
    object bvlMain: TBevel
      Left = 8
      Top = 8
      Width = 977
      Height = 57
      Anchors = [akLeft, akTop, akRight]
      Shape = bsFrame
    end
    object lblBranch: TLabel
      Left = 16
      Top = 16
      Width = 33
      Height = 13
      Caption = #1058#1055' '#1043#1083'.'
      FocusControl = cbBranch
    end
    object lblRequestNo: TLabel
      Left = 72
      Top = 16
      Width = 14
      Height = 13
      Caption = 'No'
      FocusControl = edtRequestNo
    end
    object lblEmployee: TLabel
      Left = 568
      Top = 16
      Width = 128
      Height = 13
      Caption = #1055#1086#1080#1089#1082#1072#1083' '#1043#1088#1091#1087#1086#1074#1072' '#1047#1072#1103#1074#1082#1072
      FocusControl = frRequestEmployee
    end
    object lblBoundObject: TLabel
      Left = 128
      Top = 16
      Width = 55
      Height = 13
      Caption = #1055#1088#1086#1094'. '#1054#1073#1074'.'
      FocusControl = edtBoundObject
    end
    object lblRequestDept: TLabel
      Left = 208
      Top = 16
      Width = 76
      Height = 13
      Caption = #1047#1072#1103#1074#1103#1074#1072#1097#1086' '#1058#1055
      FocusControl = frRequestDept
    end
    object lblRequestDateInterval: TLabel
      Left = 832
      Top = 16
      Width = 112
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1042#1072#1083#1080#1076#1085#1086#1089#1090
      FocusControl = frRequestDateInterval
    end
    object pnlFinancial: TPanel
      Left = 8
      Top = 72
      Width = 977
      Height = 49
      Anchors = [akLeft, akTop, akRight]
      BevelOuter = bvNone
      TabOrder = 6
      inline frPartner: TfrPartnerFieldEditFrame
        Left = 0
        Top = 0
        Width = 485
        Height = 49
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        Constraints.MaxHeight = 49
        Constraints.MinHeight = 49
        TabOrder = 0
        inherited gbPartner: TGroupBox
          Width = 485
          inherited pnlNameAndButtons: TPanel
            Width = 396
            inherited pnlRightButtons: TPanel
              Left = 360
              inherited tlbDocButton: TToolBar
                Height = 32
              end
            end
            inherited pnlPartnerName: TPanel
              Width = 360
              inherited edtPartnerName: TDBEdit
                Width = 361
              end
              inherited cbPartner: TJvDBLookupCombo
                Width = 361
              end
            end
          end
          inherited pnlPaddingRight: TPanel
            Left = 477
          end
        end
      end
      object gbPartnerAccount: TGroupBox
        Left = 492
        Top = 0
        Width = 485
        Height = 49
        Caption = ' '#1058#1055' - '#1060#1080#1085#1072#1085#1089#1086#1074#1086' '
        TabOrder = 1
        DesignSize = (
          485
          49)
        object cbPartnerAccount: TJvDBLookupCombo
          Left = 8
          Top = 16
          Width = 469
          Height = 21
          DataField = 'PARTNER_ACCOUNT_CODE'
          DataSource = dsData
          Anchors = [akLeft, akTop, akRight]
          LookupField = 'ACCOUNT_CODE'
          LookupDisplay = 'ACCOUNT_FULL_NAME'
          LookupSource = dsPartnerAccounts
          TabOrder = 0
        end
      end
    end
    object edtRequestNo: TDBEdit
      Left = 72
      Top = 32
      Width = 49
      Height = 21
      TabStop = False
      Color = clBtnFace
      DataField = 'STORE_REQUEST_CODE'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 1
    end
    object edtBoundObject: TDBEdit
      Left = 128
      Top = 32
      Width = 73
      Height = 21
      TabStop = False
      Color = clBtnFace
      DataField = '_BND_OBJECT'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 2
    end
    object cbBranch: TJvDBLookupCombo
      Left = 16
      Top = 32
      Width = 57
      Height = 21
      DropDownWidth = 200
      DeleteKeyClear = False
      DataField = '_STORE_REQUEST_BRANCH_IDENTIFIER'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 0
    end
    inline frRequestDept: TfrDeptFieldEditFrameBald
      Left = 208
      Top = 32
      Width = 353
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 3
      TabStop = True
      DesignSize = (
        353
        22)
      inherited gbTreeNode: TGroupBox
        Width = 369
        DesignSize = (
          369
          49)
        inherited pnlTreeNode: TPanel
          Width = 353
          inherited pnlTreeNodeName: TPanel
            Width = 206
            DesignSize = (
              206
              22)
            inherited edtTreeNodeName: TDBEdit
              Width = 205
            end
          end
          inherited pnlTreeNodeNo: TPanel
            Left = 206
          end
          inherited pnlRightButtons: TPanel
            Left = 317
          end
        end
      end
    end
    inline frRequestDateInterval: TfrDateIntervalFrame
      Left = 832
      Top = 32
      Width = 145
      Height = 21
      Anchors = [akTop, akRight]
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 145
      Constraints.MinHeight = 21
      Constraints.MinWidth = 145
      TabOrder = 5
      TabStop = True
    end
    inline frRequestEmployee: TfrEmployeeFieldEditFrameBald
      Left = 568
      Top = 32
      Width = 257
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 4
      TabStop = True
      DesignSize = (
        257
        22)
      inherited gbEmployee: TGroupBox
        Width = 276
        inherited pnlEmployeeName: TPanel
          Width = 201
          inherited pnlRightButtons: TPanel
            Left = 165
          end
          inherited pnlEmpoyeeNameInner: TPanel
            Width = 165
            DesignSize = (
              165
              32)
            inherited edtEmployeeName: TDBEdit
              Width = 119
            end
            inherited cbEmployee: TJvDBLookupCombo
              Width = 164
            end
          end
        end
        inherited pnlPaddingRight: TPanel
          Left = 266
        end
      end
    end
  end
  object pnlClient: TPanel [3]
    Left = 0
    Top = 122
    Width = 993
    Height = 459
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 8
    TabOrder = 3
    object sptClient: TSplitter
      Left = 8
      Top = 222
      Width = 977
      Height = 8
      Cursor = crVSplit
      Align = alTop
    end
    object gbMain: TGroupBox
      Left = 8
      Top = 8
      Width = 977
      Height = 214
      Align = alTop
      TabOrder = 0
    end
    object gbTotals: TGroupBox
      Left = 8
      Top = 230
      Width = 977
      Height = 221
      Align = alClient
      Caption = ' '#1054#1073#1097#1086' '
      TabOrder = 1
      object pnlTotals: TPanel
        Left = 2
        Top = 15
        Width = 973
        Height = 204
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 6
        TabOrder = 0
        object pnlTotalsNavigator: TPanel
          Left = 6
          Top = 6
          Width = 961
          Height = 24
          Align = alTop
          BevelOuter = bvNone
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          object navTotals: TDBColorNavigator
            Left = 0
            Top = 0
            Width = 120
            Height = 24
            DataSource = dsTotals
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbEdit]
            Align = alLeft
            Flat = True
            TabOrder = 1
            BeforeAction = navTotalsBeforeAction
          end
          object pnlOtherEmployee: TPanel
            Left = 314
            Top = 0
            Width = 379
            Height = 24
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 2
            object lblOtherEmployee: TLabel
              Left = 0
              Top = 3
              Width = 64
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = #1055#1054#1051
            end
            inline frOtherEmployee: TfrEmployeeFieldEditFrameBald
              Left = 70
              Top = 0
              Width = 293
              Height = 22
              HorzScrollBar.Visible = False
              VertScrollBar.Visible = False
              Constraints.MaxHeight = 22
              Constraints.MinHeight = 22
              TabOrder = 0
            end
          end
          object tbSpeed: TToolBar
            Left = 907
            Top = 0
            Width = 54
            Height = 24
            Align = alRight
            AutoSize = True
            ButtonHeight = 24
            ButtonWidth = 28
            Caption = 'tbQuantity'
            EdgeInner = esNone
            EdgeOuter = esNone
            TabOrder = 4
            object sbtnWorkMeasure: TSpeedButton
              Left = 0
              Top = 0
              Width = 27
              Height = 24
              Hint = #1056#1072#1073#1086#1090#1085#1080' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1072'/'#1084'.'#1077#1076'.'
              GroupIndex = 1
              Down = True
              Flat = True
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                1800000000000003000000000000000000000000000000000000FF00FFFF00FF
                FF00FFFF00FFFF00FF000000FFFFFFFFFFFF000000FF00FFFF00FF0000FF0000
                800000FFFF00FF000000FF00FF7F7F7F000000000000000000FFFFFFFFFFFF00
                0000FF00FFFF00FFFF00FF0000FF0000800000FF0000000080807F7F7F000000
                FFFFFFFFFFFFFFFFFFFFFFFF000000FF00FFFF00FFFF00FFFF00FF0000FF0000
                800000FF008080008080000000FFFFFF000000000000FFFFFFFFFFFF000000FF
                00FFFF00FFFF00FFFF00FF0000FF0000800000FF008080008080000000000000
                FF00FFFF00FF000000FFFFFF000000FF00FFFF00FFFF00FFFF00FF0000FF0000
                800000FF008080FF00FF0000007F7F7FFF00FFFF00FF000000FFFFFF000000FF
                00FFFF00FFFF00FF0000FF0000FF0000FF0000FF0000FFFF00FFFF00FFFF00FF
                7F7F7F000000FFFFFF0000007F7F7FFF00FFFF00FF0000000000800000800000
                80000080000080FF00FFFF00FFFF00FF0000000000000000007F7F7FFF00FFFF
                00FF000000008080008080008080000000FF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FF000000008080008080008080FF00FF0000
                00FF00FFFF00FFFF00FFFF00FFFF00FF000000000000FF00FFFF00FF00000000
                8080008080008080FF00FFFF00FF000000FF00FFFF00FFFF00FFFF00FF000000
                FF00FF000000FF00FF000000008080008080008080FF00FFFF00FFFF00FF0000
                00FF00FFFF00FFFF00FF000000FF00FF00000000000000000000808000808000
                8080FF00FFFF00FFFF00FFFF00FF000000FF00FFFF00FFFF00FF000000000000
                000000000000000000000000008080FF00FFFF00FFFF00FFFF00FF7F7F7F0000
                007F7F7FFF00FFFF00FFFF00FFFF00FF000000000000000000000000000000FF
                00FFFF00FFFF00FFFF00FF7F7F7F0000007F7F7FFF00FFFF00FFFF00FFFF00FF
                0080800000000000000000000000007F7F7FFF00FFFF00FFFF00FF7F7F7F0000
                007F7F7FFF00FFFF00FFFF00FFFF00FF008080008080FF00FF00000000000000
                0000000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
              ParentShowHint = False
              ShowHint = True
              Transparent = False
              OnClick = SetupVisibleTotalsColumns
            end
            object sbtnAccountMeasure: TSpeedButton
              Left = 27
              Top = 0
              Width = 27
              Height = 24
              Hint = #1057#1095#1077#1090#1086#1074#1086#1076#1085#1080' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1072'/'#1084'.'#1077#1076'.'
              GroupIndex = 1
              Flat = True
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                1800000000000003000000000000000000000000000000000000FF00FFFF00FF
                FF00FF7F7F7F7F7F7FFF00FF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FFF00
                FF7F7F7F7F7F7F000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FF0000000000000000007F7F7FFF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000BFBF
                BF7F7F7F0000007F7F7FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FF000000BFBFBFBFBFBFBFBFBF000000FF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000008080008080BFBF
                BF000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FF00000000808000808000FFFF000000FF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FF00000000808000808000FFFF000000FF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000
                808000808000FFFF000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FF00000000808000808000FFFF000000FF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000808000808000
                FFFF000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FF00000000808000808000FFFF000000FF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000808000000000FFFF000000FF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000
                00000000000000FFFF000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FF0000000000800000FF000000000000FF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000000000FF
                0000FF000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FF000000000000FF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
              ParentShowHint = False
              ShowHint = True
              Transparent = False
              OnClick = SetupVisibleTotalsColumns
            end
          end
          object pnlSetAllCompletedQuantityButton: TPanel
            Left = 693
            Top = 0
            Width = 214
            Height = 24
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 3
            object btnSetAllCompletedQuantity: TSpeedButton
              Left = 4
              Top = 5
              Width = 83
              Height = 19
              Action = actSetAllCompletedQuantity
              Flat = True
              Layout = blGlyphTop
            end
          end
          object pnlStoreDealDate: TPanel
            Left = 127
            Top = 0
            Width = 187
            Height = 24
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 0
            object lblStoreDealDate: TLabel
              Left = 0
              Top = 3
              Width = 67
              Height = 13
              Caption = #1054#1090#1095#1077#1090#1085#1072' '#1076#1072#1090#1072
              FocusControl = frStoreDealDate
            end
            inline frStoreDealDate: TfrDateFieldEditFrame
              Left = 78
              Top = 0
              Width = 105
              Height = 21
              Constraints.MaxHeight = 21
              Constraints.MaxWidth = 105
              Constraints.MinHeight = 21
              Constraints.MinWidth = 105
              TabOrder = 0
            end
          end
          object tlbTotals: TToolBar
            Left = 120
            Top = 0
            Width = 57
            Height = 24
            Align = alLeft
            ButtonHeight = 24
            Caption = 'tlbTotals'
            Images = dmMain.ilActions
            TabOrder = 5
            object sepExcelExportTotals: TToolButton
              Left = 0
              Top = 0
              Width = 8
              Caption = 'sepExcelExportTotals'
              Style = tbsSeparator
            end
            object btnExcelExportTotals: TToolButton
              Left = 8
              Top = 0
              Action = actExcelExportTotals
            end
            object btnPrintTotals: TToolButton
              Left = 31
              Top = 0
              Action = actPrintTotals
            end
          end
        end
        object pnlTotalsGrid: TPanel
          Left = 6
          Top = 30
          Width = 961
          Height = 168
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object grdTotals: TAbmesDBGrid
            Left = 0
            Top = 0
            Width = 961
            Height = 132
            Align = alClient
            DataSource = dsTotals
            DynProps = <>
            FooterParams.Color = clWindow
            HorzScrollBar.VisibleMode = sbNeverShowEh
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghExtendVertLines]
            ReadOnly = True
            TabOrder = 0
            TitleParams.MultiTitle = True
            TitleParams.VTitleMargin = 6
            OnDblClick = grdTotalsDblClick
            OnDrawColumnCell = grdTotalsDrawColumnCell
            OnGetCellParams = grdTotalsGetCellParams
            Columns = <
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = '_IDENTIFIER'
                Footers = <>
                Title.Caption = #1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088
                Visible = False
                Width = 100
              end
              item
                Alignment = taCenter
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'IN_OUT'
                Footers = <>
                Title.Caption = #1042#1080#1076
                Title.Orientation = tohVertical
                Width = 15
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'STORE_IDENTIFIER'
                Footers = <>
                Width = 57
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PRODUCT_NAME'
                Footers = <>
                Title.Caption = '%ProductClassName%|id '#1083#1086#1075#1080#1095#1077#1089#1082#1080
                Width = 371
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PRODUCT_NO'
                Footers = <>
                Title.Alignment = taRightJustify
                Title.Caption = '%ProductClassName%|id '#1094#1080#1092#1088#1086#1074
                Width = 96
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'MAX_BEGIN_DATE'
                Footers = <>
                Title.Caption = #1053#1072#1095'. '#1076#1072#1090#1072
                Width = 60
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'REQUEST_QUANTITY'
                Footers = <>
                Title.Alignment = taRightJustify
                Title.Caption = #1056#1072#1073#1086#1090#1085#1086' '#1082'-'#1074#1086'|'#1047#1072#1103#1074#1077#1085#1086
                Width = 80
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'COMPLETED_QUANTITY'
                Footers = <>
                Title.Alignment = taRightJustify
                Title.Caption = #1056#1072#1073#1086#1090#1085#1086' '#1082'-'#1074#1086'|'#1054#1090#1095#1077#1090#1077#1085#1086
                Width = 80
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'MEASURE_ABBREV'
                Footers = <>
                Title.Caption = #1056#1072#1073#1086#1090#1085#1086' '#1082'-'#1074#1086'|'#1052'.'#1077#1076'.'
                Width = 29
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = '_REQUESTED_ACCOUNT_QUANTITY'
                Footers = <>
                Title.Caption = #1057#1095#1077#1090#1086#1074#1086#1076#1085#1086' '#1082'-'#1074#1086'|'#1047#1072#1103#1074#1077#1085#1086
                Visible = False
                Width = 80
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'COMPLETED_ACCOUNT_QUANTITY'
                Footers = <>
                Title.Caption = #1057#1095#1077#1090#1086#1074#1086#1076#1085#1086' '#1082'-'#1074#1086'|'#1054#1090#1095#1077#1090#1077#1085#1086
                Visible = False
                Width = 80
              end
              item
                Alignment = taCenter
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'ACCOUNT_MEASURE_ABBREV'
                Footers = <>
                Title.Caption = #1057#1095#1077#1090#1086#1074#1086#1076#1085#1086' '#1082'-'#1074#1086'|'#1052'.'#1077#1076'.'
                Visible = False
                Width = 29
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'TOTAL_PRICE'
                Footers = <>
                Title.Alignment = taRightJustify
                Title.Caption = #1054#1073#1097#1072' '#1089#1090#1086#1081#1085#1086#1089#1090
                Title.Hint = #1054#1073#1097#1072' '#1094#1077#1085#1072
                Width = 80
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'REQUEST_ITEMS_COUNT'
                Footers = <>
                Title.Caption = #1041#1088'. '#1088#1077#1076#1086#1074#1077
                Width = 51
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
          object pnlInvoiceData: TPanel
            Left = 0
            Top = 132
            Width = 961
            Height = 36
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 1
            object lblCurrency: TLabel
              Left = 888
              Top = 1
              Width = 35
              Height = 13
              Caption = #1042#1072#1083#1091#1090#1072
              FocusControl = cbCurrency
            end
            object cbCurrency: TJvDBLookupCombo
              Left = 888
              Top = 15
              Width = 73
              Height = 21
              DeleteKeyClear = False
              LookupField = 'CURRENCY_CODE'
              LookupDisplay = 'CURRENCY_ABBREV'
              LookupSource = dsCurrencies
              TabOrder = 1
              OnChange = cbCurrencyChange
            end
            object pnlInvoiceControls: TPanel
              Left = 0
              Top = 0
              Width = 688
              Height = 36
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object lblVendorName: TLabel
                Left = 0
                Top = 1
                Width = 55
                Height = 13
                Caption = #1044#1086#1089#1090#1072#1074#1095#1080#1082
                FocusControl = edtVendorName
              end
              object lblInvoiceNo: TLabel
                Left = 384
                Top = 1
                Width = 59
                Height = 13
                Caption = #1060#1072#1082#1090#1091#1088#1072' '#8470
                FocusControl = edtInvoiceNo
              end
              object lblInvoiceDate: TLabel
                Left = 528
                Top = 1
                Width = 86
                Height = 13
                Caption = #1044#1072#1090#1072' '#1085#1072' '#1092#1072#1082#1090#1091#1088#1072
                FocusControl = edtInvoiceDate
              end
              object edtVendorName: TEdit
                Left = 0
                Top = 15
                Width = 313
                Height = 21
                Color = clBtnFace
                ReadOnly = True
                TabOrder = 0
              end
              object edtInvoiceNo: TEdit
                Left = 384
                Top = 15
                Width = 97
                Height = 21
                Color = clBtnFace
                ReadOnly = True
                TabOrder = 1
              end
              object edtInvoiceDate: TEdit
                Left = 528
                Top = 15
                Width = 89
                Height = 21
                Color = clBtnFace
                MaxLength = 10
                ReadOnly = True
                TabOrder = 2
              end
              object edtInvoiceAbbrev: TEdit
                Left = 480
                Top = 15
                Width = 33
                Height = 21
                Color = clBtnFace
                ReadOnly = True
                TabOrder = 3
              end
            end
          end
        end
      end
    end
  end
  inherited dsGridData: TDataSource
    Top = 168
  end
  inherited cdsGridData: TAbmesClientDataSet
    DataSetField = cdsDataqryStoreRequestItems
    FieldDefs = <
      item
        Name = 'STORE_REQUEST_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'STORE_REQUEST_CODE'
        DataType = ftFloat
      end
      item
        Name = 'STORE_REQUEST_ITEM_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PLANNED_STORE_DEAL_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PLANNED_STORE_DEAL_CODE'
        DataType = ftFloat
      end
      item
        Name = 'REQUEST_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'COMPLETED_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'COMPLETED_ACCOUNT_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'STORE_DEAL_OBJECT_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'STORE_DEAL_OBJECT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'BND_PROCESS_ABBREV'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'PROCESS_OBJECT_IDENTIFIER'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'PRIORITY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRIORITY_NO'
        DataType = ftFloat
      end
      item
        Name = 'PRIORITY_FULL_NAME'
        DataType = ftWideString
        Size = 94
      end
      item
        Name = 'BND_PROCESS_OBJECT_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'BND_PROCESS_OBJECT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'BND_PROCESS_CODE'
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
        Name = 'MEASURE_ABBREV'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'ACCOUNT_MEASURE_ABBREV'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'ACCOUNT_MEASURE_COEF'
        DataType = ftFloat
      end
      item
        Name = 'STORE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'OTHER_EMPLOYEE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'ACCOUNT_COEF'
        DataType = ftFloat
      end
      item
        Name = 'SINGLE_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'CURRENCY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'HAS_OLD_COMPLETED_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'ANNULED_PSD'
        DataType = ftFloat
      end
      item
        Name = 'CLOSED_PSD'
        DataType = ftFloat
      end
      item
        Name = 'STORE_DEAL_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'STORE_DEAL_NO'
        DataType = ftFloat
      end
      item
        Name = 'STORE_DEAL_ACCOUNT_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'STORE_DEAL_TOTAL_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'STORE_DEAL_BASE_TOTAL_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'STORE_DEAL_CURRENCY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'STORE_DEAL_CURRENCY_ABBREV'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'STORE_DEAL_STORE_EMPLOYEE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'STORE_DEAL_STORNED'
        DataType = ftFloat
      end
      item
        Name = 'STORE_DEAL_IDENTIFIER'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'STORE_DEAL_VENDOR_COMPANY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'STORE_DEAL_VENDOR_COMPANY_NAME'
        DataType = ftWideString
        Size = 153
      end
      item
        Name = 'STORE_DEAL_INVOICE_NO'
        DataType = ftFloat
      end
      item
        Name = 'STORE_DEAL_INVOICE_ABBREV'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'STORE_DEAL_INVOICE_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'SD_ML_MAIN_DEPT_IDENTIFIER'
        DataType = ftWideString
        Size = 46
      end
      item
        Name = 'PSD_BEGIN_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'PSD_END_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'IS_BOUND_TO_DELIVERY'
        DataType = ftFloat
      end
      item
        Name = 'STORE_IDENTIFIER'
        DataType = ftWideString
        Size = 46
      end
      item
        Name = 'PSD_DEPT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'OTHER_EMPLOYEE_NO'
        DataType = ftFloat
      end
      item
        Name = 'STORE_DEAL_STORE_EMPLOYEE_NO'
        DataType = ftFloat
      end
      item
        Name = 'IN_OUT'
        DataType = ftFloat
      end
      item
        Name = 'BND_PO_PROD_ORDER_TYPE_ABBREV'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'BND_BOIO_BO_PROD_CUSTOM_CODE'
        DataType = ftFloat
      end
      item
        Name = 'BND_BOIO_BO_PRODUCT_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'ROOT_SALE_PRODUCT_IF_FOR_PROJ'
        DataType = ftWideString
        Size = 144
      end
      item
        Name = 'BND_BOIO_CONSUMER_DEPT_ID'
        DataType = ftWideString
        Size = 46
      end
      item
        Name = 'IS_PSD_BOUND_TO_MODEL'
        DataType = ftFloat
      end
      item
        Name = 'PSD_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'PSD_REMAINING_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'DELIVERY_DOC_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DELIVERY_DOC_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DELIVERY_HAS_DOC_ITEMS'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'idxDefault'
        Fields = 
          'BND_PROCESS_ABBREV; PROCESS_OBJECT_IDENTIFIER; STORE_CODE; PRODU' +
          'CT_CODE'
      end
      item
        Name = 'idxStoreProduct'
        Fields = 'STORE_CODE; PRODUCT_CODE'
        GroupingLevel = 2
      end>
    IndexName = 'idxDefault'
    BeforePost = cdsGridDataBeforePost
    AfterScroll = cdsGridDataAfterScroll
    OnCalcFields = cdsGridDataCalcFields
    OnFilterRecord = cdsGridDataFilterRecord
    OnNewRecord = cdsGridDataNewRecord
    Top = 168
    object cdsGridDataSTORE_REQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'STORE_REQUEST_BRANCH_CODE'
      Required = True
    end
    object cdsGridDataSTORE_REQUEST_CODE: TAbmesFloatField
      FieldName = 'STORE_REQUEST_CODE'
      Required = True
    end
    object cdsGridDataSTORE_REQUEST_ITEM_CODE: TAbmesFloatField
      FieldName = 'STORE_REQUEST_ITEM_CODE'
      Required = True
    end
    object cdsGridDataPLANNED_STORE_DEAL_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PLANNED_STORE_DEAL_BRANCH_CODE'
    end
    object cdsGridDataPLANNED_STORE_DEAL_CODE: TAbmesFloatField
      FieldName = 'PLANNED_STORE_DEAL_CODE'
    end
    object cdsGridDataREQUEST_QUANTITY: TAbmesFloatField
      DisplayLabel = #1047#1072#1103#1074#1077#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'REQUEST_QUANTITY'
      Required = True
      DisplayFormat = ',0.######'
    end
    object cdsGridDataCOMPLETED_QUANTITY: TAbmesFloatField
      DisplayLabel = #1054#1090#1095#1077#1090#1077#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'COMPLETED_QUANTITY'
      OnChange = cdsGridDataCOMPLETED_QUANTITYChange
      DisplayFormat = ',0.######'
    end
    object cdsGridDataCOMPLETED_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'COMPLETED_ACCOUNT_QUANTITY'
      ProviderFlags = [pfInUpdate]
    end
    object cdsGridDataTOTAL_PRICE: TAbmesFloatField
      DisplayLabel = #1062#1077#1085#1072
      FieldName = 'TOTAL_PRICE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',0.00'
    end
    object cdsGridDataSTORE_DEAL_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'STORE_DEAL_OBJECT_BRANCH_CODE'
    end
    object cdsGridDataSTORE_DEAL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'STORE_DEAL_OBJECT_CODE'
    end
    object cdsGridDataBND_PROCESS_ABBREV: TAbmesWideStringField
      FieldName = 'BND_PROCESS_ABBREV'
      Size = 100
    end
    object cdsGridDataPROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField
      DisplayLabel = #1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090
      FieldName = 'PROCESS_OBJECT_IDENTIFIER'
      Size = 235
    end
    object cdsGridDataPRIORITY_CODE: TAbmesFloatField
      FieldName = 'PRIORITY_CODE'
    end
    object cdsGridDataPRIORITY_NO: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'PRIORITY_NO'
    end
    object cdsGridDataPRIORITY_FULL_NAME: TAbmesWideStringField
      FieldName = 'PRIORITY_FULL_NAME'
      Size = 94
    end
    object cdsGridDataBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_BRANCH_CODE'
    end
    object cdsGridDataBND_PROCESS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_CODE'
    end
    object cdsGridDataBND_PROCESS_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_CODE'
      ProviderFlags = [pfInWhere]
    end
    object cdsGridDataPRODUCT_CODE: TAbmesFloatField
      DisplayLabel = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
      FieldName = 'PRODUCT_CODE'
    end
    object cdsGridDataPRODUCT_NAME: TAbmesWideStringField
      DisplayLabel = 'id '#1083#1086#1075#1080#1095#1077#1089#1082#1080
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object cdsGridDataPRODUCT_NO: TAbmesFloatField
      DisplayLabel = 'id '#1094#1080#1092#1088#1086#1074
      FieldName = 'PRODUCT_NO'
    end
    object cdsGridDataMEASURE_ABBREV: TAbmesWideStringField
      Alignment = taCenter
      DisplayLabel = #1052'.'#1077#1076'.'
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object cdsGridDataACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      ProviderFlags = []
      Size = 5
    end
    object cdsGridDataACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_COEF'
      ProviderFlags = []
    end
    object cdsGridDataSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
      OnChange = cdsGridDataSTORE_CODEChange
    end
    object cdsGridDataSTORE_IDENTIFIER: TAbmesWideStringField
      DisplayLabel = #1058#1055' '#1047#1072#1076'.'
      FieldName = 'STORE_IDENTIFIER'
      Size = 46
    end
    object cdsGridDataOTHER_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'OTHER_EMPLOYEE_CODE'
    end
    object cdsGridDataSINGLE_PRICE: TAbmesFloatField
      FieldName = 'SINGLE_PRICE'
      ProviderFlags = [pfInWhere]
    end
    object cdsGridDataACCOUNT_COEF: TAbmesFloatField
      FieldName = 'ACCOUNT_COEF'
      ProviderFlags = [pfInWhere]
    end
    object cdsGridDataCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
    end
    object cdsGridDataHAS_OLD_COMPLETED_QUANTITY: TAbmesFloatField
      FieldName = 'HAS_OLD_COMPLETED_QUANTITY'
    end
    object cdsGridDataANNULED_PSD: TAbmesFloatField
      FieldName = 'ANNULED_PSD'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataCLOSED_PSD: TAbmesFloatField
      FieldName = 'CLOSED_PSD'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataSTORE_DEAL_NO: TAbmesFloatField
      FieldName = 'STORE_DEAL_NO'
    end
    object cdsGridDataSTORE_DEAL_DATE: TAbmesSQLTimeStampField
      FieldName = 'STORE_DEAL_DATE'
    end
    object cdsGridDataSTORE_DEAL_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'STORE_DEAL_ACCOUNT_QUANTITY'
      ProviderFlags = []
      DisplayFormat = ',0.######'
    end
    object cdsGridDataSTORE_DEAL_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'STORE_DEAL_CURRENCY_CODE'
    end
    object cdsGridDataSTORE_DEAL_CURRENCY_ABBREV: TAbmesWideStringField
      FieldName = 'STORE_DEAL_CURRENCY_ABBREV'
      Size = 5
    end
    object cdsGridDataSTORE_DEAL_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'STORE_DEAL_TOTAL_PRICE'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataSTORE_DEAL_BASE_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'STORE_DEAL_BASE_TOTAL_PRICE'
      ProviderFlags = []
      DisplayFormat = ',0.00'
    end
    object cdsGridDataSTORE_DEAL_STORE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'STORE_DEAL_STORE_EMPLOYEE_CODE'
    end
    object cdsGridDataSTORE_DEAL_STORNED: TAbmesFloatField
      FieldName = 'STORE_DEAL_STORNED'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataSTORE_DEAL_IDENTIFIER: TAbmesWideStringField
      FieldName = 'STORE_DEAL_IDENTIFIER'
      ProviderFlags = [pfInWhere]
      Size = 50
    end
    object cdsGridDataSD_ML_MAIN_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'SD_ML_MAIN_DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object cdsGridDataSTORE_DEAL_VENDOR_COMPANY_CODE: TAbmesFloatField
      FieldName = 'STORE_DEAL_VENDOR_COMPANY_CODE'
      OnChange = cdsGridDataSTORE_DEAL_VENDOR_COMPANY_CODEChange
    end
    object cdsGridDataSTORE_DEAL_VENDOR_COMPANY_NAME: TAbmesWideStringField
      FieldName = 'STORE_DEAL_VENDOR_COMPANY_NAME'
      ProviderFlags = []
      Size = 153
    end
    object cdsGridDataSTORE_DEAL_INVOICE_NO: TAbmesFloatField
      FieldName = 'STORE_DEAL_INVOICE_NO'
      DisplayFormat = '0000000000'
    end
    object cdsGridDataSTORE_DEAL_INVOICE_ABBREV: TAbmesWideStringField
      FieldName = 'STORE_DEAL_INVOICE_ABBREV'
      Size = 5
    end
    object cdsGridDataSTORE_DEAL_INVOICE_DATE: TAbmesSQLTimeStampField
      FieldName = 'STORE_DEAL_INVOICE_DATE'
    end
    object cdsGridDataPSD_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'PSD_BEGIN_DATE'
    end
    object cdsGridDataPSD_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'PSD_END_DATE'
    end
    object cdsGridDataIS_BOUND_TO_DELIVERY: TAbmesFloatField
      FieldName = 'IS_BOUND_TO_DELIVERY'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object cdsGridData_SHOW_PROCESS: TAbmesWideStringField
      DisplayLabel = #1055#1088#1086#1094#1077#1089
      FieldKind = fkCalculated
      FieldName = '_SHOW_PROCESS'
      Size = 10
      Calculated = True
    end
    object cdsGridData_HAS_COMPLETED_QUANTITY: TBooleanField
      FieldKind = fkCalculated
      FieldName = '_HAS_COMPLETED_QUANTITY'
      Calculated = True
    end
    object cdsGridData_INVALID_PSD: TBooleanField
      FieldKind = fkCalculated
      FieldName = '_INVALID_PSD'
      Calculated = True
    end
    object cdsGridData_PSD_STATUS: TAbmesWideStringField
      DisplayLabel = #1057#1090'.'
      FieldKind = fkCalculated
      FieldName = '_PSD_STATUS'
      Size = 50
      Calculated = True
    end
    object cdsGridData_PRINT_BINDING: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_PRINT_BINDING'
      Size = 200
      Calculated = True
    end
    object cdsGridData_OTHER_EMPLOYEE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_OTHER_EMPLOYEE_NAME'
      LookupDataSet = cdsEmployees
      LookupKeyFields = 'EMPLOYEE_CODE'
      LookupResultField = 'EMPLOYEE_NAME'
      KeyFields = 'OTHER_EMPLOYEE_CODE'
      Size = 70
      Lookup = True
    end
    object cdsGridData_STORE_DEAL_STORE_EMPLOYEE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_STORE_DEAL_STORE_EMPLOYEE_NAME'
      LookupDataSet = cdsEmployees
      LookupKeyFields = 'EMPLOYEE_CODE'
      LookupResultField = 'EMPLOYEE_NAME'
      KeyFields = 'STORE_DEAL_STORE_EMPLOYEE_CODE'
      Size = 70
      Lookup = True
    end
    object cdsGridData_SHOW_STORE_DEAL_IDENTIFIER: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_SHOW_STORE_DEAL_IDENTIFIER'
      Size = 100
      Calculated = True
    end
    object cdsGridData_SD_STATUS: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_SD_STATUS'
      Size = 50
      Calculated = True
    end
    object cdsGridDataPSD_DEPT_CODE: TAbmesFloatField
      FieldName = 'PSD_DEPT_CODE'
    end
    object cdsGridData_PRIORITY_COLOR: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_PRIORITY_COLOR'
      LookupDataSet = cdsPriorities
      LookupKeyFields = 'PRIORITY_CODE'
      LookupResultField = 'PRIORITY_COLOR'
      KeyFields = 'PRIORITY_CODE'
      Lookup = True
    end
    object cdsGridData_PRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_PRIORITY_BACKGROUND_COLOR'
      LookupDataSet = cdsPriorities
      LookupKeyFields = 'PRIORITY_CODE'
      LookupResultField = 'PRIORITY_BACKGROUND_COLOR'
      KeyFields = 'PRIORITY_CODE'
      Lookup = True
    end
    object cdsGridDataOTHER_EMPLOYEE_NO: TAbmesFloatField
      FieldName = 'OTHER_EMPLOYEE_NO'
    end
    object cdsGridDataSTORE_DEAL_STORE_EMPLOYEE_NO: TAbmesFloatField
      FieldName = 'STORE_DEAL_STORE_EMPLOYEE_NO'
    end
    object cdsGridDataIN_OUT: TAbmesFloatField
      FieldName = 'IN_OUT'
      OnGetText = cdsGridDataIN_OUTGetText
    end
    object cdsGridDataBND_PO_PROD_ORDER_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'BND_PO_PROD_ORDER_TYPE_ABBREV'
      Size = 100
    end
    object cdsGridDataBND_BOIO_BO_PROD_CUSTOM_CODE: TAbmesFloatField
      FieldName = 'BND_BOIO_BO_PROD_CUSTOM_CODE'
    end
    object cdsGridDataBND_BOIO_BO_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'BND_BOIO_BO_PRODUCT_NAME'
      Size = 100
    end
    object cdsGridDataROOT_SALE_PRODUCT_IF_FOR_PROJ: TAbmesWideStringField
      FieldName = 'ROOT_SALE_PRODUCT_IF_FOR_PROJ'
      Size = 144
    end
    object cdsGridDataBND_BOIO_CONSUMER_DEPT_ID: TAbmesWideStringField
      FieldName = 'BND_BOIO_CONSUMER_DEPT_ID'
      Size = 46
    end
    object cdsGridDataIS_PSD_BOUND_TO_MODEL: TAbmesFloatField
      FieldName = 'IS_PSD_BOUND_TO_MODEL'
    end
    object cdsGridDataPSD_QUANTITY: TAbmesFloatField
      FieldName = 'PSD_QUANTITY'
    end
    object cdsGridDataPSD_REMAINING_QUANTITY: TAbmesFloatField
      FieldName = 'PSD_REMAINING_QUANTITY'
    end
    object cdsGridDataDELIVERY_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_DOC_BRANCH_CODE'
    end
    object cdsGridDataDELIVERY_DOC_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_DOC_CODE'
    end
    object cdsGridDataDELIVERY_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'DELIVERY_HAS_DOC_ITEMS'
      FieldValueType = fvtBoolean
    end
    object cdsGridData_MAX_STORE_REQUEST_ITEM_CODE: TAggregateField
      FieldName = '_MAX_STORE_REQUEST_ITEM_CODE'
      Active = True
      DisplayName = ''
      Expression = 'Max(STORE_REQUEST_ITEM_CODE)'
    end
  end
  inherited alActions: TActionList
    Left = 656
    Top = 192
    inherited actForm: TAction
      Caption = #1043#1088#1091#1087#1086#1074#1072' '#1047#1072#1103#1074#1082#1072' '#1079#1072' %s '#1085#1072' %ProductClassAbbrev% - %s'
    end
    inherited actInsertRecord: TAction
      Visible = False
    end
    object actMultiEdit: TAction
      Caption = #1052#1085'. '#1088#1077#1076#1072#1082#1090'...'
      Hint = #1052#1085#1086#1078#1077#1089#1090#1074#1077#1085#1086' '#1088#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077
      ImageIndex = 47
      OnExecute = actMultiEditExecute
      OnUpdate = actMultiEditUpdate
    end
    object actEditTotal: TAction
      Caption = #1054#1090#1095#1080#1090#1072#1085#1077'...'
      Hint = #1054#1090#1095#1080#1090#1072#1085#1077
      ImageIndex = 6
      ShortCut = 32
      OnExecute = actEditTotalExecute
      OnUpdate = actEditTotalUpdate
    end
    object actFinishStoreRequest: TAction
      Caption = #1055#1088#1080#1082#1083#1102#1095#1074#1072#1085#1077
      Hint = #1055#1088#1080#1082#1083#1102#1095#1074#1072#1085#1077
      ImageIndex = 17
      OnExecute = actFinishStoreRequestExecute
      OnUpdate = actFinishStoreRequestUpdate
    end
    object actAnnulStoreRequest: TAction
      Caption = #1040#1085#1091#1083#1080#1088#1072#1085#1077
      Hint = #1040#1085#1091#1083#1080#1088#1072#1085#1077
      ImageIndex = 16
      OnExecute = actAnnulStoreRequestExecute
      OnUpdate = actAnnulStoreRequestUpdate
    end
    object actPrintTotals: TAction
      Hint = #1055#1077#1095#1072#1090' '#1086#1073#1097#1086
      ImageIndex = 2
      OnExecute = actPrintTotalsExecute
      OnUpdate = actPrintTotalsUpdate
    end
    object actPlannedStoreDeal: TAction
      Caption = #1055#1083#1072#1085#1086#1074#1086' '#1055'/'#1058
      ImageIndex = 6
      OnExecute = actPlannedStoreDealExecute
      OnUpdate = actPlannedStoreDealUpdate
    end
    object actSetAllCompletedQuantity: TAction
      ImageIndex = 44
      OnExecute = actSetAllCompletedQuantityExecute
      OnUpdate = actSetAllCompletedQuantityUpdate
    end
    object actDeliveryDoc: TAction
      Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' '#1054#1055#1044
      ImageIndex = 98
      OnExecute = actDeliveryDocExecute
      OnUpdate = actDeliveryDocUpdate
    end
    object actExcelExportTotals: TAction
      Hint = #1045#1082#1089#1087#1086#1088#1090' '#1082#1098#1084' Excel'
      ImageIndex = 83
      OnExecute = actExcelExportTotalsExecute
      OnUpdate = actExcelExportTotalsUpdate
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    Top = 200
  end
  inherited dsGridDataParams: TDataSource
    Top = 200
  end
  inherited dsData: TDataSource
    Top = 136
  end
  inherited cdsData: TAbmesClientDataSet
    AggregatesActive = True
    ConnectionBroker = dmMain.conStoreRequests
    Params = <
      item
        DataType = ftFloat
        Name = 'STORE_REQUEST_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_REQUEST_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvStoreRequest'
    AfterOpen = cdsDataAfterOpen
    BeforePost = cdsDataBeforePost
    OnCalcFields = cdsDataCalcFields
    BeforeApplyUpdates = cdsDataBeforeApplyUpdates
    BeforeGetRecords = cdsDataBeforeGetRecords
    Top = 136
    object cdsDataSTORE_REQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'STORE_REQUEST_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      OnChange = cdsDataSTORE_REQUEST_BRANCH_CODEChange
    end
    object cdsDataSTORE_REQUEST_CODE: TAbmesFloatField
      FieldName = 'STORE_REQUEST_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDataIN_OUT: TAbmesFloatField
      FieldName = 'IN_OUT'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDataREQUEST_DEPT_CODE: TAbmesFloatField
      DisplayLabel = #1047#1072#1103#1074#1103#1074#1072#1097#1086' '#1058#1055
      FieldName = 'REQUEST_DEPT_CODE'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsDataREQUEST_DEPT_CODEChange
    end
    object cdsDataREQUEST_EMPLOYEE_CODE: TAbmesFloatField
      DisplayLabel = #1055#1086#1080#1089#1082#1072#1083' '#1079#1072#1103#1074#1082#1072#1090#1072
      FieldName = 'REQUEST_EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsDataREQUEST_EMPLOYEE_CODEChange
    end
    object cdsDataREQUEST_BEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1053#1072#1095#1072#1083#1085#1072' '#1076#1072#1090#1072' '#1085#1072' '#1074#1072#1083#1080#1076#1085#1086#1089#1090
      FieldName = 'REQUEST_BEGIN_DATE'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsDataREQUEST_BEGIN_DATEChange
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object cdsDataREQUEST_END_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1050#1088#1072#1081#1085#1072' '#1076#1072#1090#1072' '#1085#1072' '#1074#1072#1083#1080#1076#1085#1086#1089#1090
      FieldName = 'REQUEST_END_DATE'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsDataREQUEST_END_DATEChange
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object cdsDataCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDataCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDataCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object cdsDataCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object cdsDataCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDataCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDataFINISH_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'FINISH_EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDataFINISH_DATE: TAbmesSQLTimeStampField
      FieldName = 'FINISH_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDataFINISH_TIME: TAbmesSQLTimeStampField
      FieldName = 'FINISH_TIME'
    end
    object cdsDataANNUL_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ANNUL_EMPLOYEE_CODE'
    end
    object cdsDataANNUL_DATE: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_DATE'
    end
    object cdsDataANNUL_TIME: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_TIME'
    end
    object cdsDataREQUEST_DEPT_NAME: TAbmesWideStringField
      DisplayLabel = #1047#1072#1103#1074#1103#1074#1072#1097#1086' '#1058#1055
      FieldName = 'REQUEST_DEPT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object cdsDataREQUEST_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'REQUEST_DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object cdsDataqryStoreRequestItems: TDataSetField
      FieldName = 'qryStoreRequestItems'
    end
    object cdsDataBND_PROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'BND_PROCESS_OBJECT_IDENTIFIER'
      ProviderFlags = []
      Size = 50
    end
    object cdsDataBND_PROCESS_OBJECT_CLASS_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_CLASS_CODE'
    end
    object cdsDataBND_PROCESS_OBJECT_CLASS_ABB: TAbmesWideStringField
      FieldName = 'BND_PROCESS_OBJECT_CLASS_ABB'
      ProviderFlags = []
      Size = 100
    end
    object cdsDataPRODUCT_CLASS_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CLASS_CODE'
    end
    object cdsDataPARTNER_CODE: TAbmesFloatField
      DisplayLabel = #1055#1072#1088#1090#1085#1100#1086#1088
      FieldName = 'PARTNER_CODE'
      OnChange = cdsDataPARTNER_CODEChange
    end
    object cdsDataPARTNER_ACCOUNT_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' - '#1060#1080#1085#1072#1085#1089#1086#1074#1086
      FieldName = 'PARTNER_ACCOUNT_CODE'
    end
    object cdsDataUNFINISHED_OTHER_SRI_COUNT: TAbmesFloatField
      FieldName = 'UNFINISHED_OTHER_SRI_COUNT'
      ProviderFlags = []
    end
    object cdsData_REQUEST_DEPT: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_REQUEST_DEPT'
      Size = 150
      Calculated = True
    end
    object cdsData_REQUEST_EMPLOYEE_NAME: TAbmesWideStringField
      DisplayLabel = #1055#1086#1080#1089#1082#1072#1083' '#1079#1072#1103#1074#1082#1072#1090#1072
      FieldKind = fkLookup
      FieldName = '_REQUEST_EMPLOYEE_NAME'
      LookupDataSet = cdsEmployees
      LookupKeyFields = 'EMPLOYEE_CODE'
      LookupResultField = 'EMPLOYEE_NAME'
      KeyFields = 'REQUEST_EMPLOYEE_CODE'
      Size = 70
      Lookup = True
    end
    object cdsData_BND_OBJECT: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_BND_OBJECT'
      Size = 50
      Calculated = True
    end
    object cdsData_STORE_REQUEST_BRANCH_IDENTIFIER: TAbmesWideStringField
      DisplayLabel = #1058#1055' '#1043#1083'.'
      FieldKind = fkLookup
      FieldName = '_STORE_REQUEST_BRANCH_IDENTIFIER'
      LookupDataSet = cdsBranches
      LookupKeyFields = 'BRANCH_CODE'
      LookupResultField = 'BRANCH_CODE_AND_NAME'
      KeyFields = 'STORE_REQUEST_BRANCH_CODE'
      Size = 50
      Lookup = True
    end
    object cdsData_STORE_REQUEST_BRANCH_NO: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_STORE_REQUEST_BRANCH_NO'
      LookupDataSet = cdsBranches
      LookupKeyFields = 'BRANCH_CODE'
      LookupResultField = 'BRANCH_NO'
      KeyFields = 'STORE_REQUEST_BRANCH_CODE'
      Lookup = True
    end
    object cdsData_REQUEST_BEGIN_DATE: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_REQUEST_BEGIN_DATE'
      Calculated = True
    end
    object cdsData_REQUEST_END_DATE: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_REQUEST_END_DATE'
      Calculated = True
    end
    object cdsData_REQUEST_EMPLOYEE_NO: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_REQUEST_EMPLOYEE_NO'
      LookupDataSet = frRequestEmployee.cdsEmployees
      LookupKeyFields = 'EMPLOYEE_CODE'
      LookupResultField = 'EMPLOYEE_NO'
      KeyFields = 'REQUEST_EMPLOYEE_CODE'
      Lookup = True
    end
  end
  object mdTotals: TAbmesClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    BeforePost = mdTotalsBeforePost
    AfterPost = mdTotalsAfterPost
    OnCalcFields = mdTotalsCalcFields
    Left = 64
    Top = 468
    object mdTotalsSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
    end
    object mdTotalsPRODUCT_CODE: TAbmesFloatField
      DisplayLabel = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
      FieldName = 'PRODUCT_CODE'
    end
    object mdTotalsPRODUCT_NAME: TAbmesWideStringField
      DisplayLabel = 'id '#1083#1086#1075#1080#1095#1077#1089#1082#1080
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object mdTotalsPRODUCT_NO: TAbmesFloatField
      DisplayLabel = 'id '#1094#1080#1092#1088#1086#1074
      FieldName = 'PRODUCT_NO'
    end
    object mdTotalsMEASURE_ABBREV: TAbmesWideStringField
      Alignment = taCenter
      DisplayLabel = #1052'.'#1077#1076'.'
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object mdTotalsACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_COEF'
      ProviderFlags = []
    end
    object mdTotalsREQUEST_QUANTITY: TAbmesFloatField
      DisplayLabel = #1047#1072#1103#1074#1077#1085#1086' '#1082'-'#1074#1086
      FieldName = 'REQUEST_QUANTITY'
      Required = True
      DisplayFormat = ',0.######'
      EditFormat = '0.######'
    end
    object mdTotalsCOMPLETED_QUANTITY: TAbmesFloatField
      DisplayLabel = #1054#1090#1095#1077#1090#1077#1085#1086' '#1082'-'#1074#1086
      FieldName = 'COMPLETED_QUANTITY'
      DisplayFormat = ',0.######'
      EditFormat = '0.######'
    end
    object mdTotalsCOMPLETED_ACCOUNT_QUANTITY: TAbmesFloatField
      DisplayLabel = #1054#1090#1095#1077#1090#1077#1085#1086' '#1089#1095#1077#1090'. '#1082'-'#1074#1086
      FieldName = 'COMPLETED_ACCOUNT_QUANTITY'
      OnChange = mdTotalsCOMPLETED_ACCOUNT_QUANTITYChange
      DisplayFormat = ',0.####'
      EditFormat = '0.######'
    end
    object mdTotalsREQUEST_ITEMS_COUNT: TAbmesFloatField
      DisplayLabel = #1041#1088#1086#1081' '#1079#1072#1103#1074'.'
      FieldName = 'REQUEST_ITEMS_COUNT'
      DisplayFormat = '0'
    end
    object mdTotalsMAX_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'MAX_BEGIN_DATE'
    end
    object mdTotalsACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      Size = 5
    end
    object mdTotalsTOTAL_PRICE: TAbmesFloatField
      DisplayLabel = #1062#1077#1085#1072
      FieldName = 'TOTAL_PRICE'
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object mdTotalsSINGLE_PRICE: TAbmesFloatField
      FieldName = 'SINGLE_PRICE'
    end
    object mdTotalsCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
    end
    object mdTotalsSTORE_IDENTIFIER: TAbmesWideStringField
      DisplayLabel = #1058#1055' '#1047#1072#1076'.'
      FieldName = 'STORE_IDENTIFIER'
    end
    object mdTotalsIN_OUT: TAbmesFloatField
      FieldName = 'IN_OUT'
      OnGetText = mdTotalsIN_OUTGetText
    end
    object mdTotalsBND_PROCESS_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_CODE'
    end
    object mdTotalsIS_PSD_BOUND_TO_MODEL: TAbmesFloatField
      FieldName = 'IS_PSD_BOUND_TO_MODEL'
      FieldValueType = fvtBoolean
    end
    object mdTotals_COMPLETED_ACCOUNT_QUANTITY: TAbmesFloatField
      DisplayLabel = #1048#1079#1095#1080#1089#1083'. '#1089#1095#1077#1090'. '#1082'-'#1074#1086
      FieldKind = fkCalculated
      FieldName = '_COMPLETED_ACCOUNT_QUANTITY'
      DisplayFormat = ',0.######'
      EditFormat = '0.######'
      Calculated = True
    end
    object mdTotals_REQUESTED_ACCOUNT_QUANTITY: TAbmesFloatField
      DisplayLabel = #1047#1072#1103#1074#1077#1085#1086' '#1089#1095#1077#1090'. '#1082'-'#1074#1086
      FieldKind = fkCalculated
      FieldName = '_REQUESTED_ACCOUNT_QUANTITY'
      DisplayFormat = ',0.######'
      Calculated = True
    end
    object mdTotals_CURRENCY_ABBREV: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_CURRENCY_ABBREV'
      OnGetText = mdTotals_CURRENCY_ABBREVGetText
      Size = 5
      Calculated = True
    end
    object mdTotals_IDENTIFIER: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_IDENTIFIER'
      Size = 50
      Calculated = True
    end
    object mdTotals_MIN_ACCOUNT_MEASURE_COEF: TAggregateField
      FieldName = '_MIN_ACCOUNT_MEASURE_COEF'
      Active = True
      DisplayName = ''
      Expression = 'Min(ACCOUNT_MEASURE_COEF)'
    end
    object mdTotals_MAX_ACCOUNT_MEASURE_COEF: TAggregateField
      FieldName = '_MAX_ACCOUNT_MEASURE_COEF'
      Active = True
      DisplayName = ''
      Expression = 'Max(ACCOUNT_MEASURE_COEF)'
    end
    object mdTotals_MIN_BND_PROCESS_CODE: TAggregateField
      FieldName = '_MIN_BND_PROCESS_CODE'
      Active = True
      DisplayName = ''
      Expression = 'Min(BND_PROCESS_CODE)'
    end
    object mdTotals_MAX_BND_PROCESS_CODE: TAggregateField
      FieldName = '_MAX_BND_PROCESS_CODE'
      Active = True
      DisplayName = ''
      Expression = 'Max(BND_PROCESS_CODE)'
    end
    object mdTotals_MAX_TOTAL_PRICE: TAggregateField
      FieldName = '_MAX_TOTAL_PRICE'
      Active = True
      DisplayName = ''
      Expression = 'Max(TOTAL_PRICE)'
    end
  end
  object dsTotals: TDataSource
    DataSet = mdTotals
    Left = 96
    Top = 468
  end
  object cdsBranches: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompany
    Filter = '(IS_LOCAL_BRANCH <> 0) and (IS_INACTIVE = 0)'
    Params = <>
    ProviderName = 'prvBranches'
    Left = 160
    Top = 176
    object cdsBranchesBRANCH_CODE: TAbmesFloatField
      FieldName = 'BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsBranchesBRANCH_NO: TAbmesFloatField
      FieldName = 'BRANCH_NO'
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
  object cdsEmployees: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conHumanResource
    Params = <>
    ProviderName = 'prvEmployees'
    Left = 192
    Top = 176
    object cdsEmployeesEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsEmployeesEMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'EMPLOYEE_NAME'
      ProviderFlags = []
      Size = 44
    end
  end
  object cdsAggregates: TAbmesClientDataSet
    Aggregates = <>
    AggregatesActive = True
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'idxStoreProduct'
        Fields = 'STORE_CODE; PRODUCT_CODE'
        GroupingLevel = 2
      end>
    IndexName = 'idxStoreProduct'
    Params = <>
    StoreDefs = True
    Left = 64
    Top = 168
    object cdsAggregatesSTORE_REQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'STORE_REQUEST_BRANCH_CODE'
      Required = True
    end
    object cdsAggregatesSTORE_REQUEST_CODE: TAbmesFloatField
      FieldName = 'STORE_REQUEST_CODE'
      Required = True
    end
    object cdsAggregatesSTORE_REQUEST_ITEM_CODE: TAbmesFloatField
      FieldName = 'STORE_REQUEST_ITEM_CODE'
      Required = True
    end
    object cdsAggregatesPLANNED_STORE_DEAL_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PLANNED_STORE_DEAL_BRANCH_CODE'
    end
    object cdsAggregatesPLANNED_STORE_DEAL_CODE: TAbmesFloatField
      FieldName = 'PLANNED_STORE_DEAL_CODE'
    end
    object cdsAggregatesREQUEST_QUANTITY: TAbmesFloatField
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'REQUEST_QUANTITY'
      Required = True
    end
    object cdsAggregatesCOMPLETED_QUANTITY: TAbmesFloatField
      FieldName = 'COMPLETED_QUANTITY'
    end
    object cdsAggregatesCOMPLETED_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'COMPLETED_ACCOUNT_QUANTITY'
      ProviderFlags = [pfInUpdate]
    end
    object cdsAggregatesTOTAL_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_PRICE'
    end
    object cdsAggregatesSINGLE_PRICE: TAbmesFloatField
      FieldName = 'SINGLE_PRICE'
    end
    object cdsAggregatesCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
    end
    object cdsAggregatesSTORE_DEAL_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'STORE_DEAL_OBJECT_BRANCH_CODE'
    end
    object cdsAggregatesSTORE_DEAL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'STORE_DEAL_OBJECT_CODE'
    end
    object cdsAggregatesBND_PROCESS_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_CODE'
    end
    object cdsAggregatesBND_PROCESS_ABBREV: TAbmesWideStringField
      DisplayLabel = #1055#1088#1086#1094#1077#1089
      FieldName = 'BND_PROCESS_ABBREV'
      Size = 100
    end
    object cdsAggregatesPROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField
      DisplayLabel = #1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090
      FieldName = 'PROCESS_OBJECT_IDENTIFIER'
      Size = 50
    end
    object cdsAggregatesBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_BRANCH_CODE'
    end
    object cdsAggregatesBND_PROCESS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_CODE'
    end
    object cdsAggregatesPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object cdsAggregatesPRODUCT_NAME: TAbmesWideStringField
      DisplayLabel = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object cdsAggregatesMEASURE_ABBREV: TAbmesWideStringField
      Alignment = taCenter
      DisplayLabel = #1052'.'#1077#1076'.'
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object cdsAggregatesACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      ProviderFlags = []
      Size = 5
    end
    object cdsAggregatesSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
    end
    object cdsAggregatesPSD_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'PSD_BEGIN_DATE'
    end
    object cdsAggregatesPSD_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'PSD_END_DATE'
    end
    object cdsAggregatesSTORE_DEAL_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'STORE_DEAL_ACCOUNT_QUANTITY'
      ProviderFlags = []
      DisplayFormat = ',0.###'
    end
    object cdsAggregatesSTORE_IDENTIFIER: TAbmesWideStringField
      DisplayLabel = #1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086
      FieldName = 'STORE_IDENTIFIER'
    end
    object cdsAggregatesIN_OUT: TAbmesFloatField
      FieldName = 'IN_OUT'
    end
    object cdsAggregatesIS_PSD_BOUND_TO_MODEL: TAbmesFloatField
      FieldName = 'IS_PSD_BOUND_TO_MODEL'
    end
    object cdsAggregates_HAS_STORE_DEAL: TAbmesFloatField
      Alignment = taCenter
      DisplayLabel = #1057#1082#1083'. '#1086#1087'.'
      FieldKind = fkCalculated
      FieldName = '_HAS_STORE_DEAL'
      Calculated = True
    end
    object cdsAggregates_SHOW_PROCESS: TAbmesWideStringField
      DisplayLabel = #1055#1088#1086#1094#1077#1089
      FieldKind = fkCalculated
      FieldName = '_SHOW_PROCESS'
      Size = 10
      Calculated = True
    end
    object cdsAggregates_STORE_PRODUCT_QUANTITY: TAggregateField
      FieldName = '_STORE_PRODUCT_QUANTITY'
      Active = True
      DisplayName = ''
      Expression = 'Sum(REQUEST_QUANTITY * IN_OUT)'
      GroupingLevel = 2
      IndexName = 'idxStoreProduct'
    end
    object cdsAggregates_STORE_PRODUCT_COUNT: TAggregateField
      FieldName = '_STORE_PRODUCT_COUNT'
      Active = True
      DisplayName = ''
      Expression = 'Count(REQUEST_QUANTITY)'
      GroupingLevel = 2
      IndexName = 'idxStoreProduct'
    end
    object cdsAggregates_STORE_PRODUCT_COMPLETED_QUANTITY: TAggregateField
      FieldName = '_STORE_PRODUCT_COMPLETED_QUANTITY'
      Active = True
      DisplayName = ''
      Expression = 'Sum(COMPLETED_QUANTITY * IN_OUT)'
      GroupingLevel = 2
      IndexName = 'idxStoreProduct'
    end
    object cdsAggregates_MAX_BEGIN_DATE: TAggregateField
      FieldName = '_MAX_BEGIN_DATE'
      Active = True
      DisplayName = ''
      Expression = 'Max(PSD_BEGIN_DATE)'
      GroupingLevel = 2
      IndexName = 'idxStoreProduct'
    end
    object cdsAggregates_STORE_PRODUCT_COMPLETED_ACCOUNT_QUANTITY: TAggregateField
      FieldName = '_STORE_PRODUCT_COMPLETED_ACCOUNT_QUANTITY'
      Active = True
      DisplayName = ''
      Expression = 'Sum(COMPLETED_ACCOUNT_QUANTITY * IN_OUT)'
      GroupingLevel = 2
      IndexName = 'idxStoreProduct'
    end
    object cdsAggregates_TOTAL_PRICE: TAggregateField
      FieldName = '_TOTAL_PRICE'
      Active = True
      DisplayName = ''
      Expression = 'Sum(TOTAL_PRICE * IN_OUT)'
      GroupingLevel = 2
      IndexName = 'idxStoreProduct'
    end
    object cdsAggregates_CURRENCY_CODE: TAggregateField
      FieldName = '_CURRENCY_CODE'
      Active = True
      DisplayName = ''
      Expression = 'Max(CURRENCY_CODE)'
      GroupingLevel = 2
      IndexName = 'idxStoreProduct'
    end
    object cdsAggregates_MAX_SINGLE_PRICE: TAggregateField
      FieldName = '_MAX_SINGLE_PRICE'
      Active = True
      DisplayName = ''
      Expression = 'Max(SINGLE_PRICE)'
      GroupingLevel = 2
      IndexName = 'idxStoreProduct'
    end
    object cdsAggregates_MIN_BND_PROCESS_CODE: TAggregateField
      FieldName = '_MIN_BND_PROCESS_CODE'
      Active = True
      DisplayName = ''
      Expression = 'Min(BND_PROCESS_CODE)'
      GroupingLevel = 2
      IndexName = 'idxStoreProduct'
    end
    object cdsAggregates_MAX_BND_PROCESS_CODE: TAggregateField
      FieldName = '_MAX_BND_PROCESS_CODE'
      Active = True
      DisplayName = ''
      Expression = 'Max(BND_PROCESS_CODE)'
      GroupingLevel = 2
      IndexName = 'idxStoreProduct'
    end
    object cdsAggregates_MIN_IS_PSD_BOUND_TO_MODEL: TAggregateField
      FieldName = '_MIN_IS_PSD_BOUND_TO_MODEL'
      Active = True
      DisplayName = ''
      Expression = 'Min(IS_PSD_BOUND_TO_MODEL)'
      GroupingLevel = 2
      IndexName = 'idxStoreProduct'
    end
    object cdsAggregates_MAX_IS_PSD_BOUND_TO_MODEL: TAggregateField
      FieldName = '_MAX_IS_PSD_BOUND_TO_MODEL'
      Active = True
      DisplayName = ''
      Expression = 'Max(IS_PSD_BOUND_TO_MODEL)'
      GroupingLevel = 2
      IndexName = 'idxStoreProduct'
    end
    object cdsAggregates_MIN_SINGLE_PRICE: TAggregateField
      FieldName = '_MIN_SINGLE_PRICE'
      Active = True
      DisplayName = ''
      Expression = 'Max(SINGLE_PRICE)'
      GroupingLevel = 2
      IndexName = 'idxStoreProduct'
    end
  end
  object smrStoreDeals: TAbmesMatrixReport
    DataSource = dsGridData
    Pattern.Strings = (
      '|[_PRINT_BINDING:71:L]|'
      '|[PRODUCT_NAME:58:L] [PRODUCT_NO:12:R]|'
      
        '|[STORE_DEAL_NO:5:L] [COMPLETED_QUANTITY:10:R] [MEASURE_ABBREV:7' +
        ':C] [STORE_DEAL_ACCOUNT_QUANTITY:10:R] [ACCOUNT_MEASURE_ABBREV:7' +
        ':C] [STORE_DEAL_TOTAL_PRICE:10:R] [STORE_DEAL_CURRENCY_ABBREV:5:' +
        'C] [STORE_DEAL_BASE_TOTAL_PRICE:10:R]|')
    GroupFields = 'STORE_CODE'
    StrictFieldWidths = True
    LinesPerPage = 0
    AllowPageBreak = apbNone
    Margins.Left = 5
    Margins.Top = 0
    Margins.Bottom = 0
    ReportFooter = smrReportFooter
    RecordHeader = smrStoreDealsRecordHeader
    GroupHeader = smrStoreDealsGroupHeader
    GroupFooter = smrStoreDealsGroupFooter
    AfterPrintRecord = smrStoreDealsAfterPrintRecord
    Left = 368
    Top = 178
  end
  object smrStoreDealsRecordHeader: TAbmesMatrixReport
    Pattern.Strings = (
      
        '+---------------------------------------------------------------' +
        '--------+')
    CurrentRecordOnly = True
    StrictFieldWidths = False
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    BeforePrint = smrStoreDealsRecordHeaderBeforePrint
    Left = 400
    Top = 178
  end
  object smrStoreDealsGroupHeader: TAbmesMatrixReport
    DataSource = dsGridData
    Pattern.Strings = (
      
        #1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086': [STORE_IDENTIFIER:6:L]       '#1044#1072#1090#1072': [STORE_DEAL_DAT' +
        'E:10:L]        '#1047#1072#1103#1074#1082#1072': [_STORE_REQUEST_BRANCH_NO:3:R] / [STORE_R' +
        'EQUEST_CODE:8:L]'
      
        '================================================================' +
        '========='
      
        '|[['#1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090'                                                  ' +
        '        ]|'
      
        '|[['#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090'                                         ] [[ ' +
        '       No]|'
      
        '|[[No ] [['#1050'-'#1074#1086'('#1088#1073')] [['#1052'.'#1077#1076'.] [['#1050'-'#1074#1086'('#1089#1095')] [['#1052'.'#1077#1076'.] [[    '#1062#1077#1085#1072'] [[' +
        #1042#1072#1083'] [['#1062#1077#1085#1072' [_BASE_CURRENCY_ABBREV:3:L]]|'
      
        '================================================================' +
        '=========')
    CurrentRecordOnly = True
    StrictFieldWidths = False
    AllowPageBreak = apbNone
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    ReportHeader = smrStoreDealsGroupHeaderOutHeader
    OnGetFieldValues = smrStoreDealsGroupHeaderGetFieldValues
    AfterPrint = smrStoreDealsGroupHeaderAfterPrint
    Left = 432
    Top = 178
  end
  object smrStoreDealsGroupFooter: TAbmesMatrixReport
    DataSource = dsGridData
    Pattern.Strings = (
      
        '================================================================' +
        '========='
      
        '                                                        '#1054#1041#1065#1054': [_' +
        'BASE_TOTAL_PRICE:10:R]'
      
        #1055#1086#1080#1089#1082#1072#1083' '#1076#1074#1080#1078#1077#1085#1080#1077#1090#1086' : [REQUEST_EMPLOYEE_NO:8:L] [_REQUEST_EMPLOYE' +
        'E_NAME:43:L]'
      
        '               '#1052#1054#1051' : [STORE_DEAL_STORE_EMPLOYEE_NO:8:L] [_STORE_' +
        'DEAL_STORE_EMPLOYEE_NAME:34:L] ........'
      
        '     [OTHER_EMPLOYEE_LABEL:13:R] : [OTHER_EMPLOYEE_NO:8:L] [_OTH' +
        'ER_EMPLOYEE_NAME:34:L] ........'
      
        '================================================================' +
        '========='
      
        #1054#1090#1087#1077#1095#1072#1090#1072#1085#1086' '#1086#1090' [AppName:0:L] '#1085#1072' [%DATETIME%:19:L]         [COMPANY_SH' +
        'ORT_NAME:20:R]'
      '')
    CurrentRecordOnly = True
    StrictFieldWidths = False
    AllowPageBreak = apbAfter
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    OnGetFieldValues = smrStoreDealsGroupFooterGetFieldValues
    Left = 432
    Top = 210
  end
  object smrTotalsOut: TAbmesMatrixReport
    DataSource = dsTotals
    Pattern.Strings = (
      
        '|[PRODUCT_NAME:31:L]|[PRODUCT_NO:12:R]|[REQUEST_QUANTITY:7:R]|[C' +
        'OMPLETED_QUANTITY:7:R]|[MEASURE_ABBREV:5:C]|[COMPLETED_ACCOUNT_Q' +
        'UANTITY:7:R]|[ACCOUNT_MEASURE_ABBREV:5:C]|')
    GroupFields = 'STORE_CODE'
    StrictFieldWidths = True
    LinesPerPage = 0
    AllowPageBreak = apbNone
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    ReportFooter = smrReportFooter
    RecordHeader = smrTotalsRecordHeaderOut
    GroupHeader = smrTotalsGroupHeaderOut
    GroupFooter = smrTotalsGroupFooter
    AfterPrintRecord = smrTotalsOutAfterPrintRecord
    Left = 512
    Top = 258
  end
  object smrTotalsRecordHeaderOut: TAbmesMatrixReport
    Pattern.Strings = (
      
        '|-------------------------------+------------+-------+-------+--' +
        '---+-------+-----|')
    CurrentRecordOnly = True
    StrictFieldWidths = False
    AllowPageBreak = apbNone
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    BeforePrint = smrTotalsRecordHeaderOutBeforePrint
    Left = 544
    Top = 258
  end
  object smrTotalsGroupHeaderOut: TAbmesMatrixReport
    DataSource = dsData
    Pattern.Strings = (
      '                        '#1047' '#1040' '#1071' '#1042' '#1050' '#1040'   '#1047' '#1040'   '#1058' '#1045' '#1043' '#1051' '#1045' '#1053' '#1045
      '                        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
      
        #1058#1055' '#1043#1083': [_STORE_REQUEST_BRANCH_NO:5:L]   '#1047#1072#1103#1074#1082#1072' No: [STORE_REQUES' +
        'T_CODE:8:L]   [_SHOW_BND_OBJECT:45:R]'
      
        #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1074#1072#1083#1080#1076#1085#1086#1089#1090': '#1086#1090' [_REQUEST_BEGIN_DATE:10:L] '#1076#1086' [_REQUEST_' +
        'END_DATE:10:L]'
      
        #1047#1072#1103#1074#1103#1074#1072#1097#1086' '#1058#1055': [_REQUEST_DEPT:43:L]   '#1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086': [STORE_IDENTI' +
        'FIER:6:L]'
      
        '================================================================' +
        '=================='
      
        '|[_PRODUCT_CLASS_NAME:31:L]|          No|'#1047'-'#1086' '#1082#1086#1083'|'#1054#1090#1095' '#1082#1086#1083'|'#1052'.'#1077#1076'.|'#1057 +
        #1095' '#1082#1086#1083' |'#1052'.'#1077#1076'.|'
      
        '|-------------------------------+------------+-------+-------+--' +
        '---+-------+-----|')
    CurrentRecordOnly = True
    StrictFieldWidths = False
    AllowPageBreak = apbNone
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    OnGetFieldValues = smrTotalsGroupHeaderGetFieldValues
    AfterPrint = smrTotalsGroupHeaderOutAfterPrint
    Left = 576
    Top = 258
  end
  object smrTotalsGroupFooter: TAbmesMatrixReport
    DataSource = dsData
    Pattern.Strings = (
      
        '================================================================' +
        '=================='
      
        #1055#1086#1080#1089#1082#1072#1083' '#1076#1074#1080#1078#1077#1085#1080#1077#1090#1086': [_REQUEST_EMPLOYEE_NAME:44:L] '#1055#1086#1076#1087#1080#1089':.......' +
        '...'
      
        #1055#1088#1077#1076#1072#1083': ................................................        ' +
        ' '#1055#1086#1076#1087#1080#1089':..........'
      
        #1055#1088#1080#1077#1083':  ................................................        ' +
        ' '#1055#1086#1076#1087#1080#1089':..........'
      
        '================================================================' +
        '=================='
      
        #1054#1090#1087#1077#1095#1072#1090#1072#1085#1086' '#1086#1090' [AppName:0:L] '#1085#1072' [%DATETIME%:19:L]                  [C' +
        'OMPANY_SHORT_NAME:20:R]'
      '')
    CurrentRecordOnly = True
    StrictFieldWidths = False
    AllowPageBreak = apbAfter
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    OnGetFieldValues = smrTotalsGroupFooterGetFieldValues
    Left = 608
    Top = 258
  end
  object smrStoreDealsGroupHeaderOutHeader: TAbmesMatrixReport
    Pattern.Strings = (
      '                      '#1044#1086#1082#1091#1084#1077#1085#1090' '#1079#1072' '#1058#1045#1043#1051#1045#1053#1045' '#1087#1086' '#1047#1072#1103#1074#1082#1072
      '                      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
    CurrentRecordOnly = True
    StrictFieldWidths = False
    AllowPageBreak = apbBefore
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    Left = 480
    Top = 176
  end
  object smrStoreDealsGroupHeaderInHeader: TAbmesMatrixReport
    Pattern.Strings = (
      '                    '#1044#1086#1082#1091#1084#1077#1085#1090' '#1079#1072' '#1055#1054#1057#1058#1066#1055#1051#1045#1053#1048#1045' '#1087#1086' '#1047#1072#1103#1074#1082#1072
      '                    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
    CurrentRecordOnly = True
    StrictFieldWidths = False
    AllowPageBreak = apbBefore
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    Left = 512
    Top = 176
  end
  object cdsTodaySecondaryCurrencyRates: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvTodaySecondaryCurrencyRates'
    Left = 224
    Top = 176
    object cdsTodaySecondaryCurrencyRatesCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
    end
    object cdsTodaySecondaryCurrencyRatesFIXING: TAbmesFloatField
      FieldName = 'FIXING'
    end
  end
  object cdsCurrencies: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvCurrencies'
    Left = 256
    Top = 176
    object cdsCurrenciesCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
      Required = True
    end
    object cdsCurrenciesCURRENCY_ABBREV: TAbmesWideStringField
      FieldName = 'CURRENCY_ABBREV'
      Required = True
      Size = 5
    end
  end
  object dsCurrencies: TDataSource
    DataSet = cdsCurrencies
    Left = 256
    Top = 208
  end
  object smrTotalsIn: TAbmesMatrixReport
    DataSource = dsTotals
    Pattern.Strings = (
      
        '|[PRODUCT_NAME:23:L]|[PRODUCT_NO:12:R]|[REQUEST_QUANTITY:7:R]|[C' +
        'OMPLETED_QUANTITY:7:R]|[MEASURE_ABBREV:5:C]|[COMPLETED_ACCOUNT_Q' +
        'UANTITY:7:R]|[ACCOUNT_MEASURE_ABBREV:5:C]|[TOTAL_PRICE:7:R]|')
    GroupFields = 'STORE_CODE'
    StrictFieldWidths = True
    LinesPerPage = 0
    AllowPageBreak = apbNone
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    ReportFooter = smrReportFooter
    RecordHeader = smrTotalsRecordHeaderIn
    GroupHeader = smrTotalsGroupHeaderIn
    GroupFooter = smrTotalsGroupFooterIn
    AfterPrintRecord = smrTotalsOutAfterPrintRecord
    Left = 512
    Top = 290
  end
  object smrTotalsRecordHeaderIn: TAbmesMatrixReport
    Pattern.Strings = (
      
        '|-----------------------+------------+-------+-------+-----+----' +
        '---+-----+-------|')
    CurrentRecordOnly = True
    StrictFieldWidths = False
    AllowPageBreak = apbNone
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    BeforePrint = smrTotalsRecordHeaderOutBeforePrint
    Left = 544
    Top = 290
  end
  object smrTotalsGroupHeaderIn: TAbmesMatrixReport
    DataSource = dsData
    Pattern.Strings = (
      '                    '#1047' '#1040' '#1071' '#1042' '#1050' '#1040'   '#1047' '#1040'   '#1055' '#1054' '#1057' '#1058' '#1066' '#1055' '#1051' '#1045' '#1053' '#1048' '#1045
      '                    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
      
        #1058#1055' '#1043#1083': [_STORE_REQUEST_BRANCH_NO:5:L]   '#1047#1072#1103#1074#1082#1072' No: [STORE_REQUES' +
        'T_CODE:8:L]   [_SHOW_BND_OBJECT:45:R]'
      
        #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1074#1072#1083#1080#1076#1085#1086#1089#1090': '#1086#1090' [_REQUEST_BEGIN_DATE:10:L] '#1076#1086' [_REQUEST_' +
        'END_DATE:10:L]'
      
        #1047#1072#1103#1074#1103#1074#1072#1097#1086' '#1058#1055': [_REQUEST_DEPT:43:L]   '#1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086': [STORE_IDENTI' +
        'FIER:6:L]'
      
        '================================================================' +
        '=================='
      
        '|[_PRODUCT_CLASS_NAME:23:L]|          No|'#1047'-'#1086' '#1082#1086#1083'|'#1054#1090#1095' '#1082#1086#1083'|'#1052'.'#1077#1076'.|'#1057 +
        #1095' '#1082#1086#1083' |'#1052'.'#1077#1076'.|'#1054#1073'.'#1094#1077#1085#1072'|'
      
        '|-----------------------+------------+-------+-------+-----+----' +
        '---+-----+-------|')
    CurrentRecordOnly = True
    StrictFieldWidths = False
    AllowPageBreak = apbNone
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    OnGetFieldValues = smrTotalsGroupHeaderGetFieldValues
    AfterPrint = smrTotalsGroupHeaderOutAfterPrint
    Left = 576
    Top = 290
  end
  object smrTotalsGroupFooterIn: TAbmesMatrixReport
    DataSource = dsGridData
    Pattern.Strings = (
      
        '================================================================' +
        '=================='
      #1044#1086#1089#1090#1072#1074#1095#1080#1082': [STORE_DEAL_VENDOR_COMPANY_NAME:20:L]'
      
        #1060#1072#1082#1090#1091#1088#1072' '#8470': [STORE_DEAL_INVOICE_NO:10:L][STORE_DEAL_INVOICE_ABBRE' +
        'V:5:L]     '#1044#1072#1090#1072' '#1085#1072' '#1092#1072#1082#1090#1091#1088#1072': [STORE_DEAL_INVOICE_DATE:10:L]      ' +
        '     '#1042#1072#1083#1091#1090#1072': [STORE_DEAL_CURRENCY_ABBREV:5:L]')
    CurrentRecordOnly = True
    StrictFieldWidths = False
    AllowPageBreak = apbAfter
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    ReportFooter = smrTotalsGroupFooter
    Left = 608
    Top = 290
  end
  object cdsFillStoreRequestItemsOnNewRecord: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conStoreRequests
    FieldDefs = <
      item
        Name = 'PLANNED_STORE_DEAL_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PLANNED_STORE_DEAL_CODE'
        DataType = ftFloat
      end
      item
        Name = 'BND_PROCESS_ABBREV'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'PROCESS_OBJECT_IDENTIFIER'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'PRIORITY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRIORITY_NO'
        DataType = ftFloat
      end
      item
        Name = 'PRIORITY_FULL_NAME'
        DataType = ftWideString
        Size = 94
      end
      item
        Name = 'BND_PROCESS_OBJECT_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'BND_PROCESS_OBJECT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'STORE_DEAL_BEGIN_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'STORE_DEAL_END_DATE'
        DataType = ftTimeStamp
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
        Name = 'MEASURE_ABBREV'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'ACCOUNT_MEASURE_COEF'
        DataType = ftFloat
      end
      item
        Name = 'STORE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'STORE_IDENTIFIER'
        DataType = ftWideString
        Size = 45
      end
      item
        Name = 'PSD_DEPT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PLAN_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'COMPLETED_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'OTHER_REQUESTED_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'REMAINING_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'REQUEST_QUANTITY'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <
      item
        DataType = ftFloat
        Name = 'ALGORITHM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IN_OUT'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'BND_PROCESS'
        ParamType = ptInput
        Size = 4000
      end>
    ProviderName = 'prvStoreRequestPlannedStoreDeals'
    StoreDefs = True
    Left = 112
    Top = 208
    object cdsFillStoreRequestItemsOnNewRecordPLANNED_STORE_DEAL_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PLANNED_STORE_DEAL_BRANCH_CODE'
    end
    object cdsFillStoreRequestItemsOnNewRecordPLANNED_STORE_DEAL_CODE: TAbmesFloatField
      FieldName = 'PLANNED_STORE_DEAL_CODE'
    end
    object cdsFillStoreRequestItemsOnNewRecordBND_PROCESS_ABBREV: TAbmesWideStringField
      FieldName = 'BND_PROCESS_ABBREV'
      Size = 100
    end
    object cdsFillStoreRequestItemsOnNewRecordPROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'PROCESS_OBJECT_IDENTIFIER'
      Size = 50
    end
    object cdsFillStoreRequestItemsOnNewRecordBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_BRANCH_CODE'
    end
    object cdsFillStoreRequestItemsOnNewRecordBND_PROCESS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_CODE'
    end
    object cdsFillStoreRequestItemsOnNewRecordSTORE_DEAL_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'STORE_DEAL_BEGIN_DATE'
    end
    object cdsFillStoreRequestItemsOnNewRecordSTORE_DEAL_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'STORE_DEAL_END_DATE'
    end
    object cdsFillStoreRequestItemsOnNewRecordPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object cdsFillStoreRequestItemsOnNewRecordPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object cdsFillStoreRequestItemsOnNewRecordPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object cdsFillStoreRequestItemsOnNewRecordMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object cdsFillStoreRequestItemsOnNewRecordACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_COEF'
    end
    object cdsFillStoreRequestItemsOnNewRecordSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
    end
    object cdsFillStoreRequestItemsOnNewRecordSTORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'STORE_IDENTIFIER'
      Size = 45
    end
    object cdsFillStoreRequestItemsOnNewRecordPSD_DEPT_CODE: TAbmesFloatField
      FieldName = 'PSD_DEPT_CODE'
    end
    object cdsFillStoreRequestItemsOnNewRecordPLAN_QUANTITY: TAbmesFloatField
      FieldName = 'PLAN_QUANTITY'
    end
    object cdsFillStoreRequestItemsOnNewRecordOTHER_REQUESTED_QUANTITY: TAbmesFloatField
      FieldName = 'OTHER_REQUESTED_QUANTITY'
    end
    object cdsFillStoreRequestItemsOnNewRecordREMAINING_QUANTITY: TAbmesFloatField
      FieldName = 'REMAINING_QUANTITY'
    end
    object cdsFillStoreRequestItemsOnNewRecordREQUEST_QUANTITY: TAbmesFloatField
      FieldName = 'REQUEST_QUANTITY'
    end
    object cdsFillStoreRequestItemsOnNewRecordPRIORITY_CODE: TAbmesFloatField
      FieldName = 'PRIORITY_CODE'
    end
    object cdsFillStoreRequestItemsOnNewRecordPRIORITY_NO: TAbmesFloatField
      FieldName = 'PRIORITY_NO'
    end
    object cdsFillStoreRequestItemsOnNewRecordPRIORITY_FULL_NAME: TAbmesWideStringField
      FieldName = 'PRIORITY_FULL_NAME'
      Size = 94
    end
  end
  object cdsPriorities: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvPriorities'
    Left = 128
    Top = 176
    object cdsPrioritiesPRIORITY_CODE: TAbmesFloatField
      FieldName = 'PRIORITY_CODE'
    end
    object cdsPrioritiesPRIORITY_NAME: TAbmesWideStringField
      FieldName = 'PRIORITY_NAME'
      Size = 50
    end
    object cdsPrioritiesPRIORITY_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_COLOR'
    end
    object cdsPrioritiesPRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_BACKGROUND_COLOR'
    end
  end
  object smrReportFooter: TAbmesMatrixReport
    Pattern.Strings = (
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    CurrentRecordOnly = True
    StrictFieldWidths = False
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    Left = 608
    Top = 208
  end
  object smrTotalsFin: TAbmesMatrixReport
    DataSource = dsTotals
    Pattern.Strings = (
      
        '|[IN_OUT:1:L]|[PRODUCT_NAME:21:L]|[PRODUCT_NO:12:R]|[REQUEST_QUA' +
        'NTITY:7:R]|[COMPLETED_QUANTITY:7:R]|[MEASURE_ABBREV:5:C]|[COMPLE' +
        'TED_ACCOUNT_QUANTITY:7:R]|[ACCOUNT_MEASURE_ABBREV:5:C]|[TOTAL_PR' +
        'ICE:7:R]|')
    GroupFields = 'STORE_CODE'
    StrictFieldWidths = True
    LinesPerPage = 0
    AllowPageBreak = apbNone
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    ReportFooter = smrReportFooter
    RecordHeader = smrTotalsRecordHeaderFin
    GroupHeader = smrTotalsGroupHeaderFin
    GroupFooter = smrTotalsGroupFooter
    AfterPrintRecord = smrTotalsOutAfterPrintRecord
    Left = 512
    Top = 322
  end
  object smrTotalsRecordHeaderFin: TAbmesMatrixReport
    Pattern.Strings = (
      
        '|-|---------------------+------------+-------+-------+-----+----' +
        '---+-----+-------|')
    CurrentRecordOnly = True
    StrictFieldWidths = False
    AllowPageBreak = apbNone
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    BeforePrint = smrTotalsRecordHeaderOutBeforePrint
    Left = 544
    Top = 322
  end
  object smrTotalsGroupHeaderFin: TAbmesMatrixReport
    DataSource = dsData
    Pattern.Strings = (
      '                       '#1047' '#1040' '#1071' '#1042' '#1050' '#1040'   '#1047' '#1040'   '#1044' '#1042' '#1048' '#1046' '#1045' '#1053' '#1048' '#1045
      '                       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
      
        #1058#1055' '#1043#1083': [_STORE_REQUEST_BRANCH_NO:5:L]   '#1047#1072#1103#1074#1082#1072' No: [STORE_REQUES' +
        'T_CODE:8:L]   [_SHOW_BND_OBJECT:45:R]'
      
        #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1074#1072#1083#1080#1076#1085#1086#1089#1090': '#1086#1090' [_REQUEST_BEGIN_DATE:10:L] '#1076#1086' [_REQUEST_' +
        'END_DATE:10:L]'
      
        #1047#1072#1103#1074#1103#1074#1072#1097#1086' '#1058#1055': [_REQUEST_DEPT:43:L]   '#1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086': [STORE_IDENTI' +
        'FIER:6:L]'
      
        '================================================================' +
        '=================='
      
        '|'#1042'|[_PRODUCT_CLASS_NAME:21:L]|          No|'#1047'-'#1086' '#1082#1086#1083'|'#1054#1090#1095' '#1082#1086#1083'|'#1052'.'#1077#1076'.' +
        '|'#1057#1095' '#1082#1086#1083' |'#1052'.'#1077#1076'.|'#1054#1073'.'#1094#1077#1085#1072'|'
      
        '|-|---------------------+------------+-------+-------+-----+----' +
        '---+-----+-------|')
    CurrentRecordOnly = True
    StrictFieldWidths = False
    AllowPageBreak = apbNone
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    OnGetFieldValues = smrTotalsGroupHeaderGetFieldValues
    AfterPrint = smrTotalsGroupHeaderOutAfterPrint
    Left = 576
    Top = 322
  end
  object cdsPartnerAccounts: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompanies
    Params = <
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvCompanyBankAccounts'
    BeforeOpen = cdsPartnerAccountsBeforeOpen
    Left = 472
    Top = 88
    object cdsPartnerAccountsACCOUNT_CODE: TAbmesFloatField
      FieldName = 'ACCOUNT_CODE'
    end
    object cdsPartnerAccountsACCOUNT_FULL_NAME: TAbmesWideStringField
      FieldName = 'ACCOUNT_FULL_NAME'
      Size = 104
    end
    object cdsPartnerAccountsCURRENCY_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_PRODUCT_CODE'
    end
  end
  object dsPartnerAccounts: TDataSource
    DataSet = cdsPartnerAccounts
    Left = 504
    Top = 88
  end
  object cdsStoreDealData: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 328
    Top = 272
    object cdsStoreDealDataOTHER_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'OTHER_EMPLOYEE_CODE'
    end
    object cdsStoreDealDataSTORE_DEAL_DATE: TAbmesDateTimeField
      FieldName = 'STORE_DEAL_DATE'
    end
  end
  object cdsTodayCurrencyRates: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'RATE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'RATE_DATE'
        ParamType = ptInput
      end>
    ProviderName = 'prvCurrencyRates'
    BeforeOpen = cdsTodayCurrencyRatesBeforeOpen
    Left = 288
    Top = 176
  end
end
