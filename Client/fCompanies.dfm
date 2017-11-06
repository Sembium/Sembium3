inherited fmCompanies: TfmCompanies
  Left = 298
  Top = 188
  Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1055#1072#1088#1090#1085#1100#1086#1088#1080
  ClientHeight = 418
  ClientWidth = 791
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 383
    Width = 791
    inherited pnlOKCancel: TPanel
      Left = 523
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 434
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 702
      Visible = False
    end
    inherited pnlDataButtons: TPanel
      Width = 353
    end
  end
  inherited pnlMain: TPanel
    Width = 791
    Height = 383
    inherited pnlGrid: TPanel
      Width = 775
      Height = 367
      inherited pnlNavigator: TPanel
        Width = 775
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
          Width = 156
          ButtonHeight = 22
          object sepBeforeDocsButton: TToolButton
            Left = 56
            Top = 0
            Width = 8
            Caption = 'sepBeforeDocsButton'
            ImageIndex = 3
            Style = tbsSeparator
          end
          object lblDocs: TLabel
            Left = 64
            Top = 0
            Width = 55
            Height = 22
            Caption = ' '#1055#1072#1088#1090#1085#1100#1086#1088' '
            Layout = tlCenter
          end
          object btnDocs: TSpeedButton
            Left = 119
            Top = 0
            Width = 37
            Height = 22
            Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' '#1080#1079#1073#1088#1072#1085#1080#1103' '#1055#1072#1088#1090#1085#1100#1086#1088
            Flat = True
            Glyph.Data = {
              36060000424D360600000000000036040000280000001D000000100000000100
              0800000000000002000000000000000000000001000000000000000000000000
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
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFDFDFDFD1D
              1D1D1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFDFDFB0000
              0000000000FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFDFBFB1D1D
              0000001D1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFBFB1D1DFB
              000000FBFB1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FBFB1D1DFBFB
              0000001DFBFB1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FBFB1D1DFB1D
              0000001D1DFBFB1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FBFB1DFBFB1D
              000000FB1D1DFBFB1DFDFDFDFDFDFDFDFDFDFDFD00FDFD000000FBFB1DFBFB1D
              000000FBFB1DFBFB1D1DFDFDFDFDFDFDFDFDFD000000FD000000FBFB1D1D0000
              0000001DFB1DFBFB1D1DFDFDFDFDFDFDFDFD0000000000000000FBFBFB1DFBFB
              1D1D1DFBFB1DFBFB1D1DFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFBFB1D1DFB
              FBFBFBFB1D1DFBFB1DFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFBFBFB1D1D
              0000001D1DFBFB1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFDFBFBFB1D
              0000001D1DFBFB1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFDFDFBFBFB
              1D001DFBFBFB1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFDFDFDFDFB
              FBFBFBFBFB1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFDFDFDFDFD
              FD1D1D1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000}
            ParentShowHint = False
            ShowHint = True
            Transparent = False
            OnClick = btnDocsClick
          end
        end
        object pnlToggleColumns: TPanel
          Left = 622
          Top = 0
          Width = 153
          Height = 24
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 3
          object btnCommonVendor: TSpeedButton
            Tag = 6
            Left = 109
            Top = 0
            Width = 44
            Height = 24
            Align = alRight
            GroupIndex = 1
            Caption = #1054#1073' '#1044#1089
            Flat = True
          end
          object btnLocation: TSpeedButton
            Tag = 2
            Left = 21
            Top = 0
            Width = 44
            Height = 24
            Align = alRight
            GroupIndex = 1
            Down = True
            Caption = #1052#1077#1089#1090
            Flat = True
          end
          object btnCommonClient: TSpeedButton
            Tag = 4
            Left = 65
            Top = 0
            Width = 44
            Height = 24
            Align = alRight
            GroupIndex = 1
            Caption = #1054#1073' '#1050#1083
            Flat = True
          end
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 775
        Height = 343
        HorzScrollBar.Visible = False
        UseMultiTitle = True
        VTitleMargin = 6
        OnGetCellParams = grdDataGetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'COMPANY_STATUS_CODE'
            Footers = <>
            Title.Caption = #1057#1090#1072#1090#1091#1089' '#1080' '#1042#1088#1077#1084#1077' '#1079#1072' '#1088#1072#1079#1074#1080#1090#1080#1077' ('#1074' '#1084#1077#1089#1077#1094#1080')|'#1057#1090#1072#1090#1091#1089
            Width = 67
          end
          item
            EditButtons = <>
            FieldName = 'CURRENT_STATUS_REACH_MONTHS'
            Footers = <>
            Title.Caption = #1057#1090#1072#1090#1091#1089' '#1080' '#1042#1088#1077#1084#1077' '#1079#1072' '#1088#1072#1079#1074#1080#1090#1080#1077' ('#1074' '#1084#1077#1089#1077#1094#1080')|'#1076
            Width = 26
          end
          item
            EditButtons = <>
            FieldName = 'EXISTANCE_MONTHS'
            Footers = <>
            Title.Caption = #1057#1090#1072#1090#1091#1089' '#1080' '#1042#1088#1077#1084#1077' '#1079#1072' '#1088#1072#1079#1074#1080#1090#1080#1077' ('#1074' '#1084#1077#1089#1077#1094#1080')|'#1089
            Width = 26
          end
          item
            EditButtons = <>
            FieldName = 'COMPANY_CLASS_ABBREV'
            Footers = <>
            Title.Caption = #1050#1083#1072#1089
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = 'CLIENT_PRIORITY_NO'
            Footers = <>
            Title.Caption = #1055#1072#1079'. '#1056#1086#1083#1080' '#1080' '#1055#1088'.|'#1050' '#1083
            Width = 16
          end
          item
            EditButtons = <>
            FieldName = 'VENDOR_PRIORITY_NO'
            Footers = <>
            Title.Caption = #1055#1072#1079'. '#1056#1086#1083#1080' '#1080' '#1055#1088'.|'#1044' '#1089
            Width = 16
          end
          item
            EditButtons = <>
            FieldName = 'WORKER_PRIORITY_NO'
            Footers = <>
            Title.Caption = #1055#1072#1079'. '#1056#1086#1083#1080' '#1080' '#1055#1088'.|'#1057' '#1083
            Width = 16
          end
          item
            EditButtons = <>
            FieldName = 'MEDIATOR_PRIORITY_NO'
            Footers = <>
            Title.Caption = #1055#1072#1079'. '#1056#1086#1083#1080' '#1080' '#1055#1088'.|'#1055' '#1089
            Width = 16
          end
          item
            EditButtons = <>
            FieldName = 'GOV_ORG_PRIORITY_NO'
            Footers = <>
            Title.Caption = #1055#1072#1079'. '#1056#1086#1083#1080' '#1080' '#1055#1088'.|'#1044' '#1048
            Width = 16
          end
          item
            EditButtons = <>
            FieldName = 'BANK_PRIORITY_NO'
            Footers = <>
            Title.Caption = #1055#1072#1079'. '#1056#1086#1083#1080' '#1080' '#1055#1088'.|'#1060' '#1048
            Width = 16
          end
          item
            EditButtons = <>
            FieldName = 'COMPANY_NO'
            Footers = <>
            Title.Caption = #1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1094#1080#1103' '#1085#1072' '#1055#1072#1088#1090#1085#1100#1086#1088'|'#1050#1086#1076
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'COMPANY_TYPE_ABBREV'
            Footers = <>
            Title.Caption = #1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1094#1080#1103' '#1085#1072' '#1055#1072#1088#1090#1085#1100#1086#1088'|'#1058#1080#1087' '#1082#1086#1084#1087#1072#1085#1080#1103
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'COMPANY_NAME'
            Footers = <>
            Title.Caption = #1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1094#1080#1103' '#1085#1072' '#1055#1072#1088#1090#1085#1100#1086#1088'|'#1055#1098#1083#1085#1086' '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'SHORT_NAME'
            Footers = <>
            Title.Caption = #1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1094#1080#1103' '#1085#1072' '#1055#1072#1088#1090#1085#1100#1086#1088'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 175
          end
          item
            EditButtons = <>
            FieldName = 'VAT_NO'
            Footers = <>
            Title.Caption = #1048#1076'. No '#1087#1086' '#1044#1044#1057
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'BULSTAT'
            Footers = <>
            Title.Caption = #1041#1059#1051#1057#1058#1040#1058
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'COUNTRY_NAME'
            Footers = <>
            Tag = 3
            Title.Caption = #1052#1077#1089#1090#1086#1087#1086#1083#1086#1078#1077#1085#1080#1077'|'#1044#1098#1088#1078#1072#1074#1072
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'CITY'
            Footers = <>
            Tag = 3
            Title.Caption = #1052#1077#1089#1090#1086#1087#1086#1083#1086#1078#1077#1085#1080#1077'|'#1053#1072#1089#1077#1083#1077#1085#1086' '#1084#1103#1089#1090#1086
            Width = 102
          end
          item
            EditButtons = <>
            FieldName = 'CLIENT_COMMON_PARTNER_NO'
            Footers = <>
            Tag = 5
            Title.Caption = #1054#1073#1086#1073#1097#1072#1074#1072#1097' - '#1050#1083#1080#1077#1085#1090'|'#1050#1086#1076
            Visible = False
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'CLIENT_COMMON_PARTNER_NAME'
            Footers = <>
            Tag = 5
            Title.Caption = #1054#1073#1086#1073#1097#1072#1074#1072#1097' - '#1050#1083#1080#1077#1085#1090'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Visible = False
            Width = 102
          end
          item
            EditButtons = <>
            FieldName = 'VENDOR_COMMON_PARTNER_NO'
            Footers = <>
            Tag = 7
            Title.Caption = #1054#1073#1086#1073#1097#1072#1074#1072#1097' - '#1044#1086#1089#1090#1072#1074#1095#1080#1082'|'#1050#1086#1076
            Visible = False
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'VENDOR_COMMON_PARTNER_NAME'
            Footers = <>
            Tag = 7
            Title.Caption = #1054#1073#1086#1073#1097#1072#1074#1072#1097' - '#1044#1086#1089#1090#1072#1074#1095#1080#1082'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Visible = False
            Width = 102
          end
          item
            Alignment = taCenter
            Color = 15532031
            EditButtons = <>
            FieldName = 'DOC_EMPTINESS_REQUIREMENT_CODE'
            Footers = <>
            Title.Caption = #1052#1048#1048#1054
            Width = 35
          end
          item
            Alignment = taCenter
            Color = 15532031
            EditButtons = <>
            FieldName = 'UNAUTHORIZED_ACTIVE_DI_COUNT'
            Footers = <>
            Title.Caption = #1048#1048#1054
            Width = 35
          end>
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 48
    Top = 216
  end
  inherited cdsGridData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conCompanies
    FieldDefs = <
      item
        Name = 'COMPANY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'COMPANY_NO'
        DataType = ftFloat
      end
      item
        Name = 'COUNTRY_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'TAX_NO'
        DataType = ftFloat
      end
      item
        Name = 'CITY'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'LANGUAGE_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'STATE'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'REGION'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'ZIP'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ADDRESS'
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
        Name = 'DOC_EMPTINESS_REQUIREMENT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DOC_IS_COMPLETE'
        DataType = ftFloat
      end
      item
        Name = 'ACTIVE_DI_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'UNAUTHORIZED_ACTIVE_DI_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'UNAPPROVED_ACTIVE_DI_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'COMPANY_CLASS_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SHORT_NAME'
        DataType = ftWideString
        Size = 44
      end
      item
        Name = 'CUSTOM_ID'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'IS_CLIENT'
        DataType = ftFloat
      end
      item
        Name = 'IS_MEDIATOR'
        DataType = ftFloat
      end
      item
        Name = 'IS_VENDOR'
        DataType = ftFloat
      end
      item
        Name = 'IS_GOV_ORGANIZATION'
        DataType = ftFloat
      end
      item
        Name = 'IS_BANK'
        DataType = ftFloat
      end
      item
        Name = 'IS_WORKER'
        DataType = ftFloat
      end
      item
        Name = 'COMPANY_STATUS_CODE'
        DataType = ftFloat
      end
      item
        Name = 'BASE_ROLE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'EXISTANCE_MONTHS'
        DataType = ftFloat
      end
      item
        Name = 'CURRENT_STATUS_REACH_MONTHS'
        DataType = ftFloat
      end
      item
        Name = 'COMPANY_STATUS_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'COMPANY_CLASS_ABBREV'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'CLIENT_PRIORITY_NO'
        DataType = ftFloat
      end
      item
        Name = 'MEDIATOR_PRIORITY_NO'
        DataType = ftFloat
      end
      item
        Name = 'VENDOR_PRIORITY_NO'
        DataType = ftFloat
      end
      item
        Name = 'GOV_ORG_PRIORITY_NO'
        DataType = ftFloat
      end
      item
        Name = 'BANK_PRIORITY_NO'
        DataType = ftFloat
      end
      item
        Name = 'WORKER_PRIORITY_NO'
        DataType = ftFloat
      end
      item
        Name = 'BULSTAT'
        DataType = ftWideString
        Size = 14
      end
      item
        Name = 'CLIENT_COMMON_PARTNER_CODE'
        DataType = ftFloat
      end
      item
        Name = 'VENDOR_COMMON_PARTNER_CODE'
        DataType = ftFloat
      end
      item
        Name = 'CLIENT_COMMON_PARTNER_NO'
        DataType = ftFloat
      end
      item
        Name = 'CLIENT_COMMON_PARTNER_NAME'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'VENDOR_COMMON_PARTNER_NO'
        DataType = ftFloat
      end
      item
        Name = 'VENDOR_COMMON_PARTNER_NAME'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'COMPANY_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'VAT_NO'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'COMPANY_TYPE_ABBREV'
        DataType = ftWideString
        Size = 100
      end>
    Params = <
      item
        DataType = ftFloat
        Name = 'MIN_STATUS_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MAX_STATUS_CODE'
        ParamType = ptInput
        Value = '5'
      end
      item
        DataType = ftFloat
        Name = 'MIN_EXISTANCE_MONTHS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_EXISTANCE_MONTHS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_REACH_MONTHS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_REACH_MONTHS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'COMPANY_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'COMPANY_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'SHORT_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'SHORT_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'BULSTAT'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'BULSTAT'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'BULSTAT_EX'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'BULSTAT_EX'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'ABBREV'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'ABBREV'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'FIRST_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'FIRST_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'MIDDLE_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'MIDDLE_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'LAST_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'LAST_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'EGN'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'EGN'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PERSON_GENDER_CODE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'PERSON_GENDER_CODE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'PERSON_GENDER_CODE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'PERSON_GENDER_CODE'
        ParamType = ptInput
        Value = '0'
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
        Name = 'COMPANY_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'COMPANY_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'COMPANY_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'SHORT_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'SHORT_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'COMPANY_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'COMPANY_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'SHORT_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'SHORT_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COUNTRY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COUNTRY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ROLE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ROLE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ROLE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ROLE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ROLE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ROLE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ROLE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ROLE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_EXTERNAL'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'IS_INTERNAL'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'COMMON_PARTNER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMMON_PARTNER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMMON_PARTNER_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvCompanies'
    Left = 16
    Top = 216
    object cdsGridDataCOMPANY_CODE: TAbmesFloatField
      FieldName = 'COMPANY_CODE'
    end
    object cdsGridDataCOMPANY_NO: TAbmesFloatField
      FieldName = 'COMPANY_NO'
    end
    object cdsGridDataCOUNTRY_NAME: TAbmesWideStringField
      FieldName = 'COUNTRY_NAME'
      Size = 50
    end
    object cdsGridDataTAX_NO: TAbmesFloatField
      FieldName = 'TAX_NO'
    end
    object cdsGridDataCITY: TAbmesWideStringField
      FieldName = 'CITY'
      Size = 50
    end
    object cdsGridDataBULSTAT: TAbmesWideStringField
      FieldName = 'BULSTAT'
      Size = 41
    end
    object cdsGridDataLANGUAGE_NAME: TAbmesWideStringField
      FieldName = 'LANGUAGE_NAME'
      Size = 50
    end
    object cdsGridDataSTATE: TAbmesWideStringField
      FieldName = 'STATE'
      Size = 50
    end
    object cdsGridDataREGION: TAbmesWideStringField
      FieldName = 'REGION'
      Size = 50
    end
    object cdsGridDataZIP: TAbmesWideStringField
      FieldName = 'ZIP'
    end
    object cdsGridDataADDRESS: TAbmesWideStringField
      FieldName = 'ADDRESS'
      Size = 250
    end
    object cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsGridDataDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsGridDataDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'DOC_EMPTINESS_REQUIREMENT_CODE'
      OnGetText = cdsGridDataDOC_EMPTINESS_REQUIREMENT_CODEGetText
    end
    object cdsGridDataDOC_IS_COMPLETE: TAbmesFloatField
      FieldName = 'DOC_IS_COMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'ACTIVE_DI_COUNT'
    end
    object cdsGridDataUNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAUTHORIZED_ACTIVE_DI_COUNT'
      OnGetText = cdsGridDataUNAUTHORIZED_ACTIVE_DI_COUNTGetText
    end
    object cdsGridDataUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAPPROVED_ACTIVE_DI_COUNT'
    end
    object cdsGridDataCOMPANY_CLASS_CODE: TAbmesFloatField
      FieldName = 'COMPANY_CLASS_CODE'
    end
    object cdsGridDataCOMPANY_CLASS_ABBREV: TAbmesWideStringField
      FieldName = 'COMPANY_CLASS_ABBREV'
      Size = 100
    end
    object cdsGridDataSHORT_NAME: TAbmesWideStringField
      FieldName = 'SHORT_NAME'
      Size = 44
    end
    object cdsGridDataCUSTOM_ID: TAbmesWideStringField
      FieldName = 'CUSTOM_ID'
    end
    object cdsGridDataIS_CLIENT: TAbmesFloatField
      FieldName = 'IS_CLIENT'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataIS_MEDIATOR: TAbmesFloatField
      FieldName = 'IS_MEDIATOR'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataIS_VENDOR: TAbmesFloatField
      FieldName = 'IS_VENDOR'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataIS_GOV_ORGANIZATION: TAbmesFloatField
      FieldName = 'IS_GOV_ORGANIZATION'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataIS_BANK: TAbmesFloatField
      FieldName = 'IS_BANK'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataCLIENT_PRIORITY_NO: TAbmesFloatField
      FieldName = 'CLIENT_PRIORITY_NO'
    end
    object cdsGridDataMEDIATOR_PRIORITY_NO: TAbmesFloatField
      FieldName = 'MEDIATOR_PRIORITY_NO'
    end
    object cdsGridDataVENDOR_PRIORITY_NO: TAbmesFloatField
      FieldName = 'VENDOR_PRIORITY_NO'
    end
    object cdsGridDataGOV_ORG_PRIORITY_NO: TAbmesFloatField
      FieldName = 'GOV_ORG_PRIORITY_NO'
    end
    object cdsGridDataBANK_PRIORITY_NO: TAbmesFloatField
      FieldName = 'BANK_PRIORITY_NO'
    end
    object cdsGridDataCOMPANY_STATUS_CODE: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'COMPANY_STATUS_CODE'
      OnGetText = cdsGridDataCOMPANY_STATUS_CODEGetText
    end
    object cdsGridDataBASE_ROLE_CODE: TAbmesFloatField
      FieldName = 'BASE_ROLE_CODE'
    end
    object cdsGridDataEXISTANCE_MONTHS: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'EXISTANCE_MONTHS'
      DisplayFormat = ',0'
    end
    object cdsGridDataCURRENT_STATUS_REACH_MONTHS: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'CURRENT_STATUS_REACH_MONTHS'
      DisplayFormat = ',0'
    end
    object cdsGridDataCOMPANY_STATUS_NAME: TAbmesWideStringField
      FieldName = 'COMPANY_STATUS_NAME'
      Size = 100
    end
    object cdsGridDataIS_WORKER: TAbmesFloatField
      FieldName = 'IS_WORKER'
    end
    object cdsGridDataWORKER_PRIORITY_NO: TAbmesFloatField
      FieldName = 'WORKER_PRIORITY_NO'
    end
    object cdsGridDataCLIENT_COMMON_PARTNER_CODE: TAbmesFloatField
      FieldName = 'CLIENT_COMMON_PARTNER_CODE'
    end
    object cdsGridDataVENDOR_COMMON_PARTNER_CODE: TAbmesFloatField
      FieldName = 'VENDOR_COMMON_PARTNER_CODE'
    end
    object cdsGridDataCLIENT_COMMON_PARTNER_NO: TAbmesFloatField
      FieldName = 'CLIENT_COMMON_PARTNER_NO'
    end
    object cdsGridDataCLIENT_COMMON_PARTNER_NAME: TAbmesWideStringField
      FieldName = 'CLIENT_COMMON_PARTNER_NAME'
    end
    object cdsGridDataVENDOR_COMMON_PARTNER_NO: TAbmesFloatField
      FieldName = 'VENDOR_COMMON_PARTNER_NO'
    end
    object cdsGridDataVENDOR_COMMON_PARTNER_NAME: TAbmesWideStringField
      FieldName = 'VENDOR_COMMON_PARTNER_NAME'
    end
    object cdsGridDataCOMPANY_NAME: TAbmesWideStringField
      FieldName = 'COMPANY_NAME'
      Size = 50
    end
    object cdsGridDataVAT_NO: TAbmesWideStringField
      FieldName = 'VAT_NO'
    end
    object cdsGridDataCOMPANY_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'COMPANY_TYPE_ABBREV'
      Size = 100
    end
  end
  inherited alActions: TActionList
    Left = 16
    Top = 280
    inherited actForm: TAction
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1055#1072#1088#1090#1085#1100#1086#1088#1080
    end
    inherited actFilter: TAction
      Visible = True
    end
    object actAddPerson: TAction
      Caption = #1057#1074#1086#1073#1086#1076#1085#1086' '#1048#1079#1073#1080#1088#1072#1097' '#1063#1086#1074#1077#1096#1082#1080' '#1048#1085#1076#1080#1074#1080#1076' ('#1057#1048#1063#1048')...'
      OnExecute = actAddPersonExecute
    end
    object actAddCompany: TAction
      Caption = #1048#1085#1076#1091#1089#1090#1088#1080#1072#1083#1085#1086' '#1055#1088#1077#1076#1087#1088#1080#1103#1090#1080#1077' ('#1048#1055')...'
      OnExecute = actAddCompanyExecute
    end
    object actAddCumulative: TAction
      Caption = #1057#1098#1073#1080#1088#1072#1090#1077#1083#1077#1085' ('#1057#1098#1073#1080')...'
      OnExecute = actAddCumulativeExecute
    end
    object actAddCommon: TAction
      Caption = #1054#1073#1086#1073#1097#1072#1074#1072#1097' ('#1054#1073#1086#1073')...'
      OnExecute = actAddCommonExecute
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    AfterOpen = pdsGridDataParamsAfterOpen
    Left = 16
    Top = 248
    object pdsGridDataParamsMIN_STATUS_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' - '#1054#1090
      FieldName = 'MIN_STATUS_CODE'
    end
    object pdsGridDataParamsMAX_STATUS_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' - '#1044#1086
      FieldName = 'MAX_STATUS_CODE'
    end
    object pdsGridDataParamsMIN_REACH_MONTHS: TAbmesFloatField
      DisplayLabel = #1055#1077#1088#1080#1086#1076' '#1079#1072' '#1076#1086#1089#1090#1080#1075#1072#1085#1077' - '#1054#1090
      FieldName = 'MIN_REACH_MONTHS'
    end
    object pdsGridDataParamsMAX_REACH_MONTHS: TAbmesFloatField
      DisplayLabel = #1055#1077#1088#1080#1086#1076' '#1079#1072' '#1076#1086#1089#1090#1080#1075#1072#1085#1077' - '#1044#1086
      FieldName = 'MAX_REACH_MONTHS'
    end
    object pdsGridDataParamsMIN_EXISTANCE_MONTHS: TAbmesFloatField
      DisplayLabel = #1055#1077#1088#1080#1086#1076' '#1085#1072' '#1089#1098#1097#1077#1089#1090#1074#1091#1074#1072#1085#1077' - '#1054#1090
      FieldName = 'MIN_EXISTANCE_MONTHS'
    end
    object pdsGridDataParamsMAX_EXISTANCE_MONTHS: TAbmesFloatField
      DisplayLabel = #1055#1077#1088#1080#1086#1076' '#1085#1072' '#1089#1098#1097#1077#1089#1090#1074#1091#1074#1072#1085#1077' - '#1044#1086
      FieldName = 'MAX_EXISTANCE_MONTHS'
    end
    object pdsGridDataParamsCOMPANY_CLASS_CODE: TAbmesFloatField
      DisplayLabel = #1050#1083#1072#1089' '#1055#1072#1088#1090#1085#1100#1086#1088
      FieldName = 'COMPANY_CLASS_CODE'
    end
    object pdsGridDataParamsCOMPANY_NO: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'COMPANY_NO'
    end
    object pdsGridDataParamsCOMPANY_NAME: TAbmesWideStringField
      FieldName = 'COMPANY_NAME'
      Size = 255
    end
    object pdsGridDataParamsSHORT_NAME: TAbmesWideStringField
      FieldName = 'SHORT_NAME'
      Size = 255
    end
    object pdsGridDataParamsBULSTAT: TAbmesWideStringField
      FieldName = 'BULSTAT'
      Size = 255
    end
    object pdsGridDataParamsBULSTAT_EX: TAbmesWideStringField
      FieldName = 'BULSTAT_EX'
      Size = 255
    end
    object pdsGridDataParamsCOUNTRY_CODE: TAbmesFloatField
      DisplayLabel = #1044#1098#1088#1078#1072#1074#1072
      FieldName = 'COUNTRY_CODE'
    end
    object pdsGridDataParamsFIRST_NAME: TAbmesWideStringField
      DisplayLabel = #1048#1084#1077
      FieldName = 'FIRST_NAME'
      Size = 255
    end
    object pdsGridDataParamsMIDDLE_NAME: TAbmesWideStringField
      DisplayLabel = #1055#1088#1077#1079#1080#1084#1077
      FieldName = 'MIDDLE_NAME'
      Size = 255
    end
    object pdsGridDataParamsLAST_NAME: TAbmesWideStringField
      DisplayLabel = #1060#1072#1084#1080#1083#1080#1103
      FieldName = 'LAST_NAME'
      Size = 255
    end
    object pdsGridDataParamsABBREV: TAbmesWideStringField
      DisplayLabel = #1040#1073#1088#1077#1074#1080#1072#1090#1091#1088#1072
      FieldName = 'ABBREV'
      Size = 255
    end
    object pdsGridDataParamsEGN: TAbmesWideStringField
      DisplayLabel = #1045#1043#1053'/'#1051#1053#1063
      FieldName = 'EGN'
      Size = 255
    end
    object pdsGridDataParamsPERSON_GENDER_CODE: TAbmesFloatField
      DisplayLabel = #1055#1086#1083
      FieldName = 'PERSON_GENDER_CODE'
    end
    object pdsGridDataParamsCRAFT_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1050#1083#1072#1089#1080#1092#1080#1082#1072#1094#1080#1086#1085#1085#1072' '#1043#1088#1091#1087#1072' '#1055#1088#1086#1092#1077#1089#1080#1080
      FieldName = 'CRAFT_TYPE_CODE'
      OnChange = pdsGridDataParamsCRAFT_TYPE_CODEChange
    end
    object pdsGridDataParamsCRAFT_CODE: TAbmesFloatField
      DisplayLabel = #1055#1088#1086#1092#1077#1089#1080#1103
      FieldName = 'CRAFT_CODE'
    end
    object pdsGridDataParamsROLE_CODE: TAbmesFloatField
      DisplayLabel = #1055#1072#1079#1072#1088#1085#1072' '#1056#1086#1083#1103
      FieldName = 'ROLE_CODE'
    end
    object pdsGridDataParamsIS_INTERNAL: TAbmesFloatField
      DisplayLabel = #1042#1098#1090#1088#1077#1096#1077#1085
      FieldName = 'IS_INTERNAL'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsIS_EXTERNAL: TAbmesFloatField
      DisplayLabel = #1042#1098#1085#1096#1077#1085
      FieldName = 'IS_EXTERNAL'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsCOMMON_PARTNER_CODE: TAbmesFloatField
      FieldName = 'COMMON_PARTNER_CODE'
    end
    object pdsGridDataParamsACTIVITY_STATUS_CODE: TAbmesFloatField
      FieldName = 'ACTIVITY_STATUS_CODE'
      ProviderFlags = []
    end
    object pdsGridDataParamsIS_COMPANY_OR_PERSON_CODE: TAbmesFloatField
      FieldName = 'IS_COMPANY_OR_PERSON_CODE'
      ProviderFlags = []
    end
    object pdsGridDataParams_COMPANY_CLASS_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_COMPANY_CLASS_NAME'
      LookupDataSet = cdsCompanyClasses
      LookupKeyFields = 'COMPANY_CLASS_CODE'
      LookupResultField = 'COMPANY_CLASS_NAME'
      KeyFields = 'COMPANY_CLASS_CODE'
      Size = 100
      Lookup = True
    end
  end
  inherited dsGridDataParams: TDataSource
    Left = 48
    Top = 248
  end
  inherited dsData: TDataSource
    Left = 48
    Top = 184
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 16
    Top = 184
  end
  inherited pmInsertMenu: TPopupMenu
    inherited miInsert: TMenuItem
      Default = False
      Visible = False
    end
    inherited miInsertLike: TMenuItem
      Visible = False
    end
    object miAddCompany: TMenuItem
      Action = actAddCompany
      Default = True
    end
    object miAddPerson: TMenuItem
      Action = actAddPerson
    end
    object miAddCumulative: TMenuItem
      Action = actAddCumulative
    end
    object miAddCommon: TMenuItem
      Action = actAddCommon
    end
  end
  object cdsCompanyClasses: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompanies
    Params = <>
    ProviderName = 'prvCompanyClasses'
    Left = 136
    Top = 184
    object cdsCompanyClassesCOMPANY_CLASS_CODE: TAbmesFloatField
      FieldName = 'COMPANY_CLASS_CODE'
      Required = True
    end
    object cdsCompanyClassesCOMPANY_CLASS_ABBREV: TAbmesWideStringField
      FieldName = 'COMPANY_CLASS_ABBREV'
      Required = True
      Size = 100
    end
    object cdsCompanyClassesCOMPANY_CLASS_NAME: TAbmesWideStringField
      FieldName = 'COMPANY_CLASS_NAME'
      Required = True
      Size = 100
    end
  end
end
