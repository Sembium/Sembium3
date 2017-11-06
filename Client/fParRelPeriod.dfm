inherited fmParRelPeriod: TfmParRelPeriod
  Caption = '%ParRelPeriodAbbrev% '#1074#1098#1074' '#1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083' - %s'
  ClientHeight = 533
  ClientWidth = 729
  DesignSize = (
    729
    533)
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 498
    Width = 729
    TabOrder = 7
    object lblFormCaption: TLabel [0]
      Left = -232
      Top = 24
      Width = 249
      Height = 13
      Caption = '%ParRelPeriodAbbrev% '#1079#1072' '#1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083' - %s'
      Visible = False
    end
    inherited pnlOKCancel: TPanel
      Left = 461
    end
    inherited pnlClose: TPanel
      Left = 372
    end
    inherited pnlApply: TPanel
      Left = 640
      Visible = False
    end
  end
  inline frPartner: TfrPartnerExFieldEditFrame [1]
    Left = 8
    Top = 8
    Width = 505
    Height = 65
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 155
    Constraints.MinHeight = 49
    TabOrder = 0
    TabStop = True
    inherited gbPartner: TGroupBox
      Width = 505
      Height = 65
      Caption = ' '#1055#1072#1088#1090#1085#1100#1086#1088' - %BorderRelTypeName% '
      inherited pnlNameAndButtons: TPanel
        Width = 80
        Height = 48
        inherited pnlRightButtons: TPanel
          Left = 44
          Height = 33
          inherited tlbDocButton: TToolBar
            Height = 33
          end
        end
        inherited pnlPartnerName: TPanel
          Width = 44
          Height = 33
          DesignSize = (
            44
            33)
          inherited edtPartnerName: TDBEdit
            Width = 86
          end
          inherited cbPartner: TJvDBLookupCombo
            Width = 100
          end
        end
        inherited pnlNameAndButtonsTop: TPanel
          Width = 80
          inherited lblPartner: TLabel
            Width = 76
          end
        end
      end
      inherited pnlPaddingRight: TPanel
        Left = 384
        Height = 48
      end
      inherited pnlPartnerCode: TPanel
        Height = 48
        DesignSize = (
          73
          48)
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
        Left = 390
        Height = 48
      end
      inherited pnlParRelButton: TPanel
        Left = 430
        Height = 48
        DesignSize = (
          73
          48)
      end
    end
  end
  object gbDateInterval: TGroupBox [2]
    Left = 520
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
  object gbModel: TGroupBox [3]
    Left = 8
    Top = 80
    Width = 713
    Height = 73
    Caption = ' '#1055#1088#1080#1085#1094#1080#1087#1077#1085' '#1052#1054#1044#1045#1083' '#1079#1072' %BorderRelTypeAction% - '#1054#1073#1077#1082#1090#1086#1074#1072' '#1063#1072#1089#1090' '
    TabOrder = 2
    object pnlStore: TPanel
      Left = 2
      Top = 15
      Width = 335
      Height = 56
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object lblStore: TLabel
        Left = 6
        Top = 9
        Width = 298
        Height = 13
        Caption = #1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086' '#1085#1072' '#1048#1055' '#1079#1072' %BorderRelTypeStoreAction%'
      end
      object pnlToggleStore: TPanel
        Left = 6
        Top = 25
        Width = 321
        Height = 21
        BevelOuter = bvNone
        TabOrder = 0
        object pnlInheritedStore: TPanel
          Left = 321
          Top = 0
          Width = 310
          Height = 21
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          DesignSize = (
            310
            21)
          inline frInheritedStore: TfrDeptFieldEditFrameBald
            Left = 0
            Top = 0
            Width = 310
            Height = 22
            HorzScrollBar.Visible = False
            VertScrollBar.Visible = False
            Anchors = [akLeft, akTop, akRight]
            Constraints.MaxHeight = 22
            Constraints.MinHeight = 22
            TabOrder = 0
            DesignSize = (
              310
              22)
            inherited gbTreeNode: TGroupBox
              Width = 326
              DesignSize = (
                326
                49)
              inherited pnlTreeNode: TPanel
                Width = 310
                inherited pnlTreeNodeName: TPanel
                  Width = 163
                  DesignSize = (
                    163
                    22)
                  inherited edtTreeNodeName: TDBEdit
                    Width = 162
                  end
                end
                inherited pnlTreeNodeNo: TPanel
                  Left = 163
                end
                inherited pnlRightButtons: TPanel
                  Left = 274
                end
              end
            end
          end
        end
        object pnlOverriddenStore: TPanel
          Left = 11
          Top = 0
          Width = 310
          Height = 21
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          DesignSize = (
            310
            21)
          inline frStore: TfrDeptFieldEditFrameBald
            Left = 0
            Top = 0
            Width = 310
            Height = 22
            HorzScrollBar.Visible = False
            VertScrollBar.Visible = False
            Anchors = [akLeft, akTop, akRight]
            Constraints.MaxHeight = 22
            Constraints.MinHeight = 22
            TabOrder = 0
            DesignSize = (
              310
              22)
            inherited gbTreeNode: TGroupBox
              Width = 326
              DesignSize = (
                326
                49)
              inherited pnlTreeNode: TPanel
                Width = 310
                inherited pnlTreeNodeName: TPanel
                  Width = 163
                  DesignSize = (
                    163
                    22)
                  inherited edtTreeNodeName: TDBEdit
                    Width = 162
                  end
                end
                inherited pnlTreeNodeNo: TPanel
                  Left = 163
                end
                inherited pnlRightButtons: TPanel
                  Left = 274
                end
              end
            end
          end
        end
        object pnlToggleStoreButton: TPanel
          Left = 0
          Top = 0
          Width = 11
          Height = 21
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 2
          object btnToggleStore: TSpeedButton
            Left = 0
            Top = 0
            Width = 11
            Height = 21
            Action = actToggleStore
            Align = alLeft
            AllowAllUp = True
            GroupIndex = 11
            Flat = True
          end
        end
      end
    end
    object pnlPartnerOffice: TPanel
      Left = 458
      Top = 15
      Width = 253
      Height = 56
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        253
        56)
      object lblPartnerOffice: TLabel
        Left = 6
        Top = 9
        Width = 360
        Height = 13
        Caption = #1058#1055' '#1085#1072' %BorderRelTypeName% '#1079#1072' %BorderRelTypePartnerStoreAction%'
        FocusControl = cbPartnerOffice
      end
      object cbPartnerOffice: TJvDBLookupCombo
        Left = 6
        Top = 25
        Width = 241
        Height = 21
        DeleteKeyClear = False
        DataField = '_PARTNER_OFFICE_NAME'
        DataSource = dsData
        DisplayEmpty = ' '
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 0
      end
    end
    object pnlMovement: TPanel
      Left = 337
      Top = 15
      Width = 121
      Height = 56
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 2
      object lblArrow: TLabel
        Left = 4
        Top = 10
        Width = 36
        Height = 43
        Caption = #174
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -35
        Font.Name = 'Symbol'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblTransportDurationDays: TLabel
        Left = 48
        Top = -2
        Width = 53
        Height = 26
        Caption = #1055#1077#1088#1080#1086#1076' '#1079#1072#13#10#1044#1074#1080#1078#1077#1085#1080#1077
      end
      object lblTransportDurationDaysMeasure: TLabel
        Left = 92
        Top = 28
        Width = 18
        Height = 13
        Caption = #1082'.'#1076'.'
      end
      object pnlToggleTransportDurationDays: TPanel
        Left = 48
        Top = 25
        Width = 41
        Height = 21
        BevelOuter = bvNone
        TabOrder = 0
        object pnlOverriddenTransportDurationDays: TPanel
          Left = 11
          Top = 0
          Width = 30
          Height = 21
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          DesignSize = (
            30
            21)
          object edtTransportDurationDays: TDBEdit
            Left = 0
            Top = 0
            Width = 30
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            DataField = 'TRANSPORT_DURATION_DAYS'
            DataSource = dsData
            TabOrder = 0
          end
        end
        object pnlInheritedTransportDurationDays: TPanel
          Left = 41
          Top = 0
          Width = 30
          Height = 21
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          DesignSize = (
            30
            21)
          object edtInheritedTransportDurationDays: TDBEdit
            Left = 0
            Top = 0
            Width = 30
            Height = 21
            Anchors = [akLeft, akTop, akRight]
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
            GroupIndex = 12
            Flat = True
          end
        end
      end
    end
  end
  object gbMediatorCompany: TGroupBox [4]
    Left = 8
    Top = 160
    Width = 241
    Height = 65
    Caption = ' '#1055#1086#1089#1088#1077#1076#1085#1080#1082' '
    TabOrder = 3
    object pnlToggleMediatorCompany: TPanel
      Left = 8
      Top = 32
      Width = 225
      Height = 21
      BevelOuter = bvNone
      TabOrder = 0
      object pnlOverriddenMediatorCompany: TPanel
        Left = 11
        Top = 0
        Width = 214
        Height = 21
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          214
          21)
        inline frMediatorCompany: TfrPartnerFieldEditFrameBald
          Left = 0
          Top = 0
          Width = 214
          Height = 22
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Anchors = [akLeft, akTop, akRight]
          Constraints.MaxHeight = 22
          Constraints.MinHeight = 22
          TabOrder = 0
          TabStop = True
          DesignSize = (
            214
            22)
          inherited gbPartner: TGroupBox
            Width = 229
            inherited pnlNameAndButtons: TPanel
              Width = 140
              inherited pnlRightButtons: TPanel
                Left = 104
              end
              inherited pnlPartnerName: TPanel
                Width = 104
                DesignSize = (
                  104
                  23)
                inherited edtPartnerName: TDBEdit
                  Width = 90
                end
                inherited cbPartner: TJvDBLookupCombo
                  Width = 105
                  DisplayEmpty = ' '
                end
              end
            end
            inherited pnlPaddingRight: TPanel
              Left = 221
            end
          end
        end
      end
      object pnlInheritedMediatorCompany: TPanel
        Left = 225
        Top = 0
        Width = 214
        Height = 21
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        DesignSize = (
          214
          21)
        inline frInheritedMediatorCompany: TfrPartnerFieldEditFrameBald
          Left = 0
          Top = 0
          Width = 214
          Height = 22
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Anchors = [akLeft, akTop, akRight]
          Constraints.MaxHeight = 22
          Constraints.MinHeight = 22
          TabOrder = 0
          TabStop = True
          DesignSize = (
            214
            22)
          inherited gbPartner: TGroupBox
            Width = 229
            inherited pnlNameAndButtons: TPanel
              Width = 140
              inherited pnlRightButtons: TPanel
                Left = 104
              end
              inherited pnlPartnerName: TPanel
                Width = 104
                DesignSize = (
                  104
                  23)
                inherited edtPartnerName: TDBEdit
                  Width = 90
                end
                inherited cbPartner: TJvDBLookupCombo
                  Width = 105
                  DisplayEmpty = ' '
                end
              end
            end
            inherited pnlPaddingRight: TPanel
              Left = 221
            end
          end
        end
      end
      object pnlToggleMediatorCompanyButton: TPanel
        Left = 0
        Top = 0
        Width = 11
        Height = 21
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 2
        object btnToggleMediatorCompany: TSpeedButton
          Left = 0
          Top = 0
          Width = 11
          Height = 21
          Action = actToggleMediatorCompany
          Align = alLeft
          AllowAllUp = True
          GroupIndex = 13
          Flat = True
        end
      end
    end
  end
  object gbOther: TGroupBox [5]
    Left = 256
    Top = 160
    Width = 465
    Height = 65
    Caption = ' '#1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '
    TabOrder = 4
    DesignSize = (
      465
      65)
    object lblCurrency: TLabel
      Left = 8
      Top = 16
      Width = 35
      Height = 13
      Caption = #1042#1072#1083#1091#1090#1072
    end
    object lblShipmentType: TLabel
      Left = 72
      Top = 16
      Width = 77
      Height = 13
      Caption = #1058#1098#1088#1075#1086#1074#1089#1082#1080' '#1050#1086#1076
    end
    object lblIsPartnerTransport: TLabel
      Left = 160
      Top = 16
      Width = 92
      Height = 13
      Caption = #1054#1088#1075'. '#1085#1072' '#1090#1088#1072#1085#1089#1087#1086#1088#1090
    end
    object lblCustomhouse: TLabel
      Left = 264
      Top = 16
      Width = 44
      Height = 13
      Caption = #1052#1080#1090#1085#1080#1094#1072
    end
    object pnlToggleCurrency: TPanel
      Left = 8
      Top = 32
      Width = 57
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      BevelOuter = bvNone
      TabOrder = 0
      object pnlOverriddenCurrency: TPanel
        Left = 11
        Top = 0
        Width = 46
        Height = 21
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          46
          21)
        object cbCurrency: TJvDBLookupCombo
          Left = 0
          Top = 0
          Width = 46
          Height = 21
          DropDownCount = 15
          EscapeKeyReset = False
          DataField = '_CURRENCY_ABBREV'
          DataSource = dsData
          DisplayEmpty = ' '
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 0
        end
      end
      object pnlInheritedCurrency: TPanel
        Left = 57
        Top = 0
        Width = 46
        Height = 21
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        DesignSize = (
          46
          21)
        object edtInheritedCurrency: TDBEdit
          Left = 0
          Top = 0
          Width = 46
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          Color = clBtnFace
          DataField = '_INHRT_CURRENCY_ABBREV'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 0
        end
      end
      object pnlToggleCurrencyButton: TPanel
        Left = 0
        Top = 0
        Width = 11
        Height = 21
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 2
        object btnToggleCurrency: TSpeedButton
          Left = 0
          Top = 0
          Width = 11
          Height = 21
          Action = actToggleCurrency
          Align = alLeft
          AllowAllUp = True
          GroupIndex = 14
          Flat = True
        end
      end
    end
    object pnlToggleShipmentType: TPanel
      Left = 72
      Top = 32
      Width = 81
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      BevelOuter = bvNone
      TabOrder = 1
      object pnlOverriddenShipmentType: TPanel
        Left = 11
        Top = 0
        Width = 70
        Height = 21
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          70
          21)
        object cbShipmentType: TJvDBLookupCombo
          Left = 0
          Top = 0
          Width = 70
          Height = 21
          DropDownCount = 15
          DropDownWidth = 500
          EscapeKeyReset = False
          DataField = '_SHIPMENT_TYPE_SHOW_NAME'
          DataSource = dsData
          DisplayEmpty = ' '
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 0
        end
      end
      object pnlInheritedShipmentType: TPanel
        Left = 81
        Top = 0
        Width = 70
        Height = 21
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        DesignSize = (
          70
          21)
        object edtInheritedShipmentType: TDBEdit
          Left = 0
          Top = 0
          Width = 70
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          Color = clBtnFace
          DataField = '_INHRT_SHIPMENT_TYPE_SHOW_NAME'
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
          GroupIndex = 15
          Flat = True
        end
      end
    end
    object pnlToggleIsPartnerTransport: TPanel
      Left = 160
      Top = 32
      Width = 97
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      BevelOuter = bvNone
      TabOrder = 2
      object pnlOverriddenIsPartnerTransport: TPanel
        Left = 11
        Top = 0
        Width = 86
        Height = 21
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          86
          21)
        object cbIsPartnerTransport: TJvDBComboBox
          Left = 0
          Top = 0
          Width = 86
          Height = 21
          DataField = 'IS_PARTNER_TRANSPORT'
          DataSource = dsData
          Anchors = [akLeft, akTop, akRight]
          ItemHeight = 13
          Items.Strings = (
            #1057#1098#1079#1076#1072#1074#1072#1085#1077
            #1044#1086#1089#1090#1072#1074#1082#1072)
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
      object pnlInheritedIsPartnerTransport: TPanel
        Left = 97
        Top = 0
        Width = 86
        Height = 21
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        DesignSize = (
          86
          21)
        object edtInheritedIsPartnerTransport: TDBEdit
          Left = 0
          Top = 0
          Width = 86
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
          GroupIndex = 16
          Flat = True
        end
      end
    end
    object pnlToggleCustomhouse: TPanel
      Left = 264
      Top = 32
      Width = 193
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      BevelOuter = bvNone
      TabOrder = 3
      object pnlOverriddenCustomhouse: TPanel
        Left = 11
        Top = 0
        Width = 182
        Height = 21
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          182
          21)
        object cbCustomhouse: TJvDBLookupCombo
          Left = 0
          Top = 0
          Width = 182
          Height = 21
          EscapeKeyReset = False
          DataField = '_CUSTOMHOUSE_NAME'
          DataSource = dsData
          DisplayEmpty = ' '
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 0
        end
      end
      object pnlInheritedCustomhouse: TPanel
        Left = 193
        Top = 0
        Width = 182
        Height = 21
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        DesignSize = (
          182
          21)
        object edtCustomhouse: TDBEdit
          Left = 0
          Top = 0
          Width = 182
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
          GroupIndex = 17
          Flat = True
        end
      end
    end
  end
  inherited pnlMain: TPanel [6]
    Top = 281
    Width = 729
    Height = 217
    Align = alNone
    Anchors = [akLeft, akTop, akBottom]
    TabOrder = 6
    DesignSize = (
      729
      217)
    object pcMain: TPageControl [0]
      Left = 8
      Top = 4
      Width = 713
      Height = 205
      ActivePage = tsSpecFinModels
      Anchors = [akLeft, akTop, akBottom]
      TabOrder = 1
      OnChange = pcMainChange
      object tsSpecFinModels: TTabSheet
        BorderWidth = 5
        Caption = #1055#1088#1080#1085#1094#1080#1087#1085#1080' '#1052#1054#1044#1045#1083'-'#1080' - '#1060#1080#1085#1072#1085#1089#1086#1074#1080
      end
      object tsPRPerPriceModifiers: TTabSheet
        Caption = #1054#1090#1089#1090#1098#1087#1082#1080
        ImageIndex = 1
      end
    end
    inherited pnlGrid: TPanel
      Top = 40
      Width = 713
      Height = 137
      Align = alNone
      inherited pnlNavigator: TPanel
        Width = 713
        Alignment = taRightJustify
        Font.Style = [fsBold]
        ParentFont = False
        inherited pnlFilterButton: TPanel
          Left = 192
        end
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
        inherited tlbTopGridButtons: TToolBar
          Left = 216
          Width = 209
          AutoSize = False
          object sepSetEstModel: TToolButton
            Left = 56
            Top = 0
            Width = 8
            Caption = 'sepSetEstModel'
            ImageIndex = 3
            Style = tbsSeparator
          end
          object btnSetEstModel: TSpeedButton
            Left = 64
            Top = 0
            Width = 80
            Height = 24
            Action = actSetEstModel
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = False
          end
        end
        object tlbCreateLike: TToolBar
          Left = 168
          Top = 0
          Width = 24
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 24
          Caption = 'tlbCreateLike'
          Images = dmMain.ilActions
          TabOrder = 3
          object btnInsertLike: TToolButton
            Left = 0
            Top = 0
            Action = actInsertLike
          end
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 713
        Height = 113
        UseMultiTitle = True
        OnGetCellParams = grdDataGetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'FINANCIAL_PRODUCT_NAME'
            Footers = <>
            Title.Caption = #1042#1080#1076' '#1042#1072#1083#1091#1090#1072' '#1079#1072' '#1056#1072#1079#1087#1083#1072#1097#1072#1085#1077' ('#1060#1054#1073')'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'SPEC_FIN_MODEL_NAME'
            Footers = <>
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 270
          end
          item
            EditButtons = <>
            FieldName = 'EXEC_DEPT_IDENTIFIER'
            Footers = <>
            Title.Caption = #1058#1055' '#1056#1077#1072#1083#1080#1079#1072#1090#1086#1088
            Width = 89
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'IS_EST_MODEL'
            Footers = <>
            Title.Caption = #1055#1088#1080#1083'. '#1040#1055#1089
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '_IS_AUTHORIZED'
            Footers = <>
            Title.Caption = #1057#1090#1072#1090#1091#1089
            Width = 60
          end
          item
            Alignment = taRightJustify
            EditButtons = <>
            FieldName = 'PRIMARY_FIN_MODEL_LINE_COUNT'
            Footers = <>
            Title.Caption = #1041#1088'. '#1054#1089#1085'. '#1056#1077#1076#1086#1074#1077' '#1086#1090' '#1052#1054#1044#1045#1083'-'#1072
            Width = 60
          end
          item
            Alignment = taRightJustify
            EditButtons = <>
            FieldName = 'SECONDARY_LINE_QTY_PERCENT'
            Footers = <>
            Title.Caption = '% '#1057#1098#1087'. '#1056#1077#1076#1086#1074#1077' '#1086#1090' '#1052#1054#1044#1045#1083'-'#1072
            Width = 60
          end>
      end
    end
  end
  object gbFinPartner: TGroupBox [7]
    Left = 8
    Top = 232
    Width = 401
    Height = 48
    Caption = ' '#1057#1090#1088#1072#1085#1072' '#1087#1086' '#1060#1080#1085#1072#1085#1089#1086#1074#1086' O'#1090#1085#1086#1096#1077#1085#1080#1077'  '
    TabOrder = 5
    object pnlToggleFinPartner: TPanel
      Left = 8
      Top = 16
      Width = 385
      Height = 21
      BevelOuter = bvNone
      TabOrder = 0
      object pnlOverridenFinPartner: TPanel
        Left = 11
        Top = 0
        Width = 374
        Height = 21
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          374
          21)
        inline frFinPartner: TfrPartnerFieldEditFrameBald
          Left = 0
          Top = 0
          Width = 374
          Height = 22
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Anchors = [akLeft, akTop, akRight]
          Constraints.MaxHeight = 22
          Constraints.MinHeight = 22
          TabOrder = 0
          TabStop = True
          DesignSize = (
            374
            22)
          inherited gbPartner: TGroupBox
            Width = 389
            inherited pnlNameAndButtons: TPanel
              Width = 300
              inherited pnlRightButtons: TPanel
                Left = 264
              end
              inherited pnlPartnerName: TPanel
                Width = 264
                DesignSize = (
                  264
                  23)
                inherited edtPartnerName: TDBEdit
                  Width = 250
                end
                inherited cbPartner: TJvDBLookupCombo
                  Width = 265
                  DisplayEmpty = ' '
                end
              end
            end
            inherited pnlPaddingRight: TPanel
              Left = 381
            end
          end
        end
      end
      object pnlInheritedFinPartner: TPanel
        Left = 385
        Top = 0
        Width = 374
        Height = 21
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        DesignSize = (
          374
          21)
        inline frInheritedFinPartner: TfrPartnerFieldEditFrameBald
          Left = 0
          Top = 0
          Width = 374
          Height = 22
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Anchors = [akLeft, akTop, akRight]
          Constraints.MaxHeight = 22
          Constraints.MinHeight = 22
          TabOrder = 0
          TabStop = True
          DesignSize = (
            374
            22)
          inherited gbPartner: TGroupBox
            Width = 389
            inherited pnlNameAndButtons: TPanel
              Width = 300
              inherited pnlRightButtons: TPanel
                Left = 264
              end
              inherited pnlPartnerName: TPanel
                Width = 264
                DesignSize = (
                  264
                  23)
                inherited edtPartnerName: TDBEdit
                  Width = 250
                end
                inherited cbPartner: TJvDBLookupCombo
                  Width = 265
                  DisplayEmpty = ' '
                end
              end
            end
            inherited pnlPaddingRight: TPanel
              Left = 381
            end
          end
        end
      end
      object pnlToggleFinPartnerButton: TPanel
        Left = 0
        Top = 0
        Width = 11
        Height = 21
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 2
        object btnToggleFinPartner: TSpeedButton
          Left = 0
          Top = 0
          Width = 11
          Height = 21
          Action = actToggleFinPartner
          Align = alLeft
          AllowAllUp = True
          GroupIndex = 18
          Flat = True
        end
      end
    end
  end
  inherited dsData: TDataSource [8]
  end
  inherited dsGridData: TDataSource [9]
  end
  inherited cdsGridData: TAbmesClientDataSet [10]
  end
  inherited alActions: TActionList [11]
    Left = 0
    Top = 96
    inherited actForm: TAction
      Caption = '%ParRelPeriodAbbrev% '#1074#1098#1074' '#1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083' - %s'
    end
    object actSetEstModel: TAction
      Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1077#1085
      OnExecute = actSetEstModelExecute
      OnUpdate = actSetEstModelUpdate
    end
    object actToggleStore: TAction
      GroupIndex = 11
      ImageIndex = 140
      OnExecute = actToggleStoreExecute
      OnUpdate = actToggleStoreUpdate
    end
    object actToggleTransportDurationDays: TAction
      GroupIndex = 12
      ImageIndex = 140
      OnExecute = actToggleTransportDurationDaysExecute
      OnUpdate = actToggleTransportDurationDaysUpdate
    end
    object actToggleMediatorCompany: TAction
      GroupIndex = 13
      ImageIndex = 140
      OnExecute = actToggleMediatorCompanyExecute
      OnUpdate = actToggleMediatorCompanyUpdate
    end
    object actToggleFinPartner: TAction
      GroupIndex = 18
      ImageIndex = 140
      OnExecute = actToggleFinPartnerExecute
      OnUpdate = actToggleFinPartnerUpdate
    end
    object actToggleCurrency: TAction
      GroupIndex = 14
      ImageIndex = 140
      OnExecute = actToggleCurrencyExecute
      OnUpdate = actToggleCurrencyUpdate
    end
    object actToggleShipmentType: TAction
      GroupIndex = 15
      ImageIndex = 140
      OnExecute = actToggleShipmentTypeExecute
      OnUpdate = actToggleShipmentTypeUpdate
    end
    object actToggleIsPartnerTransport: TAction
      GroupIndex = 16
      ImageIndex = 140
      OnExecute = actToggleIsPartnerTransportExecute
      OnUpdate = actToggleIsPartnerTransportUpdate
    end
    object actToggleCustomhouse: TAction
      GroupIndex = 17
      ImageIndex = 140
      OnExecute = actToggleCustomhouseExecute
      OnUpdate = actToggleCustomhouseUpdate
    end
  end
  inherited pdsGridDataParams: TParamDataSet [12]
  end
  inherited dsGridDataParams: TDataSource [13]
  end
  inherited cdsData: TAbmesClientDataSet [14]
  end
end
