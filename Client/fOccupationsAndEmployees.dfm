inherited fmOccupationsAndEmployees: TfmOccupationsAndEmployees
  Left = 271
  Top = 128
  ActiveControl = nil
  Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1080
  ClientHeight = 648
  ClientWidth = 1019
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 613
    Width = 1019
    inherited pnlOKCancel: TPanel
      Left = 751
      TabOrder = 3
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 662
      TabOrder = 2
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 930
      TabOrder = 4
      Visible = False
    end
    object btnDetailEmployeeCompany: TBitBtn
      Left = 360
      Top = 2
      Width = 129
      Height = 25
      Action = actDetailEmployeeCompany
      Caption = #1057#1048#1063#1048' '#1055#1072#1088#1090#1085#1100#1086#1088'...'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00
        FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
        0000FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF000000
        000000000000FF00FF00FF00FF0000000000FF00FF00FF00FF0000000000FF00
        FF00FF00FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FF00FF0000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF0084008400000000000000000000000000FF00FF00FF00FF00FF00
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
        FF00840084008400840000000000000000000000000084008400FF00FF000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF0000000000000000000000
        0000FF00FF000000000000000000000000000000000084008400000000000000
        00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00
        FF0000000000FF00FF008400840084008400FF00FF0084008400000000000000
        000000000000FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
        FF0000000000FF00FF00FF00FF0084008400FF00FF0000000000000000000000
        00000000000000000000FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
        FF00FF00FF0000000000FF00FF00FF00FF00FF00FF0000000000000000000000
        0000000000000000000000000000000000000000000000000000FF00FF000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF000000
        0000000000000000000000000000000000000000000000000000FF00FF00FF00
        FF0000000000FF00FF00FF00FF00FF00FF0084008400FF00FF00FF00FF00FF00
        FF00000000000000000000000000000000000000000000000000000000000000
        0000FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00000000000000000000000000000000000000
        00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      Spacing = -1
      TabOrder = 0
    end
    object btnDetailEmployee: TBitBtn
      Left = 496
      Top = 2
      Width = 129
      Height = 25
      Action = actDetailEmployee
      Caption = #1057#1083#1091#1078#1080#1090#1077#1083'...'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000008400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00000084000000840084848400FF00FF00FF00FF00FF00FF0000000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF000000
        8400000084000000840000008400FF00FF00FF00FF00FF00FF0000000000FF00
        FF00FF00FF00000000000000000000000000FF00FF00FF00FF00000084000000
        840000008400FF00FF000000840000008400FF00FF00FF00FF00FF00FF000000
        000000000000FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF000000
        8400FF00FF00FF00FF00FF00FF000000840000008400FF00FF00FF00FF00FF00
        FF0000000000FF00FF00000000000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000840000008400FF00FF000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000008400000000000000
        00000000000000000000FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
        000000000000FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
        0000000000000000000000000000FF00FF00FF00FF0000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
        00000000000000000000000000000000000000000000FF00FF0000000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        000000000000000000000000000000000000000000000000000000000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      Spacing = -1
      TabOrder = 1
    end
    object btnEditDetailRecord: TBitBtn
      Left = 232
      Top = 2
      Width = 105
      Height = 25
      Action = actEditDetailRecord
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
      TabOrder = 5
    end
    object btnInsertDetailRecord: TBitBtn
      Left = 8
      Top = 2
      Width = 105
      Height = 25
      Action = actInsertDetailRecord
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
      TabOrder = 6
    end
    object btnDelDetailRecord: TBitBtn
      Left = 120
      Top = 2
      Width = 105
      Height = 25
      Action = actDelDetailRecord
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
      TabOrder = 7
    end
  end
  inherited pnlMain: TPanel
    Width = 1019
    Height = 613
    inherited sptDetail: TSplitter
      Top = 391
      Width = 1003
    end
    inherited pnlDetailGrid: TPanel
      Top = 394
      Width = 1003
      Height = 211
      inherited pnlDetailNavigator: TPanel
        Width = 1003
        inherited navDetail: TDBColorNavigator
          Width = 120
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbEdit]
          Hints.Strings = ()
        end
        inherited tlbDetailGridButtons: TToolBar
          Left = 120
        end
        object tlbDetailDocs: TToolBar
          Left = 152
          Top = 0
          Width = 273
          Height = 24
          Align = alLeft
          ButtonHeight = 24
          ButtonWidth = 37
          EdgeInner = esNone
          Images = dmMain.ilDocs
          TabOrder = 2
          object sepDetailOccupationEmployeeDoc: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'sepDetailOccupationEmployeeDoc'
            ImageIndex = 1
            Style = tbsSeparator
          end
          object lblDetailOccupationEmployeeDoc: TLabel
            Left = 8
            Top = 0
            Width = 89
            Height = 24
            AutoSize = False
            Caption = ' '#1044#1083'. '#1053#1072#1079#1085#1072#1095#1077#1085#1080#1077' '
            Layout = tlCenter
          end
          object btnDetailOccupationEmployeeDoc: TToolButton
            Left = 97
            Top = 0
            Action = actDetailOccupationEmployeeDoc
          end
          object sepDetailEmployeeDoc: TToolButton
            Left = 134
            Top = 0
            Width = 8
            Caption = 'ToolButton1'
            ImageIndex = 1
            Style = tbsSeparator
          end
          object lblDetailEmployeeDoc: TLabel
            Left = 142
            Top = 0
            Width = 55
            Height = 24
            AutoSize = False
            Caption = ' '#1057#1083#1091#1078#1080#1090#1077#1083' '
            Layout = tlCenter
          end
          object btnDetailEmployeeDoc: TToolButton
            Left = 197
            Top = 0
            Action = actDetailEmployeeDoc
          end
        end
      end
      inherited grdDetail: TAbmesDBGrid
        Width = 1003
        Height = 187
        UseMultiTitle = True
        VTitleMargin = 5
        OnGetCellParams = grdDetailGetCellParams
        Columns = <
          item
            Color = 16115403
            EditButtons = <>
            FieldName = 'BEGIN_DATE'
            Footers = <>
            Title.Caption = #1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083
            Width = 125
          end
          item
            EditButtons = <>
            FieldName = 'END_DATE'
            Footers = <>
            Title.Caption = ' '
            Visible = False
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = '_OCCUPATION_STATUS_ABBREV'
            Footers = <>
            Title.Caption = #1057#1090#1072'- '#1090#1091#1089
            Width = 26
          end
          item
            EditButtons = <>
            FieldName = 'COMPANY_NO'
            Footers = <>
            Width = 72
          end
          item
            EditButtons = <>
            FieldName = 'EMPLOYEE_NAME'
            Footers = <>
            Title.Caption = #1057#1083#1091#1078#1080#1090#1077#1083'|'#1048#1084#1077
            Width = 220
          end
          item
            Alignment = taCenter
            Color = 15532031
            EditButtons = <>
            FieldName = 'E_DOC_EMPTINESS_REQ_CODE'
            Footers = <>
            Title.Caption = #1057#1083#1091#1078#1080#1090#1077#1083'|'#1052' '#1048' '#1048' '#1054
            Width = 16
          end
          item
            Alignment = taCenter
            Color = 15532031
            EditButtons = <>
            FieldName = 'E_UNAUTHORIZED_ACTIVE_DI_COUNT'
            Footers = <>
            Title.Caption = #1057#1083#1091#1078#1080#1090#1077#1083'|'#1048#1048#1054
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = 'EMPLOYEE_BEGIN_AGE_YEARS'
            Footers = <>
            Title.Caption = #1057#1083#1091#1078#1080#1090#1077#1083'|'#1042#1098#1079#1088#1072#1089#1090'|'#1053#1072#1095'.'
            Width = 24
          end
          item
            EditButtons = <>
            FieldName = 'EMPLOYEE_END_AGE_YEARS'
            Footers = <>
            Title.Caption = #1057#1083#1091#1078#1080#1090#1077#1083'|'#1042#1098#1079#1088#1072#1089#1090'|'#1050#1088'.'
            Width = 24
          end
          item
            EditButtons = <>
            FieldName = 'EMP_NEGATIVE_DISCIPLINE_RATING'
            Footers = <>
            Title.Caption = #1057#1083#1091#1078#1080#1090#1077#1083'|'#1056#1072#1073#1086#1090#1077#1085' '#1056#1077#1081#1090#1080#1085#1075'|'#8212
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = 'EMP_POSITIVE_DISCIPLINE_RATING'
            Footers = <>
            Title.Caption = #1057#1083#1091#1078#1080#1090#1077#1083'|'#1056#1072#1073#1086#1090#1077#1085' '#1056#1077#1081#1090#1080#1085#1075'|+'
            Width = 35
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = '_OE_PRC_ACTIONS_STATUS'
            Footers = <>
            Title.Caption = #1055#1086#1079#1085'. '#1040#1076#1077#1082#1074'. '#1085#1072' '#1044#1056#1054#1088
            Title.Hint = #1055#1086#1079#1085#1072#1074#1072#1090#1077#1083#1085#1072' '#1040#1076#1077#1082#1074#1072#1090#1085#1086#1089#1090
            Width = 40
            OnGetCellParams = grdDetailColumns11GetCellParams
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = '_PROFESSIONS_STATUS'
            Footers = <>
            Title.Caption = #1056#1083#1074'. '#1040#1076#1077#1082#1074'. '#1085#1072' '#1044#1056#1054#1088
            Title.Hint = #1056#1086#1083#1077#1074#1072' '#1040#1076#1077#1082#1074#1072#1090#1085#1086#1089#1090
            Width = 40
            OnGetCellParams = grdDetailColumns7GetCellParams
          end
          item
            EditButtons = <>
            FieldName = 'OE_REGIME_NAME'
            Footers = <>
            Title.Caption = #1056#1077#1078#1080#1084' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1085#1086' '#1053#1072#1079#1085#1072#1095#1077#1085#1080#1077
            Width = 93
          end
          item
            Alignment = taCenter
            Color = 15532031
            EditButtons = <>
            FieldName = 'DOC_EMPTINESS_REQ_CODE'
            Footers = <>
            Title.Caption = #1052' '#1048' '#1048' '#1054
            Width = 16
          end
          item
            Alignment = taCenter
            Color = 15532031
            EditButtons = <>
            FieldName = 'UNAUTHORIZED_ACTIVE_DI_COUNT'
            Footers = <>
            Title.Caption = #1048#1048#1054
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = 'SALARY'
            Footers = <>
            Title.Caption = #1054#1089#1085#1086#1074#1085#1072' '#1079#1072#1087#1083#1072#1090#1072'|'#1057#1090#1086#1081#1085#1086#1089#1090' /%s/'
            Width = 52
          end
          item
            EditButtons = <>
            FieldName = 'SALARY_DATE_UNIT_NAME'
            Footers = <>
            Title.Caption = #1054#1089#1085#1086#1074#1085#1072' '#1079#1072#1087#1083#1072#1090#1072'|'#1042#1088#1077#1084#1077#1074#1072' '#1089#1090#1098#1087#1082#1072
            Width = 66
          end>
      end
    end
    inherited pnlGrid: TPanel
      Width = 1003
      Height = 383
      inherited pnlNavigator: TPanel
        Width = 1003
        object btnToggleEmployeeProduct: TSpeedButton [0]
          Left = 979
          Top = 0
          Width = 24
          Height = 24
          Hint = #1055#1088#1077#1074#1082#1083#1102#1095#1074#1072' '#1044#1056#1054#1088' / '#1057#1083#1091#1078#1080#1090#1077#1083
          AllowAllUp = True
          GroupIndex = 1
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000008400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00000084000000840084848400FF00FF00FF00FF00FF00FF0000000000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF000000
            8400000084000000840000008400FF00FF00FF00FF00FF00FF0000000000FF00
            FF00FF00FF00000000000000000000000000FF00FF00FF00FF00000084000000
            840000008400FF00FF000000840000008400FF00FF00FF00FF00FF00FF000000
            000000000000FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF000000
            8400FF00FF00FF00FF00FF00FF000000840000008400FF00FF00FF00FF00FF00
            FF0000000000FF00FF00000000000000000000000000FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000840000008400FF00FF000000
            000000000000FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000008400000000000000
            00000000000000000000FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
            000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
            000000000000FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
            0000000000000000000000000000FF00FF00FF00FF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
            00000000000000000000000000000000000000000000FF00FF0000000000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            000000000000000000000000000000000000000000000000000000000000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          ParentShowHint = False
          ShowHint = True
          Transparent = False
          OnClick = btnToggleEmployeeProductClick
        end
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
        object pnlFilter: TPanel
          Left = 747
          Top = 0
          Width = 224
          Height = 24
          BevelOuter = bvNone
          TabOrder = 3
          object lblStatusDate: TLabel
            Left = 0
            Top = 4
            Width = 105
            Height = 13
            Caption = #1057#1098#1089#1090#1086#1103#1085#1080#1077' '#1082#1098#1084' '#1076#1072#1090#1072
          end
          inline frStatusDate: TfrDateFieldEditFrame
            Left = 112
            Top = 0
            Width = 105
            Height = 21
            Constraints.MaxHeight = 21
            Constraints.MaxWidth = 105
            Constraints.MinHeight = 21
            Constraints.MinWidth = 105
            TabOrder = 0
            TabStop = True
            inherited dsData: TDataSource
              DataSet = pdsGridDataParams
            end
          end
        end
        object tlbTopButtons: TToolBar
          Left = 176
          Top = 0
          Width = 289
          Height = 24
          Align = alLeft
          ButtonHeight = 24
          ButtonWidth = 37
          EdgeInner = esNone
          Images = dmMain.ilDocs
          TabOrder = 4
          object sepOccupationDoc: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'sepOccupationDoc'
            ImageIndex = 1
            Style = tbsSeparator
          end
          object lblOccupationDoc: TLabel
            Left = 8
            Top = 0
            Width = 59
            Height = 24
            AutoSize = False
            Caption = ' '#1044#1083#1098#1078#1085#1086#1089#1090' '
            Layout = tlCenter
          end
          object btnOccupationDoc: TToolButton
            Left = 67
            Top = 0
            Action = actOccupationDoc
          end
          object sepProductDoc: TToolButton
            Left = 104
            Top = 0
            Width = 8
            Caption = 'sepProductDoc'
            ImageIndex = 1
            Style = tbsSeparator
          end
          object lblProductDoc: TLabel
            Left = 112
            Top = 0
            Width = 36
            Height = 24
            AutoSize = False
            Caption = ' '#1044#1056#1054#1088' '
            Layout = tlCenter
          end
          object btnProductDoc: TToolButton
            Left = 148
            Top = 0
            Action = actProductDoc
          end
          object sepEmployeeDoc: TToolButton
            Left = 185
            Top = 0
            Width = 8
            Caption = 'sepEmployeeDoc'
            ImageIndex = 1
            Style = tbsSeparator
          end
          object lblEmployeeDoc: TLabel
            Left = 193
            Top = 0
            Width = 55
            Height = 24
            AutoSize = False
            Caption = ' '#1057#1083#1091#1078#1080#1090#1077#1083' '
            Layout = tlCenter
          end
          object btnEmployeeDoc: TToolButton
            Left = 248
            Top = 0
            Action = actEmployeeDoc
          end
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 1003
        Height = 318
        HorzScrollBar.Visible = False
        UseMultiTitle = True
        VTitleMargin = 5
        OnGetCellParams = grdDataGetCellParams
        Columns = <
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = '_OCCUPATION_STATUS_ABBREV'
            Footers = <>
            Title.Caption = #1044#1083#1098#1078#1085#1086#1089#1090'|'#1057#1090#1072'- '#1090#1091#1089
            Width = 26
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'OCCUPATION_IS_MAIN'
            Footers = <>
            Title.Caption = #1044#1083#1098#1078#1085#1086#1089#1090'|'#1042#1080#1076
            Width = 29
          end
          item
            EditButtons = <>
            FieldName = 'OCCUPATION_NAME'
            Footers = <>
            Title.Caption = #1044#1083#1098#1078#1085#1086#1089#1090'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 180
          end
          item
            Alignment = taCenter
            Color = 15532031
            EditButtons = <>
            FieldName = 'O_DOC_EMPTINESS_REQ_CODE'
            Footers = <>
            Title.Caption = #1044#1083#1098#1078#1085#1086#1089#1090'|'#1052' '#1048' '#1048' '#1054
            Width = 16
          end
          item
            Alignment = taCenter
            Color = 15532031
            EditButtons = <>
            FieldName = 'O_UNAUTHORIZED_ACTIVE_DI_COUNT'
            Footers = <>
            Title.Caption = #1044#1083#1098#1078#1085#1086#1089#1090'|'#1048#1048#1054
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = 'OCCUPATION_PHASE'
            Footers = <>
            Title.Caption = #1044#1083#1098#1078#1085#1086#1089#1090'|'#1060' '#1072' '#1079' '#1072
            Width = 14
          end
          item
            EditButtons = <>
            FieldName = 'OCCUPATION_LEVEL'
            Footers = <>
            Title.Caption = #1044#1083#1098#1078#1085#1086#1089#1090'|'#1054#1088#1075'. '#1085#1080#1074#1086
            Title.Orientation = tohVertical
            Width = 16
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'SHIFT_IDENTIFIER'
            Footers = <>
            Title.Caption = #1044#1083#1098#1078#1085#1086#1089#1090'|'#1057' '#1084'.'
            Width = 16
          end
          item
            EditButtons = <>
            FieldName = 'DEPT_IDENTIFIER'
            Footers = <>
            Title.Caption = #1044#1083#1098#1078#1085#1086#1089#1090'|'#1054#1088#1063' '#1085#1072' '#1044#1083#1098#1078'- '#1085#1086#1089#1090#1090#1072
            Width = 47
          end
          item
            EditButtons = <>
            FieldName = 'DAY_DIFF'
            Footers = <>
            Title.Caption = #1044#1083#1098#1078#1085#1086#1089#1090'|'#1056#1079#1088#1074'. '#1044#1083'.'
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'BASE_SALARY'
            Footers = <>
            Title.Caption = #1044#1083#1098#1078#1085#1086#1089#1090'|'#1041#1072#1079#1086#1074#1072' '#1073#1088#1091#1090#1085#1072' '#1079#1072#1087#1083#1072#1090#1072'|'#1057#1090#1086#1081#1085#1086#1089#1090' /%s/'
            Width = 52
          end
          item
            EditButtons = <>
            FieldName = 'BASE_SALARY_DATE_UNIT_NAME'
            Footers = <>
            Title.Caption = #1044#1083#1098#1078#1085#1086#1089#1090'|'#1041#1072#1079#1086#1074#1072' '#1073#1088#1091#1090#1085#1072' '#1079#1072#1087#1083#1072#1090#1072'|'#1042#1088#1077#1084#1077#1074#1072' '#1089#1090#1098#1087#1082#1072
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'MIN_SALARY_RATIO_COEF'
            Footers = <>
            Title.Caption = #1050#1054#1088#1045#1092'|'#1054#1090
            Visible = False
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'MAX_SALARY_RATIO_COEF'
            Footers = <>
            Title.Caption = #1050#1054#1088#1045#1092'|'#1044#1086
            Visible = False
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'COMPANY_NO'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'EMPLOYEE_NAME'
            Footers = <>
            Title.Caption = #1057#1083#1091#1078#1080#1090#1077#1083'|'#1048#1084#1077
            Width = 163
          end
          item
            Alignment = taCenter
            Color = 15532031
            EditButtons = <>
            FieldName = 'E_DOC_EMPTINESS_REQ_CODE'
            Footers = <>
            Title.Caption = #1057#1083#1091#1078#1080#1090#1077#1083'|'#1052' '#1048' '#1048' '#1054
            Width = 16
          end
          item
            Alignment = taCenter
            Color = 15532031
            EditButtons = <>
            FieldName = 'E_UNAUTHORIZED_ACTIVE_DI_COUNT'
            Footers = <>
            Title.Caption = #1057#1083#1091#1078#1080#1090#1077#1083'|'#1048#1048#1054
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = 'EMPLOYEE_AGE_YEARS'
            Footers = <>
            Title.Caption = #1057#1083#1091#1078#1080#1090#1077#1083'|'#1042#1098#1079#1088#1072#1089#1090
            Title.Orientation = tohVertical
            Width = 16
          end
          item
            EditButtons = <>
            FieldName = 'EMP_NEGATIVE_DISCIPLINE_RATING'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Caption = #1057#1083#1091#1078#1080#1090#1077#1083'|'#1056#1072#1073#1086#1090#1077#1085' '#1056#1077#1081#1090#1080#1085#1075'|'#8212
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = 'EMP_POSITIVE_DISCIPLINE_RATING'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Caption = #1057#1083#1091#1078#1080#1090#1077#1083'|'#1056#1072#1073#1086#1090#1077#1085' '#1056#1077#1081#1090#1080#1085#1075'|+'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Microsoft Sans Serif'
            Title.Font.Style = []
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = 'PRODUCT_NAME'
            Footers = <>
            Title.Caption = #1044#1056#1054#1088'|id '#1083#1086#1075#1080#1095#1077#1089#1082#1080
            Width = 170
          end
          item
            Alignment = taCenter
            Color = 15532031
            EditButtons = <>
            FieldName = 'P_DOC_EMPTINESS_REQ_CODE'
            Footers = <>
            Title.Caption = #1044#1056#1054#1088'|'#1052' '#1048' '#1048' '#1054
            Width = 16
          end
          item
            Alignment = taCenter
            Color = 15532031
            EditButtons = <>
            FieldName = 'P_UNAUTHORIZED_ACTIVE_DI_COUNT'
            Footers = <>
            Title.Caption = #1044#1056#1054#1088'|'#1048#1048#1054
            Width = 35
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = '_OCC_PRC_ACTIONS_STATUS'
            Footers = <>
            Title.Caption = #1044#1056#1054#1088'|'#1055#1086#1079#1085'. '#1040#1076#1077#1082#1074'.'
            Title.Hint = #1055#1086#1079#1085#1072#1074#1072#1090#1077#1083#1085#1072' '#1040#1076#1077#1082#1074#1072#1090#1085#1086#1089#1090
            Visible = False
            Width = 40
            OnGetCellParams = grdDataColumns24GetCellParams
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = '_PROFESSIONS_STATUS'
            Footers = <>
            Title.Caption = #1044#1056#1054#1088'|'#1056#1083#1074'. '#1040#1076#1077#1082#1074'.'
            Title.Hint = #1056#1086#1083#1077#1074#1072' '#1040#1076#1077#1082#1074#1072#1090#1085#1086#1089#1090
            Visible = False
            Width = 40
            OnGetCellParams = grdDataColumns16GetCellParams
          end
          item
            EditButtons = <>
            FieldName = 'OE_REGIME_NAME'
            Footers = <>
            Title.Caption = #1044#1083#1098#1078#1085#1086#1089#1090#1085#1086' '#1053#1072#1079#1085#1072#1095#1077#1085#1080#1077'|'#1056#1077#1078#1080#1084
            Width = 94
          end
          item
            EditButtons = <>
            FieldName = 'ASSIGNMENT_DAY_DIFF'
            Footers = <>
            Title.Caption = #1044#1083#1098#1078#1085#1086#1089#1090#1085#1086' '#1053#1072#1079#1085#1072#1095#1077#1085#1080#1077'|'#1056#1079#1088#1074'.'
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'SALARY'
            Footers = <>
            Title.Caption = #1054#1089#1085#1086#1074#1085#1072' '#1079#1072#1087#1083#1072#1090#1072'|'#1057#1090#1086#1081#1085#1086#1089#1090' /%s/'
            Visible = False
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'SALARY_DATE_UNIT_NAME'
            Footers = <>
            Title.Caption = #1054#1089#1085#1086#1074#1085#1072' '#1079#1072#1087#1083#1072#1090#1072'|'#1042#1088#1077#1084#1077#1074#1072' '#1089#1090#1098#1087#1082#1072
            Visible = False
            Width = 70
          end>
      end
      object pnlGridTotals: TPanel
        Left = 0
        Top = 342
        Width = 1003
        Height = 41
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 2
        object lblOccupationCount: TLabel
          Left = 679
          Top = 23
          Width = 87
          Height = 13
          Caption = #1041#1088#1086#1081' '#1044#1083#1098#1078#1085#1086#1089#1090#1080
          FocusControl = edtMainOccCount
        end
        object lblMainOccupationCount: TLabel
          Left = 778
          Top = 4
          Width = 96
          Height = 13
          Caption = #1054#1089#1085'. ('#1047#1072#1077#1090#1080'/'#1054#1073#1097#1086')'
          FocusControl = edtMainOccCount
        end
        object lblNonMainOccupationCount: TLabel
          Left = 898
          Top = 4
          Width = 96
          Height = 13
          Caption = #1055#1088#1074'. ('#1047#1072#1077#1090#1080'/'#1054#1073#1097#1086')'
          FocusControl = edtNotMainOccCount
        end
        object edtMainOccCount: TDBEdit
          Left = 778
          Top = 20
          Width = 105
          Height = 21
          Color = clBtnFace
          DataField = '_MAIN_COUNTS'
          DataSource = dsGridData
          TabOrder = 1
        end
        object edtNotMainOccCount: TDBEdit
          Left = 898
          Top = 20
          Width = 105
          Height = 21
          Color = clBtnFace
          DataField = '_NOT_MAIN_COUNTS'
          DataSource = dsGridData
          TabOrder = 2
        end
        object btnEditData: TBitBtn
          Left = 0
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
          TabOrder = 0
        end
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 104
    Top = 144
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    ConnectionBroker = dmMain.conHumanResource
    FieldDefs = <
      item
        Name = 'OCCUPATION_CODE'
        DataType = ftFloat
      end
      item
        Name = 'OCCUPATION_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'OCCUPATION_DOC_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'OCCUPATION_DOC_CODE'
        DataType = ftFloat
      end
      item
        Name = 'OCCUPATION_HAS_DOC'
        DataType = ftFloat
      end
      item
        Name = 'OCCUPATION_LEVEL'
        DataType = ftFloat
      end
      item
        Name = 'SHIFT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SHIFT_IDENTIFIER'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'IS_ACTIVE'
        DataType = ftFloat
      end
      item
        Name = 'IS_OCCUPIED'
        DataType = ftFloat
      end
      item
        Name = 'EMPLOYEE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'EMPLOYEE_NAME'
        DataType = ftWideString
        Size = 44
      end
      item
        Name = 'EMPLOYEE_DOC_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'EMPLOYEE_DOC_CODE'
        DataType = ftFloat
      end
      item
        Name = 'EMPLOYEE_HAS_DOC'
        DataType = ftFloat
      end
      item
        Name = 'EMPLOYEE_AGE_YEARS'
        DataType = ftFloat
      end
      item
        Name = 'EMPLOYEE_EGN'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'DEPT_IDENTIFIER'
        DataType = ftWideString
        Size = 46
      end
      item
        Name = 'DAY_DIFF'
        DataType = ftFloat
      end
      item
        Name = 'EMP_NEGATIVE_DISCIPLINE_RATING'
        DataType = ftFloat
      end
      item
        Name = 'EMP_POSITIVE_DISCIPLINE_RATING'
        DataType = ftFloat
      end
      item
        Name = 'EMPLOYEE_OCCUPATION_PROF_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'OCCUPATION_PROFESSION_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'E_DOC_EMPTINESS_REQ_CODE'
        DataType = ftFloat
      end
      item
        Name = 'E_DOC_IS_COMPLETE'
        DataType = ftFloat
      end
      item
        Name = 'E_ACTIVE_DI_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'E_UNAUTHORIZED_ACTIVE_DI_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'E_UNAPPROVED_ACTIVE_DI_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'O_DOC_EMPTINESS_REQ_CODE'
        DataType = ftFloat
      end
      item
        Name = 'O_DOC_IS_COMPLETE'
        DataType = ftFloat
      end
      item
        Name = 'O_ACTIVE_DI_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'O_UNAUTHORIZED_ACTIVE_DI_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'O_UNAPPROVED_ACTIVE_DI_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'OCCUPATION_IS_MAIN'
        DataType = ftFloat
      end
      item
        Name = 'OCCUPATION_PHASE'
        DataType = ftWideString
        Size = 93
      end
      item
        Name = 'ASSIGNMENT_DAY_DIFF'
        DataType = ftFloat
      end
      item
        Name = 'OCCUPATION_PHASE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'EMPLOYEE_COMPANY_CODE'
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
        Name = 'PRODUCT_DOC_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_DOC_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_HAS_DOC'
        DataType = ftFloat
      end
      item
        Name = 'P_DOC_EMPTINESS_REQ_CODE'
        DataType = ftFloat
      end
      item
        Name = 'P_DOC_IS_COMPLETE'
        DataType = ftFloat
      end
      item
        Name = 'P_ACTIVE_DI_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'P_UNAUTHORIZED_ACTIVE_DI_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'P_UNAPPROVED_ACTIVE_DI_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'OE_REGIME_NAME'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'OE_REGIME_CODE'
        DataType = ftFloat
      end
      item
        Name = 'COMPANY_NO'
        DataType = ftFloat
      end
      item
        Name = 'BASE_SALARY'
        DataType = ftFloat
      end
      item
        Name = 'BASE_SALARY_DATE_UNIT_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'MIN_SALARY_RATIO_COEF'
        DataType = ftFloat
      end
      item
        Name = 'MAX_SALARY_RATIO_COEF'
        DataType = ftFloat
      end
      item
        Name = 'SALARY'
        DataType = ftFloat
      end
      item
        Name = 'SALARY_DATE_UNIT_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'STATUS_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'OE_MASTERED_PRC_ACTIONS_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'OCC_PRC_ACTIONS_COUNT'
        DataType = ftFloat
      end>
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'STATUS_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STATUS_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STATUS_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STATUS_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STATUS_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STATUS_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STATUS_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STATUS_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STATUS_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STATUS_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STATUS_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STATUS_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_OCCUPATION_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_OCCUPATION_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_OCCUPATION_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_OCCUPATION_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'OCCUPATION_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'OCCUPATION_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'OCCUPATION_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'OCCUPATION_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_OCCUPATION_DAY_DIFF'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STATUS_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_OCCUPATION_DAY_DIFF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_OCCUPATION_DAY_DIFF'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STATUS_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_OCCUPATION_DAY_DIFF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_ASSIGNMENT_DAY_DIFF'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STATUS_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_ASSIGNMENT_DAY_DIFF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_ASSIGNMENT_DAY_DIFF'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STATUS_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_ASSIGNMENT_DAY_DIFF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_EGN'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_EGN'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_EMPLOYEE_AGE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STATUS_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_EMPLOYEE_AGE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_EMPLOYEE_AGE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STATUS_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_EMPLOYEE_AGE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_MALE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_MALE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'EMPLOYEE_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'EMPLOYEE_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'EMPLOYEE_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'EMPLOYEE_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STATUS_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'WORK_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'WORK_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_PROFESSION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_PROFESSION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_PROFESSION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_PROFESSION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_PROFESSION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_EMPLOYEE_PROFESSION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_EMPLOYEE_PROFESSION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_EMPLOYEE_PROFESSION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EDUCATION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EDUCATION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_ACTIVE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftTimeStamp
        Name = 'STATUS_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_NOT_ACTIVE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftTimeStamp
        Name = 'STATUS_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_OCCUPIED'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'IS_NOT_OCCUPIED'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'IS_MAIN'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_MAIN'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_PHASE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_PHASE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PROFESSIONS_STATUS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PROFESSIONS_STATUS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_NEGATIVE_DISCIPLINE_EVENTS'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'HAS_NOT_NEGATIVE_DISCIPLINE_EVENTS'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'HAS_POSITIVE_DISCIPLINE_EVENTS'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'HAS_NOT_POSITIVE_DISCIPLINE_EVENTS'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CRAFT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CRAFT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CRAFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CRAFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OE_REGIME_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OE_REGIME_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_EXTERNAL_CODE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'IS_EXTERNAL_CODE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'IS_EXTERNAL_CODE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'IS_EXTERNAL_CODE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'OCC_PRC_ACTIONS_STATUS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCC_PRC_ACTIONS_STATUS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SYS_ROLE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SYS_ROLE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRC_FUNC_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRC_KNOWL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRC_BASE_OP_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRC_BASE_ACTION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRC_CONCRETE_OP_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRC_CONCRETE_ACTION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_DEPTS'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_PRODUCTS'
        ParamType = ptInput
      end>
    ProviderName = 'prvOccupationsAndEmployeesMaster'
    OnCalcFields = cdsGridDataCalcFields
    Left = 72
    Top = 144
    object cdsGridDataOCCUPATION_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_CODE'
    end
    object cdsGridDataOCCUPATION_NAME: TAbmesWideStringField
      FieldName = 'OCCUPATION_NAME'
      Size = 50
    end
    object cdsGridDataOCCUPATION_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_DOC_BRANCH_CODE'
    end
    object cdsGridDataOCCUPATION_DOC_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_DOC_CODE'
    end
    object cdsGridDataOCCUPATION_HAS_DOC: TAbmesFloatField
      FieldName = 'OCCUPATION_HAS_DOC'
      DisplayBoolValues = 'i;'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataOCCUPATION_LEVEL: TAbmesFloatField
      FieldName = 'OCCUPATION_LEVEL'
    end
    object cdsGridDataSHIFT_CODE: TAbmesFloatField
      FieldName = 'SHIFT_CODE'
    end
    object cdsGridDataSHIFT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'SHIFT_IDENTIFIER'
      Size = 5
    end
    object cdsGridDataIS_ACTIVE: TAbmesFloatField
      FieldName = 'IS_ACTIVE'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataIS_OCCUPIED: TAbmesFloatField
      FieldName = 'IS_OCCUPIED'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
    end
    object cdsGridDataEMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'EMPLOYEE_NAME'
      Size = 44
    end
    object cdsGridDataEMPLOYEE_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_DOC_BRANCH_CODE'
    end
    object cdsGridDataEMPLOYEE_DOC_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_DOC_CODE'
    end
    object cdsGridDataEMPLOYEE_HAS_DOC: TAbmesFloatField
      FieldName = 'EMPLOYEE_HAS_DOC'
      DisplayBoolValues = 'i;'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataEMPLOYEE_AGE_YEARS: TAbmesFloatField
      FieldName = 'EMPLOYEE_AGE_YEARS'
      FieldValueType = fvtInteger
    end
    object cdsGridDataEMPLOYEE_EGN: TAbmesWideStringField
      FieldName = 'EMPLOYEE_EGN'
      Size = 10
    end
    object cdsGridDataDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      Size = 46
    end
    object cdsGridDataDAY_DIFF: TAbmesFloatField
      FieldName = 'DAY_DIFF'
    end
    object cdsGridDataEMP_NEGATIVE_DISCIPLINE_RATING: TAbmesFloatField
      FieldName = 'EMP_NEGATIVE_DISCIPLINE_RATING'
    end
    object cdsGridDataEMP_POSITIVE_DISCIPLINE_RATING: TAbmesFloatField
      FieldName = 'EMP_POSITIVE_DISCIPLINE_RATING'
    end
    object cdsGridDataEMPLOYEE_OCCUPATION_PROF_COUNT: TAbmesFloatField
      FieldName = 'EMPLOYEE_OCCUPATION_PROF_COUNT'
    end
    object cdsGridDataOCCUPATION_PROFESSION_COUNT: TAbmesFloatField
      FieldName = 'OCCUPATION_PROFESSION_COUNT'
    end
    object cdsGridDataE_DOC_EMPTINESS_REQ_CODE: TAbmesFloatField
      FieldName = 'E_DOC_EMPTINESS_REQ_CODE'
      OnGetText = cdsGridDataE_DOC_EMPTINESS_REQ_CODEGetText
    end
    object cdsGridDataE_DOC_IS_COMPLETE: TAbmesFloatField
      FieldName = 'E_DOC_IS_COMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataE_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'E_ACTIVE_DI_COUNT'
    end
    object cdsGridDataE_UNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'E_UNAUTHORIZED_ACTIVE_DI_COUNT'
      OnGetText = cdsGridDataE_UNAUTHORIZED_ACTIVE_DI_COUNTGetText
    end
    object cdsGridDataE_UNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'E_UNAPPROVED_ACTIVE_DI_COUNT'
    end
    object cdsGridDataO_DOC_EMPTINESS_REQ_CODE: TAbmesFloatField
      FieldName = 'O_DOC_EMPTINESS_REQ_CODE'
      OnGetText = cdsGridDataO_DOC_EMPTINESS_REQ_CODEGetText
    end
    object cdsGridDataO_DOC_IS_COMPLETE: TAbmesFloatField
      FieldName = 'O_DOC_IS_COMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataO_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'O_ACTIVE_DI_COUNT'
    end
    object cdsGridDataO_UNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'O_UNAUTHORIZED_ACTIVE_DI_COUNT'
      OnGetText = cdsGridDataO_UNAUTHORIZED_ACTIVE_DI_COUNTGetText
    end
    object cdsGridDataO_UNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'O_UNAPPROVED_ACTIVE_DI_COUNT'
    end
    object cdsGridDataOCCUPATION_IS_MAIN: TAbmesFloatField
      FieldName = 'OCCUPATION_IS_MAIN'
      DisplayBoolValues = #1054#1089#1085'.;'#1055#1088#1074'.'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataOCCUPATION_PHASE: TAbmesWideStringField
      FieldName = 'OCCUPATION_PHASE'
      Size = 93
    end
    object cdsGridDataASSIGNMENT_DAY_DIFF: TAbmesFloatField
      FieldName = 'ASSIGNMENT_DAY_DIFF'
    end
    object cdsGridDataOCCUPATION_PHASE_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_PHASE_CODE'
    end
    object cdsGridDataEMPLOYEE_COMPANY_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_COMPANY_CODE'
    end
    object cdsGridDataPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object cdsGridDataPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object cdsGridDataPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object cdsGridDataPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_BRANCH_CODE'
    end
    object cdsGridDataPRODUCT_DOC_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_CODE'
    end
    object cdsGridDataPRODUCT_HAS_DOC: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOC'
      DisplayBoolValues = 'i;'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataP_DOC_EMPTINESS_REQ_CODE: TAbmesFloatField
      FieldName = 'P_DOC_EMPTINESS_REQ_CODE'
      OnGetText = cdsGridDataP_DOC_EMPTINESS_REQ_CODEGetText
    end
    object cdsGridDataP_DOC_IS_COMPLETE: TAbmesFloatField
      FieldName = 'P_DOC_IS_COMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataP_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'P_ACTIVE_DI_COUNT'
    end
    object cdsGridDataP_UNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'P_UNAUTHORIZED_ACTIVE_DI_COUNT'
      OnGetText = cdsGridDataP_UNAUTHORIZED_ACTIVE_DI_COUNTGetText
    end
    object cdsGridDataP_UNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'P_UNAPPROVED_ACTIVE_DI_COUNT'
    end
    object cdsGridDataOE_REGIME_NAME: TAbmesWideStringField
      FieldName = 'OE_REGIME_NAME'
    end
    object cdsGridDataOE_REGIME_CODE: TAbmesFloatField
      FieldName = 'OE_REGIME_CODE'
    end
    object cdsGridData_PROFESSIONS_STATUS: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_PROFESSIONS_STATUS'
      ReadOnly = True
      Calculated = True
    end
    object cdsGridData_OCCUPATION_STATUS_ABBREV: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_OCCUPATION_STATUS_ABBREV'
      ReadOnly = True
      Size = 5
      Calculated = True
    end
    object cdsGridData_MAIN_COUNTS: TAbmesWideStringField
      Alignment = taCenter
      FieldKind = fkCalculated
      FieldName = '_MAIN_COUNTS'
      Size = 50
      Calculated = True
    end
    object cdsGridData_NOT_MAIN_COUNTS: TAbmesWideStringField
      Alignment = taCenter
      FieldKind = fkCalculated
      FieldName = '_NOT_MAIN_COUNTS'
      Size = 50
      Calculated = True
    end
    object cdsGridDataCOMPANY_NO: TAbmesFloatField
      DisplayLabel = #1057#1083#1091#1078#1080#1090#1077#1083'|'#1050#1086#1076
      FieldName = 'COMPANY_NO'
    end
    object cdsGridDataBASE_SALARY: TAbmesFloatField
      FieldName = 'BASE_SALARY'
      OnGetText = SalaryFieldsGetText
      DisplayFormat = ',0.00'
    end
    object cdsGridDataBASE_SALARY_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'BASE_SALARY_DATE_UNIT_NAME'
      Size = 50
    end
    object cdsGridDataMIN_SALARY_RATIO_COEF: TAbmesFloatField
      FieldName = 'MIN_SALARY_RATIO_COEF'
      DisplayFormat = '0.###'
    end
    object cdsGridDataMAX_SALARY_RATIO_COEF: TAbmesFloatField
      FieldName = 'MAX_SALARY_RATIO_COEF'
      DisplayFormat = '0.###'
    end
    object cdsGridDataSALARY: TAbmesFloatField
      FieldName = 'SALARY'
      OnGetText = SalaryFieldsGetText
      DisplayFormat = ',0.00'
    end
    object cdsGridDataSALARY_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'SALARY_DATE_UNIT_NAME'
      Size = 50
    end
    object cdsGridDataSTATUS_DATE: TAbmesSQLTimeStampField
      FieldName = 'STATUS_DATE'
    end
    object cdsGridData_SHOW_BASE_SALARY: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_SHOW_BASE_SALARY'
      Size = 50
      Calculated = True
    end
    object cdsGridData_SHOW_SALARY: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_SHOW_SALARY'
      Size = 50
      Calculated = True
    end
    object cdsGridDataTHE_DATE: TAbmesSQLTimeStampField
      FieldKind = fkCalculated
      FieldName = 'THE_DATE'
      Calculated = True
    end
    object cdsGridDataOE_MASTERED_PRC_ACTIONS_COUNT: TAbmesFloatField
      FieldName = 'OE_MASTERED_PRC_ACTIONS_COUNT'
    end
    object cdsGridDataOCC_PRC_ACTIONS_COUNT: TAbmesFloatField
      FieldName = 'OCC_PRC_ACTIONS_COUNT'
    end
    object cdsGridData_OCC_PRC_ACTIONS_STATUS: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_OCC_PRC_ACTIONS_STATUS'
      Calculated = True
    end
    object cdsGridData_MAIN_COUNT: TAggregateField
      FieldName = '_MAIN_COUNT'
      Active = True
      Expression = 'Sum(OCCUPATION_IS_MAIN)'
    end
    object cdsGridData_NOT_MAIN_COUNT: TAggregateField
      FieldName = '_NOT_MAIN_COUNT'
      OnGetText = cdsGridData_NOT_MAIN_COUNTGetText
      Active = True
      Expression = 'Sum(1 + OCCUPATION_IS_MAIN*(-1))'
    end
    object cdsGridData_MAIN_OCCUPIED_COUNT: TAggregateField
      FieldName = '_MAIN_OCCUPIED_COUNT'
      Active = True
      Expression = 'Sum(OCCUPATION_IS_MAIN*IS_OCCUPIED)'
    end
    object cdsGridData_NOT_MAIN_OCCUPIED_COUNT: TAggregateField
      FieldName = '_NOT_MAIN_OCCUPIED_COUNT'
      Active = True
      Expression = 'Sum((1 + OCCUPATION_IS_MAIN*(-1))*IS_OCCUPIED)'
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1080
    end
    inherited actFilter: TAction
      Visible = True
    end
    object actDetailEmployeeCompany: TAction
      Caption = #1057#1048#1063#1048' '#1055#1072#1088#1090#1085#1100#1086#1088'...'
      ImageIndex = 63
      OnExecute = actDetailEmployeeCompanyExecute
      OnUpdate = actDetailEmployeeCompanyUpdate
    end
    object actDetailEmployee: TAction
      Caption = #1057#1083#1091#1078#1080#1090#1077#1083'...'
      ImageIndex = 62
      OnExecute = actDetailEmployeeExecute
      OnUpdate = actDetailEmployeeUpdate
    end
    object actOccupationDoc: TAction
      Caption = 'actOccupationDoc'
      ImageIndex = 0
      OnExecute = actOccupationDocExecute
      OnUpdate = actOccupationDocUpdate
    end
    object actProductDoc: TAction
      Caption = 'actProductDoc'
      ImageIndex = 0
      OnExecute = actProductDocExecute
      OnUpdate = actProductDocUpdate
    end
    object actEmployeeDoc: TAction
      Caption = 'actEmployeeDoc'
      ImageIndex = 0
      OnExecute = actEmployeeDocExecute
      OnUpdate = actEmployeeDocUpdate
    end
    object actDetailEmployeeDoc: TAction
      Caption = 'actDetailEmployeeDoc'
      ImageIndex = 0
      OnExecute = actDetailEmployeeDocExecute
      OnUpdate = actDetailEmployeeDocUpdate
    end
    object actDetailOccupationEmployeeDoc: TAction
      Caption = 'actDetailOccupationEmployeeDoc'
      ImageIndex = 0
      OnExecute = actDetailOccupationEmployeeDocExecute
      OnUpdate = actDetailOccupationEmployeeDocUpdate
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    OnCalcFields = pdsGridDataParamsCalcFields
    Left = 72
    Top = 176
    object pdsGridDataParamsSTATUS_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1050#1098#1084' '#1076#1072#1090#1072
      FieldName = 'STATUS_DATE'
      Required = True
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object pdsGridDataParamsIS_ACTIVE: TAbmesFloatField
      DisplayLabel = #1040#1082#1090#1080#1074#1085#1072
      FieldName = 'IS_ACTIVE'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsIS_NOT_ACTIVE: TAbmesFloatField
      DisplayLabel = #1055#1072#1089#1080#1074#1085#1072
      FieldName = 'IS_NOT_ACTIVE'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsIS_OCCUPIED: TAbmesFloatField
      DisplayLabel = #1047#1072#1077#1090#1072
      FieldName = 'IS_OCCUPIED'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsIS_NOT_OCCUPIED: TAbmesFloatField
      DisplayLabel = #1053#1077#1079#1072#1077#1090#1072
      FieldName = 'IS_NOT_OCCUPIED'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsIS_MAIN: TAbmesFloatField
      DisplayLabel = #1042#1080#1076' '#1044#1083#1098#1078#1085#1086#1089#1090
      FieldName = 'IS_MAIN'
    end
    object pdsGridDataParamsOCCUPATION_PHASE_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_PHASE_CODE'
    end
    object pdsGridDataParamsBEGIN_OCCUPATION_LEVEL: TAbmesFloatField
      DisplayLabel = #1054#1088#1075'. '#1085#1080#1074#1086' - '#1054#1090
      FieldName = 'BEGIN_OCCUPATION_LEVEL'
    end
    object pdsGridDataParamsEND_OCCUPATION_LEVEL: TAbmesFloatField
      DisplayLabel = #1054#1088#1075'. '#1085#1080#1074#1086' - '#1044#1086
      FieldName = 'END_OCCUPATION_LEVEL'
    end
    object pdsGridDataParamsSHIFT_CODE: TAbmesFloatField
      DisplayLabel = #1057#1084#1103#1085#1072
      FieldName = 'SHIFT_CODE'
    end
    object pdsGridDataParamsCHOSEN_DEPTS: TAbmesWideStringField
      DisplayLabel = #1054#1088#1063' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1090#1072
      FieldName = 'CHOSEN_DEPTS'
      Size = 4000
    end
    object pdsGridDataParamsCRAFT_TYPE_CODE: TAbmesFloatField
      FieldName = 'CRAFT_TYPE_CODE'
    end
    object pdsGridDataParamsCRAFT_CODE: TAbmesFloatField
      FieldName = 'CRAFT_CODE'
    end
    object pdsGridDataParamsOCCUPATION_BEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1053#1072#1095#1072#1083#1086' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'OCCUPATION_BEGIN_DATE'
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object pdsGridDataParamsOCCUPATION_END_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1053#1072#1095#1072#1083#1086' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090' - '#1050#1088#1072#1081
      FieldName = 'OCCUPATION_END_DATE'
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object pdsGridDataParamsMIN_OCCUPATION_DAY_DIFF: TAbmesFloatField
      DisplayLabel = #1053#1072#1095#1072#1083#1086' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090' - '#1056#1077#1079#1077#1088#1074' - '#1054#1090
      FieldName = 'MIN_OCCUPATION_DAY_DIFF'
    end
    object pdsGridDataParamsMAX_OCCUPATION_DAY_DIFF: TAbmesFloatField
      DisplayLabel = #1053#1072#1095#1072#1083#1086' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090' - '#1056#1077#1079#1077#1088#1074' - '#1044#1086
      FieldName = 'MAX_OCCUPATION_DAY_DIFF'
    end
    object pdsGridDataParamsCHOSEN_PRODUCTS: TAbmesWideStringField
      DisplayLabel = #1044#1056#1054#1088
      FieldName = 'CHOSEN_PRODUCTS'
      Size = 4000
    end
    object pdsGridDataParamsEMPLOYEE_BEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1053#1072#1095#1072#1083#1086' '#1085#1072' '#1044#1083'. '#1053#1072#1079#1085#1072#1095#1077#1085#1080#1077' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'EMPLOYEE_BEGIN_DATE'
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object pdsGridDataParamsEMPLOYEE_END_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1053#1072#1095#1072#1083#1086' '#1085#1072' '#1044#1083'. '#1053#1072#1079#1085#1072#1095#1077#1085#1080#1077' - '#1050#1088#1072#1081
      FieldName = 'EMPLOYEE_END_DATE'
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object pdsGridDataParamsMIN_ASSIGNMENT_DAY_DIFF: TAbmesFloatField
      DisplayLabel = ' '#1053#1072#1095#1072#1083#1086' '#1085#1072' '#1044#1083'. '#1053#1072#1079#1085#1072#1095#1077#1085#1080#1077' - '#1056#1077#1079#1077#1088#1074' - '#1054#1090
      FieldName = 'MIN_ASSIGNMENT_DAY_DIFF'
    end
    object pdsGridDataParamsMAX_ASSIGNMENT_DAY_DIFF: TAbmesFloatField
      DisplayLabel = ' '#1053#1072#1095#1072#1083#1086' '#1085#1072' '#1044#1083'. '#1053#1072#1079#1085#1072#1095#1077#1085#1080#1077' - '#1056#1077#1079#1077#1088#1074' - '#1044#1086
      FieldName = 'MAX_ASSIGNMENT_DAY_DIFF'
    end
    object pdsGridDataParamsEMPLOYEE_CODE: TAbmesFloatField
      DisplayLabel = #1057#1083#1091#1078#1080#1090#1077#1083
      FieldName = 'EMPLOYEE_CODE'
    end
    object pdsGridDataParamsEMPLOYEE_EGN: TAbmesFloatField
      DisplayLabel = #1045#1043#1053'/'#1051#1053#1063
      FieldName = 'EMPLOYEE_EGN'
    end
    object pdsGridDataParamsMIN_EMPLOYEE_AGE: TAbmesFloatField
      DisplayLabel = #1042#1098#1079#1088#1072#1089#1090' - '#1054#1090
      FieldName = 'MIN_EMPLOYEE_AGE'
    end
    object pdsGridDataParamsMAX_EMPLOYEE_AGE: TAbmesFloatField
      DisplayLabel = #1042#1098#1079#1088#1072#1089#1090' - '#1044#1086
      FieldName = 'MAX_EMPLOYEE_AGE'
    end
    object pdsGridDataParamsEMPLOYE_MALE: TAbmesFloatField
      DisplayLabel = #1055#1086#1083
      FieldName = 'EMPLOYEE_MALE'
    end
    object pdsGridDataParamsEDUCATION_CODE: TAbmesFloatField
      FieldName = 'EDUCATION_CODE'
    end
    object pdsGridDataParamsOE_REGIME_CODE: TAbmesFloatField
      FieldName = 'OE_REGIME_CODE'
    end
    object pdsGridDataParamsIS_EXTERNAL_CODE: TAbmesFloatField
      FieldName = 'IS_EXTERNAL_CODE'
    end
    object pdsGridDataParamsEMPLOYEE_PROFESSION_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_PROFESSION_CODE'
    end
    object pdsGridDataParamsHAS_NEGATIVE_DISCIPLINE_EVENTS: TAbmesFloatField
      DisplayLabel = #1048#1079#1074#1098#1085#1088#1077#1076#1085#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103' '#1074' '#1056#1055#1074' - '#1054#1090#1088#1080#1094#1072#1090#1077#1083#1085#1080' - '#1048#1084#1072
      FieldName = 'HAS_NEGATIVE_DISCIPLINE_EVENTS'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsHAS_NOT_NEGATIVE_DISCIPLINE_EVENTS: TAbmesFloatField
      DisplayLabel = #1048#1079#1074#1098#1085#1088#1077#1076#1085#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103' '#1074' '#1056#1055#1074' - '#1054#1090#1088#1080#1094#1072#1090#1077#1083#1085#1080' - '#1053#1103#1084#1072
      FieldName = 'HAS_NOT_NEGATIVE_DISCIPLINE_EVENTS'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsHAS_POSITIVE_DISCIPLINE_EVENTS: TAbmesFloatField
      DisplayLabel = #1048#1079#1074#1098#1085#1088#1077#1076#1085#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103' '#1074' '#1056#1055#1074' - '#1055#1086#1083#1086#1078#1080#1090#1077#1083#1085#1080' - '#1048#1084#1072
      FieldName = 'HAS_POSITIVE_DISCIPLINE_EVENTS'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsHAS_NOT_POSITIVE_DISCIPLINE_EVENTS: TAbmesFloatField
      DisplayLabel = #1048#1079#1074#1098#1085#1088#1077#1076#1085#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103' '#1074' '#1056#1055#1074' - '#1055#1086#1083#1086#1078#1080#1090#1077#1083#1085#1080' - '#1053#1103#1084#1072
      FieldName = 'HAS_NOT_POSITIVE_DISCIPLINE_EVENTS'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsOCCUPATION_EMPLOYEE_PROFESSION_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_EMPLOYEE_PROFESSION_CODE'
    end
    object pdsGridDataParamsOCCUPATION_PROFESSION_CODE: TAbmesFloatField
      DisplayLabel = #1053#1077#1087#1088#1080#1089#1074#1086#1077#1085#1072' '#1055#1056
      FieldName = 'OCCUPATION_PROFESSION_CODE'
    end
    object pdsGridDataParamsPROFESSIONS_STATUS: TAbmesFloatField
      DisplayLabel = #1056#1086#1083#1077#1074#1072' '#1040#1076#1077#1082#1074#1072#1090#1085#1086#1089#1090
      FieldName = 'PROFESSIONS_STATUS'
    end
    object pdsGridDataParamsSYS_ROLE_CODE: TAbmesFloatField
      DisplayLabel = #1053#1072#1073#1086#1088' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080
      FieldName = 'SYS_ROLE_CODE'
    end
    object pdsGridDataParamsOCC_PRC_ACTIONS_STATUS: TAbmesFloatField
      DisplayLabel = #1055#1088#1086#1094#1077#1089#1085#1072' '#1040#1076#1077#1082#1074#1072#1090#1085#1086#1089#1090
      FieldName = 'OCC_PRC_ACTIONS_STATUS'
    end
    object pdsGridDataParamsPRC_FUNC_CODE: TAbmesFloatField
      DisplayLabel = #1055#1088#1086#1094#1077#1089#1077#1085' '#1054#1073#1093#1074#1072#1090
      FieldName = 'PRC_FUNC_CODE'
    end
    object pdsGridDataParamsPRC_KNOWL_CODE: TAbmesFloatField
      FieldName = 'PRC_KNOWL_CODE'
    end
    object pdsGridDataParamsPRC_BASE_OP_CODE: TAbmesFloatField
      FieldName = 'PRC_BASE_OP_CODE'
    end
    object pdsGridDataParamsPRC_BASE_ACTION_CODE: TAbmesFloatField
      FieldName = 'PRC_BASE_ACTION_CODE'
    end
    object pdsGridDataParamsPRC_CONCRETE_OP_CODE: TAbmesFloatField
      FieldName = 'PRC_CONCRETE_OP_CODE'
    end
    object pdsGridDataParamsPRC_CONCRETE_ACTION_CODE: TAbmesFloatField
      FieldName = 'PRC_CONCRETE_ACTION_CODE'
    end
    object pdsGridDataParams_SHIFT_IDENTIFIER: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_SHIFT_IDENTIFIER'
      LookupDataSet = cdsShifts
      LookupKeyFields = 'SHIFT_CODE'
      LookupResultField = 'SHIFT_IDENTIFIER'
      KeyFields = 'SHIFT_CODE'
      OnGetText = pdsGridDataParamsGetShortText
      Size = 5
      Lookup = True
    end
    object pdsGridDataParams_EDUCATION_SHORT_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_EDUCATION_SHORT_NAME'
      LookupDataSet = cdsEducations
      LookupKeyFields = 'EDUCATION_CODE'
      LookupResultField = 'EDUCATION_SHORT_NAME'
      KeyFields = 'EDUCATION_CODE'
      OnGetText = pdsGridDataParamsGetText
      Lookup = True
    end
    object pdsGridDataParams_STATUS_DATE: TAbmesSQLTimeStampField
      FieldKind = fkCalculated
      FieldName = '_STATUS_DATE'
      Calculated = True
    end
    object pdsGridDataParams_OCCUPATION_PROFESSION_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_OCCUPATION_PROFESSION_NAME'
      LookupDataSet = cdsProfessions
      LookupKeyFields = 'PROFESSION_CODE'
      LookupResultField = 'PROFESSION_NAME'
      KeyFields = 'OCCUPATION_PROFESSION_CODE'
      OnGetText = pdsGridDataParamsGetText
      Size = 100
      Lookup = True
    end
    object pdsGridDataParams_EMPLOYEE_PROFESSION_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_EMPLOYEE_PROFESSION_NAME'
      LookupDataSet = cdsProfessions
      LookupKeyFields = 'PROFESSION_CODE'
      LookupResultField = 'PROFESSION_NAME'
      KeyFields = 'EMPLOYEE_PROFESSION_CODE'
      OnGetText = pdsGridDataParamsGetText
      Size = 100
      Lookup = True
    end
    object pdsGridDataParams_OCCUPATION_EMP_PROFESSION_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_OCCUPATION_EMP_PROFESSION_NAME'
      LookupDataSet = cdsProfessions
      LookupKeyFields = 'PROFESSION_CODE'
      LookupResultField = 'PROFESSION_NAME'
      KeyFields = 'OCCUPATION_EMPLOYEE_PROFESSION_CODE'
      OnGetText = pdsGridDataParamsGetText
      Size = 100
      Lookup = True
    end
    object pdsGridDataParams_OCCUPATION_PHASE: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_OCCUPATION_PHASE'
      LookupDataSet = cdsOccupationPhases
      LookupKeyFields = 'OCCUPATION_PHASE_CODE'
      LookupResultField = '_SHOW_NAME'
      KeyFields = 'OCCUPATION_PHASE_CODE'
      OnGetText = pdsGridDataParamsGetShortText
      Size = 50
      Lookup = True
    end
    object pdsGridDataParams_CRAFT_TYPE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_CRAFT_TYPE_NAME'
      LookupDataSet = cdsCraftTypes
      LookupKeyFields = 'CRAFT_TYPE_CODE'
      LookupResultField = 'CRAFT_TYPE_NAME'
      KeyFields = 'CRAFT_TYPE_CODE'
      Size = 50
      Lookup = True
    end
    object pdsGridDataParams_CRAFT_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_CRAFT_NAME'
      LookupDataSet = cdsCrafts
      LookupKeyFields = 'CRAFT_CODE'
      LookupResultField = 'CRAFT_NAME'
      KeyFields = 'CRAFT_CODE'
      Size = 50
      Lookup = True
    end
    object pdsGridDataParams_OE_REGIME_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_OE_REGIME_NAME'
      LookupDataSet = cdsOERegimes
      LookupKeyFields = 'OE_REGIME_CODE'
      LookupResultField = 'OE_REGIME_NAME'
      KeyFields = 'OE_REGIME_CODE'
      Lookup = True
    end
    object pdsGridDataParamsREPORT_TAG: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'REPORT_TAG'
      ProviderFlags = []
      Calculated = True
    end
    object pdsGridDataParamsWORK_DEPT_CODE: TAbmesFloatField
      FieldName = 'WORK_DEPT_CODE'
    end
  end
  inherited dsGridDataParams: TDataSource
    Left = 104
    Top = 176
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 72
    Top = 112
  end
  inherited cdsDetail: TAbmesClientDataSet
    ConnectionBroker = dmMain.conHumanResource
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'STATUS_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STATUS_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STATUS_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STATUS_DATE'
        ParamType = ptInput
      end>
    ProviderName = 'prvOccupationsAndEmployeesDetail'
    BeforeOpen = cdsDetailBeforeOpen
    OnCalcFields = cdsDetailCalcFields
    object cdsDetailOCCUPATION_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_EMPLOYEE_CODE'
    end
    object cdsDetailOCCUPATION_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_CODE'
    end
    object cdsDetailBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
      OnGetText = cdsDetailBEGIN_DATEGetText
    end
    object cdsDetailEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
    end
    object cdsDetailIS_OCCUPIED: TAbmesFloatField
      FieldName = 'IS_OCCUPIED'
      FieldValueType = fvtBoolean
    end
    object cdsDetailEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
    end
    object cdsDetailEMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'EMPLOYEE_NAME'
      Size = 44
    end
    object cdsDetailEMPLOYEE_COMPANY_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_COMPANY_CODE'
    end
    object cdsDetailEMPLOYEE_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_DOC_BRANCH_CODE'
    end
    object cdsDetailEMPLOYEE_DOC_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_DOC_CODE'
    end
    object cdsDetailEMPLOYEE_HAS_DOC: TAbmesFloatField
      FieldName = 'EMPLOYEE_HAS_DOC'
      FieldValueType = fvtBoolean
    end
    object cdsDetailE_DOC_EMPTINESS_REQ_CODE: TAbmesFloatField
      FieldName = 'E_DOC_EMPTINESS_REQ_CODE'
      OnGetText = cdsDetailE_DOC_EMPTINESS_REQ_CODEGetText
    end
    object cdsDetailE_DOC_IS_COMPLETE: TAbmesFloatField
      FieldName = 'E_DOC_IS_COMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsDetailE_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'E_ACTIVE_DI_COUNT'
    end
    object cdsDetailE_UNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'E_UNAUTHORIZED_ACTIVE_DI_COUNT'
      OnGetText = cdsDetailE_UNAUTHORIZED_ACTIVE_DI_COUNTGetText
    end
    object cdsDetailE_UNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'E_UNAPPROVED_ACTIVE_DI_COUNT'
    end
    object cdsDetailEMP_NEGATIVE_DISCIPLINE_RATING: TAbmesFloatField
      FieldName = 'EMP_NEGATIVE_DISCIPLINE_RATING'
    end
    object cdsDetailEMP_POSITIVE_DISCIPLINE_RATING: TAbmesFloatField
      FieldName = 'EMP_POSITIVE_DISCIPLINE_RATING'
    end
    object cdsDetailEMPLOYEE_OCCUPATION_PROF_COUNT: TAbmesFloatField
      FieldName = 'EMPLOYEE_OCCUPATION_PROF_COUNT'
    end
    object cdsDetailEMPLOYEE_BEGIN_AGE_YEARS: TAbmesFloatField
      FieldName = 'EMPLOYEE_BEGIN_AGE_YEARS'
    end
    object cdsDetailEMPLOYEE_END_AGE_YEARS: TAbmesFloatField
      FieldName = 'EMPLOYEE_END_AGE_YEARS'
      FieldValueType = fvtInteger
    end
    object cdsDetailOE_REGIME_CODE: TAbmesFloatField
      FieldName = 'OE_REGIME_CODE'
    end
    object cdsDetailOE_REGIME_NAME: TAbmesWideStringField
      FieldName = 'OE_REGIME_NAME'
    end
    object cdsDetailOCCUPATION_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'OCCUPATION_BEGIN_DATE'
    end
    object cdsDetailOCCUPATION_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'OCCUPATION_END_DATE'
    end
    object cdsDetail_PROFESSIONS_STATUS: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_PROFESSIONS_STATUS'
      Calculated = True
    end
    object cdsDetail_OCCUPATION_STATUS_ABBREV: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_OCCUPATION_STATUS_ABBREV'
      Size = 5
      Calculated = True
    end
    object cdsDetailCOMPANY_NO: TAbmesFloatField
      DisplayLabel = #1057#1083#1091#1078#1080#1090#1077#1083'|'#1050#1086#1076
      FieldName = 'COMPANY_NO'
    end
    object cdsDetailSALARY: TAbmesFloatField
      FieldName = 'SALARY'
      OnGetText = SalaryFieldsGetText
      DisplayFormat = ',0.00'
    end
    object cdsDetailSALARY_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'SALARY_DATE_UNIT_NAME'
      Size = 50
    end
    object cdsDetail_SHOW_SALARY: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_SHOW_SALARY'
      Size = 50
      Calculated = True
    end
    object cdsDetailDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsDetailDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsDetailHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      FieldValueType = fvtBoolean
    end
    object cdsDetailDOC_EMPTINESS_REQ_CODE: TAbmesFloatField
      FieldName = 'DOC_EMPTINESS_REQ_CODE'
      OnGetText = cdsDetailDOC_EMPTINESS_REQ_CODEGetText
    end
    object cdsDetailDOC_IS_COMPLETE: TAbmesFloatField
      FieldName = 'DOC_IS_COMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsDetailACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'ACTIVE_DI_COUNT'
    end
    object cdsDetailUNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAUTHORIZED_ACTIVE_DI_COUNT'
      OnGetText = cdsDetailUNAUTHORIZED_ACTIVE_DI_COUNTGetText
    end
    object cdsDetailUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAPPROVED_ACTIVE_DI_COUNT'
    end
    object cdsDetailTHE_DATE: TAbmesSQLTimeStampField
      FieldKind = fkCalculated
      FieldName = 'THE_DATE'
      Calculated = True
    end
    object cdsDetailOE_MASTERED_PRC_ACTIONS_COUNT: TAbmesFloatField
      FieldName = 'OE_MASTERED_PRC_ACTIONS_COUNT'
    end
    object cdsDetail_OE_PRC_ACTIONS_STATUS: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_OE_PRC_ACTIONS_STATUS'
      Calculated = True
    end
  end
  object cdsShifts: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conShifts
    Params = <>
    ProviderName = 'prvShifts'
    Left = 224
    Top = 168
    object cdsShiftsSHIFT_CODE: TAbmesFloatField
      FieldName = 'SHIFT_CODE'
    end
    object cdsShiftsSHIFT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'SHIFT_IDENTIFIER'
      Size = 5
    end
  end
  object cdsProfessions: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conHumanResource
    Params = <>
    ProviderName = 'prvProfessions'
    Left = 256
    Top = 168
    object cdsProfessionsPROFESSION_CODE: TAbmesFloatField
      FieldName = 'PROFESSION_CODE'
    end
    object cdsProfessionsPROFESSION_NAME: TAbmesWideStringField
      FieldName = 'PROFESSION_NAME'
      Size = 100
    end
  end
  object cdsEducations: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvEducations'
    Left = 288
    Top = 168
    object cdsEducationsEDUCATION_CODE: TAbmesFloatField
      FieldName = 'EDUCATION_CODE'
    end
    object cdsEducationsEDUCATION_SHORT_NAME: TAbmesWideStringField
      FieldName = 'EDUCATION_SHORT_NAME'
    end
  end
  object cdsOccupationPhases: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conHumanResource
    Params = <>
    ProviderName = 'prvOccupationPhases'
    OnCalcFields = cdsOccupationPhasesCalcFields
    Left = 320
    Top = 168
    object cdsOccupationPhasesOCCUPATION_PHASE_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_PHASE_CODE'
    end
    object cdsOccupationPhasesOCCUPATION_PHASE_NAME: TAbmesWideStringField
      FieldName = 'OCCUPATION_PHASE_NAME'
      Size = 50
    end
    object cdsOccupationPhases_SHOW_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_SHOW_NAME'
      Size = 50
      Calculated = True
    end
  end
  object cdsCrafts: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conHumanResource
    FieldDefs = <
      item
        Name = 'CRAFT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'CRAFT_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'CRAFT_TYPE_CODE'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'prvCrafts'
    StoreDefs = True
    Left = 384
    Top = 168
    object cdsCraftsCRAFT_CODE: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'CRAFT_CODE'
      Required = True
    end
    object cdsCraftsCRAFT_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'CRAFT_NAME'
      Required = True
      Size = 50
    end
    object cdsCraftsCRAFT_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1050#1083#1072#1089#1080#1092#1080#1082#1072#1094#1080#1086#1085#1085#1072' '#1043#1088#1091#1087#1072' '#1055#1088#1086#1092#1077#1089#1080#1080
      FieldName = 'CRAFT_TYPE_CODE'
      Required = True
    end
  end
  object cdsCraftTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conHumanResource
    FieldDefs = <
      item
        Name = 'CRAFT_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'CRAFT_TYPE_NAME'
        DataType = ftWideString
        Size = 50
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'prvCraftTypes'
    StoreDefs = True
    Left = 352
    Top = 168
    object cdsCraftTypesCRAFT_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'CRAFT_TYPE_CODE'
      Required = True
    end
    object cdsCraftTypesCRAFT_TYPE_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'CRAFT_TYPE_NAME'
      Required = True
      Size = 50
    end
  end
  object cdsOERegimes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conHumanResource
    Params = <>
    ProviderName = 'prvOERegimes'
    Left = 416
    Top = 168
    object cdsOERegimesOE_REGIME_CODE: TAbmesFloatField
      FieldName = 'OE_REGIME_CODE'
    end
    object cdsOERegimesOE_REGIME_NAME: TAbmesWideStringField
      FieldName = 'OE_REGIME_NAME'
    end
  end
end
