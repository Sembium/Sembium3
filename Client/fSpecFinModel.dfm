inherited fmSpecFinModel: TfmSpecFinModel
  ActiveControl = frFinancialProduct.edtTreeNodeNo
  Caption = #1055#1088#1080#1085#1094#1080#1087#1077#1085' '#1052#1054#1044#1045#1083' - '#1060#1080#1085#1072#1085#1089#1086#1074' - %s'
  ClientHeight = 416
  ClientWidth = 809
  PixelsPerInch = 96
  TextHeight = 13
  object lblFinanacialProduct: TLabel [0]
    Left = 8
    Top = 88
    Width = 87
    Height = 13
    Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1054#1073#1077#1082#1090
    FocusControl = frFinancialProduct
  end
  object lblSpecFinModelName: TLabel [1]
    Left = 376
    Top = 88
    Width = 206
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1085#1072' '#1055'-'#1052#1054#1044#1045#1083' - '#1060#1080#1085#1072#1085#1089#1086#1074
    FocusControl = edtSpecFinModelName
  end
  object lblFMMovementOffsetType: TLabel [2]
    Left = 680
    Top = 88
    Width = 99
    Height = 13
    Hint = #1054#1090#1084#1077#1089#1090#1074#1072#1085#1077' '#1089#1087#1088#1103#1084#1086' '#1073#1072#1079#1086#1074#1072' '#1076#1072#1090#1072' '#1085#1072
    Caption = #1054#1090#1084'. '#1089#1087#1088#1103#1084#1086' '#1041#1044' '#1085#1072
    ParentShowHint = False
    ShowHint = True
  end
  object lblExecDept: TLabel [3]
    Left = 8
    Top = 136
    Width = 96
    Height = 13
    Caption = #1058#1055' '#1056#1077#1072#1083#1080#1079#1072#1090#1086#1088
    FocusControl = frExecDept.edtTreeNodeNo
  end
  inherited pnlBottomButtons: TPanel
    Top = 381
    Width = 809
    TabOrder = 8
    inherited pnlOKCancel: TPanel
      Left = 541
    end
    inherited pnlClose: TPanel
      Left = 452
    end
    inherited pnlApply: TPanel
      Left = 720
      Visible = False
    end
    inherited pnlDataButtons: TPanel
      Width = 521
      object btnMoveUpLine: TSpeedButton [0]
        Left = 477
        Top = 2
        Width = 28
        Height = 13
        Action = actMoveUpLine
        Layout = blGlyphBottom
      end
      object btnMoveDownLine: TSpeedButton [1]
        Left = 477
        Top = 15
        Width = 28
        Height = 12
        Action = actMoveDownLine
      end
      inherited btnDeleteData: TBitBtn
        Left = 250
        TabOrder = 2
      end
      inherited btnEditData: TBitBtn
        Left = 364
        TabOrder = 3
      end
      object btnCreateLike: TBitBtn
        Left = 122
        Top = 2
        Width = 119
        Height = 25
        Action = actCreateLike
        Caption = #1044#1086#1073#1072#1074#1103#1085#1077' '#1082#1072#1090#1086'...'
        Spacing = -1
        TabOrder = 1
      end
    end
  end
  inherited pnlMain: TPanel
    Top = 180
    Width = 809
    Height = 201
    Align = alBottom
    TabOrder = 7
    inherited pnlGrid: TPanel
      Width = 793
      Height = 185
      inherited pnlNavigator: TPanel
        Width = 793
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 793
        Height = 161
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghIncSearch, dghPreferIncSearch]
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = '_SHOW_NO'
            Footers = <>
            Title.Caption = #1053#1086#1084#1077#1088
            Width = 40
          end
          item
            Alignment = taRightJustify
            EditButtons = <>
            FieldName = 'LINE_QUANTITY_PERCENT'
            Footers = <>
            Title.Caption = #1057#1090#1088'. '#1055#1088'. (%)'
            Width = 40
          end
          item
            Alignment = taRightJustify
            Color = 16115403
            EditButtons = <>
            FieldName = 'MOVEMENT_OFFSET_DAYS'
            Footers = <>
            Title.Caption = #1055#1077#1088#1080#1086#1076' '#1079#1072' '#1054#1090#1084#1077#1089#1090#1074'. ('#1082'.'#1076'.)'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'FIN_STORE_IDENTIFIER'
            Footers = <>
            Title.Caption = #1058#1055' '#1060#1080#1085#1072#1085#1089#1086#1074#1086' '#1085#1072' '#1048#1055
            Width = 90
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = '_ARROW'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Symbol'
            Font.Style = []
            Footers = <>
            Title.Caption = #1055#1086#1089#1086#1082#1072
            Width = 45
          end
          item
            Color = 16115403
            EditButtons = <>
            FieldName = 'MOVEMENT_DURATION_DAYS'
            Footers = <>
            Title.Caption = #1055#1077#1088#1080#1086#1076' '#1079#1072' '#1076#1074#1080#1078#1077#1085#1080#1077' ('#1082'.'#1076'.)'
          end
          item
            EditButtons = <>
            FieldName = '_PARTNER_ACCOUNT_FULL_NAME'
            Footers = <>
            Title.Caption = #1058#1055' '#1060#1080#1085#1072#1085#1089#1086#1074#1086' '#1085#1072' %BorderRelTypeName%'
            Width = 220
          end
          item
            EditButtons = <>
            FieldName = '_FIN_MODEL_LINE_REASON_ABBREV'
            Footers = <>
            Title.Caption = #1054#1089#1085#1086#1074#1072#1085#1080#1077
            Width = 194
          end>
      end
    end
  end
  object edtSpecFinModelName: TDBEdit [6]
    Left = 376
    Top = 104
    Width = 297
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'SPEC_FIN_MODEL_NAME'
    DataSource = dsData
    TabOrder = 3
  end
  inline frFinancialProduct: TfrProductFieldEditFrameBald [7]
    Left = 8
    Top = 104
    Width = 361
    Height = 22
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 22
    Constraints.MinHeight = 22
    TabOrder = 2
    TabStop = True
    inherited gbTreeNode: TGroupBox
      Width = 377
      inherited pnlTreeNode: TPanel
        Width = 361
        inherited pnlTreeNodeName: TPanel
          Width = 179
          inherited edtTreeNodeName: TDBEdit
            Width = 178
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 179
        end
        inherited pnlRightButtons: TPanel
          Left = 302
        end
      end
    end
  end
  inline frPartner: TfrPartnerExFieldEditFrame [8]
    Left = 8
    Top = 8
    Width = 585
    Height = 65
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 155
    Constraints.MinHeight = 49
    TabOrder = 0
    TabStop = True
    inherited gbPartner: TGroupBox
      Width = 585
      Height = 65
      Caption = ' '#1055#1072#1088#1090#1085#1100#1086#1088' - %BorderRelTypeName% '
      inherited pnlNameAndButtons: TPanel
        Width = 160
        Height = 48
        inherited pnlRightButtons: TPanel
          Left = 124
          Height = 33
          inherited tlbDocButton: TToolBar
            Height = 33
          end
        end
        inherited pnlPartnerName: TPanel
          Width = 124
          Height = 33
          inherited edtPartnerName: TDBEdit
            Width = 111
          end
          inherited cbPartner: TJvDBLookupCombo
            Width = 125
          end
        end
        inherited pnlNameAndButtonsTop: TPanel
          Width = 160
          inherited lblPartner: TLabel
            Width = 76
          end
        end
      end
      inherited pnlPaddingRight: TPanel
        Left = 464
        Height = 48
      end
      inherited pnlPartnerCode: TPanel
        Height = 48
        inherited lblPartnerCode: TLabel
          Width = 19
        end
      end
      inherited pnlPaddingLeft: TPanel
        Height = 48
      end
      inherited frPartnerStatus: TfrCompanyStatus
        Height = 48
        Constraints.MaxHeight = 48
        inherited lblCurrentStatus: TLabel
          Width = 34
        end
        inherited lblReachMonths: TLabel
          Width = 6
        end
        inherited lblExistanceMonths: TLabel
          Width = 6
        end
        inherited lblMonths: TLabel
          Width = 11
        end
        inherited dsData: TDataSource
          DataSet = frPartner.cdsPartner
        end
      end
      inherited pnlPriority: TPanel
        Height = 48
        inherited lblPriority: TLabel
          Width = 38
        end
      end
      inherited pnlCountry: TPanel
        Left = 470
        Height = 48
      end
      inherited pnlParRelButton: TPanel
        Left = 510
        Height = 48
      end
    end
  end
  object gbDateInterval: TGroupBox [9]
    Left = 600
    Top = 8
    Width = 201
    Height = 65
    Caption = ' '#1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083' '
    TabOrder = 1
    DesignSize = (
      201
      65)
    inline frDateInterval: TfrDateIntervalFrame
      Left = 8
      Top = 28
      Width = 145
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 145
      Constraints.MinHeight = 21
      Constraints.MinWidth = 145
      TabOrder = 0
      TabStop = True
    end
    object tlbDocs: TToolBar
      Left = 153
      Top = 28
      Width = 36
      Height = 22
      Align = alNone
      Anchors = [akTop, akRight]
      AutoSize = True
      ButtonWidth = 36
      EdgeInner = esNone
      Images = dmMain.ilDocs
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      object btnDocs: TToolButton
        Left = 0
        Top = 0
        ImageIndex = 1
        OnClick = btnDocsClick
      end
    end
  end
  object pnlAuthorizeButtons: TPanel [10]
    Left = 672
    Top = 150
    Width = 129
    Height = 33
    BevelOuter = bvNone
    TabOrder = 6
    object pnlAuthorize: TPanel
      Left = 0
      Top = 0
      Width = 129
      Height = 33
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object btnAuthorize: TBitBtn
        Left = 8
        Top = 0
        Width = 121
        Height = 25
        Action = actAuthorize
        Caption = #1042#1072#1083#1080#1076#1080#1088#1072#1085#1077
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
    object pnlUnauthorize: TPanel
      Left = 129
      Top = 0
      Width = 129
      Height = 33
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 1
      object btnUnauthorize: TBitBtn
        Left = 8
        Top = 0
        Width = 121
        Height = 25
        Action = actUnauthorize
        Caption = #1056#1072#1079#1074#1072#1083#1080#1076#1080#1088#1072#1085#1077
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
        Spacing = -1
        TabOrder = 0
      end
    end
  end
  object cbFMMovementOffsetType: TJvDBLookupCombo [11]
    Left = 680
    Top = 104
    Width = 121
    Height = 21
    DeleteKeyClear = False
    DataField = '_FM_MOVEMENT_OFFSET_TYPE_NAME'
    DataSource = dsData
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 4
  end
  inline frExecDept: TfrDeptFieldEditFrameBald [12]
    Left = 8
    Top = 152
    Width = 361
    Height = 22
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 22
    Constraints.MinHeight = 22
    TabOrder = 5
    inherited gbTreeNode: TGroupBox
      Width = 377
      inherited pnlTreeNode: TPanel
        Width = 361
        inherited pnlTreeNodeName: TPanel
          Width = 214
          inherited edtTreeNodeName: TDBEdit
            Width = 213
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 214
        end
        inherited pnlRightButtons: TPanel
          Left = 325
        end
      end
    end
  end
  inherited dsGridData: TDataSource [13]
    Left = 176
    Top = 296
  end
  inherited cdsGridData: TAbmesClientDataSet [14]
    Left = 144
    Top = 296
  end
  inherited alActions: TActionList [15]
    Left = 264
    Top = 264
    inherited actForm: TAction
      Caption = #1055#1088#1080#1085#1094#1080#1087#1077#1085' '#1052#1054#1044#1045#1083' - '#1060#1080#1085#1072#1085#1089#1086#1074' - %s'
    end
    object actMoveUpLine: TAction
      Hint = #1053#1072#1075#1086#1088#1077
      ImageIndex = 43
      OnExecute = actMoveUpLineExecute
      OnUpdate = actMoveUpLineUpdate
    end
    object actMoveDownLine: TAction
      Hint = #1053#1072#1076#1086#1083#1091
      ImageIndex = 44
      OnExecute = actMoveDownLineExecute
      OnUpdate = actMoveDownLineUpdate
    end
    object actAuthorize: TAction
      Caption = #1042#1072#1083#1080#1076#1080#1088#1072#1085#1077
      ImageIndex = 55
      OnExecute = actAuthorizeExecute
      OnUpdate = actAuthorizeUpdate
    end
    object actUnauthorize: TAction
      Caption = #1056#1072#1079#1074#1072#1083#1080#1076#1080#1088#1072#1085#1077
      ImageIndex = 110
      OnExecute = actUnauthorizeExecute
      OnUpdate = actUnauthorizeUpdate
    end
    object actCreateLike: TAction
      Caption = #1044#1086#1073#1072#1074#1103#1085#1077' '#1082#1072#1090#1086'...'
      ImageIndex = 4
      OnExecute = actCreateLikeExecute
      OnUpdate = actCreateLikeUpdate
    end
  end
  inherited pdsGridDataParams: TParamDataSet [16]
    Left = 144
    Top = 328
  end
  inherited dsGridDataParams: TDataSource [17]
    Left = 176
    Top = 328
  end
  inherited dsData: TDataSource
    Left = 176
    Top = 264
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 144
    Top = 264
  end
  object dsParRelPeriods: TDataSource
    Left = 656
  end
end
