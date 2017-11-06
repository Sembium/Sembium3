inherited fmParRelProductPeriod: TfmParRelProductPeriod
  Caption = '%ParRelProduct% - '#1040#1089#1087#1077#1082#1090' "'#1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'" '#1079#1072' '#1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083' - %s'
  ClientHeight = 668
  ClientWidth = 1017
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBottomStuff: TPanel [0]
    Left = 0
    Top = 312
    Width = 1017
    Height = 321
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 5
    object gbPrecisionLevel: TGroupBox
      Left = 8
      Top = 0
      Width = 113
      Height = 49
      Caption = ' '#1053#1080#1074#1086' '#1085#1072' '#1058#1086#1095#1085#1086#1089#1090' '
      TabOrder = 0
      DesignSize = (
        113
        49)
      object edtPrecisionLevelShowName: TDBEdit
        Left = 8
        Top = 20
        Width = 97
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        Color = clBtnFace
        DataField = '_PRECISION_LEVEL_SHOW_NAME'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 0
      end
    end
    object gbBalanceQuantity: TGroupBox
      Left = 128
      Top = 0
      Width = 89
      Height = 49
      Caption = ' '#1041#1072#1083#1072#1085#1089'. '#1082'-'#1074#1086' '
      TabOrder = 1
      DesignSize = (
        89
        49)
      object txtBalanceQuantityMeasureAbbrev: TDBText
        Left = 53
        Top = 23
        Width = 31
        Height = 17
        Anchors = [akTop, akRight]
        DataField = 'MEASURE_ABBREV'
        DataSource = dsHeader
      end
      object edtBalanceQuantity: TDBEdit
        Left = 8
        Top = 20
        Width = 41
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        Color = clBtnFace
        DataField = 'BALANCE_QUANTITY'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 0
      end
    end
    object gbPrices: TGroupBox
      Left = 8
      Top = 56
      Width = 385
      Height = 129
      Caption = ' '#1045#1076#1080#1085#1080#1095#1085#1080' '#1094#1077#1085#1080' '#1085#1072' %ParRelProductAbbrev% '
      TabOrder = 4
      object lblAcquireSinglePrice: TLabel
        Left = 27
        Top = 16
        Width = 62
        Height = 13
        AutoSize = False
        Caption = '%ParRelProductAquireAbbrev%'
      end
      object lblAcquireCurrency: TLabel
        Left = 107
        Top = 16
        Width = 35
        Height = 13
        Caption = #1042#1072#1083#1091#1090#1072
      end
      object txtAcquireMeasureAbbrev: TDBText
        Left = 171
        Top = 35
        Width = 28
        Height = 17
        DataField = 'MEASURE_ABBREV'
        DataSource = dsHeader
      end
      object lblSlash1: TLabel
        Left = 163
        Top = 35
        Width = 5
        Height = 13
        Caption = '/'
      end
      object bvlPricesSeparator: TBevel
        Left = 8
        Top = 68
        Width = 369
        Height = 9
        Shape = bsTopLine
      end
      object pnlToggleAcquirePrice: TPanel
        Left = 8
        Top = 32
        Width = 151
        Height = 21
        BevelOuter = bvNone
        ParentShowHint = False
        ShowHint = False
        TabOrder = 0
        object pnlToggleInheritedAcquirePrice: TPanel
          Left = 151
          Top = 0
          Width = 129
          Height = 21
          Align = alLeft
          AutoSize = True
          BevelOuter = bvNone
          TabOrder = 0
          object edtInheritedAcquireSinglePrice: TDBEdit
            Left = 0
            Top = 0
            Width = 73
            Height = 21
            Color = clBtnFace
            DataField = 'INHRT_ACQUIRE_SINGLE_PRICE'
            DataSource = dsData
            ReadOnly = True
            TabOrder = 0
          end
          object edtInheritedAcquireCurrency: TDBEdit
            Left = 80
            Top = 0
            Width = 49
            Height = 21
            Color = clBtnFace
            DataField = '_INHRT_ACQUIRE_CURRENCY_ABBREV'
            DataSource = dsData
            ReadOnly = True
            TabOrder = 1
          end
        end
        object pnlToggleOverriddenAcquirePrice: TPanel
          Left = 22
          Top = 0
          Width = 129
          Height = 21
          Align = alLeft
          AutoSize = True
          BevelOuter = bvNone
          TabOrder = 1
          object edtAcquireSinglePrice: TDBEdit
            Left = 0
            Top = 0
            Width = 73
            Height = 21
            DataField = 'ACQUIRE_SINGLE_PRICE'
            DataSource = dsData
            TabOrder = 0
            OnExit = edtAcquireSinglePriceExit
          end
          object cbAcquireCurrency: TJvDBLookupCombo
            Left = 80
            Top = 0
            Width = 49
            Height = 21
            DeleteKeyClear = False
            DataField = '_ACQUIRE_CURRENCY_ABBREV'
            DataSource = dsData
            DisplayEmpty = ' '
            TabOrder = 1
            OnChange = cbAcquireCurrencyChange
          end
        end
        object pnlToggleAcquirePriceButton: TPanel
          Left = 11
          Top = 0
          Width = 11
          Height = 21
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 2
          object btnToggleAcquirePrice: TSpeedButton
            Left = 0
            Top = 0
            Width = 11
            Height = 21
            Action = actToggleAcquirePrice
            Align = alLeft
            AllowAllUp = True
            GroupIndex = 2
            Flat = True
          end
        end
        object pnlAcquirePriceButton: TPanel
          Left = 0
          Top = 0
          Width = 11
          Height = 21
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 3
          object btnAcquirePrice: TSpeedButton
            Left = 0
            Top = 0
            Width = 11
            Height = 21
            Action = actAcquirePrice
            Align = alLeft
            AllowAllUp = True
            Flat = True
            ParentShowHint = False
            ShowHint = True
          end
        end
      end
      object pnlValueGainedLevel6: TPanel
        Left = 208
        Top = 16
        Width = 175
        Height = 41
        BevelOuter = bvNone
        TabOrder = 1
        object lblValueGainedLevel6Currency: TLabel
          Left = 78
          Top = 19
          Width = 5
          Height = 13
          Caption = '/'
        end
        object txtValueGainedLevel6MeasureAbbrev: TDBText
          Left = 85
          Top = 19
          Width = 31
          Height = 13
          DataField = 'MEASURE_ABBREV'
          DataSource = dsHeader
        end
        object lblValueGainedLevel6: TLabel
          Left = 0
          Top = 0
          Width = 251
          Height = 13
          Caption = #1048#1085#1076#1091#1089#1090#1088#1080#1072#1083#1077#1085' '#1056#1077#1079#1091#1083#1090#1072#1090' '#1079#1072' %ProductClassAbbrev%'
          FocusControl = edtValueGainedLevel6
        end
        object txtValueGainedLevel6Currency: TDBText
          Left = 53
          Top = 19
          Width = 28
          Height = 17
          DataField = '_REAL__ACQUIRE_CURRENCY_ABBREV'
          DataSource = dsData
          Transparent = True
        end
        object lblValueGainedLevel6Percent: TLabel
          Left = 158
          Top = 19
          Width = 8
          Height = 13
          Caption = '%'
        end
        object edtValueGainedLevel6: TDBEdit
          Left = 0
          Top = 16
          Width = 49
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = '_VALUE_GAINED_LEVEL_6'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 0
        end
        object edtValueGainedLevel6Percent: TDBEdit
          Left = 120
          Top = 16
          Width = 33
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = '_TOTAL_VALUE_GAINED_LEVEL_6_PART'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 1
        end
      end
      object pnlLeasePrice: TPanel
        Left = 8
        Top = 80
        Width = 369
        Height = 41
        BevelOuter = bvNone
        TabOrder = 2
        object lblSaleLeaseSinglePrice: TLabel
          Left = 19
          Top = 0
          Width = 142
          Height = 13
          Caption = '%ParRelProductLeaseName%'
        end
        object lblLeaseCurrency: TLabel
          Left = 99
          Top = 0
          Width = 35
          Height = 13
          Caption = #1042#1072#1083#1091#1090#1072
        end
        object txtLeaseMeasureAbbrev: TDBText
          Left = 259
          Top = 19
          Width = 28
          Height = 17
          DataField = 'MEASURE_ABBREV'
          DataSource = dsHeader
        end
        object lblSlash2: TLabel
          Left = 251
          Top = 19
          Width = 5
          Height = 13
          Caption = '/'
        end
        object lblLeaseDateUnit: TLabel
          Left = 155
          Top = 0
          Width = 79
          Height = 13
          Caption = #1053#1072#1077#1084#1085#1072' '#1089#1090#1098#1087#1082#1072
        end
        object pnlToggleLeasePrice: TPanel
          Left = 0
          Top = 16
          Width = 247
          Height = 21
          BevelOuter = bvNone
          TabOrder = 0
          object pnlToggleOverriddenLeasePrice: TPanel
            Left = 22
            Top = 0
            Width = 225
            Height = 21
            Align = alLeft
            AutoSize = True
            BevelOuter = bvNone
            TabOrder = 0
            object edtLeaseSinglePrice: TDBEdit
              Left = 0
              Top = 0
              Width = 73
              Height = 21
              DataField = 'LEASE_SINGLE_PRICE'
              DataSource = dsData
              TabOrder = 0
            end
            object cbLeaseCurrency: TJvDBLookupCombo
              Left = 80
              Top = 0
              Width = 49
              Height = 21
              DeleteKeyClear = False
              DataField = '_LEASE_CURRENCY_ABBREV'
              DataSource = dsData
              DisplayEmpty = ' '
              TabOrder = 1
              OnChange = cbLeaseCurrencyChange
            end
            object cbLeaseDateUnit: TJvDBLookupCombo
              Left = 136
              Top = 0
              Width = 89
              Height = 21
              DeleteKeyClear = False
              DataField = '_LEASE_DATE_UNIT_NAME'
              DataSource = dsData
              DisplayEmpty = ' '
              TabOrder = 2
            end
          end
          object pnlToggleInheritedLeasePrice: TPanel
            Left = 247
            Top = 0
            Width = 225
            Height = 21
            Align = alLeft
            AutoSize = True
            BevelOuter = bvNone
            TabOrder = 1
            object edtInheritedLeaseSinglePrice: TDBEdit
              Left = 0
              Top = 0
              Width = 73
              Height = 21
              Color = clBtnFace
              DataField = 'INHRT_LEASE_SINGLE_PRICE'
              DataSource = dsData
              ReadOnly = True
              TabOrder = 0
            end
            object edtInheritedLeaseCurrency: TDBEdit
              Left = 80
              Top = 0
              Width = 49
              Height = 21
              Color = clBtnFace
              DataField = '_INHRT_LEASE_CURRENCY_ABBREV'
              DataSource = dsData
              ReadOnly = True
              TabOrder = 1
            end
            object edtInheritedLeaseDateUnit: TDBEdit
              Left = 136
              Top = 0
              Width = 89
              Height = 21
              Color = clBtnFace
              DataField = '_INHRT_LEASE_DATE_UNIT_NAME'
              DataSource = dsData
              ReadOnly = True
              TabOrder = 2
            end
          end
          object pnlToggleLeasePriceButton: TPanel
            Left = 11
            Top = 0
            Width = 11
            Height = 21
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 2
            object btnToggleLeasePrice: TSpeedButton
              Left = 0
              Top = 0
              Width = 11
              Height = 21
              Action = actToggleLeasePrice
              Align = alLeft
              AllowAllUp = True
              GroupIndex = 3
              Flat = True
            end
          end
          object pnlLeasePriceButton: TPanel
            Left = 0
            Top = 0
            Width = 11
            Height = 21
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 3
            object btnLeasePrice: TSpeedButton
              Left = 0
              Top = 0
              Width = 11
              Height = 21
              Action = actLeasePrice
              Align = alLeft
              AllowAllUp = True
              Flat = True
              ParentShowHint = False
              ShowHint = True
            end
          end
        end
      end
    end
    object gbIsApprovedByPartner: TGroupBox
      Left = 224
      Top = 0
      Width = 169
      Height = 49
      Hint = 
        ' '#1057#1098#1089#1090#1086#1103#1085#1080#1077' '#1085#1072' '#1044#1086#1075#1086#1074#1086#1088#1077#1085#1086#1089#1090' '#1087#1086' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' %ParRelProductAbbrev%' +
        ' '
      Caption = ' '#1057#1098#1089#1090#1086#1103#1085#1080#1077' '#1085#1072' '#1044#1086#1075#1086#1074#1086#1088#1077#1085#1086#1089#1090' '
      TabOrder = 2
      DesignSize = (
        169
        49)
      object cbIsApprovedByPartner: TJvDBComboBox
        Left = 8
        Top = 19
        Width = 153
        Height = 21
        DataField = 'IS_APPROVED_BY_PARTNER'
        DataSource = dsData
        Anchors = [akLeft, akTop, akRight]
        Items.Strings = (
          #1047#1072#1076#1072#1076#1077#1085#1080' '#1086#1090' '#1048#1055
          #1044#1074#1091#1089#1090#1088#1072#1085#1085#1086' '#1087#1088#1080#1077#1090#1080)
        TabOrder = 0
        Values.Strings = (
          'False'
          'True')
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
        ListSettings.OutfilteredValueFont.Style = []
      end
    end
    object gbTransport: TGroupBox
      Left = 8
      Top = 248
      Width = 489
      Height = 65
      Caption = ' '#1055#1088#1080#1085#1094#1080#1087#1077#1085' '#1052#1054#1044#1045#1083' '#1079#1072' %BorderRelTypeAction% - '#1054#1073#1077#1082#1090#1086#1074#1072' '#1063#1072#1089#1090' '
      TabOrder = 6
      DesignSize = (
        489
        65)
      object pnlTransport: TPanel
        Left = 8
        Top = 16
        Width = 473
        Height = 41
        Anchors = [akLeft, akTop, akRight]
        BevelOuter = bvNone
        TabOrder = 0
        object pnlStore: TPanel
          Left = 63
          Top = 0
          Width = 217
          Height = 41
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          DesignSize = (
            217
            41)
          object lblStore: TLabel
            Left = 11
            Top = 0
            Width = 286
            Height = 13
            Caption = #1058#1055' '#1047#1072#1076'. '#1085#1072' '#1048#1055' '#1079#1072' %BorderRelTypeStoreActionAbbrev%'
          end
          object pnlToggleStore: TPanel
            Left = 0
            Top = 16
            Width = 217
            Height = 22
            Anchors = [akLeft, akTop, akRight]
            BevelOuter = bvNone
            TabOrder = 0
            object pnlToggleOverriddenStore: TPanel
              Left = 11
              Top = 0
              Width = 206
              Height = 22
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              DesignSize = (
                206
                22)
              inline frStore: TfrDeptFieldEditFrameBald
                Left = 0
                Top = 0
                Width = 206
                Height = 22
                HorzScrollBar.Visible = False
                VertScrollBar.Visible = False
                Anchors = [akLeft, akTop, akRight]
                Constraints.MaxHeight = 22
                Constraints.MinHeight = 22
                TabOrder = 0
                TabStop = True
                inherited gbTreeNode: TGroupBox
                  Width = 222
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
            end
            object pnlToggleInheritedStore: TPanel
              Left = 217
              Top = 0
              Width = 206
              Height = 22
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 1
              DesignSize = (
                206
                22)
              inline frInheritedStore: TfrDeptFieldEditFrameBald
                Left = 0
                Top = 0
                Width = 206
                Height = 22
                HorzScrollBar.Visible = False
                VertScrollBar.Visible = False
                Anchors = [akLeft, akTop, akRight]
                Constraints.MaxHeight = 22
                Constraints.MinHeight = 22
                TabOrder = 0
                TabStop = True
                inherited gbTreeNode: TGroupBox
                  Width = 222
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
            end
            object pnlToggleStoreButton: TPanel
              Left = 0
              Top = 0
              Width = 11
              Height = 22
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 2
              object btnToggleStore: TSpeedButton
                Left = 0
                Top = 0
                Width = 11
                Height = 21
                Action = actToggleStore
                AllowAllUp = True
                GroupIndex = 4
                Flat = True
                Glyph.Data = {
                  36040000424D3604000000000000360000002800000010000000100000000100
                  2000000000000004000000000000000000000000000000000000FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00000000000000000000000000000000000000
                  0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00000000000000000000000000000000000000
                  0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF004080FF004080FF004080FF004080FF004080
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF004080FF004080FF004080FF004080FF004080
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00000000000000000000000000000000000000
                  0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00000000000000000000000000000000000000
                  0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
              end
            end
          end
        end
        object pnlPartnerOffice: TPanel
          Left = 352
          Top = 0
          Width = 121
          Height = 41
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 3
          object lblPartnerOffice: TLabel
            Left = 11
            Top = 0
            Width = 363
            Height = 13
            Caption = 
              #1058#1055' '#1085#1072' %PartnerAbbrev% '#1079#1072' %BorderRelTypePartnerStoreActionAbbrev%'

          end
          object pnlTogglePartnerOffice: TPanel
            Left = 0
            Top = 16
            Width = 121
            Height = 21
            BevelOuter = bvNone
            TabOrder = 0
            object pnlToggleOverriddenPartnerOffice: TPanel
              Left = 11
              Top = 0
              Width = 110
              Height = 21
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              DesignSize = (
                110
                21)
              object cbPartnerOffice: TJvDBLookupCombo
                Left = 0
                Top = 0
                Width = 110
                Height = 21
                DropDownWidth = 300
                DeleteKeyClear = False
                DataField = '_PARTNER_OFFICE_NAME'
                DataSource = dsData
                DisplayEmpty = ' '
                Anchors = [akLeft, akTop, akRight]
                TabOrder = 0
              end
            end
            object pnlToggleInheritedPartnerOffice: TPanel
              Left = 121
              Top = 0
              Width = 110
              Height = 21
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 1
              DesignSize = (
                110
                21)
              object edtInheritedPartnerOffice: TDBEdit
                Left = 0
                Top = 0
                Width = 110
                Height = 21
                Anchors = [akLeft, akTop, akRight]
                Color = clBtnFace
                DataField = '_INHRT_PARTNER_OFFICE_NAME'
                DataSource = dsData
                ReadOnly = True
                TabOrder = 0
              end
            end
            object pnlTogglePartnerOfficeButton: TPanel
              Left = 0
              Top = 0
              Width = 11
              Height = 21
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 2
              object btnTogglePartnerOffice: TSpeedButton
                Left = 0
                Top = 0
                Width = 11
                Height = 21
                Action = actTogglePartnerOffice
                Align = alLeft
                AllowAllUp = True
                GroupIndex = 5
                Flat = True
              end
            end
          end
        end
        object pnlTransportDurationDays: TPanel
          Left = 280
          Top = 0
          Width = 72
          Height = 41
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 2
          object lblTransportDurationDays: TLabel
            Left = 19
            Top = 0
            Width = 43
            Height = 13
            Caption = #1055#1077#1088#1044#1074#1078
          end
          object lblCalendarDays: TLabel
            Left = 48
            Top = 19
            Width = 18
            Height = 13
            Caption = #1082'.'#1076'.'
          end
          object pnlToggleTransportDurationDays: TPanel
            Left = 8
            Top = 16
            Width = 36
            Height = 21
            BevelOuter = bvNone
            TabOrder = 0
            object pnlToggleOverriddenTransportDurationDays: TPanel
              Left = 11
              Top = 0
              Width = 25
              Height = 21
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object edtTransportDurationDays: TDBEdit
                Left = 0
                Top = 0
                Width = 25
                Height = 21
                DataField = 'TRANSPORT_DURATION_DAYS'
                DataSource = dsData
                TabOrder = 0
              end
            end
            object pnlToggleInheritedTransportDurationDays: TPanel
              Left = 36
              Top = 0
              Width = 25
              Height = 21
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 1
              object edtInheritedTransportDurationDays: TDBEdit
                Left = 0
                Top = 0
                Width = 25
                Height = 21
                Color = clBtnFace
                DataField = 'INHRT_TRANSPORT_DURATION_DAYS'
                DataSource = dsData
                ReadOnly = True
                TabOrder = 0
              end
            end
            object pnlToggleTransportDurationDaysButton: TPanel
              Left = 0
              Top = 0
              Width = 11
              Height = 21
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 2
              object btnToggleTransportDurationDays: TSpeedButton
                Left = 0
                Top = 0
                Width = 11
                Height = 21
                Action = actToggleTransportDurationDays
                Align = alLeft
                AllowAllUp = True
                GroupIndex = 6
                Flat = True
              end
            end
          end
        end
        object pnlResloveDurationDays: TPanel
          Left = 0
          Top = 0
          Width = 63
          Height = 41
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          object lblResolveDurationDays: TLabel
            Left = 11
            Top = 0
            Width = 39
            Height = 13
            Caption = #1055#1077#1088#1056#1077#1079
          end
          object lblCalendarDays2: TLabel
            Left = 40
            Top = 19
            Width = 18
            Height = 13
            Caption = #1082'.'#1076'.'
          end
          object pnlToggleResolveDurationDays: TPanel
            Left = 0
            Top = 16
            Width = 36
            Height = 21
            BevelOuter = bvNone
            TabOrder = 0
            object pnlToggleOverriddenResolveDurationDays: TPanel
              Left = 11
              Top = 0
              Width = 25
              Height = 21
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object edtResolveDurationDays: TDBEdit
                Left = 0
                Top = 0
                Width = 25
                Height = 21
                DataField = 'RESOLVE_DURATION_DAYS'
                DataSource = dsData
                TabOrder = 0
              end
            end
            object pnlToggleInheritedResolveDurationDays: TPanel
              Left = 36
              Top = 0
              Width = 25
              Height = 21
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 1
              object edtInheritedResolveDurationDays: TDBEdit
                Left = 0
                Top = 0
                Width = 25
                Height = 21
                Color = clBtnFace
                DataField = 'INHRT_RESOLVE_DURATION_DAYS'
                DataSource = dsData
                ReadOnly = True
                TabOrder = 0
              end
            end
            object pnlToggleResolveDurationDaysButton: TPanel
              Left = 0
              Top = 0
              Width = 11
              Height = 21
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 2
              object btnToggleResolveDurationDays: TSpeedButton
                Left = 0
                Top = 0
                Width = 11
                Height = 21
                Action = actToogleResolveDurationDays
                Align = alLeft
                AllowAllUp = True
                GroupIndex = 11
                Flat = True
              end
            end
          end
        end
      end
    end
    object gbMediatorCompany: TGroupBox
      Left = 504
      Top = 248
      Width = 209
      Height = 65
      Caption = ' '#1055#1086#1089#1088#1077#1076#1085#1080#1082' '
      TabOrder = 7
      object pnlToggleMediatorCompany: TPanel
        Left = 8
        Top = 32
        Width = 191
        Height = 22
        BevelOuter = bvNone
        TabOrder = 0
        object pnlToggleOverriddenMediatorCompany: TPanel
          Left = 11
          Top = 0
          Width = 180
          Height = 22
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          DesignSize = (
            180
            22)
          inline frMediatorCompany: TfrPartnerFieldEditFrameBald
            Left = 0
            Top = 0
            Width = 180
            Height = 22
            HorzScrollBar.Visible = False
            VertScrollBar.Visible = False
            Anchors = [akLeft, akTop, akRight]
            Constraints.MaxHeight = 22
            Constraints.MinHeight = 22
            TabOrder = 0
            TabStop = True
            inherited gbPartner: TGroupBox
              Width = 195
              inherited pnlNameAndButtons: TPanel
                Width = 106
                inherited pnlRightButtons: TPanel
                  Left = 70
                end
                inherited pnlPartnerName: TPanel
                  Width = 70
                  inherited edtPartnerName: TDBEdit
                    Width = 56
                  end
                  inherited cbPartner: TJvDBLookupCombo
                    Width = 71
                  end
                end
              end
              inherited pnlPaddingRight: TPanel
                Left = 187
              end
            end
          end
        end
        object pnlToggleInheritedMediatorCompany: TPanel
          Left = 191
          Top = 0
          Width = 180
          Height = 22
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          object edtInheritedMediatorCompany: TDBEdit
            Left = 0
            Top = 0
            Width = 180
            Height = 21
            Color = clBtnFace
            DataField = 'INHRT_MEDIATOR_COMP_SHORT_NAME'
            DataSource = dsData
            ReadOnly = True
            TabOrder = 0
          end
        end
        object pnlToggleMediatorCompanyButton: TPanel
          Left = 0
          Top = 0
          Width = 11
          Height = 22
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 2
          object btnToggleMediatorCompany: TSpeedButton
            Left = 0
            Top = 0
            Width = 11
            Height = 21
            Action = actToggleMediatorCompany
            AllowAllUp = True
            GroupIndex = 7
            Flat = True
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00000000000000000000000000000000000000
              0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00000000000000000000000000000000000000
              0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF004080FF004080FF004080FF004080FF004080
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF004080FF004080FF004080FF004080FF004080
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00000000000000000000000000000000000000
              0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00000000000000000000000000000000000000
              0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          end
        end
      end
    end
    object gbInvestmentValues: TGroupBox
      Left = 400
      Top = 0
      Width = 609
      Height = 241
      Caption = 
        ' '#1042#1083#1086#1078#1077#1085#1080' '#1057#1090#1086#1081#1085#1086#1089#1090#1080' '#1079#1072' '#1077#1076#1080#1085#1080#1094#1072' %ProductClassAbbrev% '#1087#1088#1080' '#1041#1072#1083#1072#1085#1089#1080#1088#1072 +
        #1097#1086' '#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '
      TabOrder = 5
      object pnlToggleInvestmentValueDiffs: TPanel
        Left = 2
        Top = 15
        Width = 605
        Height = 26
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object tlbToggleInvestmentValueDiffs: TToolBar
          Left = 284
          Top = 0
          Width = 321
          Height = 26
          Align = alRight
          TabOrder = 0
          object btnToggleSinglePriceInvestmentValuesPart: TSpeedButton
            Left = 0
            Top = 0
            Width = 153
            Height = 22
            Action = actToggleSinglePriceInvestmentValuesPart
            AllowAllUp = True
            GroupIndex = 13
            Down = True
            Flat = True
            Transparent = False
          end
          object sepToggleCommonInvestmentValuesDiff: TToolButton
            Left = 153
            Top = 0
            Width = 8
            Caption = 'sepToggleCommonInvestmentValuesDiff'
            Style = tbsSeparator
          end
          object btnToggleCommonInvestmentValuesDiff: TSpeedButton
            Left = 161
            Top = 0
            Width = 153
            Height = 22
            Action = actToggleCommonInvestmentValuesDiff
            AllowAllUp = True
            GroupIndex = 13
            Flat = True
            Transparent = False
          end
        end
        object pnlToggleWorkOrAccountInvestmentValuesMargin: TPanel
          Left = 0
          Top = 0
          Width = 6
          Height = 26
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
        end
      end
      object pnlInvestmentLevel6: TPanel
        Left = 2
        Top = 41
        Width = 605
        Height = 22
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 6
        object lblInvestmentLevel6: TLabel
          Left = 8
          Top = 4
          Width = 40
          Height = 13
          AutoSize = False
          Caption = #1042#1057' 6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object lblInvestmentLevel6Desc: TLabel
          Left = 56
          Top = 4
          Width = 115
          Height = 13
          Caption = #1050#1086#1088#1077#1082#1090#1080#1074' ('#1084#1080#1085#1080#1084#1072#1083#1077#1085')'
        end
        object pnlInvestmentLevel6Controls: TPanel
          Left = 432
          Top = 0
          Width = 173
          Height = 22
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 0
          object lblBaseCurrency6: TLabel
            Left = 51
            Top = 4
            Width = 21
            Height = 13
            Caption = '%s /'
          end
          object txtInvestmentValueLeve6MeasureAbbrev: TDBText
            Left = 82
            Top = 4
            Width = 28
            Height = 13
            DataField = 'MEASURE_ABBREV'
            DataSource = dsHeader
          end
          object lblInvestmentLevel6DiffMeasure: TLabel
            Left = 150
            Top = 4
            Width = 8
            Height = 13
            Caption = '%'
          end
          object edtInvestmentLevel6Value: TDBEdit
            Left = 0
            Top = 1
            Width = 49
            Height = 21
            TabStop = False
            Color = clBtnFace
            DataField = 'INVESTMENT_LEVEL_6_VALUE'
            DataSource = dsData
            ReadOnly = True
            TabOrder = 0
          end
          object edtInvestmentLevel6Diff: TDBEdit
            Left = 115
            Top = 1
            Width = 32
            Height = 21
            TabStop = False
            Color = clBtnFace
            DataSource = dsData
            ReadOnly = True
            TabOrder = 1
          end
        end
      end
      object pnlInvestmentLevel1: TPanel
        Left = 2
        Top = 151
        Width = 605
        Height = 28
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object lblInvestmentLevel1: TLabel
          Left = 8
          Top = 4
          Width = 40
          Height = 13
          AutoSize = False
          Caption = #1042#1057' 1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object lblInvestmentLevel1Desc: TLabel
          Left = 56
          Top = 4
          Width = 59
          Height = 13
          Caption = #1057#1091#1073#1089#1090#1072#1085#1094#1080#1103
        end
        object pnlInvestmentLevel1Controls: TPanel
          Left = 187
          Top = 0
          Width = 418
          Height = 28
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 0
          object lblBaseCurrency1: TLabel
            Left = 51
            Top = 4
            Width = 21
            Height = 13
            Caption = '%s /'
          end
          object txtInvestmentValueLeve1MeasureAbbrev: TDBText
            Left = 82
            Top = 4
            Width = 28
            Height = 13
            DataField = 'MEASURE_ABBREV'
            DataSource = dsHeader
          end
          object lblInvestmentLevel1DiffMeasure: TLabel
            Left = 150
            Top = 4
            Width = 8
            Height = 13
            Caption = '%'
          end
          object edtInvestmentLevel1Value: TDBEdit
            Left = 0
            Top = 1
            Width = 49
            Height = 21
            TabStop = False
            Color = clBtnFace
            DataField = 'INVESTMENT_LEVEL_1_VALUE'
            DataSource = dsData
            ReadOnly = True
            TabOrder = 0
          end
          object edtInvestmentLevel1Diff: TDBEdit
            Left = 115
            Top = 1
            Width = 32
            Height = 21
            TabStop = False
            Color = clBtnFace
            DataSource = dsData
            ReadOnly = True
            TabOrder = 1
          end
        end
      end
      object pnlInvestmentLevel2: TPanel
        Left = 2
        Top = 129
        Width = 605
        Height = 22
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
        object lblInvestmentLevel2: TLabel
          Left = 8
          Top = 4
          Width = 40
          Height = 13
          AutoSize = False
          Caption = #1042#1057' 2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object lblInvestmentLevel2Desc: TLabel
          Left = 56
          Top = 4
          Width = 24
          Height = 13
          Caption = #1058#1088#1091#1076
        end
        object pnlInvestmentLevel2Controls: TPanel
          Left = 236
          Top = 0
          Width = 369
          Height = 22
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 0
          object lblBaseCurrency2: TLabel
            Left = 51
            Top = 4
            Width = 21
            Height = 13
            Caption = '%s /'
          end
          object txtInvestmentValueLeve2MeasureAbbrev: TDBText
            Left = 82
            Top = 4
            Width = 28
            Height = 13
            DataField = 'MEASURE_ABBREV'
            DataSource = dsHeader
          end
          object lblInvestmentLevel2DiffMeasure: TLabel
            Left = 150
            Top = 4
            Width = 8
            Height = 13
            Caption = '%'
          end
          object edtInvestmentLevel2Value: TDBEdit
            Left = 0
            Top = 1
            Width = 49
            Height = 21
            TabStop = False
            Color = clBtnFace
            DataField = 'INVESTMENT_LEVEL_2_VALUE'
            DataSource = dsData
            ReadOnly = True
            TabOrder = 0
          end
          object edtInvestmentLevel2Diff: TDBEdit
            Left = 115
            Top = 1
            Width = 32
            Height = 21
            TabStop = False
            Color = clBtnFace
            DataSource = dsData
            ReadOnly = True
            TabOrder = 1
          end
        end
      end
      object pnlInvestmentLevel3: TPanel
        Left = 2
        Top = 107
        Width = 605
        Height = 22
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 3
        object lblInvestmentLevel3: TLabel
          Left = 8
          Top = 4
          Width = 40
          Height = 13
          AutoSize = False
          Caption = #1042#1057' 3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object lblInvestmentLevel3Desc: TLabel
          Left = 56
          Top = 4
          Width = 102
          Height = 13
          Caption = #1054#1087#1077#1088#1072#1094#1080#1086#1085#1085#1080' '#1084#1077#1089#1090#1072
        end
        object pnlInvestmentLevel3Controls: TPanel
          Left = 285
          Top = 0
          Width = 320
          Height = 22
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 0
          object lblBaseCurrency3: TLabel
            Left = 51
            Top = 4
            Width = 21
            Height = 13
            Caption = '%s /'
          end
          object txtInvestmentValueLeve3MeasureAbbrev: TDBText
            Left = 82
            Top = 4
            Width = 28
            Height = 13
            DataField = 'MEASURE_ABBREV'
            DataSource = dsHeader
          end
          object lblInvestmentLevel3DiffMeasure: TLabel
            Left = 150
            Top = 4
            Width = 8
            Height = 13
            Caption = '%'
          end
          object edtInvestmentLevel3Value: TDBEdit
            Left = 0
            Top = 1
            Width = 49
            Height = 21
            TabStop = False
            Color = clBtnFace
            DataField = 'INVESTMENT_LEVEL_3_VALUE'
            DataSource = dsData
            ReadOnly = True
            TabOrder = 0
          end
          object edtInvestmentLevel3Diff: TDBEdit
            Left = 115
            Top = 1
            Width = 32
            Height = 21
            TabStop = False
            Color = clBtnFace
            DataSource = dsData
            ReadOnly = True
            TabOrder = 1
          end
        end
      end
      object pnlInvestmentLevel4: TPanel
        Left = 2
        Top = 85
        Width = 605
        Height = 22
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 4
        object lblInvestmentLevel4: TLabel
          Left = 8
          Top = 4
          Width = 40
          Height = 13
          AutoSize = False
          Caption = #1042#1057' 4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object lblInvestmentLevel4Desc: TLabel
          Left = 56
          Top = 4
          Width = 106
          Height = 13
          Caption = #1057#1087#1077#1094#1080#1092#1080#1095#1085#1080' '#1088#1072#1079#1093#1086#1076#1080
        end
        object pnlInvestmentLevel4Controls: TPanel
          Left = 334
          Top = 0
          Width = 271
          Height = 22
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 0
          object lblBaseCurrency4: TLabel
            Left = 51
            Top = 4
            Width = 21
            Height = 13
            Caption = '%s /'
          end
          object txtInvestmentValueLeve4MeasureAbbrev: TDBText
            Left = 82
            Top = 4
            Width = 28
            Height = 13
            DataField = 'MEASURE_ABBREV'
            DataSource = dsHeader
          end
          object lblInvestmentLevel4DiffMeasure: TLabel
            Left = 150
            Top = 4
            Width = 8
            Height = 13
            Caption = '%'
          end
          object edtInvestmentLevel4Value: TDBEdit
            Left = 0
            Top = 1
            Width = 49
            Height = 21
            TabStop = False
            Color = clBtnFace
            DataField = 'INVESTMENT_LEVEL_4_VALUE'
            DataSource = dsData
            ReadOnly = True
            TabOrder = 0
          end
          object edtInvestmentLevel4Diff: TDBEdit
            Left = 115
            Top = 1
            Width = 32
            Height = 21
            TabStop = False
            Color = clBtnFace
            DataSource = dsData
            ReadOnly = True
            TabOrder = 1
          end
        end
      end
      object pnlInvestmentLevel5: TPanel
        Left = 2
        Top = 63
        Width = 605
        Height = 22
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 5
        object lblInvestmentLevel5: TLabel
          Left = 8
          Top = 4
          Width = 40
          Height = 13
          AutoSize = False
          Caption = #1042#1057' 5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object lblInvestmentLevel5Desc: TLabel
          Left = 56
          Top = 4
          Width = 67
          Height = 13
          Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
        end
        object pnlInvestmentLevel5Controls: TPanel
          Left = 383
          Top = 0
          Width = 222
          Height = 22
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 0
          object lblBaseCurrency5: TLabel
            Left = 51
            Top = 4
            Width = 21
            Height = 13
            Caption = '%s /'
          end
          object txtInvestmentValueLeve5MeasureAbbrev: TDBText
            Left = 82
            Top = 4
            Width = 28
            Height = 13
            DataField = 'MEASURE_ABBREV'
            DataSource = dsHeader
          end
          object lblInvestmentLevel5DiffMeasure: TLabel
            Left = 150
            Top = 4
            Width = 8
            Height = 13
            Caption = '%'
          end
          object edtInvestmentLevel5Value: TDBEdit
            Left = 0
            Top = 1
            Width = 49
            Height = 21
            TabStop = False
            Color = clBtnFace
            DataField = 'INVESTMENT_LEVEL_5_VALUE'
            DataSource = dsData
            ReadOnly = True
            TabOrder = 0
          end
          object edtInvestmentLevel5Diff: TDBEdit
            Left = 115
            Top = 1
            Width = 32
            Height = 21
            TabStop = False
            Color = clBtnFace
            DataSource = dsData
            ReadOnly = True
            TabOrder = 1
          end
        end
      end
      object pnlAggregatedInvestmentValues: TPanel
        Left = 2
        Top = 179
        Width = 605
        Height = 26
        Align = alTop
        BevelOuter = bvNone
        Color = 15574646
        ParentBackground = False
        TabOrder = 7
        object lblBaseCurrency20: TLabel
          Left = 486
          Top = 5
          Width = 21
          Height = 13
          Caption = '%s /'
        end
        object txtAggrInvestmentValueMeasureAbbrev: TDBText
          Left = 517
          Top = 5
          Width = 28
          Height = 13
          DataField = 'MEASURE_ABBREV'
          DataSource = dsHeader
        end
        object lblAggregatedInvestmentValues: TLabel
          Left = 8
          Top = 5
          Width = 161
          Height = 13
          AutoSize = False
          Caption = #1040#1075#1088#1077#1075#1080#1088#1072#1085#1072' ('#1054#1058#1057')'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object lblAggrInvestmentLevel6DiffMeasure: TLabel
          Left = 582
          Top = 5
          Width = 8
          Height = 13
          Caption = '%'
        end
        object edtAggrInvestmentLevel2Value: TDBEdit
          Left = 236
          Top = 2
          Width = 49
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = '_AGGR_INVESTMENT_LEVEL_2_VALUE'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 0
        end
        object edtAggrInvestmentLevel3Value: TDBEdit
          Left = 285
          Top = 2
          Width = 49
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = '_AGGR_INVESTMENT_LEVEL_3_VALUE'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 1
        end
        object edtAggrInvestmentLevel4Value: TDBEdit
          Left = 334
          Top = 2
          Width = 49
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = '_AGGR_INVESTMENT_LEVEL_4_VALUE'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 2
        end
        object edtAggrInvestmentLevel5Value: TDBEdit
          Left = 383
          Top = 2
          Width = 49
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = '_AGGR_INVESTMENT_LEVEL_5_VALUE'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 3
        end
        object edtAggrInvestmentLevel6Value: TDBEdit
          Left = 432
          Top = 2
          Width = 49
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = '_AGGR_INVESTMENT_LEVEL_6_VALUE'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 4
        end
        object edtAggrInvestmentLevel6Diff: TDBEdit
          Left = 547
          Top = 2
          Width = 32
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataSource = dsData
          ReadOnly = True
          TabOrder = 5
        end
      end
      object pnlFullInvestmentValues: TPanel
        Left = 2
        Top = 205
        Width = 605
        Height = 26
        Align = alTop
        BevelOuter = bvNone
        Color = 7591296
        ParentBackground = False
        TabOrder = 8
        object lblBaseCurrency30: TLabel
          Left = 486
          Top = 5
          Width = 21
          Height = 13
          Caption = '%s /'
        end
        object txtFullInvestmentValueMeasureAbbrev: TDBText
          Left = 517
          Top = 5
          Width = 28
          Height = 13
          DataField = 'MEASURE_ABBREV'
          DataSource = dsHeader
        end
        object lblFullInvestmentValues: TLabel
          Left = 8
          Top = 5
          Width = 179
          Height = 13
          AutoSize = False
          Caption = #1055#1098#1083#1085#1072' ('#1057#1091#1073#1089#1090#1072#1085#1094#1080#1103' + '#1054#1058#1057')'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object lblFullInvestmentLevel6DiffMeasure: TLabel
          Left = 582
          Top = 5
          Width = 8
          Height = 13
          Caption = '%'
        end
        object edtFullInvestmentLevel1Value: TDBEdit
          Left = 187
          Top = 2
          Width = 49
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = '_FULL_INVESTMENT_LEVEL_1_VALUE'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 0
        end
        object edtFullInvestmentLevel2Value: TDBEdit
          Left = 236
          Top = 2
          Width = 49
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = '_FULL_INVESTMENT_LEVEL_2_VALUE'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 1
        end
        object edtFullInvestmentLevel3Value: TDBEdit
          Left = 285
          Top = 2
          Width = 49
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = '_FULL_INVESTMENT_LEVEL_3_VALUE'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 2
        end
        object edtFullInvestmentLevel4Value: TDBEdit
          Left = 334
          Top = 2
          Width = 49
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = '_FULL_INVESTMENT_LEVEL_4_VALUE'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 3
        end
        object edtFullInvestmentLevel5Value: TDBEdit
          Left = 383
          Top = 2
          Width = 49
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = '_FULL_INVESTMENT_LEVEL_5_VALUE'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 4
        end
        object edtFullInvestmentLevel6Value: TDBEdit
          Left = 432
          Top = 2
          Width = 49
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = '_FULL_INVESTMENT_LEVEL_6_VALUE'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 5
        end
        object edtFullInvestmentLevel6Diff: TDBEdit
          Left = 547
          Top = 2
          Width = 32
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataSource = dsData
          ReadOnly = True
          TabOrder = 6
        end
      end
    end
    object gbOther: TGroupBox
      Left = 720
      Top = 248
      Width = 289
      Height = 65
      Caption = ' '#1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '
      TabOrder = 8
      object lblShipmentType: TLabel
        Left = 19
        Top = 16
        Width = 49
        Height = 13
        Caption = #1058#1098#1088#1075'. '#1082#1086#1076
      end
      object lblIsPartnerTransport: TLabel
        Left = 91
        Top = 16
        Width = 60
        Height = 13
        Caption = #1054#1088#1075'.'#1090#1088#1072#1085#1089#1087'.'
      end
      object lblCustomhouse: TLabel
        Left = 171
        Top = 16
        Width = 44
        Height = 13
        Caption = #1052#1080#1090#1085#1080#1094#1072
      end
      object pnlToggleShipmentType: TPanel
        Left = 8
        Top = 32
        Width = 63
        Height = 21
        BevelOuter = bvNone
        TabOrder = 0
        object pnlToggleOverriddenShipmentType: TPanel
          Left = 11
          Top = 0
          Width = 52
          Height = 21
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          DesignSize = (
            52
            21)
          object cbShipmentType: TJvDBLookupCombo
            Left = 0
            Top = 0
            Width = 52
            Height = 21
            DropDownWidth = 300
            DeleteKeyClear = False
            DataField = '_SHIPMENT_TYPE_ABBREV'
            DataSource = dsData
            DisplayEmpty = ' '
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 0
          end
        end
        object pnlToggleInheritedShipmentType: TPanel
          Left = 63
          Top = 0
          Width = 52
          Height = 21
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          DesignSize = (
            52
            21)
          object edtInheritedShipmentType: TDBEdit
            Left = 0
            Top = 0
            Width = 52
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            Color = clBtnFace
            DataField = '_INHRT_SHIPMENT_TYPE_ABBREV'
            DataSource = dsData
            ReadOnly = True
            TabOrder = 0
          end
        end
        object pnlToggleShipmentTypeButton: TPanel
          Left = 0
          Top = 0
          Width = 11
          Height = 21
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 2
          object btnToggleShipmentType: TSpeedButton
            Left = 0
            Top = 0
            Width = 11
            Height = 21
            Action = actToggleShipmentType
            Align = alLeft
            AllowAllUp = True
            GroupIndex = 8
            Flat = True
          end
        end
      end
      object pnlToggleIsPartnerTransport: TPanel
        Left = 80
        Top = 32
        Width = 71
        Height = 21
        BevelOuter = bvNone
        TabOrder = 1
        object pnlToggleOverriddenIsPartnerTransport: TPanel
          Left = 11
          Top = 0
          Width = 60
          Height = 21
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          object cbIsPartnerTransport: TJvDBComboBox
            Left = 0
            Top = 0
            Width = 60
            Height = 21
            DataField = 'IS_PARTNER_TRANSPORT'
            DataSource = dsData
            Items.Strings = (
              #1055#1072#1088#1090#1085'.'
              #1048#1055)
            TabOrder = 0
            Values.Strings = (
              'False'
              'True')
            ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
            ListSettings.OutfilteredValueFont.Color = clRed
            ListSettings.OutfilteredValueFont.Height = -11
            ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
            ListSettings.OutfilteredValueFont.Style = []
          end
        end
        object pnlToggleInheritedIsPartnerTransport: TPanel
          Left = 71
          Top = 0
          Width = 60
          Height = 21
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          DesignSize = (
            60
            21)
          object edtInheritedIsPartnerTransport: TDBEdit
            Left = 0
            Top = 0
            Width = 60
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            Color = clBtnFace
            DataField = 'INHRT_IS_PARTNER_TRANSPORT'
            DataSource = dsData
            ReadOnly = True
            TabOrder = 0
          end
        end
        object pnlToggleIsPartnerTransportButton: TPanel
          Left = 0
          Top = 0
          Width = 11
          Height = 21
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 2
          object btnToggleIsPartnerTransport: TSpeedButton
            Left = 0
            Top = 0
            Width = 11
            Height = 21
            Action = actToggleIsPartnerTransport
            Align = alLeft
            AllowAllUp = True
            GroupIndex = 9
            Flat = True
          end
        end
      end
      object pnlToggleCustomhouse: TPanel
        Left = 160
        Top = 32
        Width = 121
        Height = 21
        BevelOuter = bvNone
        TabOrder = 2
        object pnlToggleOverriddenCustomhouse: TPanel
          Left = 11
          Top = 0
          Width = 110
          Height = 21
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          DesignSize = (
            110
            21)
          object cbCustomhouse: TJvDBLookupCombo
            Left = 0
            Top = 0
            Width = 110
            Height = 21
            DropDownWidth = 300
            DeleteKeyClear = False
            DataField = '_CUSTOMHOUSE_NAME'
            DataSource = dsData
            DisplayEmpty = ' '
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 0
          end
        end
        object pnlToggleInheritedCustomhouse: TPanel
          Left = 121
          Top = 0
          Width = 110
          Height = 21
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          DesignSize = (
            110
            21)
          object edtInheritedCustomhouse: TDBEdit
            Left = 0
            Top = 0
            Width = 110
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            Color = clBtnFace
            DataField = '_INHRT_CUSTOMHOUSE_NAME'
            DataSource = dsData
            ReadOnly = True
            TabOrder = 0
          end
        end
        object pnlToggleCustomhouseButton: TPanel
          Left = 0
          Top = 0
          Width = 11
          Height = 21
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 2
          object btnToggleCustomhouse: TSpeedButton
            Left = 0
            Top = 0
            Width = 11
            Height = 21
            Action = actToggleCustomhouse
            Align = alLeft
            AllowAllUp = True
            GroupIndex = 10
            Flat = True
          end
        end
      end
    end
    object gbEstSpecFinModel: TGroupBox
      Left = 8
      Top = 192
      Width = 385
      Height = 49
      Caption = ' '#1055#1088#1080#1085#1094#1080#1087#1077#1085' '#1052#1054#1044#1045#1083' '#1079#1072' %BorderRelTypeAction% - '#1060#1080#1085#1072#1085#1089#1086#1074#1072' '#1063#1072#1089#1090' '
      TabOrder = 3
      object pnlToggleEstSpecFinModel: TPanel
        Left = 8
        Top = 19
        Width = 369
        Height = 22
        BevelOuter = bvNone
        TabOrder = 0
        object pnlOverriddenInheritedEstSpecFinModel: TPanel
          Left = 11
          Top = 0
          Width = 358
          Height = 22
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          DesignSize = (
            358
            22)
          object cbEstSpecFinModel: TJvDBLookupCombo
            Left = 0
            Top = 0
            Width = 358
            Height = 21
            DataField = 'EST_SPEC_FIN_MODEL_CODE'
            DataSource = dsData
            Anchors = [akLeft, akTop, akRight]
            LookupField = 'SPEC_FIN_MODEL_CODE'
            LookupDisplay = 'SPEC_FIN_MODEL_NAME'
            LookupSource = dsSpecFinModels
            TabOrder = 0
          end
        end
        object pnlToggleInheritedEstSpecFinModel: TPanel
          Left = 369
          Top = 0
          Width = 358
          Height = 22
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          object edtToggleInheritedEstSpecFinModel: TDBEdit
            Left = 0
            Top = 0
            Width = 358
            Height = 21
            Color = clBtnFace
            DataField = 'INHRT_EST_SPEC_FIN_MODEL_NAME'
            DataSource = dsData
            ReadOnly = True
            TabOrder = 0
          end
        end
        object pnlToggleEstSpecFinModelButton: TPanel
          Left = 0
          Top = 0
          Width = 11
          Height = 22
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 2
          object btnToggleEstSpecFinModel: TSpeedButton
            Left = 0
            Top = 0
            Width = 11
            Height = 21
            Action = actToggleEstSpecFinModel
            AllowAllUp = True
            GroupIndex = 12
            Flat = True
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00000000000000000000000000000000000000
              0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00000000000000000000000000000000000000
              0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF004080FF004080FF004080FF004080FF004080
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF004080FF004080FF004080FF004080FF004080
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00000000000000000000000000000000000000
              0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00000000000000000000000000000000000000
              0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          end
        end
      end
    end
  end
  inherited pnlBottomButtons: TPanel
    Top = 633
    Width = 1017
    TabOrder = 6
    inherited pnlOKCancel: TPanel
      Left = 749
    end
    inherited pnlClose: TPanel
      Left = 660
    end
    inherited pnlApply: TPanel
      Left = 928
      Visible = False
    end
  end
  object pnlTop: TPanel [2]
    Left = 0
    Top = 0
    Width = 1017
    Height = 161
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object gbParRelProduct: TGroupBox
      Left = 8
      Top = 8
      Width = 1001
      Height = 153
      Caption = ' %ParRelProduct% '
      TabOrder = 0
      DesignSize = (
        1001
        153)
      object lblIsRegular: TLabel
        Left = 265
        Top = 23
        Width = 85
        Height = 13
        Caption = #1056#1077#1078#1080#1084' '#1087#1091#1083#1089#1072#1094#1080#1080
      end
      inline frStatus: TfrParRelProductStatus
        Left = 8
        Top = 24
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
      inline frPartner: TfrPartnerExFieldEditFrame
        Left = 360
        Top = 13
        Width = 633
        Height = 60
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        Constraints.MaxHeight = 155
        Constraints.MinHeight = 49
        TabOrder = 3
        TabStop = True
        inherited gbPartner: TGroupBox
          Width = 633
          Caption = ' '#1055#1072#1088#1090#1085#1100#1086#1088' - %Partner% '
          inherited pnlNameAndButtons: TPanel
            Width = 208
            inherited pnlRightButtons: TPanel
              Left = 172
            end
            inherited pnlPartnerName: TPanel
              Width = 172
              DesignSize = (
                172
                28)
              inherited edtPartnerName: TDBEdit
                Width = 177
              end
              inherited cbPartner: TJvDBLookupCombo
                Width = 191
              end
            end
            inherited pnlNameAndButtonsTop: TPanel
              Width = 208
              inherited lblPartner: TLabel
                Width = 76
              end
            end
          end
          inherited pnlPaddingRight: TPanel
            Left = 512
          end
          inherited pnlPartnerCode: TPanel
            inherited lblPartnerCode: TLabel
              Width = 19
            end
          end
          inherited frPartnerStatus: TfrCompanyStatus
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
            inherited lblPriority: TLabel
              Width = 38
            end
          end
          inherited pnlCountry: TPanel
            Left = 518
          end
          inherited pnlParRelButton: TPanel
            Left = 558
          end
        end
      end
      object tlbParRelProductDocs: TToolBar
        Left = 221
        Top = 40
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
        TabOrder = 2
        object btnParRelProductDocs: TToolButton
          Left = 0
          Top = 0
          ImageIndex = 1
          OnClick = btnParRelProductDocsClick
        end
      end
      inline frProduct: TfrProductExFieldEditFrame
        Left = 8
        Top = 80
        Width = 985
        Height = 65
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        Constraints.MaxHeight = 549
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        TabStop = True
        inherited gbTreeNode: TGroupBox
          Width = 985
          inherited pnlTreeNode: TPanel
            Width = 83
            inherited pnlTreeNodeName: TPanel
              Width = 47
              inherited edtTreeNodeName: TDBEdit
                Width = 46
              end
            end
            inherited pnlTreeNodeNo: TPanel
              Left = -99
            end
            inherited pnlRightButtons: TPanel
              Left = 24
            end
            inherited pnlProductLabels: TPanel
              Width = 83
            end
          end
          inherited pnlRight: TPanel
            Left = 213
          end
        end
      end
      object edtIsRegular: TDBEdit
        Left = 264
        Top = 40
        Width = 89
        Height = 21
        Color = clBtnFace
        DataField = 'IS_REGULAR'
        DataSource = dsHeader
        ReadOnly = True
        TabOrder = 1
      end
    end
  end
  object gbDateInterval: TGroupBox [3]
    Left = 8
    Top = 168
    Width = 193
    Height = 65
    Caption = ' '#1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083' '
    TabOrder = 1
    inline frDateInterval: TfrDateIntervalFrame
      Left = 8
      Top = 32
      Width = 145
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 145
      Constraints.MinHeight = 21
      Constraints.MinWidth = 145
      TabOrder = 0
      TabStop = True
      inherited alActions: TActionList
        inherited actEditDateInterval: TAction
          OnExecute = frDateIntervalactEditDateIntervalExecute
        end
      end
    end
    object tlbDocs: TToolBar
      Left = 153
      Top = 32
      Width = 36
      Height = 22
      Align = alNone
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
  object pnlEstimatedQuantities: TPanel [4]
    Left = 208
    Top = 168
    Width = 777
    Height = 137
    BevelOuter = bvNone
    TabOrder = 2
    object pnlClientEstimatedQuantities: TPanel
      Left = 0
      Top = 140
      Width = 777
      Height = 70
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object gbClientSaleCoverAcquireQuantity: TGroupBox
        Left = 0
        Top = 0
        Width = 201
        Height = 65
        Caption = ' '#1055#1088#1086#1076#1072#1078#1073#1080' ('#1055#1055') '
        TabOrder = 0
        object lblClientSaleCoverAcquireQuantity: TLabel
          Left = 8
          Top = 16
          Width = 22
          Height = 13
          Caption = #1050'-'#1074#1086
          FocusControl = edtClientSaleCoverAcquireQuantity
        end
        object txtClientSaleCoverAcquireMeasureAbbrev: TDBText
          Left = 69
          Top = 35
          Width = 28
          Height = 17
          DataField = 'MEASURE_ABBREV'
          DataSource = dsHeader
        end
        object lblClientSaleCoverAcquireTotalPrice: TLabel
          Left = 112
          Top = 16
          Width = 51
          Height = 13
          Caption = #1054#1073#1097#1072' '#1089#1090'-'#1090
          FocusControl = edtClientSaleCoverAcquireTotalPrice
        end
        object txtClientSaleCoverAcquireCurrencyAbbrev: TDBText
          Left = 171
          Top = 35
          Width = 24
          Height = 17
          DataField = '_REAL__ACQUIRE_CURRENCY_ABBREV'
          DataSource = dsData
        end
        object edtClientSaleCoverAcquireQuantity: TDBEdit
          Left = 8
          Top = 32
          Width = 57
          Height = 21
          DataField = 'EST_SALE_COVER_ACQUIRE_QTY'
          DataSource = dsData
          TabOrder = 0
        end
        object edtClientSaleCoverAcquireTotalPrice: TDBEdit
          Left = 112
          Top = 32
          Width = 57
          Height = 21
          Color = clBtnFace
          DataField = '_REAL_EST_SALE_COVER_ACQUIRE_TOTAL_PRICE'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 1
        end
      end
      object gbClientSaleCoverLeaseQuantity: TGroupBox
        Left = 208
        Top = 0
        Width = 385
        Height = 65
        Caption = ' '#1053#1072#1077#1084#1086#1076#1072#1074#1072#1085#1077' ('#1053#1055') '
        TabOrder = 1
        object lblClientSaleCoverLeaseQuantity: TLabel
          Left = 8
          Top = 16
          Width = 22
          Height = 13
          Caption = #1050'-'#1074#1086
          FocusControl = edtClientSaleCoverLeaseQuantity
        end
        object txtClientSaleCoverLeaseMeasureAbbrev: TDBText
          Left = 61
          Top = 35
          Width = 28
          Height = 17
          DataField = 'MEASURE_ABBREV'
          DataSource = dsHeader
        end
        object lblClientSaleCoverLeaseTotalPrice: TLabel
          Left = 296
          Top = 16
          Width = 51
          Height = 13
          Caption = #1054#1073#1097#1072' '#1089#1090'-'#1090
          FocusControl = edtClientSaleCoverLeaseTotalPrice
        end
        object txtClientSaleCoverLeaseCurrencyAbbrev: TDBText
          Left = 355
          Top = 35
          Width = 24
          Height = 17
          DataField = '_REAL__LEASE_CURRENCY_ABBREV'
          DataSource = dsData
        end
        object lblClientSaleCoverLeaseQuantityFor: TLabel
          Left = 88
          Top = 35
          Width = 12
          Height = 13
          Caption = #1079#1072
        end
        object lblClientSaleCoverLeaseDateUnitQuantity: TLabel
          Left = 104
          Top = 16
          Width = 22
          Height = 13
          Caption = #1050'-'#1074#1086
          FocusControl = edtClientSaleCoverLeaseDateUnitQuantity
        end
        object lblClientSaleCoverLeaseDateUnitName: TLabel
          Left = 136
          Top = 16
          Width = 79
          Height = 13
          Caption = #1053#1072#1077#1084#1085#1072' '#1089#1090#1098#1087#1082#1072
          FocusControl = edtClientSaleCoverLeaseDateUnitName
        end
        object lblClientSaleCoverLeaseTotalQuantity: TLabel
          Left = 224
          Top = 16
          Width = 60
          Height = 13
          Caption = #1056#1072#1073'. '#1088#1077#1089#1091#1088#1089
          FocusControl = edtClientSaleCoverLeaseTotalQuantity
        end
        object edtClientSaleCoverLeaseQuantity: TDBEdit
          Left = 8
          Top = 32
          Width = 49
          Height = 21
          DataField = 'EST_SALE_COVER_LEASE_QTY'
          DataSource = dsData
          TabOrder = 0
        end
        object edtClientSaleCoverLeaseTotalPrice: TDBEdit
          Left = 296
          Top = 32
          Width = 57
          Height = 21
          Color = clBtnFace
          DataField = '_REAL_EST_SALE_COVER_LEASE_TOTAL_PRICE'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 4
        end
        object edtClientSaleCoverLeaseDateUnitQuantity: TDBEdit
          Left = 104
          Top = 32
          Width = 33
          Height = 21
          DataField = 'EST_SALE_COVER_LEASE_DURATION'
          DataSource = dsData
          TabOrder = 1
        end
        object edtClientSaleCoverLeaseDateUnitName: TDBEdit
          Left = 136
          Top = 32
          Width = 81
          Height = 21
          Color = clBtnFace
          DataField = '_REAL__LEASE_DATE_UNIT_NAME'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 2
        end
        object edtClientSaleCoverLeaseTotalQuantity: TDBEdit
          Left = 224
          Top = 32
          Width = 65
          Height = 21
          Color = clBtnFace
          DataField = '_EST_SALE_COVER_LEASE_TOTAL_QTY'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 3
        end
      end
      object gbClientSaleCoverConsignQuantity: TGroupBox
        Left = 600
        Top = 0
        Width = 171
        Height = 65
        Caption = ' '#1048#1079#1074#1077#1078#1076#1072#1085#1077' ('#1048#1055') '
        TabOrder = 2
        object lblClientSaleCoverConsignQuantity: TLabel
          Left = 22
          Top = 35
          Width = 22
          Height = 13
          Caption = #1050'-'#1074#1086
          FocusControl = edtClientSaleCoverConsignQuantity
        end
        object txtClientSaleCoverConsignMeasureAbbrev: TDBText
          Left = 117
          Top = 35
          Width = 28
          Height = 17
          DataField = 'MEASURE_ABBREV'
          DataSource = dsHeader
        end
        object edtClientSaleCoverConsignQuantity: TDBEdit
          Left = 48
          Top = 32
          Width = 65
          Height = 21
          DataField = 'EST_SALE_COVER_CONSIGN_QTY'
          DataSource = dsData
          TabOrder = 0
        end
      end
    end
    object pnlVendorEstimatedQuantities: TPanel
      Left = 0
      Top = 0
      Width = 777
      Height = 140
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object pnlVendorSaleCoverQuantities: TPanel
        Left = 0
        Top = 0
        Width = 777
        Height = 70
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object gbVendorSaleCoverAcquireQuantity: TGroupBox
          Left = 0
          Top = 0
          Width = 201
          Height = 65
          Caption = ' '#1044#1086#1089#1090#1072#1074#1082#1080' '#1079#1072' '#1055#1086#1090#1086#1082' ('#1055#1044#1055') '
          TabOrder = 0
          object lblVendorSaleCoverAcquireQuantity: TLabel
            Left = 8
            Top = 16
            Width = 22
            Height = 13
            Caption = #1050'-'#1074#1086
            FocusControl = edtVendorSaleCoverAcquireQuantity
          end
          object txtVendorSaleCoverAcquireMeasureAbbrev: TDBText
            Left = 69
            Top = 35
            Width = 28
            Height = 17
            DataField = 'MEASURE_ABBREV'
            DataSource = dsHeader
          end
          object lblVendorSaleCoverAcquireTotalPrice: TLabel
            Left = 112
            Top = 16
            Width = 51
            Height = 13
            Caption = #1054#1073#1097#1072' '#1089#1090'-'#1090
            FocusControl = edtVendorSaleCoverAcquireTotalPrice
          end
          object txtVendorSaleCoverAcquireCurrencyAbbrev: TDBText
            Left = 171
            Top = 35
            Width = 24
            Height = 17
            DataField = '_REAL__ACQUIRE_CURRENCY_ABBREV'
            DataSource = dsData
          end
          object edtVendorSaleCoverAcquireQuantity: TDBEdit
            Left = 8
            Top = 32
            Width = 57
            Height = 21
            DataField = 'EST_SALE_COVER_ACQUIRE_QTY'
            DataSource = dsData
            TabOrder = 0
          end
          object edtVendorSaleCoverAcquireTotalPrice: TDBEdit
            Left = 112
            Top = 32
            Width = 57
            Height = 21
            Color = clBtnFace
            DataField = '_REAL_EST_SALE_COVER_ACQUIRE_TOTAL_PRICE'
            DataSource = dsData
            ReadOnly = True
            TabOrder = 1
          end
        end
        object gbVendorSaleCoverLeaseQuantity: TGroupBox
          Left = 208
          Top = 0
          Width = 385
          Height = 65
          Caption = ' '#1053#1072#1077#1084#1080' '#1079#1072' '#1055#1086#1090#1086#1082' ('#1053#1044#1055') '
          TabOrder = 1
          object lblVendorSaleCoverLeaseQuantity: TLabel
            Left = 8
            Top = 16
            Width = 22
            Height = 13
            Caption = #1050'-'#1074#1086
            FocusControl = edtVendorSaleCoverLeaseQuantity
          end
          object txtVendorSaleCoverLeaseMeasureAbbrev: TDBText
            Left = 61
            Top = 35
            Width = 28
            Height = 17
            DataField = 'MEASURE_ABBREV'
            DataSource = dsHeader
          end
          object lblVendorSaleCoverLeaseTotalPrice: TLabel
            Left = 296
            Top = 16
            Width = 51
            Height = 13
            Caption = #1054#1073#1097#1072' '#1089#1090'-'#1090
            FocusControl = edtVendorSaleCoverLeaseTotalPrice
          end
          object txtVendorSaleCoverLeaseCurrencyAbbrev: TDBText
            Left = 355
            Top = 35
            Width = 24
            Height = 17
            DataField = '_REAL__LEASE_CURRENCY_ABBREV'
            DataSource = dsData
          end
          object lblVendorSaleCoverLeaseQuantityFor: TLabel
            Left = 88
            Top = 35
            Width = 12
            Height = 13
            Caption = #1079#1072
          end
          object lblVendorSaleCoverLeaseDateUnitQuantity: TLabel
            Left = 104
            Top = 16
            Width = 22
            Height = 13
            Caption = #1050'-'#1074#1086
            FocusControl = edtVendorSaleCoverLeaseDateUnitQuantity
          end
          object lblVendorSaleCoverLeaseDateUnitName: TLabel
            Left = 136
            Top = 16
            Width = 79
            Height = 13
            Caption = #1053#1072#1077#1084#1085#1072' '#1089#1090#1098#1087#1082#1072
            FocusControl = edtVendorSaleCoverLeaseDateUnitName
          end
          object lblVendorSaleCoverLeaseTotalQuantity: TLabel
            Left = 224
            Top = 16
            Width = 60
            Height = 13
            Caption = #1056#1072#1073'. '#1088#1077#1089#1091#1088#1089
            FocusControl = edtVendorSaleCoverLeaseTotalQuantity
          end
          object edtVendorSaleCoverLeaseQuantity: TDBEdit
            Left = 8
            Top = 32
            Width = 49
            Height = 21
            DataField = 'EST_SALE_COVER_LEASE_QTY'
            DataSource = dsData
            TabOrder = 0
          end
          object edtVendorSaleCoverLeaseTotalPrice: TDBEdit
            Left = 296
            Top = 32
            Width = 57
            Height = 21
            Color = clBtnFace
            DataField = '_REAL_EST_SALE_COVER_LEASE_TOTAL_PRICE'
            DataSource = dsData
            ReadOnly = True
            TabOrder = 4
          end
          object edtVendorSaleCoverLeaseDateUnitQuantity: TDBEdit
            Left = 104
            Top = 32
            Width = 33
            Height = 21
            DataField = 'EST_SALE_COVER_LEASE_DURATION'
            DataSource = dsData
            TabOrder = 1
          end
          object edtVendorSaleCoverLeaseDateUnitName: TDBEdit
            Left = 136
            Top = 32
            Width = 81
            Height = 21
            Color = clBtnFace
            DataField = '_REAL__LEASE_DATE_UNIT_NAME'
            DataSource = dsData
            ReadOnly = True
            TabOrder = 2
          end
          object edtVendorSaleCoverLeaseTotalQuantity: TDBEdit
            Left = 224
            Top = 32
            Width = 65
            Height = 21
            Color = clBtnFace
            DataField = '_EST_SALE_COVER_LEASE_TOTAL_QTY'
            DataSource = dsData
            ReadOnly = True
            TabOrder = 3
          end
        end
        object gbVendorSaleCoverConsignQuantity: TGroupBox
          Left = 600
          Top = 0
          Width = 171
          Height = 65
          Caption = ' '#1042#1098#1074#1077#1078#1076#1072#1085#1077' '#1079#1072' '#1055#1086#1090#1086#1082' ('#1042#1044#1055') '
          TabOrder = 2
          object lblVendorSaleCoverConsignQuantity: TLabel
            Left = 22
            Top = 35
            Width = 22
            Height = 13
            Caption = #1050'-'#1074#1086
            FocusControl = edtVendorSaleCoverConsignQuantity
          end
          object txtVendorSaleCoverConsignMeasureAbbrev: TDBText
            Left = 117
            Top = 35
            Width = 28
            Height = 17
            DataField = 'MEASURE_ABBREV'
            DataSource = dsHeader
          end
          object edtVendorSaleCoverConsignQuantity: TDBEdit
            Left = 48
            Top = 32
            Width = 65
            Height = 21
            DataField = 'EST_SALE_COVER_CONSIGN_QTY'
            DataSource = dsData
            TabOrder = 0
          end
        end
      end
      object pnlVendorEnvCoverQuantities: TPanel
        Left = 0
        Top = 70
        Width = 777
        Height = 70
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object gbVendorEnvCoverAcquireQuantity: TGroupBox
          Left = 0
          Top = 0
          Width = 201
          Height = 65
          Caption = ' '#1044#1086#1089#1090#1072#1074#1082#1080' '#1079#1072' '#1057#1088#1077#1076#1072' ('#1055#1044#1057') '
          TabOrder = 0
          object lblVendorEnvCoverAcquireQuantity: TLabel
            Left = 8
            Top = 16
            Width = 22
            Height = 13
            Caption = #1050'-'#1074#1086
            FocusControl = edtVendorEnvCoverAcquireQuantity
          end
          object txtVendorEnvCoverAcquireMeasureAbbrev: TDBText
            Left = 69
            Top = 35
            Width = 28
            Height = 17
            DataField = 'MEASURE_ABBREV'
            DataSource = dsHeader
          end
          object lblVendorEnvCoverAcquireTotalPrice: TLabel
            Left = 112
            Top = 16
            Width = 51
            Height = 13
            Caption = #1054#1073#1097#1072' '#1089#1090'-'#1090
            FocusControl = edtVendorEnvCoverAcquireTotalPrice
          end
          object txtVendorEnvCoverAcquireCurrencyAbbrev: TDBText
            Left = 171
            Top = 35
            Width = 24
            Height = 17
            DataField = '_REAL__ACQUIRE_CURRENCY_ABBREV'
            DataSource = dsData
          end
          object edtVendorEnvCoverAcquireQuantity: TDBEdit
            Left = 8
            Top = 32
            Width = 57
            Height = 21
            DataField = 'EST_ENV_COVER_ACQUIRE_QTY'
            DataSource = dsData
            TabOrder = 0
          end
          object edtVendorEnvCoverAcquireTotalPrice: TDBEdit
            Left = 112
            Top = 32
            Width = 57
            Height = 21
            Color = clBtnFace
            DataField = '_REAL_EST_ENV_COVER_ACQUIRE_TOTAL_PRICE'
            DataSource = dsData
            ReadOnly = True
            TabOrder = 1
          end
        end
        object gbVendorEnvCoverLeaseQuantity: TGroupBox
          Left = 208
          Top = 0
          Width = 385
          Height = 65
          Caption = ' '#1053#1072#1077#1084#1080' '#1079#1072' '#1057#1088#1077#1076#1072' ('#1053#1044#1057') '
          TabOrder = 1
          object lblVendorEnvCoverLeaseQuantity: TLabel
            Left = 8
            Top = 16
            Width = 22
            Height = 13
            Caption = #1050'-'#1074#1086
            FocusControl = edtVendorEnvCoverLeaseQuantity
          end
          object txtVendorEnvCoverLeaseMeasureAbbrev: TDBText
            Left = 61
            Top = 35
            Width = 28
            Height = 17
            DataField = 'MEASURE_ABBREV'
            DataSource = dsHeader
          end
          object lblVendorEnvCoverLeaseTotalPrice: TLabel
            Left = 296
            Top = 16
            Width = 51
            Height = 13
            Caption = #1054#1073#1097#1072' '#1089#1090'-'#1090
            FocusControl = edtVendorEnvCoverLeaseTotalPrice
          end
          object txtVendorEnvCoverLeaseCurrencyAbbrev: TDBText
            Left = 355
            Top = 35
            Width = 24
            Height = 17
            DataField = '_REAL__LEASE_CURRENCY_ABBREV'
            DataSource = dsData
          end
          object lblVendorEnvCoverLeaseQuantityFor: TLabel
            Left = 88
            Top = 35
            Width = 12
            Height = 13
            Caption = #1079#1072
          end
          object lblVendorEnvCoverLeaseDateUnitQuantity: TLabel
            Left = 104
            Top = 16
            Width = 22
            Height = 13
            Caption = #1050'-'#1074#1086
            FocusControl = edtVendorEnvCoverLeaseDateUnitQuantity
          end
          object lblVendorEnvCoverLeaseDateUnitName: TLabel
            Left = 136
            Top = 16
            Width = 79
            Height = 13
            Caption = #1053#1072#1077#1084#1085#1072' '#1089#1090#1098#1087#1082#1072
            FocusControl = edtVendorEnvCoverLeaseDateUnitName
          end
          object lblVendorEnvCoverLeaseTotalQuantity: TLabel
            Left = 224
            Top = 16
            Width = 60
            Height = 13
            Caption = #1056#1072#1073'. '#1088#1077#1089#1091#1088#1089
            FocusControl = edtVendorEnvCoverLeaseTotalQuantity
          end
          object edtVendorEnvCoverLeaseQuantity: TDBEdit
            Left = 8
            Top = 32
            Width = 49
            Height = 21
            DataField = 'EST_ENV_COVER_LEASE_QTY'
            DataSource = dsData
            TabOrder = 0
          end
          object edtVendorEnvCoverLeaseTotalPrice: TDBEdit
            Left = 296
            Top = 32
            Width = 57
            Height = 21
            Color = clBtnFace
            DataField = '_REAL_EST_ENV_COVER_LEASE_TOTAL_PRICE'
            DataSource = dsData
            ReadOnly = True
            TabOrder = 4
          end
          object edtVendorEnvCoverLeaseDateUnitQuantity: TDBEdit
            Left = 104
            Top = 32
            Width = 33
            Height = 21
            DataField = 'EST_ENV_COVER_LEASE_DURATION'
            DataSource = dsData
            TabOrder = 1
          end
          object edtVendorEnvCoverLeaseDateUnitName: TDBEdit
            Left = 136
            Top = 32
            Width = 81
            Height = 21
            Color = clBtnFace
            DataField = '_REAL__LEASE_DATE_UNIT_NAME'
            DataSource = dsData
            ReadOnly = True
            TabOrder = 2
          end
          object edtVendorEnvCoverLeaseTotalQuantity: TDBEdit
            Left = 224
            Top = 32
            Width = 65
            Height = 21
            Color = clBtnFace
            DataField = '_EST_ENV_COVER_LEASE_TOTAL_QTY'
            DataSource = dsData
            ReadOnly = True
            TabOrder = 3
          end
        end
      end
    end
  end
  object tlbWorkMeasure: TToolBar [5]
    Left = 984
    Top = 176
    Width = 24
    Height = 24
    Align = alNone
    AutoSize = True
    ButtonHeight = 24
    ButtonWidth = 24
    Images = dmMain.ilActions
    List = True
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    object btnWorkMeasure: TToolButton
      Left = 0
      Top = 0
      Action = actWorkMeasure
      Grouped = True
      Style = tbsCheck
    end
  end
  object tlbAccountMeasure: TToolBar [6]
    Left = 984
    Top = 200
    Width = 24
    Height = 24
    Align = alNone
    AutoSize = True
    ButtonHeight = 24
    ButtonWidth = 24
    Images = dmMain.ilActions
    List = True
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    object btnAccountMeasure: TToolButton
      Left = 0
      Top = 0
      Action = actAccountMeasure
      Grouped = True
      Style = tbsCheck
    end
  end
  inherited alActions: TActionList
    Left = 248
    inherited actForm: TAction
      Caption = '%ParRelProduct% - '#1040#1089#1087#1077#1082#1090' "'#1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'" '#1079#1072' '#1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083' - %s'
    end
    object actWorkMeasure: TAction
      AutoCheck = True
      Checked = True
      GroupIndex = 1
      Hint = #1056#1072#1073#1086#1090#1085#1072' '#1084#1077#1088#1085#1072' '#1077#1076#1080#1085#1080#1094#1072
      ImageIndex = 23
      OnExecute = actWorkMeasureExecute
    end
    object actAccountMeasure: TAction
      AutoCheck = True
      GroupIndex = 1
      Hint = #1057#1095#1077#1090#1086#1074#1086#1076#1085#1072' '#1084#1077#1088#1085#1072' '#1077#1076#1080#1085#1080#1094#1072
      ImageIndex = 28
      OnExecute = actAccountMeasureExecute
    end
    object actToggleAcquirePrice: TAction
      GroupIndex = 2
      ImageIndex = 140
      OnExecute = actToggleAcquirePriceExecute
      OnUpdate = actToggleAcquirePriceUpdate
    end
    object actToggleLeasePrice: TAction
      GroupIndex = 3
      ImageIndex = 140
      OnExecute = actToggleLeasePriceExecute
      OnUpdate = actToggleLeasePriceUpdate
    end
    object actToggleStore: TAction
      GroupIndex = 4
      ImageIndex = 140
      OnExecute = actToggleStoreExecute
      OnUpdate = actToggleStoreUpdate
    end
    object actTogglePartnerOffice: TAction
      GroupIndex = 5
      ImageIndex = 140
      OnExecute = actTogglePartnerOfficeExecute
      OnUpdate = actTogglePartnerOfficeUpdate
    end
    object actToggleTransportDurationDays: TAction
      GroupIndex = 6
      ImageIndex = 140
      OnExecute = actToggleTransportDurationDaysExecute
      OnUpdate = actToggleTransportDurationDaysUpdate
    end
    object actToggleMediatorCompany: TAction
      GroupIndex = 7
      ImageIndex = 140
      OnExecute = actToggleMediatorCompanyExecute
      OnUpdate = actToggleMediatorCompanyUpdate
    end
    object actToggleShipmentType: TAction
      GroupIndex = 8
      ImageIndex = 140
      OnExecute = actToggleShipmentTypeExecute
      OnUpdate = actToggleShipmentTypeUpdate
    end
    object actToggleIsPartnerTransport: TAction
      GroupIndex = 9
      ImageIndex = 140
      OnExecute = actToggleIsPartnerTransportExecute
      OnUpdate = actToggleIsPartnerTransportUpdate
    end
    object actToggleCustomhouse: TAction
      GroupIndex = 10
      ImageIndex = 140
      OnExecute = actToggleCustomhouseExecute
      OnUpdate = actToggleCustomhouseUpdate
    end
    object actToogleResolveDurationDays: TAction
      GroupIndex = 11
      ImageIndex = 140
      OnExecute = actToogleResolveDurationDaysExecute
      OnUpdate = actToogleResolveDurationDaysUpdate
    end
    object actToggleEstSpecFinModel: TAction
      GroupIndex = 12
      ImageIndex = 140
      OnExecute = actToggleEstSpecFinModelExecute
      OnUpdate = actToggleEstSpecFinModelUpdate
    end
    object actToggleCommonInvestmentValuesDiff: TAction
      Caption = #1054#1090#1082#1083'. '#1086#1090' '#1059#1054#1073' '#1054#1073#1086#1073#1097#1072#1074#1072#1097
      GroupIndex = 13
      OnExecute = actToggleInvestmentValuesDiff
      OnUpdate = actToggleCommonInvestmentValuesDiffUpdate
    end
    object actToggleSinglePriceInvestmentValuesPart: TAction
      Caption = ' '#1057#1087#1088#1103#1084#1086' '#1045#1076#1080#1085#1080#1095#1085#1072' '#1062#1077#1085#1072
      Checked = True
      GroupIndex = 13
      OnExecute = actToggleInvestmentValuesDiff
      OnUpdate = actToggleSinglePriceInvestmentValuesPartUpdate
    end
    object actAcquirePrice: TAction
      Hint = #1060#1086#1088#1084#1080#1088#1072#1085#1077' '#1085#1072' '#1094#1077#1085#1072
      ImageIndex = 187
      OnExecute = actAcquirePriceExecute
      OnUpdate = actAcquirePriceUpdate
    end
    object actLeasePrice: TAction
      Hint = #1060#1086#1088#1084#1080#1088#1072#1085#1077' '#1085#1072' '#1094#1077#1085#1072
      ImageIndex = 187
      OnExecute = actLeasePriceExecute
      OnUpdate = actLeasePriceUpdate
    end
  end
  inherited dsData: TDataSource
    OnDataChange = dsDataDataChange
    Left = 176
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 144
  end
  object dsHeader: TDataSource
    Left = 208
  end
  object cdsSpecFinModels: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conParRelProducts
    Params = <
      item
        DataType = ftFloat
        Name = 'PARTNER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end>
    ProviderName = 'prvSpecFinModels'
    BeforeOpen = cdsSpecFinModelsBeforeOpen
    Left = 288
    Top = 520
    object cdsSpecFinModelsSPEC_FIN_MODEL_CODE: TAbmesFloatField
      FieldName = 'SPEC_FIN_MODEL_CODE'
    end
    object cdsSpecFinModelsSPEC_FIN_MODEL_NAME: TAbmesWideStringField
      FieldName = 'SPEC_FIN_MODEL_NAME'
      Size = 100
    end
  end
  object dsSpecFinModels: TDataSource
    DataSet = cdsSpecFinModels
    Left = 320
    Top = 520
  end
end
