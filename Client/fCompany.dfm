inherited fmCompany: TfmCompany
  Left = 264
  Top = 189
  Caption = #1055#1072#1088#1090#1085#1100#1086#1088' - %s'
  ClientHeight = 601
  ClientWidth = 848
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 566
    Width = 848
    TabOrder = 1
    inherited pnlOKCancel: TPanel
      Left = 580
      TabOrder = 2
    end
    inherited pnlClose: TPanel
      Left = 491
      TabOrder = 1
    end
    inherited pnlApply: TPanel
      Left = 759
      TabOrder = 3
      Visible = False
    end
    object pnlParRelButtons: TPanel
      Left = 0
      Top = 0
      Width = 265
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object btnParRelClient: TBitBtn
        Left = 8
        Top = 2
        Width = 75
        Height = 25
        Action = actParRelClient
        Caption = #1059#1052' '#1055#1072#1088#1050'...'
        TabOrder = 0
      end
      object btnParRelVendor: TBitBtn
        Left = 91
        Top = 2
        Width = 75
        Height = 25
        Action = actParRelVendor
        Caption = #1059#1052' '#1055#1072#1088#1044'...'
        TabOrder = 1
      end
    end
  end
  object pnlMain: TPanel [1]
    Left = 0
    Top = 0
    Width = 848
    Height = 566
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 5
    TabOrder = 0
    object pcMain: TPageControl
      Left = 5
      Top = 119
      Width = 836
      Height = 439
      ActivePage = tabMain
      HotTrack = True
      TabOrder = 1
      OnChanging = pcMainChanging
      object tabMain: TTabSheet
        Caption = #1054#1089#1085#1086#1074#1085#1080' '#1076#1072#1085#1085#1080
        object gbPersonCrafts: TGroupBox
          Left = 448
          Top = 222
          Width = 377
          Height = 185
          Caption = ' '#1055#1088#1086#1092#1077#1089#1080#1080' '
          TabOrder = 3
          object btnInsertRecord: TSpeedButton
            Left = 346
            Top = 12
            Width = 23
            Height = 22
            Action = actAddCraft
            Flat = True
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
          end
          object btnDelRecord: TSpeedButton
            Left = 346
            Top = 34
            Width = 23
            Height = 22
            Action = actDeleteCraft
            Flat = True
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
            ParentShowHint = False
            ShowHint = True
          end
          object btnEditRecord: TSpeedButton
            Left = 346
            Top = 56
            Width = 23
            Height = 22
            Action = actEditCraft
            Flat = True
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
            ParentShowHint = False
            ShowHint = True
          end
          object grdPersonCrafts: TAbmesDBGrid
            Left = 8
            Top = 14
            Width = 337
            Height = 163
            DataSource = dsPersonCrafts
            FooterParams.Color = clWindow
            HorzScrollBar.VisibleMode = sbNeverShowEh
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 0
            OnDblClick = grdPersonCraftsDblClick
            Columns = <
              item
                EditButtons = <>
                FieldName = '_CRAFT_TYPE_NAME'
                Footers = <>
                Title.Caption = #1050#1083#1072#1089#1080#1092#1080#1082#1072#1094#1080#1086#1085#1085#1072' '#1043#1088#1091#1087#1072
                Width = 133
              end
              item
                EditButtons = <>
                FieldName = 'CRAFT_CODE'
                Footers = <>
                Title.Caption = #1050#1086#1076
                Width = 29
              end
              item
                EditButtons = <>
                FieldName = '_CRAFT_NAME'
                Footers = <>
                Title.Caption = #1055#1088#1086#1092#1077#1089#1080#1103
                Width = 119
              end
              item
                EditButtons = <>
                FieldName = '_PRIORITY_NAME'
                Footers = <>
                Title.Caption = #1055#1088'.'
                Width = 20
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object gbRoles: TGroupBox
          Left = 8
          Top = 222
          Width = 433
          Height = 185
          Caption = ' '#1055#1072#1079#1072#1088#1085#1080' '#1056#1086#1083#1080' '
          Color = clBtnFace
          ParentColor = False
          TabOrder = 2
          object pnlWorker: TPanel
            Left = 2
            Top = 105
            Width = 429
            Height = 25
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 4
            object chbIsWorker: TAbmesDBCheckBox
              Left = 16
              Top = 3
              Width = 73
              Height = 17
              Caption = #1057#1083#1091#1078#1080#1090#1077#1083
              DataField = 'IS_WORKER'
              DataSource = dsData
              TabOrder = 0
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              ImmediateUpdateField = True
            end
            object cbWorkerPriority: TJvDBLookupCombo
              Left = 96
              Top = 0
              Width = 57
              Height = 21
              DeleteKeyClear = False
              DisplayAllFields = True
              DataField = 'WORKER_PRIORITY_CODE'
              DataSource = dsData
              LookupField = 'PRIORITY_CODE'
              LookupDisplay = 'PRIORITY_NO'
              LookupSource = dsPriorities
              TabOrder = 1
            end
            object rpIsExternal: TJvDBRadioPanel
              Left = 160
              Top = 3
              Width = 177
              Height = 18
              BevelOuter = bvNone
              Columns = 2
              DataField = 'IS_EXTERNAL'
              DataSource = dsData
              Items.Strings = (
                #1074#1098#1090#1088#1077#1096#1077#1085
                #1074#1098#1085#1096#1077#1085)
              TabOrder = 2
              Values.Strings = (
                'False'
                'True')
            end
          end
          object pnlClient: TPanel
            Left = 2
            Top = 30
            Width = 429
            Height = 25
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            object cbClientPriority: TJvDBLookupCombo
              Left = 96
              Top = 0
              Width = 57
              Height = 21
              DeleteKeyClear = False
              DisplayAllFields = True
              DataField = 'CLIENT_PRIORITY_CODE'
              DataSource = dsData
              LookupField = 'PRIORITY_CODE'
              LookupDisplay = 'PRIORITY_NO'
              LookupSource = dsPriorities
              TabOrder = 1
            end
            object chbIsClient: TAbmesDBCheckBox
              Left = 16
              Top = 3
              Width = 57
              Height = 17
              Caption = #1050#1083#1080#1077#1085#1090
              DataField = 'IS_CLIENT'
              DataSource = dsData
              TabOrder = 0
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              ImmediateUpdateField = True
            end
            object pnlClientCommonPartner: TPanel
              Left = 160
              Top = 0
              Width = 257
              Height = 25
              BevelOuter = bvNone
              TabOrder = 2
              inline frClientCommonPartner: TfrPartnerFieldEditFrameBald
                Left = 0
                Top = 0
                Width = 257
                Height = 22
                HorzScrollBar.Visible = False
                VertScrollBar.Visible = False
                Constraints.MaxHeight = 22
                Constraints.MinHeight = 22
                TabOrder = 0
              end
            end
          end
          object pnlRolesTop: TPanel
            Left = 2
            Top = 15
            Width = 429
            Height = 15
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object lblClientPriority: TLabel
              Left = 96
              Top = 0
              Width = 54
              Height = 13
              Caption = #1055#1088#1080#1086#1088#1080#1090#1077#1090
              Transparent = True
            end
            object lblCommonPartner: TLabel
              Left = 160
              Top = 0
              Width = 62
              Height = 13
              Caption = #1054#1073#1086#1073#1097#1072#1074#1072#1097
            end
          end
          object pnlVendor: TPanel
            Left = 2
            Top = 55
            Width = 429
            Height = 25
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 2
            object cbVendorPriority: TJvDBLookupCombo
              Left = 96
              Top = 0
              Width = 57
              Height = 21
              DeleteKeyClear = False
              DisplayAllFields = True
              DataField = 'VENDOR_PRIORITY_CODE'
              DataSource = dsData
              LookupField = 'PRIORITY_CODE'
              LookupDisplay = 'PRIORITY_NO'
              LookupSource = dsPriorities
              TabOrder = 1
            end
            object chbIsVendor: TAbmesDBCheckBox
              Left = 16
              Top = 3
              Width = 73
              Height = 17
              Caption = #1044#1086#1089#1090#1072#1074#1095#1080#1082
              DataField = 'IS_VENDOR'
              DataSource = dsData
              TabOrder = 0
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              ImmediateUpdateField = True
            end
            object pnlVendorCommonPartner: TPanel
              Left = 160
              Top = 0
              Width = 257
              Height = 25
              BevelOuter = bvNone
              TabOrder = 2
              inline frVendorCommonPartner: TfrPartnerFieldEditFrameBald
                Left = 0
                Top = 0
                Width = 257
                Height = 22
                HorzScrollBar.Visible = False
                VertScrollBar.Visible = False
                Constraints.MaxHeight = 22
                Constraints.MinHeight = 22
                TabOrder = 0
              end
            end
          end
          object pnlMediator: TPanel
            Left = 2
            Top = 80
            Width = 429
            Height = 25
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 3
            object cbMediatorPriority: TJvDBLookupCombo
              Left = 96
              Top = 0
              Width = 57
              Height = 21
              DeleteKeyClear = False
              DisplayAllFields = True
              DataField = 'MEDIATOR_PRIORITY_CODE'
              DataSource = dsData
              LookupField = 'PRIORITY_CODE'
              LookupDisplay = 'PRIORITY_NO'
              LookupSource = dsPriorities
              TabOrder = 1
            end
            object chbIsMediator: TAbmesDBCheckBox
              Left = 16
              Top = 3
              Width = 75
              Height = 17
              Caption = #1055#1086#1089#1088#1077#1076#1085#1080#1082
              DataField = 'IS_MEDIATOR'
              DataSource = dsData
              TabOrder = 0
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              ImmediateUpdateField = True
            end
          end
          object pnlGovernmentOrganisation: TPanel
            Left = 2
            Top = 130
            Width = 429
            Height = 25
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 5
            object cbGovernmentOrganizationPriority: TJvDBLookupCombo
              Left = 96
              Top = 0
              Width = 57
              Height = 21
              DeleteKeyClear = False
              DisplayAllFields = True
              DataField = 'GOV_ORGANIZATION_PRIORITY_CODE'
              DataSource = dsData
              LookupField = 'PRIORITY_CODE'
              LookupDisplay = 'PRIORITY_NO'
              LookupSource = dsPriorities
              TabOrder = 1
            end
            object chbIsGovernmentOrganisation: TAbmesDBCheckBox
              Left = 16
              Top = 3
              Width = 79
              Height = 17
              Caption = #1044#1098#1088#1078' '#1048#1085#1089#1090
              DataField = 'IS_GOV_ORGANIZATION'
              DataSource = dsData
              TabOrder = 0
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              ImmediateUpdateField = True
            end
          end
          object pnlBank: TPanel
            Left = 2
            Top = 155
            Width = 429
            Height = 25
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 6
            object lblBIC: TLabel
              Left = 161
              Top = 4
              Width = 74
              Height = 13
              Caption = 'BIC / S.W.I.F.T'
            end
            object edtBIC: TDBEdit
              Left = 238
              Top = 0
              Width = 83
              Height = 21
              BevelWidth = 0
              DataField = 'BIC'
              DataSource = dsData
              TabOrder = 2
            end
            object cbBankPriority: TJvDBLookupCombo
              Left = 96
              Top = 0
              Width = 57
              Height = 21
              DeleteKeyClear = False
              DisplayAllFields = True
              DataField = 'BANK_PRIORITY_CODE'
              DataSource = dsData
              LookupField = 'PRIORITY_CODE'
              LookupDisplay = 'PRIORITY_NO'
              LookupSource = dsPriorities
              TabOrder = 1
            end
            object chbIsBank: TAbmesDBCheckBox
              Left = 16
              Top = 3
              Width = 73
              Height = 17
              Caption = #1060#1080#1085' '#1048#1085#1089#1090
              DataField = 'IS_BANK'
              DataSource = dsData
              TabOrder = 0
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              ImmediateUpdateField = True
            end
          end
        end
        object gbAddress: TGroupBox
          Left = 8
          Top = 68
          Width = 817
          Height = 151
          Caption = ' '#1052#1077#1089#1090#1086#1087#1086#1083#1086#1078#1077#1085#1080#1077' '
          Color = clBtnFace
          ParentColor = False
          TabOrder = 1
          DesignSize = (
            817
            151)
          object lblZIP: TLabel
            Left = 368
            Top = 13
            Width = 74
            Height = 13
            Caption = #1055#1086#1097#1077#1085#1089#1082#1080' '#1082#1086#1076
            Transparent = True
          end
          object lblAddress: TLabel
            Left = 368
            Top = 56
            Width = 31
            Height = 13
            Caption = #1040#1076#1088#1077#1089
            Transparent = True
          end
          object lblCountry: TLabel
            Left = 8
            Top = 13
            Width = 48
            Height = 13
            Caption = #1044#1098#1088#1078#1072#1074#1072
            Transparent = True
          end
          object lblLanguage: TLabel
            Left = 138
            Top = 12
            Width = 127
            Height = 13
            Caption = #1045#1079#1080#1082' '#1079#1072' '#1082#1086#1088#1077#1089#1087#1086#1085#1076#1077#1085#1094#1080#1103
            Transparent = True
          end
          object lblCity: TLabel
            Left = 248
            Top = 56
            Width = 84
            Height = 13
            Caption = #1053#1072#1089#1077#1083#1077#1085#1086' '#1084#1103#1089#1090#1086
            Transparent = True
          end
          object lblRegion: TLabel
            Left = 128
            Top = 56
            Width = 41
            Height = 13
            Caption = #1054#1073#1097#1080#1085#1072
            Transparent = True
          end
          object lblState: TLabel
            Left = 8
            Top = 56
            Width = 37
            Height = 13
            Caption = #1054#1073#1083#1072#1089#1090
            Transparent = True
          end
          object lblIAdress: TLabel
            Left = 368
            Top = 104
            Width = 38
            Height = 13
            Caption = 'Address'
            Transparent = True
          end
          object lblICity: TLabel
            Left = 248
            Top = 104
            Width = 17
            Height = 13
            Caption = 'City'
            Transparent = True
          end
          object lblIRegion: TLabel
            Left = 128
            Top = 104
            Width = 34
            Height = 13
            Caption = 'Region'
            Transparent = True
          end
          object lblIState: TLabel
            Left = 8
            Top = 104
            Width = 25
            Height = 13
            Caption = 'State'
            Transparent = True
          end
          object edtZIP: TDBEdit
            Left = 368
            Top = 29
            Width = 81
            Height = 21
            BevelWidth = 0
            DataField = 'ZIP'
            DataSource = dsData
            TabOrder = 2
          end
          object edtAddress: TDBEdit
            Left = 368
            Top = 72
            Width = 440
            Height = 21
            BevelWidth = 0
            DataField = 'ADDRESS'
            DataSource = dsData
            TabOrder = 6
          end
          object cbCountry: TJvDBLookupCombo
            Left = 8
            Top = 29
            Width = 121
            Height = 21
            DeleteKeyClear = False
            DataField = 'COUNTRY_CODE'
            DataSource = dsData
            DisplayEmpty = ' '
            LookupField = 'COUNTRY_CODE'
            LookupDisplay = 'COUNTRY_NAME'
            LookupSource = dsCountries
            TabOrder = 0
          end
          object cbLanguage: TJvDBLookupCombo
            Left = 138
            Top = 28
            Width = 225
            Height = 21
            DeleteKeyClear = False
            DataField = 'LANGUAGE_CODE'
            DataSource = dsData
            DisplayEmpty = ' '
            Anchors = [akLeft, akTop, akRight]
            LookupField = 'LANGUAGE_CODE'
            LookupDisplay = 'LANGUAGE_NAME'
            LookupSource = dsLanguages
            TabOrder = 1
          end
          object edtCity: TDBEdit
            Left = 248
            Top = 72
            Width = 115
            Height = 21
            BevelWidth = 0
            DataField = 'CITY'
            DataSource = dsData
            TabOrder = 5
          end
          object edtRegion: TDBEdit
            Left = 128
            Top = 72
            Width = 113
            Height = 21
            BevelWidth = 0
            DataField = 'REGION'
            DataSource = dsData
            TabOrder = 4
          end
          object edtState: TDBEdit
            Left = 8
            Top = 72
            Width = 114
            Height = 21
            BevelWidth = 0
            DataField = 'STATE'
            DataSource = dsData
            TabOrder = 3
          end
          object edtIAddress: TDBEdit
            Left = 368
            Top = 120
            Width = 440
            Height = 21
            BevelWidth = 0
            Color = clInfoBk
            DataField = 'I_ADDRESS'
            DataSource = dsData
            TabOrder = 10
          end
          object edtICity: TDBEdit
            Left = 248
            Top = 120
            Width = 115
            Height = 21
            BevelWidth = 0
            Color = clInfoBk
            DataField = 'I_CITY'
            DataSource = dsData
            TabOrder = 9
          end
          object edtIRegion: TDBEdit
            Left = 128
            Top = 120
            Width = 113
            Height = 21
            BevelWidth = 0
            Color = clInfoBk
            DataField = 'I_REGION'
            DataSource = dsData
            TabOrder = 8
          end
          object edtIState: TDBEdit
            Left = 8
            Top = 120
            Width = 114
            Height = 21
            BevelWidth = 0
            Color = clInfoBk
            DataField = 'I_STATE'
            DataSource = dsData
            TabOrder = 7
          end
        end
        object pnlCompanyOrPerson: TPanel
          Left = 8
          Top = 1
          Width = 505
          Height = 64
          BevelOuter = bvNone
          TabOrder = 0
          object pnlCompany: TGroupBox
            Left = 0
            Top = 0
            Width = 505
            Height = 64
            Align = alTop
            Caption = ' '#1040#1076#1084#1080#1085#1080#1089#1090#1088#1072#1090#1080#1074#1085#1072' '#1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1103' '
            Color = clBtnFace
            ParentColor = False
            TabOrder = 0
            object lblCompanyType: TLabel
              Left = 8
              Top = 14
              Width = 72
              Height = 13
              Caption = #1058#1080#1087' '#1082#1086#1084#1087#1072#1085#1080#1103
              Transparent = True
            end
            object lblBulstat: TLabel
              Left = 296
              Top = 14
              Width = 22
              Height = 13
              Caption = #1045#1048#1050
              Transparent = True
            end
            object lblVatNo: TLabel
              Left = 192
              Top = 14
              Width = 74
              Height = 13
              Caption = #1048#1076'.No '#1087#1086' '#1044#1044#1057
              Transparent = True
            end
            object lblICompanyType: TLabel
              Left = 96
              Top = 14
              Width = 67
              Height = 13
              Caption = 'Company type'
              Transparent = True
            end
            object edtBulstat: TDBEdit
              Left = 296
              Top = 30
              Width = 65
              Height = 21
              BevelWidth = 0
              DataField = 'BULSTAT'
              DataSource = dsData
              TabOrder = 3
            end
            object chbVAT: TAbmesDBCheckBox
              Left = 412
              Top = 27
              Width = 86
              Height = 26
              Caption = #1056#1077#1075#1080#1089#1090#1088#1080#1088#1072#1085' '#1087#1086' '#1044#1044#1057
              DataField = 'VAT_REGISTERED'
              DataSource = dsData
              TabOrder = 5
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              WordWrap = True
            end
            object cbCompanyType: TJvDBLookupCombo
              Left = 8
              Top = 30
              Width = 81
              Height = 21
              DropDownWidth = 250
              DeleteKeyClear = False
              DataField = 'COMPANY_TYPE_CODE'
              DataSource = dsData
              DisplayEmpty = ' '
              LookupField = 'COMPANY_TYPE_CODE'
              LookupDisplay = 'COMPANY_TYPE_ABBREV; COMPANY_TYPE_NAME'
              LookupSource = dsCompanyTypes
              TabOrder = 0
            end
            object edtBulstatEx: TDBEdit
              Left = 360
              Top = 30
              Width = 25
              Height = 21
              BevelWidth = 0
              DataField = 'BULSTAT_EX'
              DataSource = dsData
              TabOrder = 4
            end
            object edtVatNo: TDBEdit
              Left = 192
              Top = 30
              Width = 97
              Height = 21
              BevelWidth = 0
              DataField = 'VAT_NO'
              DataSource = dsData
              TabOrder = 2
            end
            object cbICompanyType: TJvDBLookupCombo
              Left = 96
              Top = 30
              Width = 81
              Height = 21
              DropDownWidth = 250
              DeleteKeyClear = False
              Color = clInfoBk
              DataField = 'I_COMPANY_TYPE_CODE'
              DataSource = dsData
              DisplayEmpty = ' '
              LookupField = 'COMPANY_TYPE_CODE'
              LookupDisplay = 'COMPANY_TYPE_ABBREV; COMPANY_TYPE_NAME'
              LookupSource = dsCompanyTypes
              TabOrder = 1
            end
          end
          object pnlPerson: TGroupBox
            Left = 0
            Top = 64
            Width = 505
            Height = 64
            Align = alTop
            TabOrder = 1
            object lblEGN: TLabel
              Left = 136
              Top = 13
              Width = 50
              Height = 13
              Caption = #1045#1043#1053'/'#1051#1053#1063
            end
            object lblEducation: TLabel
              Left = 344
              Top = 13
              Width = 68
              Height = 13
              Caption = #1054#1073#1088#1072#1079#1086#1074#1072#1085#1080#1077
            end
            object lblBirthDate: TLabel
              Left = 16
              Top = 13
              Width = 88
              Height = 13
              Caption = #1044#1072#1090#1072' '#1085#1072' '#1088#1072#1078#1076#1072#1085#1077
            end
            object lblGender: TLabel
              Left = 240
              Top = 13
              Width = 20
              Height = 13
              Caption = #1055#1086#1083
            end
            object edtEGN: TDBEdit
              Left = 136
              Top = 29
              Width = 89
              Height = 21
              BevelWidth = 0
              DataField = 'EGN'
              DataSource = dsData
              TabOrder = 1
            end
            object cbEducation: TJvDBLookupCombo
              Left = 344
              Top = 29
              Width = 145
              Height = 21
              DropDownWidth = 200
              DeleteKeyClear = False
              DataField = 'EDUCATION_CODE'
              DataSource = dsData
              DisplayEmpty = ' '
              LookupField = 'EDUCATION_CODE'
              LookupDisplay = 'EDUCATION_NAME'
              LookupSource = dsEducations
              TabOrder = 3
            end
            inline frBirthDate: TfrDateFieldEditFrame
              Left = 16
              Top = 29
              Width = 105
              Height = 21
              Constraints.MaxHeight = 21
              Constraints.MaxWidth = 105
              Constraints.MinHeight = 21
              Constraints.MinWidth = 105
              TabOrder = 0
              TabStop = True
            end
            object cbGender: TJvDBComboBox
              Left = 240
              Top = 29
              Width = 89
              Height = 21
              DataField = 'IS_MALE'
              DataSource = dsData
              Items.Strings = (
                #1084#1098#1078#1082#1080
                #1078#1077#1085#1089#1082#1080)
              TabOrder = 2
              Values.Strings = (
                'True'
                'False')
              ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
              ListSettings.OutfilteredValueFont.Color = clRed
              ListSettings.OutfilteredValueFont.Height = -11
              ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
              ListSettings.OutfilteredValueFont.Style = []
            end
          end
        end
      end
    end
    object pnlTop: TPanel
      Left = 5
      Top = 5
      Width = 837
      Height = 109
      BevelOuter = bvNone
      TabOrder = 0
      object gbInfo: TGroupBox
        Left = 0
        Top = 0
        Width = 837
        Height = 105
        Caption = ' '#1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1094#1080#1103' '#1085#1072' '#1055#1072#1088#1090#1085#1100#1086#1088' '
        TabOrder = 0
        object pnlCompanyStatus: TPanel
          Left = 2
          Top = 15
          Width = 215
          Height = 88
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          inline frCompanyStatus: TfrCompanyStatus
            Left = 7
            Top = 2
            Width = 207
            Height = 38
            Constraints.MaxHeight = 38
            Constraints.MaxWidth = 207
            Constraints.MinHeight = 38
            Constraints.MinWidth = 207
            TabOrder = 0
            TabStop = True
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
          end
        end
        object pnlCompanyName: TPanel
          Left = 217
          Top = 15
          Width = 618
          Height = 88
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object lblCode: TLabel
            Left = 72
            Top = 0
            Width = 19
            Height = 13
            Caption = #1050#1086#1076
            FocusControl = edtCode
          end
          object btnDocs: TSpeedButton
            Left = 471
            Top = 16
            Width = 37
            Height = 25
            Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' '#1055#1072#1088#1090#1085#1100#1086#1088#1072
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
          object lblCompanyClass: TLabel
            Left = 16
            Top = 0
            Width = 25
            Height = 13
            Caption = #1050#1083#1072#1089
            FocusControl = edtCode
          end
          object pnlCompanyClass: TPanel
            Left = 133
            Top = 2
            Width = 338
            Height = 87
            BevelOuter = bvNone
            TabOrder = 2
            object pnlPersonID: TPanel
              Left = 0
              Top = 0
              Width = 337
              Height = 87
              BevelOuter = bvNone
              TabOrder = 0
              object lblFirstName: TLabel
                Left = 8
                Top = 0
                Width = 22
                Height = 13
                Caption = #1048#1084#1077
              end
              object lblMiddleName: TLabel
                Left = 104
                Top = 0
                Width = 46
                Height = 13
                Caption = #1055#1088#1077#1079#1080#1084#1077
              end
              object lblLastName: TLabel
                Left = 200
                Top = 0
                Width = 49
                Height = 13
                Caption = #1060#1072#1084#1080#1083#1080#1103
              end
              object lblAbbrev: TLabel
                Left = 296
                Top = 0
                Width = 34
                Height = 13
                Caption = #1040#1073#1088#1077#1074'.'
              end
              object lblIFirstName: TLabel
                Left = 8
                Top = 40
                Width = 48
                Height = 13
                Caption = 'First name'
              end
              object lblIMiddleName: TLabel
                Left = 104
                Top = 40
                Width = 60
                Height = 13
                Caption = 'Middle name'
              end
              object lblILastName: TLabel
                Left = 200
                Top = 40
                Width = 49
                Height = 13
                Caption = 'Last name'
              end
              object lblIAbbrev: TLabel
                Left = 296
                Top = 40
                Width = 37
                Height = 13
                Caption = 'Abbrev.'
              end
              object edtFirstName: TDBEdit
                Left = 8
                Top = 16
                Width = 89
                Height = 21
                DataField = 'FIRST_NAME'
                DataSource = dsData
                TabOrder = 0
              end
              object edtMiddleName: TDBEdit
                Left = 104
                Top = 16
                Width = 89
                Height = 21
                DataField = 'MIDDLE_NAME'
                DataSource = dsData
                TabOrder = 1
              end
              object edtLastName: TDBEdit
                Left = 200
                Top = 16
                Width = 89
                Height = 21
                DataField = 'LAST_NAME'
                DataSource = dsData
                TabOrder = 2
              end
              object edtAbbrev: TDBEdit
                Left = 296
                Top = 16
                Width = 41
                Height = 21
                DataField = 'ABBREV'
                DataSource = dsData
                TabOrder = 3
              end
              object edtIFirstName: TDBEdit
                Left = 8
                Top = 56
                Width = 89
                Height = 21
                Color = clInfoBk
                DataField = 'I_FIRST_NAME'
                DataSource = dsData
                TabOrder = 4
              end
              object edtIMiddleName: TDBEdit
                Left = 104
                Top = 56
                Width = 89
                Height = 21
                Color = clInfoBk
                DataField = 'I_MIDDLE_NAME'
                DataSource = dsData
                TabOrder = 5
              end
              object edtILastName: TDBEdit
                Left = 200
                Top = 56
                Width = 89
                Height = 21
                Color = clInfoBk
                DataField = 'I_LAST_NAME'
                DataSource = dsData
                TabOrder = 6
              end
              object edtIAbbrev: TDBEdit
                Left = 296
                Top = 56
                Width = 41
                Height = 21
                Color = clInfoBk
                DataField = 'I_ABBREV'
                DataSource = dsData
                TabOrder = 7
              end
            end
            object pnlCompanyOrCumulativeID: TPanel
              Left = -8
              Top = 0
              Width = 345
              Height = 87
              BevelOuter = bvNone
              TabOrder = 1
              object lblCompanyName: TLabel
                Left = 16
                Top = 0
                Width = 76
                Height = 13
                Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                FocusControl = edtCompanyName
              end
              object lblCompanyShortName: TLabel
                Left = 224
                Top = 0
                Width = 113
                Height = 13
                Caption = #1050#1088#1072#1090#1082#1086' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                FocusControl = edtCompanyShortName
              end
              object lblICompanyName: TLabel
                Left = 16
                Top = 40
                Width = 28
                Height = 13
                Caption = 'Name'
                FocusControl = edtICompanyName
              end
              object lblICompanyShortName: TLabel
                Left = 224
                Top = 40
                Width = 54
                Height = 13
                Caption = 'Short name'
                FocusControl = edtICompanyShortName
              end
              object edtCompanyName: TDBEdit
                Left = 16
                Top = 16
                Width = 209
                Height = 21
                DataField = 'COMPANY_NAME'
                DataSource = dsData
                TabOrder = 0
              end
              object edtCompanyShortName: TDBEdit
                Left = 224
                Top = 16
                Width = 121
                Height = 21
                DataField = 'SHORT_NAME'
                DataSource = dsData
                TabOrder = 1
              end
              object edtICompanyShortName: TDBEdit
                Left = 224
                Top = 56
                Width = 121
                Height = 21
                Color = clInfoBk
                DataField = 'I_SHORT_NAME'
                DataSource = dsData
                TabOrder = 3
              end
              object edtICompanyName: TDBEdit
                Left = 16
                Top = 56
                Width = 209
                Height = 21
                Color = clInfoBk
                DataField = 'I_COMPANY_NAME'
                DataSource = dsData
                TabOrder = 2
              end
            end
          end
          object edtCode: TDBEdit
            Left = 71
            Top = 18
            Width = 64
            Height = 21
            DataField = 'COMPANY_NO'
            DataSource = dsData
            TabOrder = 0
          end
          object edtCompanyClass: TDBEdit
            Left = 15
            Top = 18
            Width = 42
            Height = 21
            TabStop = False
            Color = clBtnFace
            DataField = '_COMPANY_CLASS_ABBREV'
            DataSource = dsData
            TabOrder = 1
          end
          object pnlCopyNameButtons: TPanel
            Left = 92
            Top = 57
            Width = 46
            Height = 22
            BevelOuter = bvNone
            TabOrder = 3
            object btnCopyPersonName: TSpeedButton
              Left = 23
              Top = 0
              Width = 23
              Height = 22
              Action = actCopyPersonName
              Align = alRight
              Flat = True
              ParentShowHint = False
              ShowHint = True
            end
            object btnCopyCompanyName: TSpeedButton
              Left = 0
              Top = 0
              Width = 23
              Height = 22
              Action = actCopyCompanyName
              Align = alRight
              Flat = True
              ParentShowHint = False
              ShowHint = True
            end
          end
        end
      end
    end
  end
  inherited alActions: TActionList
    Left = 384
    inherited actForm: TAction
      Caption = #1055#1072#1088#1090#1085#1100#1086#1088' - %s'
    end
    object actAddCraft: TAction
      ImageIndex = 4
      OnExecute = actAddCraftExecute
      OnUpdate = actAddCraftUpdate
    end
    object actEditCraft: TAction
      ImageIndex = 6
      OnExecute = actEditCraftExecute
      OnUpdate = actEditCraftUpdate
    end
    object actDeleteCraft: TAction
      ImageIndex = 5
      OnExecute = actDeleteCraftExecute
      OnUpdate = actDeleteCraftUpdate
    end
    object actParRelClient: TAction
      Caption = #1059#1052' '#1055#1072#1088#1050'...'
      Hint = #1059#1087#1088#1072#1074#1083#1077#1085#1089#1082#1080' '#1052#1054#1044#1045#1083' '#1079#1072' '#1055#1072#1088#1090#1085#1100#1086#1088' - '#1050#1083#1080#1077#1085#1090
      OnExecute = actParRelClientExecute
      OnUpdate = actParRelClientUpdate
    end
    object actParRelVendor: TAction
      Caption = #1059#1052' '#1055#1072#1088#1044'...'
      Hint = #1059#1087#1088#1072#1074#1083#1077#1085#1089#1082#1080' '#1052#1054#1044#1045#1083' '#1079#1072' '#1055#1072#1088#1090#1085#1100#1086#1088' - '#1044#1086#1089#1090#1072#1074#1095#1080#1082
      OnExecute = actParRelVendorExecute
      OnUpdate = actParRelVendorUpdate
    end
    object actCopyPersonName: TAction
      Hint = 
        #1050#1086#1087#1080#1088#1072' '#1048#1084#1077', '#1055#1088#1077#1079#1080#1084#1077', '#1060#1072#1084#1080#1083#1080#1103' '#1080' '#1040#1073#1088#1077#1074'. '#1074' First name, Middle name,' +
        ' Last name '#1080' Abbrev.'
      ImageIndex = 40
      OnExecute = actCopyPersonNameExecute
      OnUpdate = actCopyPersonNameUpdate
    end
    object actCopyCompanyName: TAction
      Hint = 
        #1050#1086#1087#1080#1088#1072' '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077#1090#1086' '#1080' '#1050#1088#1072#1090#1082#1086#1090#1086' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1074' Name '#1080' Short nam' +
        'e'
      ImageIndex = 40
      OnExecute = actCopyCompanyNameExecute
      OnUpdate = actCopyCompanyNameUpdate
    end
  end
  inherited dsData: TDataSource
    Left = 352
  end
  inherited cdsData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conCompanies
    Params = <
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvCompany'
    BeforeOpen = cdsDataBeforeOpen
    BeforePost = cdsDataBeforePost
    OnCalcFields = cdsDataCalcFields
    BeforeApplyUpdates = cdsDataBeforeApplyUpdates
    Left = 320
    object cdsDataCOMPANY_CODE: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'COMPANY_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDataCOMPANY_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'COMPANY_NAME'
      Size = 50
    end
    object cdsDataSHORT_NAME: TAbmesWideStringField
      DisplayLabel = #1050#1088#1072#1090#1082#1086' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'SHORT_NAME'
    end
    object cdsDataCOMPANY_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1058#1080#1087' '#1082#1086#1084#1087#1072#1085#1080#1103
      FieldName = 'COMPANY_TYPE_CODE'
    end
    object cdsDataVAT_REGISTERED: TAbmesFloatField
      FieldName = 'VAT_REGISTERED'
      FieldValueType = fvtBoolean
    end
    object cdsDataTAX_NO: TAbmesFloatField
      FieldName = 'TAX_NO'
    end
    object cdsDataCOUNTRY_CODE: TAbmesFloatField
      FieldName = 'COUNTRY_CODE'
    end
    object cdsDataSTATE: TAbmesWideStringField
      FieldName = 'STATE'
      Size = 50
    end
    object cdsDataREGION: TAbmesWideStringField
      FieldName = 'REGION'
      Size = 50
    end
    object cdsDataZIP: TAbmesWideStringField
      FieldName = 'ZIP'
    end
    object cdsDataCITY: TAbmesWideStringField
      FieldName = 'CITY'
      Size = 50
    end
    object cdsDataADDRESS: TAbmesWideStringField
      FieldName = 'ADDRESS'
      Size = 250
    end
    object cdsDataLANGUAGE_CODE: TAbmesFloatField
      FieldName = 'LANGUAGE_CODE'
    end
    object cdsDataBIC: TAbmesWideStringField
      FieldName = 'BIC'
    end
    object cdsData_COMPANY_FULL_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_COMPANY_FULL_NAME'
      Size = 200
      Calculated = True
    end
    object cdsData_IS_COMPANY_TYPE_ABBREV_FIRST: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_IS_COMPANY_TYPE_ABBREV_FIRST'
      LookupDataSet = cdsCompanyTypes
      LookupKeyFields = 'COMPANY_TYPE_CODE'
      LookupResultField = 'ABBREV_BEFORE'
      KeyFields = 'COMPANY_TYPE_CODE'
      FieldValueType = fvtBoolean
      Lookup = True
    end
    object cdsData_COMPANY_TYPE_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_COMPANY_TYPE_ABBREV'
      LookupDataSet = cdsCompanyTypes
      LookupKeyFields = 'COMPANY_TYPE_CODE'
      LookupResultField = 'COMPANY_TYPE_ABBREV'
      KeyFields = 'COMPANY_TYPE_CODE'
      Size = 100
      Lookup = True
    end
    object cdsDataDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = []
    end
    object cdsDataDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = []
    end
    object cdsDataEGN: TAbmesWideStringField
      DisplayLabel = #1045#1043#1053'/'#1051#1053#1063
      FieldName = 'EGN'
      ProviderFlags = []
      Size = 10
    end
    object cdsDataFIRST_NAME: TAbmesWideStringField
      DisplayLabel = #1048#1084#1077
      FieldName = 'FIRST_NAME'
      ProviderFlags = []
      Size = 50
    end
    object cdsDataMIDDLE_NAME: TAbmesWideStringField
      FieldName = 'MIDDLE_NAME'
      ProviderFlags = []
      Size = 50
    end
    object cdsDataLAST_NAME: TAbmesWideStringField
      DisplayLabel = #1060#1072#1084#1080#1083#1080#1103
      FieldName = 'LAST_NAME'
      ProviderFlags = []
      Size = 50
    end
    object cdsDataABBREV: TAbmesWideStringField
      DisplayLabel = #1040#1073#1088#1077#1074#1080#1072#1090#1091#1088#1072
      FieldName = 'ABBREV'
      ProviderFlags = []
      Size = 5
    end
    object cdsDataIS_MALE: TAbmesFloatField
      DisplayLabel = #1055#1086#1083
      FieldName = 'IS_MALE'
      ProviderFlags = []
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsDataCOMPANY_NO: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'COMPANY_NO'
      Required = True
    end
    object cdsDataCOMPANY_CLASS_CODE: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'COMPANY_CLASS_CODE'
    end
    object cdsDataIS_CLIENT: TAbmesFloatField
      FieldName = 'IS_CLIENT'
      ProviderFlags = []
      OnChange = IsBlahBlahRoleFieldsChange
      FieldValueType = fvtBoolean
    end
    object cdsDataCLIENT_PRIORITY_CODE: TAbmesFloatField
      DisplayLabel = #1055#1088#1080#1086#1088#1080#1090#1077#1090
      FieldName = 'CLIENT_PRIORITY_CODE'
      ProviderFlags = []
    end
    object cdsDataIS_MEDIATOR: TAbmesFloatField
      FieldName = 'IS_MEDIATOR'
      ProviderFlags = []
      OnChange = IsBlahBlahRoleFieldsChange
      FieldValueType = fvtBoolean
    end
    object cdsDataMEDIATOR_PRIORITY_CODE: TAbmesFloatField
      DisplayLabel = #1055#1088#1080#1086#1088#1080#1090#1077#1090
      FieldName = 'MEDIATOR_PRIORITY_CODE'
      ProviderFlags = []
    end
    object cdsDataIS_VENDOR: TAbmesFloatField
      FieldName = 'IS_VENDOR'
      ProviderFlags = []
      OnChange = IsBlahBlahRoleFieldsChange
      FieldValueType = fvtBoolean
    end
    object cdsDataVENDOR_PRIORITY_CODE: TAbmesFloatField
      DisplayLabel = #1055#1088#1080#1086#1088#1080#1090#1077#1090
      FieldName = 'VENDOR_PRIORITY_CODE'
      ProviderFlags = []
    end
    object cdsDataIS_GOV_ORGANIZATION: TAbmesFloatField
      FieldName = 'IS_GOV_ORGANIZATION'
      ProviderFlags = []
      OnChange = IsBlahBlahRoleFieldsChange
      FieldValueType = fvtBoolean
    end
    object cdsDataGOV_ORGANIZATION_PRIORITY_CODE: TAbmesFloatField
      DisplayLabel = #1055#1088#1080#1086#1088#1080#1090#1077#1090
      FieldName = 'GOV_ORGANIZATION_PRIORITY_CODE'
      ProviderFlags = []
    end
    object cdsDataIS_BANK: TAbmesFloatField
      FieldName = 'IS_BANK'
      ProviderFlags = []
      OnChange = cdsDataIS_BANKChange
      FieldValueType = fvtBoolean
    end
    object cdsDataBANK_PRIORITY_CODE: TAbmesFloatField
      DisplayLabel = #1055#1088#1080#1086#1088#1080#1090#1077#1090
      FieldName = 'BANK_PRIORITY_CODE'
      ProviderFlags = []
    end
    object cdsDataEDUCATION_CODE: TAbmesFloatField
      FieldName = 'EDUCATION_CODE'
      ProviderFlags = []
    end
    object cdsDataqryPersonCrafts: TDataSetField
      FieldName = 'qryPersonCrafts'
    end
    object cdsDataIS_WORKER: TAbmesFloatField
      FieldName = 'IS_WORKER'
      ProviderFlags = []
      OnChange = IsBlahBlahRoleFieldsChange
      FieldValueType = fvtBoolean
    end
    object cdsDataWORKER_PRIORITY_CODE: TAbmesFloatField
      DisplayLabel = #1055#1088#1080#1086#1088#1080#1090#1077#1090
      FieldName = 'WORKER_PRIORITY_CODE'
      ProviderFlags = []
    end
    object cdsDataEDUCATION_NAME: TAbmesWideStringField
      FieldName = 'EDUCATION_NAME'
      ProviderFlags = []
      Size = 50
    end
    object cdsDataIS_EXTERNAL: TAbmesFloatField
      FieldName = 'IS_EXTERNAL'
      FieldValueType = fvtBoolean
    end
    object cdsDataBIRTH_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1044#1072#1090#1072' '#1085#1072' '#1088#1072#1078#1076#1072#1085#1077
      FieldName = 'BIRTH_DATE'
    end
    object cdsDataBULSTAT: TAbmesWideStringField
      FieldName = 'BULSTAT'
      Size = 9
    end
    object cdsDataBULSTAT_EX: TAbmesWideStringField
      FieldName = 'BULSTAT_EX'
      Size = 4
    end
    object cdsDataVAT_NO: TAbmesWideStringField
      FieldName = 'VAT_NO'
    end
    object cdsDataCLIENT_COMMON_PARTNER_CODE: TAbmesFloatField
      FieldName = 'CLIENT_COMMON_PARTNER_CODE'
    end
    object cdsDataVENDOR_COMMON_PARTNER_CODE: TAbmesFloatField
      FieldName = 'VENDOR_COMMON_PARTNER_CODE'
    end
    object cdsData_COMPANY_CLASS_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_COMPANY_CLASS_ABBREV'
      LookupDataSet = cdsCompanyClasses
      LookupKeyFields = 'COMPANY_CLASS_CODE'
      LookupResultField = 'COMPANY_CLASS_ABBREV'
      KeyFields = 'COMPANY_CLASS_CODE'
      Size = 100
      Lookup = True
    end
    object cdsDataI_FIRST_NAME: TAbmesWideStringField
      DisplayLabel = 'First name'
      FieldName = 'I_FIRST_NAME'
      Size = 50
    end
    object cdsDataI_MIDDLE_NAME: TAbmesWideStringField
      FieldName = 'I_MIDDLE_NAME'
      Size = 50
    end
    object cdsDataI_LAST_NAME: TAbmesWideStringField
      DisplayLabel = 'Last name'
      FieldName = 'I_LAST_NAME'
      Size = 50
    end
    object cdsDataI_ABBREV: TAbmesWideStringField
      DisplayLabel = 'Abbreviation'
      FieldName = 'I_ABBREV'
      Size = 5
    end
    object cdsDataI_SHORT_NAME: TAbmesWideStringField
      DisplayLabel = 'Short name'
      FieldName = 'I_SHORT_NAME'
    end
    object cdsDataI_COMPANY_NAME: TAbmesWideStringField
      DisplayLabel = 'Name'
      FieldName = 'I_COMPANY_NAME'
      Size = 50
    end
    object cdsDataI_STATE: TAbmesWideStringField
      FieldName = 'I_STATE'
      Size = 50
    end
    object cdsDataI_REGION: TAbmesWideStringField
      FieldName = 'I_REGION'
      Size = 50
    end
    object cdsDataI_CITY: TAbmesWideStringField
      FieldName = 'I_CITY'
      Size = 50
    end
    object cdsDataI_ADDRESS: TAbmesWideStringField
      FieldName = 'I_ADDRESS'
      Size = 250
    end
    object cdsDataI_COMPANY_TYPE_CODE: TAbmesFloatField
      FieldName = 'I_COMPANY_TYPE_CODE'
    end
  end
  object dsCompanyTypes: TDataSource
    DataSet = cdsCompanyTypes
    Left = 264
    Top = 112
  end
  object cdsLanguages: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvLanguages'
    Left = 392
    Top = 112
    object cdsLanguagesLANGUAGE_CODE: TAbmesFloatField
      FieldName = 'LANGUAGE_CODE'
    end
    object cdsLanguagesLANGUAGE_NAME: TAbmesWideStringField
      FieldName = 'LANGUAGE_NAME'
      Size = 50
    end
  end
  object dsLanguages: TDataSource
    DataSet = cdsLanguages
    Left = 392
    Top = 120
  end
  object dsCountries: TDataSource
    DataSet = cdsCountries
    Left = 296
    Top = 112
  end
  object cdsCountries: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvCountries'
    Left = 296
    Top = 120
    object cdsCountriesCOUNTRY_CODE: TAbmesFloatField
      FieldName = 'COUNTRY_CODE'
      Required = True
    end
    object cdsCountriesCOUNTRY_ABBREV: TAbmesWideStringField
      FieldName = 'COUNTRY_ABBREV'
      Required = True
      Size = 5
    end
    object cdsCountriesCOUNTRY_NAME: TAbmesWideStringField
      FieldName = 'COUNTRY_NAME'
      Required = True
      Size = 50
    end
  end
  object cdsCustomhouses: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvCustomhouses'
    Left = 328
    Top = 112
    object cdsCustomhousesCUSTOMHOUSE_CODE: TAbmesFloatField
      FieldName = 'CUSTOMHOUSE_CODE'
      Required = True
    end
    object cdsCustomhousesCUSTOMHOUSE_NAME: TAbmesWideStringField
      FieldName = 'CUSTOMHOUSE_NAME'
      Required = True
      Size = 50
    end
  end
  object dsCustomhouses: TDataSource
    DataSet = cdsCustomhouses
    Left = 328
    Top = 120
  end
  object cdsCompanyTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompanies
    Params = <>
    ProviderName = 'prvCompanyTypes'
    Left = 264
    Top = 120
    object cdsCompanyTypesCOMPANY_TYPE_CODE: TAbmesFloatField
      FieldName = 'COMPANY_TYPE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsCompanyTypesCOMPANY_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'COMPANY_TYPE_ABBREV'
      Size = 100
    end
    object cdsCompanyTypesABBREV_BEFORE: TAbmesFloatField
      FieldName = 'ABBREV_BEFORE'
    end
    object cdsCompanyTypesCOMPANY_TYPE_NAME: TAbmesWideStringField
      FieldName = 'COMPANY_TYPE_NAME'
      Size = 100
    end
  end
  object cdsPriorities: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvPriorities'
    Left = 424
    Top = 112
    object cdsPrioritiesPRIORITY_CODE: TAbmesFloatField
      DisplayWidth = 1
      FieldName = 'PRIORITY_CODE'
    end
    object cdsPrioritiesPRIORITY_NAME: TAbmesWideStringField
      FieldName = 'PRIORITY_NAME'
      Size = 50
    end
    object cdsPrioritiesPRIORITY_NO: TAbmesFloatField
      FieldName = 'PRIORITY_NO'
    end
    object cdsPrioritiesPRIORITY_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_COLOR'
    end
    object cdsPrioritiesPRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_BACKGROUND_COLOR'
    end
  end
  object dsPriorities: TDataSource
    DataSet = cdsPriorities
    Left = 424
    Top = 120
  end
  object cdsEducations: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    FieldDefs = <
      item
        Name = 'EDUCATION_CODE'
        DataType = ftFloat
      end
      item
        Name = 'EDUCATION_ABBREV'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'EDUCATION_NAME'
        DataType = ftWideString
        Size = 50
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'prvEducations'
    StoreDefs = True
    Left = 456
    Top = 112
    object cdsGridDataEDUCATION_CODE: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'EDUCATION_CODE'
      Required = True
    end
    object cdsGridDataEDUCATION_SHORT_NAME: TAbmesWideStringField
      DisplayLabel = #1050#1088#1072#1090#1082#1086' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'EDUCATION_SHORT_NAME'
    end
    object cdsGridDataEDUCATION_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'EDUCATION_NAME'
      Required = True
      Size = 50
    end
  end
  object dsEducations: TDataSource
    DataSet = cdsEducations
    Left = 456
    Top = 120
  end
  object cdsPersonCrafts: TAbmesClientDataSet
    Aggregates = <>
    DataSetField = cdsDataqryPersonCrafts
    Params = <>
    Left = 497
    Top = 323
    object cdsPersonCraftsCOMPANY_CODE: TAbmesFloatField
      FieldName = 'COMPANY_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsPersonCraftsCRAFT_CODE: TAbmesFloatField
      DisplayLabel = #1055#1088#1086#1092#1077#1089#1080#1103
      FieldName = 'CRAFT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPersonCraftsPRIORITY_CODE: TAbmesFloatField
      DisplayLabel = #1055#1088#1080#1086#1088#1080#1090#1077#1090
      FieldName = 'PRIORITY_CODE'
      Required = True
    end
    object cdsPersonCrafts_CRAFT_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_CRAFT_NAME'
      LookupDataSet = cdsCrafts
      LookupKeyFields = 'CRAFT_CODE'
      LookupResultField = 'CRAFT_NAME'
      KeyFields = 'CRAFT_CODE'
      Size = 50
      Lookup = True
    end
    object cdsPersonCrafts_CRAFT_TYPE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_CRAFT_TYPE_NAME'
      LookupDataSet = cdsCraftTypes
      LookupKeyFields = 'CRAFT_TYPE_CODE'
      LookupResultField = 'CRAFT_TYPE_NAME'
      KeyFields = 'CRAFT_TYPE_CODE'
      Size = 50
      Lookup = True
    end
    object cdsPersonCrafts_PRIORITY_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_PRIORITY_NAME'
      LookupDataSet = cdsPriorities
      LookupKeyFields = 'PRIORITY_CODE'
      LookupResultField = 'PRIORITY_NAME'
      KeyFields = 'PRIORITY_CODE'
      Lookup = True
    end
    object cdsPersonCraftsCRAFT_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1050#1083#1072#1089#1080#1092#1080#1082#1072#1094#1080#1086#1085#1085#1072' '#1043#1088#1091#1087#1072' '#1055#1088#1086#1092#1077#1089#1080#1080
      FieldName = 'CRAFT_TYPE_CODE'
      Required = True
      OnChange = cdsPersonCraftsCRAFT_TYPE_CODEChange
    end
  end
  object dsPersonCrafts: TDataSource
    DataSet = cdsPersonCrafts
    Left = 529
    Top = 323
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
    Left = 576
    Top = 320
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
    Params = <
      item
        DataType = ftFloat
        Name = 'CRAFT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CRAFT_TYPE_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvCrafts'
    StoreDefs = True
    Left = 608
    Top = 320
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
  object cdsCompanyClasses: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompanies
    Params = <>
    ProviderName = 'prvCompanyClasses'
    Left = 504
    Top = 112
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
  object cdsOurCompanyCountry: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompanies
    Params = <
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
        Value = '0'
      end>
    ProviderName = 'prvCompany'
    Left = 128
    Top = 136
    object cdsOurCompanyCountryCOMPANY_CODE: TAbmesFloatField
      FieldName = 'COMPANY_CODE'
    end
    object cdsOurCompanyCountryCOUNTRY_CODE: TAbmesFloatField
      FieldName = 'COUNTRY_CODE'
    end
  end
end
