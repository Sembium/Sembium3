inherited fmConfig: TfmConfig
  Left = 574
  Top = 372
  Caption = #1050#1086#1085#1092#1080#1075#1091#1088#1080#1088#1072#1085#1077
  ClientHeight = 657
  ClientWidth = 563
  DesignSize = (
    563
    657)
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 622
    Width = 563
    object lblWarning: TLabel [0]
      Left = 8
      Top = 0
      Width = 357
      Height = 26
      Caption = 
        #1042#1053#1048#1052#1040#1053#1048#1045'!!!'#13#10#1053#1072#1089#1090#1088#1086#1081#1082#1080#1090#1077' '#1089#1072' '#1074#1072#1083#1080#1076#1085#1080' '#1079#1072' '#1094#1103#1083#1072#1090#1072' '#1089#1080#1089#1090#1077#1084#1072' '#1080' '#1079#1072' '#1074#1089#1080#1095#1082 +
        #1080' '#1087#1086#1090#1088#1077#1073#1080#1090#1077#1083#1080'!'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    inherited pnlOKCancel: TPanel
      Left = 295
    end
    inherited pnlClose: TPanel
      Left = 206
    end
    inherited pnlApply: TPanel
      Left = 474
      Visible = False
    end
  end
  object pcMain: TPageControl [1]
    Left = 8
    Top = 8
    Width = 547
    Height = 606
    ActivePage = tsCommon
    Anchors = [akLeft, akTop, akRight, akBottom]
    HotTrack = True
    MultiLine = True
    TabOrder = 1
    object tsDoc: TTabSheet
      Caption = #1052#1048#1048#1054
      ImageIndex = 7
      DesignSize = (
        539
        578)
      object gbDocOptions: TGroupBox
        Left = 8
        Top = 8
        Width = 522
        Height = 153
        Anchors = [akLeft, akTop, akRight]
        Caption = ' '#1041#1072#1079#1086#1074#1080' '#1053#1072#1089#1090#1088#1086#1081#1082#1080' '
        TabOrder = 0
        object lblDocItemViewCacheSize: TLabel
          Left = 344
          Top = 56
          Width = 153
          Height = 13
          Caption = #1056#1072#1079#1084#1077#1088' '#1085#1072' '#1082#1077#1096#1072'('#1074' '#1052#1077#1075#1072#1073#1072#1081#1090#1080')'
          Visible = False
        end
        object bvlDocOptions: TBevel
          Left = 320
          Top = 16
          Width = 9
          Height = 125
          Shape = bsLeftLine
          Visible = False
        end
        object chkAllowInternallyStoredDoc: TAbmesDBCheckBox
          Left = 16
          Top = 24
          Width = 281
          Height = 17
          Caption = #1042#1098#1079#1084#1086#1078#1085#1086#1089#1090' '#1079#1072' '#1074#1098#1090#1088#1077#1096#1085#1086' '#1089#1098#1093#1088#1072#1085#1077#1085#1080#1077' '#1085#1072' '#1048#1048#1054
          DataField = 'ALLOW_INTERNALLY_STORED_DOC'
          DataSource = dsData
          TabOrder = 0
          ValueChecked = 'True'
          ValueUnchecked = 'False'
          ImmediateUpdateField = True
        end
        object chbCountApproveCycles: TAbmesDBCheckBox
          Left = 16
          Top = 48
          Width = 229
          Height = 17
          Caption = #1054#1090#1073#1088#1086#1103#1074#1072#1085#1077' '#1085#1072' '#1062#1080#1082#1098#1083' '#1085#1072' '#1059#1090#1074#1098#1088#1078#1076#1072#1074#1072#1085#1077
          DataField = 'COUNT_APPROVE_CYCLES'
          DataSource = dsData
          TabOrder = 1
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object chbDocItemsUnapprovePrompt: TAbmesDBCheckBox
          Left = 16
          Top = 72
          Width = 266
          Height = 17
          Caption = #1047#1072#1087#1080#1090#1074#1072#1085#1077' '#1079#1072' '#1088#1072#1079#1091#1090#1074#1098#1088#1078#1076#1072#1074#1072#1085#1077' '#1085#1072' '#1086#1082#1086#1083#1085#1080' '#1048#1048#1054
          DataField = 'DOC_ITEMS_UNAPPROVE_PROMPT'
          DataSource = dsData
          TabOrder = 2
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object chkCheckSpecDocs: TAbmesDBCheckBox
          Left = 16
          Top = 96
          Width = 265
          Height = 17
          Caption = #1055#1088#1086#1074#1077#1088#1082#1072' '#1085#1072' '#1052#1048#1048#1054'-'#1090#1072#1090#1072' '#1074' '#1055#1088#1080#1085#1094#1080#1087#1077#1085' '#1052#1054#1044#1045#1083
          DataField = 'CHECK_SPEC_DOCS'
          DataSource = dsData
          ParentShowHint = False
          ShowHint = False
          TabOrder = 3
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object chkCheckModelDocs: TAbmesDBCheckBox
          Left = 16
          Top = 120
          Width = 281
          Height = 17
          Caption = #1055#1088#1086#1074#1077#1088#1082#1072' '#1085#1072' '#1052#1048#1048#1054'-'#1090#1072#1090#1072' '#1074' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1077#1085' '#1052#1054#1044#1045#1083
          DataField = 'CHECK_MODEL_DOCS'
          DataSource = dsData
          ParentShowHint = False
          ShowHint = False
          TabOrder = 4
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object edtDocItemViewCacheSize: TDBEdit
          Left = 344
          Top = 72
          Width = 153
          Height = 21
          DataField = 'DOC_ITEM_VIEW_CACHE_SIZE'
          DataSource = dsData
          TabOrder = 5
          Visible = False
        end
      end
      object gbDocExternalDocs: TGroupBox
        Left = 8
        Top = 168
        Width = 522
        Height = 201
        Anchors = [akLeft, akTop, akRight]
        Caption = ' '#1042#1098#1085#1096#1085#1080' '#1048#1048#1054' '
        TabOrder = 1
        object lblDncDocsRelativeRootPath: TLabel
          Left = 16
          Top = 104
          Width = 185
          Height = 13
          Caption = #1056#1077#1083#1072#1090#1080#1074#1077#1085' '#1087#1098#1090' '#1079#1072' '#1074#1098#1085#1096#1085#1080' DNC-'#1048#1048#1054
          FocusControl = edtDncDocsRelativeRootPath
        end
        object lblDncServerName: TLabel
          Left = 16
          Top = 152
          Width = 64
          Height = 13
          Caption = 'DNC '#1089#1098#1088#1074#1098#1088
          FocusControl = edtDncServerName
        end
        object lblDocsLocalRootPath: TLabel
          Left = 352
          Top = 16
          Width = 149
          Height = 13
          Caption = #1051#1086#1082#1072#1083#1077#1085' '#1087#1098#1090' '#1079#1072' '#1074#1098#1085#1096#1085#1080' '#1048#1048#1054
          FocusControl = edtDocsLocalRootPath
        end
        object lblDocsRemoteRootPath: TLabel
          Left = 16
          Top = 16
          Width = 159
          Height = 13
          Caption = #1054#1090#1076#1072#1083#1077#1095#1077#1085' '#1087#1098#1090' '#1079#1072' '#1074#1098#1085#1096#1085#1080' '#1048#1048#1054
          FocusControl = edtDocsRemoteRootPath
        end
        object edtDncDocsRelativeRootPath: TDBEdit
          Left = 16
          Top = 120
          Width = 489
          Height = 21
          DataField = 'DNC_DOCS_RELATIVE_ROOT_PATH'
          DataSource = dsData
          TabOrder = 2
        end
        object edtDncServerName: TDBEdit
          Left = 16
          Top = 168
          Width = 121
          Height = 21
          DataField = 'DNC_SERVER_NAME'
          DataSource = dsData
          TabOrder = 3
        end
        object edtDocsLocalRootPath: TDBEdit
          Left = 352
          Top = 32
          Width = 153
          Height = 21
          DataField = 'DOCS_LOCAL_ROOT_PATH'
          DataSource = dsData
          TabOrder = 1
        end
        object edtDocsRemoteRootPath: TDBEdit
          Left = 16
          Top = 32
          Width = 321
          Height = 21
          DataField = 'DOCS_REMOTE_ROOT_PATH'
          DataSource = dsData
          TabOrder = 0
        end
      end
      object gbDocSlowConnection: TGroupBox
        Left = 8
        Top = 376
        Width = 522
        Height = 49
        Anchors = [akLeft, akTop, akRight]
        Caption = ' '#1048#1085#1090#1077#1088#1085#1077#1090' '#1076#1086#1089#1090#1098#1087' '#1076#1086' '#1048#1048#1054' '
        TabOrder = 2
        Visible = False
        object lblSlowConnectionStoredFileWarningSize: TLabel
          Left = 16
          Top = 19
          Width = 377
          Height = 13
          Caption = 
            #1055#1088#1077#1076#1091#1087#1088#1077#1078#1076#1077#1085#1080#1077' '#1087#1088#1080' '#1086#1087#1080#1090' '#1079#1072' '#1076#1086#1089#1090#1098#1087' '#1087#1088#1077#1079' '#1048#1085#1090#1077#1088#1085#1077#1090' '#1076#1086' '#1048#1048#1054' '#1087#1086'-'#1075#1086#1083#1103#1084#1086 +
            ' '#1086#1090
          FocusControl = edtSetSlowConnectionStoredFileWarningSize
        end
        object lblSetSlowConnectionStoredFileWarningSizeMeasure: TLabel
          Left = 485
          Top = 19
          Width = 14
          Height = 13
          Caption = 'KB'
        end
        object edtSetSlowConnectionStoredFileWarningSize: TDBEdit
          Left = 400
          Top = 16
          Width = 81
          Height = 21
          DataField = 'SLOW_CONN_SF_WARNING_SIZE'
          DataSource = dsData
          TabOrder = 0
        end
      end
    end
    object tsCommon: TTabSheet
      Caption = #1054#1073#1097#1080
      ImageIndex = 10
      DesignSize = (
        539
        578)
      object gbCommonDates: TGroupBox
        Left = 8
        Top = 8
        Width = 522
        Height = 145
        Anchors = [akLeft, akTop, akRight]
        Caption = ' '#1044#1072#1090#1080', '#1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083#1080' '#1080' '#1042#1088#1077#1084#1077#1074#1080' '#1057#1090#1098#1087#1082#1080' '
        TabOrder = 0
        object lblDefaultDateUnit: TLabel
          Left = 48
          Top = 84
          Width = 174
          Height = 13
          Caption = #1042#1088#1077#1084#1077#1074#1072' '#1089#1090#1098#1087#1082#1072' '#1087#1086' '#1087#1086#1076#1088#1072#1079#1073#1080#1088#1072#1085#1077
          FocusControl = cbDefaultDateUnit
        end
        object lblDateFormat: TLabel
          Left = 48
          Top = 20
          Width = 173
          Height = 13
          Caption = #1060#1086#1088#1084#1072#1090' '#1085#1072' '#1076#1072#1090#1080' '#1087#1086' '#1087#1086#1076#1088#1072#1079#1073#1080#1088#1072#1085#1077
          FocusControl = cbDefaultDateUnit
        end
        object lblDateIntervalFormat: TLabel
          Left = 48
          Top = 52
          Width = 190
          Height = 13
          Caption = #1060#1086#1088#1084#1072#1090' '#1085#1072' '#1042#1088#1084#1048#1085#1090' '#1087#1086' '#1087#1086#1076#1088#1072#1079#1073#1080#1088#1072#1085#1077
          FocusControl = cbDefaultDateUnit
        end
        object lblDatePeriodsYearPart: TLabel
          Left = 48
          Top = 109
          Width = 217
          Height = 26
          Caption = 
            #1050#1088#1072#1090#1085#1086#1089#1090' '#1085#1072' '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1059#1052' '#1059#1054#1073', '#1059#1052' '#1055#1072#1088', '#13#10#1048#1048#1056', '#1048#1044', '#1055#1088'. '#1056#1086#1083#1103' '#1080' '#1050#1086#1088'.' +
            ' '#1085#1072' '#1042#1057' '#1079#1072' '#1090#1088#1091#1076
          FocusControl = cbDatePeriodsYearPart
        end
        object cbDefaultDateUnit: TJvDBLookupCombo
          Left = 280
          Top = 80
          Width = 185
          Height = 21
          DataField = 'DEFAULT_DATE_UNIT_CODE'
          DataSource = dsData
          LookupField = 'THE_DATE_UNIT_CODE'
          LookupDisplay = 'THE_DATE_UNIT_NAME'
          LookupSource = dsDateUnits
          TabOrder = 2
        end
        object cbDateIntervalFormat: TJvDBLookupCombo
          Left = 280
          Top = 48
          Width = 185
          Height = 21
          DataField = 'DATE_INTERVAL_FORMAT_CODE'
          DataSource = dsData
          LookupField = 'DATE_INTERVAL_FORMAT_CODE'
          LookupDisplay = 'DATE_INTERVAL_FORMAT_NAME'
          LookupSource = dsDateIntervalFormats
          TabOrder = 1
        end
        object cbDateFormat: TJvDBLookupCombo
          Left = 280
          Top = 16
          Width = 185
          Height = 21
          DropDownCount = 2
          DataField = 'WEEK_DATE_FORMATTING'
          DataSource = dsData
          LookupField = 'DATE_FORMAT_CODE'
          LookupDisplay = 'DATE_FORMAT_NAME'
          LookupSource = dsDateFormats
          TabOrder = 0
        end
        object cbDatePeriodsYearPart: TJvDBLookupCombo
          Left = 280
          Top = 112
          Width = 185
          Height = 21
          DataField = 'DATE_PERIODS_YEAR_PART_CODE'
          DataSource = dsData
          LookupField = 'YEAR_PART_CODE'
          LookupDisplay = 'YEAR_PART_NAME'
          LookupSource = dsYearParts
          TabOrder = 3
        end
      end
      object gbCommonDefaultPriority: TGroupBox
        Left = 8
        Top = 224
        Width = 522
        Height = 49
        Anchors = [akLeft, akTop, akRight]
        Caption = ' '#1040#1074#1090#1086#1084#1072#1090#1080#1079#1080#1088#1072#1085#1080' '#1087#1083#1072#1085#1086#1074#1080' '#1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103'/'#1058#1077#1075#1083#1077#1085#1080#1103' '
        TabOrder = 2
        object lblDefaultPriority: TLabel
          Left = 48
          Top = 20
          Width = 144
          Height = 13
          Caption = #1055#1088#1080#1086#1088#1080#1090#1077#1090' '#1087#1086' '#1087#1086#1076#1088#1072#1079#1073#1080#1088#1072#1085#1077
          FocusControl = cbDefaultPriority
        end
        object cbDefaultPriority: TJvDBLookupCombo
          Left = 280
          Top = 16
          Width = 185
          Height = 21
          DataField = 'DEFAULT_PRIORITY_CODE'
          DataSource = dsData
          LookupField = 'PRIORITY_CODE'
          LookupDisplay = 'PRIORITY_CODE;PRIORITY_NAME'
          LookupSource = dsPriorities
          TabOrder = 0
        end
      end
      object gbCommonExceptEvents: TGroupBox
        Left = 8
        Top = 280
        Width = 522
        Height = 129
        Anchors = [akLeft, akTop, akRight]
        Caption = ' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103' ('#1053#1054') '
        TabOrder = 3
        object lblMinimalExceptEventHours: TLabel
          Left = 48
          Top = 19
          Width = 220
          Height = 13
          Caption = #1052#1080#1085#1080#1084#1072#1083#1085#1086#1089#1090' '#1085#1072' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1086' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077
        end
        object lblHours: TLabel
          Left = 423
          Top = 19
          Width = 23
          Height = 13
          Caption = #1095#1072#1089#1072
        end
        object lblExceptEventIndicatorRefreshInterval: TLabel
          Left = 48
          Top = 51
          Width = 304
          Height = 13
          Caption = #1054#1073#1085#1086#1074#1103#1074#1072#1085#1077' '#1085#1072' '#1080#1085#1076#1080#1082#1072#1090#1086#1088#1072' '#1079#1072' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1086' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' '#1085#1072
        end
        object lblMinutes: TLabel
          Left = 423
          Top = 51
          Width = 36
          Height = 13
          Caption = #1084#1080#1085#1091#1090#1080
        end
        object lblEECtrlMainProfession: TLabel
          Left = 48
          Top = 80
          Width = 345
          Height = 13
          Caption = #1055#1088#1086#1094#1077#1089#1085#1072' '#1056#1086#1083#1103' '#1079#1072' '#1043#1083#1072#1074#1077#1085' '#1054#1090#1075#1086#1074#1086#1088#1085#1080#1082' '#1087#1086' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103
        end
        object edtMinimalExceptEventHours: TDBEdit
          Left = 360
          Top = 16
          Width = 57
          Height = 21
          DataField = 'MINIMAL_EXCEPT_EVENT_HOURS'
          DataSource = dsData
          TabOrder = 0
        end
        object edtExceptEventIndicatorsRefreshInterval: TDBEdit
          Left = 360
          Top = 48
          Width = 57
          Height = 21
          DataField = 'EE_IND_REFRESH_INTERVAL'
          DataSource = dsData
          TabOrder = 1
        end
        inline frEECtrlMainProfession: TfrProfessionFieldEditFrameBald
          Left = 48
          Top = 95
          Width = 417
          Height = 22
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Constraints.MaxHeight = 49
          TabOrder = 2
          inherited gbTreeNode: TGroupBox
            Width = 433
            inherited pnlTreeNode: TPanel
              Width = 417
              inherited pnlTreeNodeName: TPanel
                Width = 270
                inherited edtTreeNodeName: TDBEdit
                  Width = 269
                end
              end
              inherited pnlTreeNodeNo: TPanel
                Left = 270
              end
              inherited pnlRightButtons: TPanel
                Left = 381
              end
            end
          end
        end
      end
      object gbCommonTreeNodeNos: TGroupBox
        Left = 8
        Top = 416
        Width = 522
        Height = 41
        Anchors = [akLeft, akTop, akRight]
        Caption = ' '#1062#1080#1092#1088#1086#1074#1072' '#1080#1076#1077#1085#1090#1080#1092#1080#1082#1072#1094#1080#1103' '#1085#1072' '#1086#1073#1077#1082#1090#1080' '#1074' '#1076#1098#1088#1074#1077#1090#1072#1090#1072' '
        TabOrder = 4
        object chbDefaultTreeCustomCode: TAbmesDBCheckBox
          Left = 144
          Top = 16
          Width = 233
          Height = 17
          Caption = #1050#1086#1087#1080#1088#1072#1085#1077' '#1085#1072' '#1082#1086#1076#1072' '#1085#1072' '#1088#1086#1076#1080#1090#1077#1083#1103' '#1074' '#1076#1098#1088#1074#1077#1090#1072
          DataField = 'DEFAULT_TREE_CUSTOM_CODE'
          DataSource = dsData
          TabOrder = 0
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
      end
      object gbCommonTimeZone: TGroupBox
        Left = 8
        Top = 160
        Width = 521
        Height = 57
        Caption = ' '#1063#1072#1089#1086#1074#1072' '#1079#1086#1085#1072' '#1085#1072' '#1073#1072#1079#1072#1090#1072' '#1086#1090' '#1076#1072#1085#1085#1080' '
        TabOrder = 1
        object cbTimeZone: TJvDBLookupCombo
          Left = 48
          Top = 24
          Width = 417
          Height = 21
          DataField = 'TIME_ZONE_ID'
          DataSource = dsData
          DisplayEmpty = '< '#1057#1098#1088#1074#1098#1088#1085#1072' '#1095#1072#1089#1086#1074#1072' '#1079#1086#1085#1072' >'
          LookupField = 'TIME_ZONE_ID'
          LookupDisplay = 'TIME_ZONE_NAME'
          LookupSource = dsTimeZones
          TabOrder = 0
        end
      end
      object gbCommonDatabaseIcon: TGroupBox
        Left = 8
        Top = 464
        Width = 522
        Height = 49
        Anchors = [akLeft, akTop, akRight]
        Caption = ' '#1048#1082#1086#1085#1072' '#1085#1072' '#1073#1072#1079#1072#1090#1072' '#1086#1090' '#1076#1072#1085#1085#1080' '
        TabOrder = 5
        object cbDatabaseIcon: TJvDBComboBox
          Left = 229
          Top = 16
          Width = 65
          Height = 22
          Style = csOwnerDrawFixed
          DataField = 'DATABASE_ICON_INDEX'
          DataSource = dsData
          EnableValues = False
          TabOrder = 0
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Tahoma'
          ListSettings.OutfilteredValueFont.Style = []
          OnDrawItem = cbDatabaseIconDrawItem
          OnMeasureItem = cbDatabaseIconMeasureItem
        end
      end
    end
    object tsSubjects: TTabSheet
      Caption = #1057#1091#1073#1077#1082#1090#1080
      ImageIndex = 9
      DesignSize = (
        539
        578)
      object gbSubjectsEmployeeAvailability: TGroupBox
        Left = 8
        Top = 8
        Width = 522
        Height = 243
        Anchors = [akLeft, akTop, akRight]
        Caption = ' '#1055#1088#1080#1089#1098#1089#1090#1074#1080#1103' '
        TabOrder = 0
        DesignSize = (
          522
          243)
        object gbSubjectsEmployeeAvailabilityParams: TGroupBox
          Left = 8
          Top = 16
          Width = 506
          Height = 145
          Anchors = [akLeft, akTop, akRight]
          Caption = ' '#1054#1089#1085#1086#1074#1085#1080' '#1087#1072#1088#1072#1084#1077#1090#1088#1080' '
          TabOrder = 0
          object lblMaxEmployeeAvailabilityHours: TLabel
            Left = 88
            Top = 19
            Width = 202
            Height = 13
            Caption = #1052#1072#1082#1089'. '#1087#1088#1086#1076#1098#1083#1078#1080#1090#1077#1083#1085#1086#1089#1090' '#1085#1072' '#1087#1088#1080#1089#1098#1089#1090#1074#1080#1077
            FocusControl = edtMaxEmployeeAvailabilityHours
          end
          object lblMaxEmployeeAvailabilityHoursMeasure: TLabel
            Left = 380
            Top = 19
            Width = 23
            Height = 13
            Caption = #1095#1072#1089#1072
          end
          object lblMinIntegralOvertimeHoursMeasure: TLabel
            Left = 380
            Top = 51
            Width = 23
            Height = 13
            Caption = #1084#1080#1085'.'
          end
          object lblMaxEmployeeMovementRegistrationHoursMeasure: TLabel
            Left = 380
            Top = 83
            Width = 23
            Height = 13
            Caption = #1084#1080#1085'.'
          end
          object lblMinIntegralOvertimeHours: TLabel
            Left = 88
            Top = 51
            Width = 233
            Height = 13
            Caption = #1052#1080#1085'. '#1087#1088#1086#1076#1098#1083#1078#1080#1090#1077#1083#1085#1086#1089#1090' '#1085#1072' '#1087#1086#1083#1086#1078'. '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1077
            FocusControl = edtMinIntegralOvertimeHours
          end
          object lblMaxEmployeeMovementRegistrationHours: TLabel
            Left = 88
            Top = 78
            Width = 202
            Height = 26
            Caption = 
              #1052#1072#1082#1089'. '#1088#1072#1079#1083#1080#1082#1072' '#1084#1077#1078#1076#1091' '#1084#1086#1084#1077#1085#1090#1072' '#1085#1072#13#10#1088#1077#1075#1080#1089#1090#1088#1080#1088#1072#1085#1077' '#1080' '#1084#1086#1084#1077#1085#1090#1072' '#1085#1072' '#1074#1093#1086#1076'/'#1080 +
              #1079#1093#1086#1076
            FocusControl = edtMaxEmployeeMovementRegistrationHours
          end
          object lblEmpAvailModifierStornoDays: TLabel
            Left = 88
            Top = 110
            Width = 246
            Height = 26
            Caption = 
              #1052#1072#1082#1089'. '#1088#1072#1079#1083#1080#1082#1072' '#1084'/'#1091' '#1076#1072#1090#1072#1090#1072' '#1085#1072' '#1088#1077#1075#1080#1089#1090#1088#1080#1088#1072#1085#1077' '#1080#13#10#1085#1072#1095'. '#1085#1072' '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1052#1086 +
              #1076#1080#1092#1080#1082#1072#1090#1086#1088' '#1085#1072' '#1055#1088#1080#1089#1098#1089#1090#1074#1080#1077
            FocusControl = edtEmpAvailModifierStornoDays
          end
          object edtEmpAvailModifierStornoDaysMeasure: TLabel
            Left = 380
            Top = 115
            Width = 18
            Height = 13
            Caption = #1076#1085#1080
          end
          object edtMaxEmployeeAvailabilityHours: TDBEdit
            Left = 344
            Top = 16
            Width = 33
            Height = 21
            DataField = 'MAX_EMP_AVAIL_HOURS'
            DataSource = dsData
            TabOrder = 0
          end
          object edtMinIntegralOvertimeHours: TDBEdit
            Left = 344
            Top = 48
            Width = 33
            Height = 21
            DataField = 'MIN_INTEGRAL_OVERTIME_HOURS'
            DataSource = dsData
            TabOrder = 1
          end
          object edtMaxEmployeeMovementRegistrationHours: TDBEdit
            Left = 344
            Top = 80
            Width = 33
            Height = 21
            DataField = 'MAX_EMP_MOVEMENT_REG_HOURS'
            DataSource = dsData
            TabOrder = 2
          end
          object edtEmpAvailModifierStornoDays: TDBEdit
            Left = 344
            Top = 112
            Width = 33
            Height = 21
            DataField = 'MAX_EAM_REG_DAYS'
            DataSource = dsData
            TabOrder = 3
          end
        end
        object gbSubjectsEmployeeAvailabilitySpecificProfessions: TGroupBox
          Left = 8
          Top = 168
          Width = 506
          Height = 65
          Anchors = [akLeft, akTop, akRight]
          Caption = ' '#1057#1087#1077#1094#1080#1092#1080#1095#1085#1080' '#1055#1088#1086#1094#1077#1089#1085#1080' '#1056#1086#1083#1080' '
          TabOrder = 1
          object lblEmpAvailModifierAuthorizeProfession: TLabel
            Left = 88
            Top = 16
            Width = 211
            Height = 13
            Caption = #1053#1072#1088#1077#1078#1076#1072#1097' '#1084#1086#1076#1080#1092#1080#1082#1072#1090#1086#1088#1080' '#1085#1072' '#1087#1088#1080#1089#1098#1089#1090#1074#1080#1103
          end
          inline frEmpAvailModifierAuthorizeProfession: TfrProfessionFieldEditFrameBald
            Left = 88
            Top = 31
            Width = 322
            Height = 22
            HorzScrollBar.Visible = False
            VertScrollBar.Visible = False
            Constraints.MaxHeight = 49
            TabOrder = 0
          end
        end
      end
    end
    object tsObjects: TTabSheet
      Caption = #1054#1073#1077#1082#1090#1080
      ImageIndex = 11
      DesignSize = (
        539
        578)
      object gbObjectsCommonGroups: TGroupBox
        Left = 8
        Top = 8
        Width = 522
        Height = 49
        Anchors = [akLeft, akTop, akRight]
        Caption = ' '#1058#1080#1087#1080#1079#1080#1088#1072#1097#1080' '#1049#1077#1088#1072#1088#1093#1080#1095#1085#1080' '#1057#1090#1088#1091#1082#1090#1091#1088#1080' '
        TabOrder = 0
        object lblCommonGroupsProductionOrdersMonths: TLabel
          Left = 16
          Top = 21
          Width = 178
          Height = 13
          Caption = #1057#1090'-'#1090#1080' '#1087#1086' '#1054#1055#1042' '#1074' '#1058#1049#1057' '#1079#1072' '#1087#1086#1089#1083#1077#1076#1085#1080#1090#1077
          FocusControl = edtCommonGroupsProductionOrdersMonths
        end
        object lblCommonGroupsProductionOrdersMonthsMeasure: TLabel
          Left = 262
          Top = 21
          Width = 38
          Height = 13
          Caption = #1084#1077#1089#1077#1094#1072
        end
        object edtCommonGroupsProductionOrdersMonths: TDBEdit
          Left = 208
          Top = 18
          Width = 49
          Height = 21
          DataField = 'COMMON_GROUPS_PROD_ORD_MONTHS'
          DataSource = dsData
          TabOrder = 0
        end
      end
      object gbObjectsEngineeringOrders: TGroupBox
        Left = 8
        Top = 64
        Width = 522
        Height = 49
        Anchors = [akLeft, akTop, akRight]
        Caption = ' '#1054#1088#1076#1077#1088#1080' '#1079#1072' '#1055#1088#1080#1085#1094#1080#1087#1085#1072' '#1048#1085#1078#1077#1085#1077#1088#1085#1072' '#1056#1072#1079#1088#1072#1073#1086#1090#1082#1072' '
        TabOrder = 1
        object lblEOActivatingWorkdays: TLabel
          Left = 16
          Top = 21
          Width = 363
          Height = 13
          Caption = 
            #1056#1072#1073#1086#1090#1085#1080' '#1076#1085#1080' '#1087#1088#1077#1076#1080' '#1089#1090#1072#1088#1090' '#1085#1072' '#1054#1055#1048#1056', '#1082#1086#1075#1072#1090#1086' '#1089#1077' '#1088#1072#1079#1088#1077#1096#1072#1074#1072' '#1072#1082#1090#1080#1074#1080#1088#1072#1085#1077#1090 +
            #1086
          FocusControl = edtEOActivatingWorkdays
        end
        object edtEOActivatingWorkdays: TDBEdit
          Left = 384
          Top = 18
          Width = 89
          Height = 21
          DataField = 'EO_ACTIVATING_WORKDAYS'
          DataSource = dsData
          TabOrder = 0
        end
      end
      object gbObjectsStoreRequests: TGroupBox
        Left = 8
        Top = 120
        Width = 522
        Height = 49
        Anchors = [akLeft, akTop, akRight]
        Caption = ' '#1047#1072#1103#1074#1082#1080' '
        TabOrder = 2
        object chbIsStoreRequestStoreDealDeptCopiedFromPSD: TAbmesDBCheckBox
          Left = 16
          Top = 20
          Width = 473
          Height = 17
          Caption = 
            #1055#1088#1080' '#1086#1090#1095#1080#1090#1072#1085#1077' '#1085#1072' '#1079#1072#1103#1074#1082#1072' '#1047#1072#1103#1074#1103#1074#1072#1097#1086#1090#1086'/'#1058#1077#1075#1083#1077#1097#1086#1090#1086' '#1058#1055' '#1076#1072' '#1089#1098#1086#1090#1074#1077#1090#1089#1090#1074#1072' '#1085 +
            #1072' '#1055#1083#1072#1085#1080#1088#1072#1085#1086#1090#1086
          DataField = 'IS_SR_SD_DEPT_COPIED_FROM_PSD'
          DataSource = dsData
          TabOrder = 0
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
      end
      object gbObjectsPrices: TGroupBox
        Left = 8
        Top = 176
        Width = 522
        Height = 49
        Anchors = [akLeft, akTop, akRight]
        Caption = ' '#1062#1077#1085#1080' '
        TabOrder = 3
        object chbDefaultIncludeVAT: TAbmesDBCheckBox
          Left = 16
          Top = 20
          Width = 257
          Height = 17
          Caption = #1055#1086#1082#1072#1079#1074#1072#1085#1077' '#1089' '#1074#1082#1083#1102#1095#1077#1085#1086' '#1044#1044#1057' '#1087#1086' '#1087#1086#1076#1088#1072#1079#1073#1080#1088#1072#1085#1077
          DataField = 'DEFAULT_INCLUDE_VAT'
          DataSource = dsData
          TabOrder = 0
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
      end
      object gbDefaultProductSpecRequirement: TGroupBox
        Left = 8
        Top = 232
        Width = 522
        Height = 49
        Anchors = [akLeft, akTop, akRight]
        Caption = ' '#1055'-'#1052#1054#1044#1045#1083'  '
        TabOrder = 4
        DesignSize = (
          522
          49)
        object lblDefaultProductSpecRequirement: TLabel
          Left = 16
          Top = 21
          Width = 214
          Height = 13
          Caption = #1048#1079#1080#1089#1082#1074#1072#1085#1077' '#1079#1072' '#1055'-'#1052#1054#1044#1045#1083' '#1087#1086' '#1087#1086#1076#1088#1072#1079#1073#1080#1088#1072#1085#1077
          FocusControl = cbDefaultProductSpecRequirement
        end
        object cbDefaultProductSpecRequirement: TJvDBLookupCombo
          Left = 240
          Top = 18
          Width = 89
          Height = 21
          DropDownWidth = 250
          EscapeKeyReset = False
          DeleteKeyClear = False
          DataField = 'DEFAULT_PRODUCT_SPEC_REQ_CODE'
          DataSource = dsData
          DisplayEmpty = ' '
          Anchors = [akLeft, akTop, akRight]
          LookupField = 'PRODUCT_SPEC_REQUIREMENT_CODE'
          LookupDisplay = 'PRODUCT_SPEC_REQUIREMENT_NAME'
          LookupSource = dsProductSpecRequirements
          TabOrder = 0
        end
      end
    end
    object tsDepts: TTabSheet
      Caption = #1054#1058#1057
      ImageIndex = 8
      DesignSize = (
        539
        578)
      object gbDeptsOccupations: TGroupBox
        Left = 8
        Top = 8
        Width = 522
        Height = 171
        Anchors = [akLeft, akTop, akRight]
        Caption = ' '#1044#1083#1098#1078#1085#1086#1089#1090#1080' '
        TabOrder = 0
        DesignSize = (
          522
          171)
        inline frOccupationRootProduct: TfrProductFieldEditFrame
          Left = 8
          Top = 16
          Width = 505
          Height = 44
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Constraints.MaxHeight = 49
          TabOrder = 0
          TabStop = True
          inherited gbTreeNode: TGroupBox
            Width = 505
            Height = 44
            Caption = ' '#1043#1088#1091#1087#1072' '#1086#1090' '#1059#1054#1073', '#1089#1074#1098#1088#1079#1072#1085#1072' '#1089' '#1044#1083#1098#1078#1085#1086#1089#1090#1080' '
            DesignSize = (
              505
              44)
            inherited pnlTreeNode: TPanel
              Width = 489
              inherited pnlTreeNodeName: TPanel
                Width = 307
                DesignSize = (
                  307
                  22)
                inherited edtTreeNodeName: TDBEdit
                  Width = 306
                end
              end
              inherited pnlTreeNodeNo: TPanel
                Left = 307
              end
              inherited pnlRightButtons: TPanel
                Left = 430
              end
            end
          end
        end
        object gbDeptsAssignmentsDiff: TGroupBox
          Left = 8
          Top = 72
          Width = 505
          Height = 89
          Anchors = [akLeft, akTop, akRight]
          Caption = 
            ' '#1055#1077#1088#1080#1086#1076' '#1085#1072' '#1087#1088#1077#1076#1091#1087#1088#1077#1078#1076#1077#1085#1080#1077' '#1079#1072' '#1087#1088#1077#1076#1089#1090#1086#1103#1097#1086' '#1080#1079#1090#1080#1095#1072#1085#1077' '#1085#1072' '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1044#1083 +
            #1098#1078#1085#1086#1089#1090#1085#1086' '#1053#1072#1079#1085#1072#1095#1077#1085#1080#1077' '
          TabOrder = 1
          object bvlDeptsAssignmentsDiff: TBevel
            Left = 56
            Top = 48
            Width = 380
            Height = 9
            Shape = bsTopLine
          end
          object lblAssignmentDaysDiff1: TLabel
            Left = 56
            Top = 29
            Width = 37
            Height = 13
            Caption = #1056#1077#1079#1077#1088#1074
          end
          object bvlLeftLine3: TBevel
            Left = 179
            Top = 44
            Width = 2
            Height = 10
            Shape = bsLeftLine
          end
          object lblAssignmentDaysDiff2: TLabel
            Left = 184
            Top = 29
            Width = 123
            Height = 13
            Caption = #1055#1088#1077#1076#1089#1090'. '#1086#1089#1074#1086#1073#1086#1078#1076#1072#1074#1072#1085#1077
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object bvlLeftLine4: TBevel
            Left = 311
            Top = 44
            Width = 2
            Height = 10
            Shape = bsLeftLine
          end
          object lblAssignmentDaysDiff3: TLabel
            Left = 321
            Top = 29
            Width = 117
            Height = 13
            Caption = #1048#1079#1090#1077#1082#1083#1086' '#1044#1083#1098#1078#1085'. '#1053#1072#1079#1085'.'
          end
          object lblZero2: TLabel
            Left = 309
            Top = 60
            Width = 6
            Height = 13
            Caption = '0'
          end
          object lblCalendarDays: TLabel
            Left = 193
            Top = 60
            Width = 18
            Height = 13
            Caption = #1082'.'#1076'.'
          end
          object shpAssignmentDaysDiff3: TShape
            Left = 313
            Top = 49
            Width = 123
            Height = 1
            Pen.Color = 13816575
          end
          object shpAssignmentDaysDiff2: TShape
            Left = 180
            Top = 49
            Width = 131
            Height = 1
            Pen.Color = 10813439
          end
          object shpAssignmentDaysDiff1: TShape
            Left = 56
            Top = 49
            Width = 123
            Height = 1
            Pen.Color = 12582847
          end
          object edtAssignmentDaysDiff: TDBEdit
            Left = 165
            Top = 56
            Width = 25
            Height = 21
            DataField = 'OCC_ASSIGNMENT_DAYS_DIFF'
            DataSource = dsData
            TabOrder = 0
          end
        end
      end
      object gbOccupationEmployeeAssignments: TGroupBox
        Left = 8
        Top = 184
        Width = 521
        Height = 49
        Caption = ' '#1044#1083#1098#1078#1085#1086#1089#1090#1085#1080' '#1053#1072#1079#1085#1072#1095#1077#1085#1080#1103' '
        TabOrder = 1
        object chkAllowNonMainOnlyOccEmpAssignments: TAbmesDBCheckBox
          Left = 16
          Top = 24
          Width = 497
          Height = 17
          Caption = 
            #1042#1098#1079#1084#1086#1078#1085#1086' '#1053#1072#1079#1085#1072#1095#1077#1085#1080#1077' '#1085#1072' '#1055#1088#1086#1080#1079#1074#1086#1076#1085#1080' '#1044#1083#1098#1078#1085#1086#1089#1090#1080' '#1073#1077#1079' '#1085#1072#1083#1080#1095#1080#1077' '#1085#1072' '#1053#1072#1079#1085#1072 +
            #1095#1077#1085#1080#1077' '#1085#1072' '#1054#1089#1085#1086#1074#1085#1072
          DataField = 'ALLOW_NON_MAIN_ONLY_OE'
          DataSource = dsData
          TabOrder = 0
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
      end
    end
    object tsSales: TTabSheet
      Caption = #1055#1088#1086#1076#1072#1078#1073#1080
      ImageIndex = 2
      DesignSize = (
        539
        578)
      object gbSalesSaleProductionOrder: TGroupBox
        Left = 8
        Top = 8
        Width = 522
        Height = 91
        Anchors = [akLeft, akTop, akRight]
        Caption = 
          ' '#1054#1088#1076#1077#1088' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1042#1098#1090#1088#1077#1096#1077#1085' '#1083#1080#1085#1077#1081#1085#1086' '#1089#1074#1098#1088#1079#1072#1085' '#1089' '#1054#1088#1076#1077#1088' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1055#1088#1086#1076 +
          #1072#1078#1073#1080' '
        TabOrder = 0
        DesignSize = (
          522
          91)
        object gbSalesDefaultWorkPriority: TGroupBox
          Left = 8
          Top = 24
          Width = 506
          Height = 57
          Anchors = [akLeft, akTop, akRight]
          Caption = 
            '                                                                ' +
            '                                          '
          TabOrder = 1
          DesignSize = (
            506
            57)
          object lblDefaultWorkPriority: TLabel
            Left = 72
            Top = 28
            Width = 208
            Height = 13
            Caption = #1054#1087#1077#1088#1072#1090#1080#1074#1077#1085' '#1055#1088#1080#1086#1088#1080#1090#1077#1090' '#1087#1086' '#1087#1086#1076#1088#1072#1079#1073#1080#1088#1072#1085#1077
            FocusControl = cbDefaultWorkPriority
          end
          object cbDefaultWorkPriority: TJvDBLookupCombo
            Left = 288
            Top = 24
            Width = 129
            Height = 21
            DropDownWidth = 250
            DeleteKeyClear = False
            DataField = 'DEFAULT_WORK_PRIORITY_CODE'
            DataSource = dsData
            Anchors = [akLeft, akTop, akRight]
            LookupField = 'WORK_PRIORITY_CODE'
            LookupDisplay = 'WORK_PRIORITY_NO;WORK_PRIORITY_NAME'
            LookupSource = dsWorkPriorities
            TabOrder = 0
          end
        end
        object chkIsSaleManufactureQuantityAutoLoaded: TAbmesDBCheckBox
          Left = 20
          Top = 22
          Width = 313
          Height = 18
          Caption = #1040#1074#1090#1086#1084#1072#1090#1080#1095#1085#1086' '#1089#1098#1079#1076#1072#1074#1072#1085#1077' '#1085#1072' '#1054#1055#1042' '#1083#1080#1085#1077#1081#1085#1086' '#1089#1074#1098#1088#1079#1072#1085' '#1089' '#1054#1055#1055
          DataField = 'IS_SALE_MFG_QTY_AUTO_LOADED'
          DataSource = dsData
          TabOrder = 0
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
      end
      object gbReloadGroupSaleDefaults: TGroupBox
        Left = 8
        Top = 104
        Width = 521
        Height = 81
        Caption = ' '#1055#1086#1074#1090#1086#1088#1085#1086' '#1054#1090#1074#1072#1088#1103#1085#1077' '#1085#1072' '#1055#1044#1050' '#1087#1086' '#1053#1072#1083#1080#1095#1085#1086#1089#1090' '#1089#1083#1077#1076' '#1085#1072#1090#1080#1089#1082#1072#1085#1077' '#1085#1072' '#1054#1050' '
        TabOrder = 1
        object chkDefaultReloadGroupSaleOnInsert: TAbmesDBCheckBox
          Left = 16
          Top = 24
          Width = 497
          Height = 17
          Caption = #1055#1086#1074#1090#1086#1088#1085#1086' '#1054#1090#1074#1072#1088#1103#1085#1077' '#1085#1072' '#1055#1044#1050' '#1087#1086' '#1053#1072#1083#1080#1095#1085#1086#1089#1090' '#1089#1083#1077#1076' '#1044#1086#1073#1072#1074#1103#1085#1077
          DataField = 'DEFAULT_RELOAD_GROUP_SALE_INS'
          DataSource = dsData
          TabOrder = 0
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object chkDefaultReloadGroupSaleOnEdit: TAbmesDBCheckBox
          Left = 16
          Top = 48
          Width = 497
          Height = 17
          Caption = #1055#1086#1074#1090#1086#1088#1085#1086' '#1054#1090#1074#1072#1088#1103#1085#1077' '#1085#1072' '#1055#1044#1050' '#1087#1086' '#1053#1072#1083#1080#1095#1085#1086#1089#1090' '#1089#1083#1077#1076' '#1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077
          DataField = 'DEFAULT_RELOAD_GROUP_SALE_EDT'
          DataSource = dsData
          TabOrder = 1
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
      end
    end
    object tsProductionOrders: TTabSheet
      Caption = #1054#1055#1042' '#1080' '#1052#1054#1044#1045#1083'-'#1080
      ImageIndex = 6
      DesignSize = (
        539
        578)
      object gbProductionOrdersProductionOrders: TGroupBox
        Left = 8
        Top = 8
        Width = 522
        Height = 161
        Anchors = [akLeft, akTop, akRight]
        Caption = ' '#1054#1055#1042' '
        TabOrder = 0
        object lblMaxSaleAddedValDiffPercent: TLabel
          Left = 72
          Top = 125
          Width = 282
          Height = 26
          Caption = 
            #1055#1088#1077#1076#1091#1087#1088#1077#1078#1076#1077#1085#1080#1077' '#1087#1088#1080' '#1087#1088#1080#1082#1083#1102#1095#1074#1072#1085#1077' '#1085#1072' '#1054#1055#1042', '#1074' '#1089#1083#1091#1095#1072#1081' '#1095#1077#13#10#1088#1072#1079#1083#1080#1082#1072#1090#1072' '#1084#1077 +
            #1078#1076#1091' '#1086#1090#1095#1077#1090#1085#1072' '#1080' '#1087#1083#1072#1085#1086#1074#1072' '#1042#1057'1 '#1077' '#1087#1086#1074#1077#1095#1077' '#1086#1090
        end
        object lblMaxSaleAddedValDiffPercentMeasure: TLabel
          Left = 430
          Top = 131
          Width = 8
          Height = 13
          Caption = '%'
        end
        object lblMgrSalePriority: TLabel
          Left = 72
          Top = 101
          Width = 185
          Height = 13
          Caption = #1055#1088#1080#1086#1088#1080#1090#1077#1090' '#1085#1072' '#1054#1055#1042' '#1087#1086' '#1087#1086#1076#1088#1072#1079#1073#1080#1088#1072#1085#1077
          FocusControl = cbMgrSalePriority
        end
        object gbProductionOrdersLateDays: TGroupBox
          Left = 72
          Top = 16
          Width = 369
          Height = 73
          Caption = ' '#1043#1088#1072#1085#1080#1094#1072' '#1079#1072' '#1056#1080#1089#1082#1086#1074#1086'/'#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1086' '#1079#1072#1082#1098#1089#1085#1077#1085#1080#1077' '
          TabOrder = 0
          object lblProductionOrderLateDays1: TLabel
            Left = 32
            Top = 17
            Width = 83
            Height = 13
            Caption = #1041#1077#1079' '#1079#1072#1082#1098#1089#1085#1077#1085#1080#1077
          end
          object bvlProductionOrdersLateDays: TBevel
            Left = 32
            Top = 36
            Width = 305
            Height = 9
            Shape = bsTopLine
          end
          object bvlLeftLine1: TBevel
            Left = 123
            Top = 32
            Width = 2
            Height = 10
            Shape = bsLeftLine
          end
          object lblProductionOrderLateDays2: TLabel
            Left = 153
            Top = 17
            Width = 43
            Height = 13
            Caption = #1056#1080#1089#1082#1086#1074#1086
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object bvlLeftLine2: TBevel
            Left = 231
            Top = 32
            Width = 2
            Height = 10
            Shape = bsLeftLine
          end
          object lblProductionOrderLateDays3: TLabel
            Left = 249
            Top = 17
            Width = 68
            Height = 13
            Caption = #1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1086
          end
          object lblZero: TLabel
            Left = 120
            Top = 48
            Width = 6
            Height = 13
            Caption = '0'
          end
          object lblDays: TLabel
            Left = 249
            Top = 48
            Width = 18
            Height = 13
            Caption = #1076#1085#1080
          end
          object shpProductionOrderLateDays3: TShape
            Left = 231
            Top = 37
            Width = 106
            Height = 1
            Pen.Color = 10736627
          end
          object shpProductionOrderLateDays2: TShape
            Left = 124
            Top = 37
            Width = 106
            Height = 1
            Pen.Color = clYellow
          end
          object edtProductionOrderLateDays: TDBEdit
            Left = 221
            Top = 44
            Width = 25
            Height = 21
            DataField = 'PRODUCTION_ORDER_LATE_DAYS'
            DataSource = dsData
            TabOrder = 0
          end
        end
        object edtMaxSaleAddedValDiffPercent: TDBEdit
          Left = 368
          Top = 128
          Width = 57
          Height = 21
          DataField = 'MAX_SALE_INV_VAL_DIFF_PERCENT'
          DataSource = dsData
          TabOrder = 2
        end
        object cbMgrSalePriority: TJvDBLookupCombo
          Left = 368
          Top = 96
          Width = 73
          Height = 21
          DropDownWidth = 200
          DataField = 'DEFAULT_MGR_SALE_PRIORITY_CODE'
          DataSource = dsData
          LookupField = 'PRIORITY_CODE'
          LookupDisplay = 'PRIORITY_CODE;PRIORITY_NAME'
          LookupSource = dsPriorities
          TabOrder = 1
        end
      end
      object gbProductionOrdersModels: TGroupBox
        Left = 8
        Top = 176
        Width = 522
        Height = 185
        Anchors = [akLeft, akTop, akRight]
        Caption = ' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1052#1054#1044#1045#1083'-'#1080' '
        TabOrder = 1
        object lblProductionLevel: TLabel
          Left = 16
          Top = 19
          Width = 103
          Height = 13
          Caption = #1053#1080#1074#1086' '#1085#1072' '#1091#1087#1088#1072#1074#1083#1077#1085#1080#1077
          FocusControl = cbProductionLevel
        end
        object lblMllcIndicatorRefreshInterval: TLabel
          Left = 16
          Top = 51
          Width = 210
          Height = 13
          Caption = #1054#1073#1085#1086#1074#1103#1074#1072#1085#1077' '#1085#1072' '#1080#1085#1076#1080#1082#1072#1090#1086#1088#1072' '#1079#1072' '#1079#1072#1084#1077#1085#1080' '#1085#1072
          FocusControl = edtMllcIndicatorRefreshInterval
        end
        object lblMllcIndicatorRefreshIntervalMinutes: TLabel
          Left = 324
          Top = 51
          Width = 23
          Height = 13
          Caption = #1084#1080#1085'.'
        end
        object lblMLLimitingWorkdays: TLabel
          Left = 16
          Top = 75
          Width = 248
          Height = 26
          Caption = 
            #1056#1072#1073#1086#1090#1085#1080' '#1076#1085#1080' '#1087#1088#1077#1076#1080' '#1076#1072#1090#1072#1090#1072' '#1085#1072' '#1089#1090#1072#1088#1090' '#1085#1072' '#1054#1055#1042','#13#10#1082#1086#1075#1072#1090#1086' '#1089#1077' '#1088#1072#1079#1088#1077#1096#1072#1074#1072' '#1072 +
            #1082#1090#1080#1074#1080#1088#1072#1085#1077#1090#1086' '#1085#1072' '#1056'-'#1052#1054#1044#1045#1083
        end
        object cbProductionLevel: TJvDBComboBox
          Left = 280
          Top = 16
          Width = 225
          Height = 21
          DataField = 'PRODUCTION_LEVEL_CODE'
          DataSource = dsData
          Items.Strings = (
            #1045#1090#1072#1087#1085#1086
            #1045#1090#1072#1087#1085#1086', '#1089' '#1087#1086#1076#1075#1086#1090#1086#1074#1082#1072' '#1079#1072' '#1054#1087#1077#1088#1072#1094#1080#1086#1085#1085#1086
            #1054#1087#1077#1088#1072#1094#1080#1086#1085#1085#1086)
          TabOrder = 0
          Values.Strings = (
            '1'
            '2'
            '3')
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
          ListSettings.OutfilteredValueFont.Style = []
        end
        object edtMllcIndicatorRefreshInterval: TDBEdit
          Left = 280
          Top = 48
          Width = 41
          Height = 21
          DataField = 'MLLC_IND_REFRESH_INTERVAL'
          DataSource = dsData
          TabOrder = 1
        end
        object chbAutoLimitingDefaultModels: TAbmesDBCheckBox
          Left = 16
          Top = 106
          Width = 241
          Height = 17
          Caption = #1040#1082#1090#1080#1074#1080#1088#1072#1085#1077' '#1085#1072' '#1056'-'#1052#1054#1044#1045#1083' '#1087#1086' '#1087#1086#1076#1088#1072#1079#1073#1080#1088#1072#1085#1077
          DataField = 'AUTO_LIMITED_DEFAULT_MODELS'
          DataSource = dsData
          TabOrder = 3
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object cbAllowLateMLLimiting: TAbmesDBCheckBox
          Left = 16
          Top = 124
          Width = 385
          Height = 17
          Caption = #1042#1098#1079#1084#1086#1078#1085#1086#1089#1090' '#1079#1072' '#1072#1082#1090#1080#1074#1080#1088#1072#1085#1077' '#1085#1072' '#1056'-'#1052#1054#1044#1045#1083' '#1089#1083#1077#1076' '#1076#1072#1090#1072#1090#1072' '#1085#1072' '#1089#1090#1072#1088#1090' '#1085#1072' '#1054#1055#1042
          DataField = 'ALLOW_LATE_ML_LIMITING'
          DataSource = dsData
          TabOrder = 4
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object edtMLLimitingWorkdays: TDBEdit
          Left = 280
          Top = 80
          Width = 57
          Height = 21
          DataField = 'ML_LIMITING_WORKDAYS'
          DataSource = dsData
          TabOrder = 2
        end
        object cbOperationMovementRequiresOccupationDept: TAbmesDBCheckBox
          Left = 16
          Top = 142
          Width = 489
          Height = 17
          Caption = 
            #1054#1087#1077#1088#1072#1094#1080#1086#1085#1085#1080' '#1044#1074#1080#1078#1077#1085#1080#1103' '#1089#1072#1084#1086' '#1086#1090' '#1057#1083#1091#1078#1080#1090#1077#1083#1080' '#1089' '#1054#1087#1058#1055' '#1074' '#1055#1086#1083#1077#1074#1080#1103' '#1054#1073#1093#1074#1072#1090' '#1085 +
            #1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1090#1072
          DataField = 'OM_REQUIRES_OCC_DEPT'
          DataSource = dsData
          TabOrder = 5
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object chbOMRequiresSpecControlFirst: TAbmesDBCheckBox
          Left = 16
          Top = 160
          Width = 329
          Height = 17
          Caption = #1054#1087#1077#1088#1072#1094#1080#1086#1085#1085#1080' '#1044#1074#1080#1078#1077#1085#1080#1103' '#1089#1072#1084#1086' '#1089#1083#1077#1076' '#1057#1087#1077#1094#1080#1072#1083#1080#1079#1080#1088#1072#1085' '#1050#1086#1085#1090#1088#1086#1083
          DataField = 'OM_REQUIRES_SPEC_CONTROL_FIRST'
          DataSource = dsData
          TabOrder = 6
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
      end
      object gbProductionOrdersOperations: TGroupBox
        Left = 8
        Top = 368
        Width = 522
        Height = 57
        Anchors = [akLeft, akTop, akRight]
        Caption = ' '#1055#1088#1080#1085#1094#1080#1087#1085#1080' '#1080' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1052#1054#1044#1045#1083'-'#1080' '
        TabOrder = 2
        object lblOperationWorkdaysDevPercent: TLabel
          Left = 72
          Top = 20
          Width = 287
          Height = 26
          Caption = 
            #1055#1088#1077#1076#1091#1087#1088#1077#1078#1076#1077#1085#1080#1077', '#1074' '#1089#1083#1091#1095#1072#1081' '#1095#1077' '#1088#1072#1079#1083#1080#1082#1072#1090#1072' '#1084#1077#1078#1076#1091' '#1088#1072#1073'. '#1076#1085#1080#13#10#1079#1072' '#1086#1087#1077#1088#1072#1094#1080 +
            #1103' '#1080' '#1079#1072#1076#1072#1076#1077#1085#1072' '#1087#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1085#1086#1089#1090' '#1077' '#1087#1086#1074#1077#1095#1077' '#1086#1090
          FocusControl = edtOperationWorkdaysDevPercent
        end
        object lblPercents: TLabel
          Left = 430
          Top = 28
          Width = 8
          Height = 13
          Caption = '%'
        end
        object edtOperationWorkdaysDevPercent: TDBEdit
          Left = 368
          Top = 24
          Width = 57
          Height = 21
          DataField = 'OPERATION_WORKDAYS_DEV_PERCENT'
          DataSource = dsData
          TabOrder = 0
        end
      end
      object gbProductionOrdersSpecificProfessions: TGroupBox
        Left = 8
        Top = 431
        Width = 522
        Height = 141
        Caption = ' '#1057#1087#1077#1094#1080#1092#1080#1095#1085#1080' '#1055#1088#1086#1094#1077#1089#1085#1080' '#1056#1086#1083#1080' '
        TabOrder = 3
        object lblProductionOrganizerProfession: TLabel
          Left = 16
          Top = 19
          Width = 66
          Height = 13
          Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1090#1086#1088
        end
        object lblOKIDUProfesison: TLabel
          Left = 16
          Top = 83
          Width = 109
          Height = 13
          Caption = #1048#1085#1078#1077#1085#1077#1088' '#1052#1054#1044#1045#1083'-'#1080#1077#1088
        end
        object lblManagerOKIDUProfession: TLabel
          Left = 16
          Top = 51
          Width = 55
          Height = 13
          Caption = #1055#1086#1088#1098#1095#1080#1090#1077#1083
        end
        object lblSpecialControlProfession: TLabel
          Left = 16
          Top = 115
          Width = 124
          Height = 13
          Caption = #1057#1087#1077#1094#1080#1072#1083#1080#1079#1080#1088#1072#1085' '#1050#1086#1085#1090#1088#1086#1083
        end
        inline frProductionOrganizerProfession: TfrProfessionFieldEditFrameBald
          Left = 159
          Top = 16
          Width = 322
          Height = 22
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Constraints.MaxHeight = 49
          TabOrder = 0
        end
        inline frManagerOKIDUProfession: TfrProfessionFieldEditFrameBald
          Left = 159
          Top = 48
          Width = 322
          Height = 22
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Constraints.MaxHeight = 49
          TabOrder = 1
        end
        inline frOKIDUProfesison: TfrProfessionFieldEditFrameBald
          Left = 159
          Top = 80
          Width = 322
          Height = 22
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Constraints.MaxHeight = 49
          TabOrder = 2
        end
        inline frSpecialControlProfession: TfrProfessionFieldEditFrameBald
          Left = 159
          Top = 112
          Width = 322
          Height = 22
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Constraints.MaxHeight = 49
          TabOrder = 3
        end
      end
    end
    object tsDeliveries: TTabSheet
      Caption = #1044#1086#1089#1090#1072#1074#1082#1080
      ImageIndex = 5
      DesignSize = (
        539
        578)
      object gbDeliveriesDeliveryGroups: TGroupBox
        Left = 8
        Top = 8
        Width = 522
        Height = 81
        Anchors = [akLeft, akTop, akRight]
        Caption = ' '#1055#1072#1082#1077#1090#1080' '#1044#1080#1072#1083#1086#1079#1080' '#1089' '#1044#1086#1089#1090#1072#1074#1095#1080#1094#1080' '
        TabOrder = 0
        object lblMaxDCDOverheadPercent: TLabel
          Left = 64
          Top = 19
          Width = 318
          Height = 13
          Caption = #1052#1072#1082#1089#1080#1084#1072#1083#1085#1086' '#1079#1072#1074#1080#1096#1072#1074#1072#1085#1077' '#1085#1072' '#1076#1086#1075#1086#1074#1086#1088#1077#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1087#1088#1080' '#1055#1044#1044
        end
        object lblMaxDCDOverheadPercentMeasure: TLabel
          Left = 428
          Top = 20
          Width = 8
          Height = 13
          Caption = '%'
        end
        object lblDefaultDCDMode: TLabel
          Left = 64
          Top = 51
          Width = 169
          Height = 13
          Caption = #1056#1077#1078#1080#1084' '#1085#1072' '#1055#1044#1044' '#1087#1086' '#1087#1086#1076#1088#1072#1079#1073#1080#1088#1072#1085#1077
        end
        object edtMaxDCDOverheadPercent: TDBEdit
          Left = 392
          Top = 16
          Width = 33
          Height = 21
          DataField = 'MAX_DCD_OVERHEAD_PERCENT'
          DataSource = dsData
          TabOrder = 0
        end
        object cbDefaultDCDMode: TJvDBLookupCombo
          Left = 240
          Top = 48
          Width = 89
          Height = 21
          DropDownCount = 3
          DataField = 'DEFAULT_DCD_MODE_CODE'
          DataSource = dsData
          LookupField = 'DCD_MODE_CODE'
          LookupDisplay = 'DCD_MODE_NAME'
          LookupSource = dsDCDModes
          TabOrder = 1
        end
      end
    end
    object tsFinance: TTabSheet
      Caption = #1060#1080#1085#1072#1085#1089#1080#1088#1072#1085#1077
      ImageIndex = 3
      DesignSize = (
        539
        578)
      object gbFinanceInvoices: TGroupBox
        Left = 8
        Top = 168
        Width = 522
        Height = 81
        Anchors = [akLeft, akTop, akRight]
        Caption = ' '#1060#1072#1082#1090#1091#1088#1080' '
        TabOrder = 1
        DesignSize = (
          522
          81)
        object lblMaxRangeInvoiceNo: TLabel
          Left = 424
          Top = 67
          Width = 6
          Height = 13
          Caption = #8212
          FocusControl = edtMaxRangeInvoiceNo
          Visible = False
        end
        object lblInvoicesNoRange: TLabel
          Left = 136
          Top = 67
          Width = 167
          Height = 13
          Caption = #1044#1080#1072#1087#1072#1079#1086#1085' '#1079#1072' '#1085#1086#1084#1077#1088#1072' '#1085#1072' '#1092#1072#1082#1090#1091#1088#1080
          Visible = False
        end
        object chkIsDiscountPercentShown: TAbmesDBCheckBox
          Left = 56
          Top = 20
          Width = 345
          Height = 21
          Anchors = [akTop]
          Caption = #1055#1086#1082#1072#1079#1074#1072#1085#1077' '#1085#1072' '#1082#1086#1083#1086#1085#1072#1090#1072' '#39'% '#1086#1090#1089#1090#1098#1087#1082#1072#39' '#1074' '#1088#1077#1075#1080#1089#1090#1098#1088#1072
          DataField = 'IS_DISCOUNT_PERCENT_SHOWN'
          DataSource = dsData
          TabOrder = 0
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object edtMinRangeInvoiceNo: TDBEdit
          Left = 320
          Top = 64
          Width = 97
          Height = 21
          DataField = 'MIN_RANGE_INVOICE_NO'
          DataSource = dsData
          TabOrder = 1
          Visible = False
        end
        object edtMaxRangeInvoiceNo: TDBEdit
          Left = 440
          Top = 64
          Width = 97
          Height = 21
          DataField = 'MAX_RANGE_INVOICE_NO'
          DataSource = dsData
          TabOrder = 2
          Visible = False
        end
        object chkIsDiscountPercentShownOnPrint: TAbmesDBCheckBox
          Left = 56
          Top = 44
          Width = 345
          Height = 21
          Anchors = [akTop]
          Caption = #1055#1086#1082#1072#1079#1074#1072#1085#1077' '#1085#1072' '#1082#1086#1083#1086#1085#1072#1090#1072' '#39'% '#1086#1090#1089#1090#1098#1087#1082#1072#39' '#1087#1088#1080' '#1087#1077#1095#1072#1090
          DataField = 'IS_DISCOUNT_PERCENT_SHOWN_PRN'
          DataSource = dsData
          TabOrder = 3
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
      end
      object gbFinanceFinOrders: TGroupBox
        Left = 8
        Top = 8
        Width = 522
        Height = 153
        Anchors = [akLeft, akTop, akRight]
        Caption = ' '#1054#1088#1076#1077#1088' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1060#1080#1085#1072#1085#1089#1086#1074' '
        TabOrder = 0
        DesignSize = (
          522
          153)
        object lblFinOrderRequirement: TLabel
          Left = 56
          Top = 19
          Width = 101
          Height = 13
          Caption = #1048#1079#1080#1089#1082#1074#1072#1085#1077' '#1079#1072' '#1054#1055#1060
        end
        object lblDefaultFinOrderBranch: TLabel
          Left = 56
          Top = 44
          Width = 123
          Height = 13
          Caption = #1058#1055' '#1043#1083'. '#1087#1086' '#1087#1086#1076#1088#1072#1079#1073#1080#1088#1072#1085#1077
          FocusControl = cbDefaultFinOrderBranch
        end
        object cbFinOrderRequirement: TJvDBLookupCombo
          Left = 240
          Top = 16
          Width = 217
          Height = 21
          DropDownCount = 4
          DataField = 'FIN_ORDER_REQUIREMENT_CODE'
          DataSource = dsData
          LookupField = 'FIN_ORDER_REQUIREMENT_CODE'
          LookupDisplay = 'FIN_ORDER_REQUIREMENT_NAME'
          LookupSource = dsFinOrderRequirements
          TabOrder = 0
        end
        object cbDefaultFinOrderBranch: TJvDBLookupCombo
          Left = 240
          Top = 40
          Width = 217
          Height = 21
          DeleteKeyClear = False
          DataField = 'DEFAULT_FO_BRANCH_CODE'
          DataSource = dsData
          DisplayEmpty = ' '
          Anchors = [akLeft, akTop, akRight]
          LookupField = 'BRANCH_CODE'
          LookupDisplay = 'BRANCH_NO;BRANCH_IDENTIFIER'
          LookupSource = dsBranches
          TabOrder = 1
        end
        inline frDefaultFinOrderExecDept: TfrDeptFieldEditFrame
          Left = 56
          Top = 69
          Width = 401
          Height = 49
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Constraints.MaxHeight = 49
          TabOrder = 2
          inherited gbTreeNode: TGroupBox
            Width = 401
            Caption = ' '#1058#1055' '#1056#1077#1072#1083#1080#1079#1072#1090#1086#1088' '#1087#1086' '#1087#1086#1076#1088#1072#1079#1073#1080#1088#1072#1085#1077' '
            inherited pnlTreeNode: TPanel
              Width = 385
              inherited pnlTreeNodeName: TPanel
                Width = 238
                inherited edtTreeNodeName: TDBEdit
                  Width = 237
                end
              end
              inherited pnlTreeNodeNo: TPanel
                Left = 238
              end
              inherited pnlRightButtons: TPanel
                Left = 349
              end
            end
          end
        end
        object chbOpenNewFinOrder: TAbmesDBCheckBox
          Left = 56
          Top = 124
          Width = 257
          Height = 21
          Caption = #1054#1090#1074#1072#1088#1103#1085#1077' '#1085#1072' '#1056'-'#1052#1054#1044#1045#1083' '#1085#1072' '#1085#1086#1074#1086#1089#1098#1079#1076#1072#1076#1077#1085' '#1054#1055#1060
          DataField = 'OPEN_NEW_FIN_ORDER'
          DataSource = dsData
          TabOrder = 3
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
      end
    end
  end
  inherited alActions: TActionList
    Left = 8
    Top = 432
    inherited actForm: TAction
      Caption = #1050#1086#1085#1092#1080#1075#1091#1088#1080#1088#1072#1085#1077
    end
  end
  inherited dsData: TDataSource
    Left = 16
  end
  inherited cdsData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conLogin
    ProviderName = 'prvCommonOptions'
    BeforeOpen = cdsDataBeforeOpen
    AfterOpen = cdsDataAfterOpen
    AfterClose = cdsDataAfterClose
    BeforePost = cdsDataBeforePost
    Left = 65520
    object cdsDataCODE: TAbmesFloatField
      FieldName = 'CODE'
      Required = True
      FieldValueType = fvtInteger
    end
    object cdsDataDEFAULT_TREE_CUSTOM_CODE: TAbmesFloatField
      DisplayLabel = #1050#1086#1087#1080#1088#1072#1085#1077' '#1085#1072' '#1082#1086#1076#1072' '#1085#1072' '#1088#1086#1076#1080#1090#1077#1083#1103' '#1074' '#1076#1098#1088#1074#1077#1090#1072
      FieldName = 'DEFAULT_TREE_CUSTOM_CODE'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsDataDEFAULT_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'DEFAULT_PRIORITY_CODE'
      Required = True
      FieldValueType = fvtInteger
    end
    object cdsDataDEFAULT_MGR_SALE_PRIORITY_CODE: TAbmesFloatField
      DisplayLabel = #1055#1088#1080#1086#1088#1080#1090#1077#1090' '#1085#1072' '#1054#1055' '#1087#1086' '#1087#1086#1076#1088#1072#1079#1073#1080#1088#1072#1085#1077
      FieldName = 'DEFAULT_MGR_SALE_PRIORITY_CODE'
      Required = True
      FieldValueType = fvtInteger
    end
    object cdsDataMIN_RANGE_INVOICE_NO: TAbmesFloatField
      FieldName = 'MIN_RANGE_INVOICE_NO'
      Required = True
    end
    object cdsDataMAX_RANGE_INVOICE_NO: TAbmesFloatField
      FieldName = 'MAX_RANGE_INVOICE_NO'
      Required = True
    end
    object cdsDataDEFAULT_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'DEFAULT_DATE_UNIT_CODE'
      Required = True
    end
    object cdsDataMLLC_IND_REFRESH_INTERVAL: TAbmesFloatField
      DisplayLabel = #1054#1073#1085#1086#1074#1103#1074#1072#1085#1077' '#1085#1072' '#1080#1085#1076#1080#1082#1072#1090#1086#1088#1072' '#1079#1072' '#1079#1072#1084#1103#1085#1072
      FieldName = 'MLLC_IND_REFRESH_INTERVAL'
      Required = True
      MaxValue = 60.000000000000000000
      MinValue = 1.000000000000000000
    end
    object cdsDataAUTO_LIMITED_DEFAULT_MODELS: TAbmesFloatField
      FieldName = 'AUTO_LIMITED_DEFAULT_MODELS'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsDataML_LIMITING_WORKDAYS: TAbmesFloatField
      DisplayLabel = 
        #1056#1072#1073#1086#1090#1085#1080' '#1076#1085#1080' '#1087#1088#1077#1076#1080' '#1076#1072#1090#1072#1090#1072' '#1085#1072' '#1089#1090#1072#1088#1090' '#1085#1072' '#1054#1055#1042', '#1082#1086#1075#1072#1090#1086' '#1089#1077' '#1088#1072#1079#1088#1077#1096#1072#1074#1072' '#1072#1082 +
        #1090#1080#1074#1080#1088#1072#1085#1077#1090#1086' '#1085#1072' '#1056'-'#1052#1054#1044#1045#1083
      FieldName = 'ML_LIMITING_WORKDAYS'
      Required = True
      MaxValue = 10000000.000000000000000000
      FieldValueType = fvtInteger
    end
    object cdsDataWEEK_DATE_FORMATTING: TAbmesFloatField
      FieldName = 'WEEK_DATE_FORMATTING'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsDataMAX_DCD_OVERHEAD_PERCENT: TAbmesFloatField
      DisplayLabel = #1052#1072#1082#1089'. % '#1079#1072#1074#1080#1096#1072#1074#1072#1085#1077' '#1085#1072' '#1076#1086#1075'. '#1082'-'#1074#1086' '#1087#1088#1080' '#1056#1055#1044
      FieldName = 'MAX_DCD_OVERHEAD_PERCENT'
      Required = True
      OnGetText = cdsDataMAX_DCD_OVERHEAD_PERCENTGetText
      OnSetText = cdsDataMAX_DCD_OVERHEAD_PERCENTSetText
    end
    object cdsDataIS_SALE_MFG_QTY_AUTO_LOADED: TAbmesFloatField
      FieldName = 'IS_SALE_MFG_QTY_AUTO_LOADED'
      FieldValueType = fvtBoolean
    end
    object cdsDataPROD_ORGANIZER_PROFESSION_CODE: TAbmesFloatField
      FieldName = 'PROD_ORGANIZER_PROFESSION_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsData_PROD_ORGANIZER_PROFESSION_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_PROD_ORGANIZER_PROFESSION_NAME'
      LookupDataSet = cdsProfessions
      LookupKeyFields = 'PROFESSION_CODE'
      LookupResultField = 'PROFESSION_NAME'
      KeyFields = 'PROD_ORGANIZER_PROFESSION_CODE'
      Size = 100
      Lookup = True
    end
    object cdsDataMANAGER_OKIDU_PROFESSION_CODE: TAbmesFloatField
      DisplayLabel = #1055#1086#1088#1098#1095#1080#1090#1077#1083
      FieldName = 'MANAGER_OKIDU_PROFESSION_CODE'
    end
    object cdsData_MANAGER_OKIDU_PROFESSION_NAME: TAbmesWideStringField
      DisplayLabel = #1055#1086#1088#1098#1095#1080#1090#1077#1083
      FieldKind = fkLookup
      FieldName = '_MANAGER_OKIDU_PROFESSION_NAME'
      LookupDataSet = cdsProfessions
      LookupKeyFields = 'PROFESSION_CODE'
      LookupResultField = 'PROFESSION_NAME'
      KeyFields = 'MANAGER_OKIDU_PROFESSION_CODE'
      Lookup = True
    end
    object cdsDataOKIDU_PROFESSION_CODE: TAbmesFloatField
      DisplayLabel = #1048#1085#1078#1077#1085#1077#1088' '#1052#1054#1044#1045#1083'-'#1080#1077#1088
      FieldName = 'OKIDU_PROFESSION_CODE'
    end
    object cdsData_OKIDU_PROFESSION_NAME: TAbmesWideStringField
      DisplayLabel = #1048#1085#1078#1077#1085#1077#1088' '#1052#1054#1044#1045#1083'-'#1080#1077#1088
      FieldKind = fkLookup
      FieldName = '_OKIDU_PROFESSION_NAME'
      LookupDataSet = cdsProfessions
      LookupKeyFields = 'PROFESSION_CODE'
      LookupResultField = 'PROFESSION_NAME'
      KeyFields = 'OKIDU_PROFESSION_CODE'
      Lookup = True
    end
    object cdsDataIS_DISCOUNT_PERCENT_SHOWN: TAbmesFloatField
      FieldName = 'IS_DISCOUNT_PERCENT_SHOWN'
      FieldValueType = fvtBoolean
    end
    object cdsDataMAX_SALE_INV_VAL_DIFF_PERCENT: TAbmesFloatField
      DisplayLabel = 
        #1052#1072#1082#1089'. '#1088#1072#1079#1083#1080#1082#1072' '#1085#1072' '#1086#1090#1095'. '#1089#1087#1088#1103#1084#1086' '#1087#1083#1072#1085'. '#1042#1057'1 '#1087#1088#1080' '#1087#1088#1080#1082#1083#1102#1095#1074#1072#1085#1077' '#1085#1072' '#1054#1055#1055'/'#1054#1055 +
        #1042
      FieldName = 'MAX_SALE_INV_VAL_DIFF_PERCENT'
      Required = True
      OnGetText = cdsDataMAX_SALE_INV_VAL_DIFF_PERCENTGetText
      OnSetText = cdsDataMAX_SALE_INV_VAL_DIFF_PERCENTSetText
    end
    object cdsDataPRODUCTION_ORDER_LATE_DAYS: TAbmesFloatField
      FieldName = 'PRODUCTION_ORDER_LATE_DAYS'
    end
    object cdsDataPRODUCTION_LEVEL_CODE: TAbmesFloatField
      FieldName = 'PRODUCTION_LEVEL_CODE'
    end
    object cdsDataDOCS_REMOTE_ROOT_PATH: TAbmesWideStringField
      DisplayLabel = #1054#1090#1076#1072#1083#1077#1095#1077#1085' '#1087#1098#1090' '#1079#1072' '#1048#1048#1054
      FieldName = 'DOCS_REMOTE_ROOT_PATH'
      Required = True
      Size = 250
    end
    object cdsDataDOCS_LOCAL_ROOT_PATH: TAbmesWideStringField
      DisplayLabel = #1051#1086#1082#1072#1083#1077#1085' '#1087#1098#1090' '#1079#1072' '#1048#1048#1054
      FieldName = 'DOCS_LOCAL_ROOT_PATH'
      Required = True
      Size = 250
    end
    object cdsDataDNC_DOCS_RELATIVE_ROOT_PATH: TAbmesWideStringField
      DisplayLabel = #1056#1077#1083#1072#1090#1080#1074#1077#1085' '#1087#1098#1090' '#1079#1072' DNC-'#1048#1048#1054
      FieldName = 'DNC_DOCS_RELATIVE_ROOT_PATH'
      Required = True
      Size = 250
    end
    object cdsDataDNC_SERVER_NAME: TAbmesWideStringField
      DisplayLabel = 'DNC '#1089#1098#1088#1074#1098#1088
      FieldName = 'DNC_SERVER_NAME'
      Size = 50
    end
    object cdsDataOPERATION_WORKDAYS_DEV_PERCENT: TAbmesFloatField
      DisplayLabel = 
        #1044#1086#1087#1091#1089#1090#1080#1084#1086' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1077' '#1074' '#1088#1072#1073#1086#1090#1085#1080#1090#1077' '#1076#1085#1080' '#1085#1072' '#1086#1087#1077#1088#1072#1094#1080#1103' '#1089#1087#1088#1103#1084#1086' '#1079#1072#1076#1072#1076#1077#1085#1072 +
        #1090#1072' '#1087#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1085#1086#1089#1090
      FieldName = 'OPERATION_WORKDAYS_DEV_PERCENT'
      Required = True
      OnGetText = cdsDataOPERATION_WORKDAYS_DEV_PERCENTGetText
      OnSetText = cdsDataOPERATION_WORKDAYS_DEV_PERCENTSetText
    end
    object cdsDataALLOW_LATE_ML_LIMITING: TAbmesFloatField
      FieldName = 'ALLOW_LATE_ML_LIMITING'
      FieldValueType = fvtBoolean
    end
    object cdsDataIS_SR_SD_DEPT_COPIED_FROM_PSD: TAbmesFloatField
      FieldName = 'IS_SR_SD_DEPT_COPIED_FROM_PSD'
      FieldValueType = fvtBoolean
    end
    object cdsDataCOUNT_APPROVE_CYCLES: TAbmesFloatField
      FieldName = 'COUNT_APPROVE_CYCLES'
      FieldValueType = fvtBoolean
    end
    object cdsDataDOC_ITEMS_UNAPPROVE_PROMPT: TAbmesFloatField
      FieldName = 'DOC_ITEMS_UNAPPROVE_PROMPT'
      FieldValueType = fvtBoolean
    end
    object cdsDataALLOW_INTERNALLY_STORED_DOC: TAbmesFloatField
      DisplayLabel = #1042#1098#1079#1084#1086#1078#1085#1086#1089#1090' '#1079#1072' '#1074#1098#1090#1088#1077#1096#1085#1086' '#1089#1098#1093#1088#1072#1085#1077#1085#1080#1077' '#1085#1072' '#1048#1048#1054
      FieldName = 'ALLOW_INTERNALLY_STORED_DOC'
      FieldValueType = fvtBoolean
    end
    object cdsDataDOC_ITEM_VIEW_CACHE_SIZE: TAbmesFloatField
      DisplayLabel = #1056#1072#1079#1084#1077#1088' '#1085#1072' '#1082#1077#1096#1072
      FieldName = 'DOC_ITEM_VIEW_CACHE_SIZE'
      Required = True
      OnGetText = cdsDataDOC_ITEM_VIEW_CACHE_SIZEGetText
      OnSetText = cdsDataDOC_ITEM_VIEW_CACHE_SIZESetText
    end
    object cdsDataDATE_INTERVAL_FORMAT_CODE: TAbmesFloatField
      FieldName = 'DATE_INTERVAL_FORMAT_CODE'
    end
    object cdsDataCHECK_SPEC_DOCS: TAbmesFloatField
      DisplayLabel = #1055#1088#1086#1074#1077#1088#1082#1072' '#1085#1072' '#1052#1048#1048#1054'-'#1090#1072#1090#1072' '#1074' '#1055#1088#1080#1085#1094#1080#1087#1077#1085' '#1052#1054#1044#1045#1083
      FieldName = 'CHECK_SPEC_DOCS'
      FieldValueType = fvtBoolean
    end
    object cdsDataCHECK_MODEL_DOCS: TAbmesFloatField
      DisplayLabel = #1055#1088#1086#1074#1077#1088#1082#1072' '#1085#1072' '#1052#1048#1048#1054'-'#1090#1072#1090#1072' '#1074' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1077#1085' '#1052#1054#1044#1045#1083
      FieldName = 'CHECK_MODEL_DOCS'
      FieldValueType = fvtBoolean
    end
    object cdsDataOCCUPATION_ROOT_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_ROOT_PRODUCT_CODE'
    end
    object cdsDataOCC_ASSIGNMENT_DAYS_DIFF: TAbmesFloatField
      FieldName = 'OCC_ASSIGNMENT_DAYS_DIFF'
    end
    object cdsDataCOMMON_GROUPS_PROD_ORD_MONTHS: TAbmesFloatField
      DisplayLabel = #1055#1086#1089#1083#1077#1076#1085#1080' '#1084#1077#1089#1077#1094#1080' '#1079#1072' '#1089#1090#1086#1081#1085#1086#1089#1090#1080#1090#1077' '#1087#1086' '#1054#1055#1042' '#1074' '#1058#1049#1057
      FieldName = 'COMMON_GROUPS_PROD_ORD_MONTHS'
      Required = True
      MaxValue = 1000000.000000000000000000
      MinValue = 1.000000000000000000
      FieldValueType = fvtInteger
    end
    object cdsDataEO_ACTIVATING_WORKDAYS: TAbmesFloatField
      DisplayLabel = 
        #1056#1072#1073#1086#1090#1085#1080' '#1076#1085#1080' '#1087#1088#1077#1076#1080' '#1089#1090#1072#1088#1090' '#1085#1072' '#1054#1055#1048#1056', '#1082#1086#1075#1072#1090#1086' '#1089#1077' '#1088#1072#1079#1088#1077#1096#1072#1074#1072' '#1072#1082#1090#1080#1074#1080#1088#1072#1085#1077#1090 +
        #1086
      FieldName = 'EO_ACTIVATING_WORKDAYS'
      Required = True
      MaxValue = 10000.000000000000000000
    end
    object cdsDataDEFAULT_WORK_PRIORITY_CODE: TAbmesFloatField
      DisplayLabel = #1054#1087#1077#1088#1072#1090#1080#1074#1077#1085' '#1055#1088#1080#1086#1088#1080#1090#1077#1090' '#1087#1086' '#1087#1086#1076#1088#1072#1079#1073#1080#1088#1072#1085#1077
      FieldName = 'DEFAULT_WORK_PRIORITY_CODE'
    end
    object cdsDataMAX_EMP_AVAIL_HOURS: TAbmesFloatField
      DisplayLabel = #1052#1072#1082#1089'. '#1087#1088#1086#1076#1098#1083#1078#1080#1090#1077#1083#1085#1086#1089#1090' '#1085#1072' '#1087#1088#1080#1089#1098#1089#1090#1074#1080#1077
      FieldName = 'MAX_EMP_AVAIL_HOURS'
      MaxValue = 24.000000000000000000
    end
    object cdsDataMIN_INTEGRAL_OVERTIME_HOURS: TAbmesFloatField
      DisplayLabel = #1052#1080#1085'. '#1087#1088#1086#1076#1098#1083#1078#1080#1090#1077#1083#1085#1086#1089#1090' '#1085#1072' '#1087#1086#1083#1086#1078'. '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1077
      FieldName = 'MIN_INTEGRAL_OVERTIME_HOURS'
      OnGetText = HoursInMinutesGetText
      OnSetText = HoursInMinutesSetText
      MaxValue = 100000.000000000000000000
    end
    object cdsDataMAX_EMP_MOVEMENT_REG_HOURS: TAbmesFloatField
      DisplayLabel = 
        #1052#1072#1082#1089'. '#1088#1072#1079#1083#1080#1082#1072' '#1084#1077#1078#1076#1091' '#1084#1086#1084#1077#1085#1090#1072' '#1085#1072' '#1088#1077#1075#1080#1089#1090#1088#1080#1088#1072#1085#1077' '#1080' '#1084#1086#1084#1077#1085#1090#1072' '#1085#1072' '#1074#1093#1086#1076'/'#1080#1079 +
        #1093#1086#1076
      FieldName = 'MAX_EMP_MOVEMENT_REG_HOURS'
      OnGetText = HoursInMinutesGetText
      OnSetText = HoursInMinutesSetText
      MaxValue = 100000.000000000000000000
      FieldValueType = fvtInteger
    end
    object cdsDataEAM_AUTHORIZE_PROFESSION_CODE: TAbmesFloatField
      FieldName = 'EAM_AUTHORIZE_PROFESSION_CODE'
    end
    object cdsData_EAM_AUTHORIZE_PROFESSION_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_EAM_AUTHORIZE_PROFESSION_NAME'
      LookupDataSet = cdsProfessions
      LookupKeyFields = 'PROFESSION_CODE'
      LookupResultField = 'PROFESSION_NAME'
      KeyFields = 'EAM_AUTHORIZE_PROFESSION_CODE'
      Size = 100
      Lookup = True
    end
    object cdsDataMAX_EAM_REG_DAYS: TAbmesFloatField
      DisplayLabel = 
        #1052#1072#1082#1089'. '#1088#1072#1079#1083#1080#1082#1072' '#1084'/'#1091' '#1076#1072#1090#1072#1090#1072' '#1085#1072' '#1088#1077#1075#1080#1089#1090#1088#1080#1088#1072#1085#1077' '#1080' '#1085#1072#1095#1072#1083#1086#1090#1086' '#1085#1072' '#1042#1088#1084#1048#1085#1090' '#1085#1072 +
        ' '#1052#1086#1076#1080#1092#1080#1082#1072#1090#1086#1088' '#1085#1072' '#1055#1088#1080#1089#1098#1089#1090#1074#1080#1077
      FieldName = 'MAX_EAM_REG_DAYS'
      Required = True
    end
    object cdsDataDOC_ITEM_MIRRORS_ROOT_PATH: TAbmesWideStringField
      FieldName = 'DOC_ITEM_MIRRORS_ROOT_PATH'
      Size = 250
    end
    object cdsDataMINIMAL_EXCEPT_EVENT_HOURS: TAbmesFloatField
      DisplayLabel = #1052#1080#1085#1080#1084#1072#1083#1085#1086#1089#1090' '#1085#1072' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1086' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077
      FieldName = 'MINIMAL_EXCEPT_EVENT_HOURS'
      Required = True
      MaxValue = 168.000000000000000000
    end
    object cdsDataDATE_PERIODS_YEAR_PART_CODE: TAbmesFloatField
      DisplayLabel = 
        #1050#1088#1072#1090#1085#1086#1089#1090' '#1085#1072' '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1044#1048#1054#1073', '#1044#1048#1055#1072#1088', '#1048#1048#1056', '#1048#1044', '#1055#1088#1086#1094#1077#1089#1085#1072' '#1056#1086#1083#1103' '#1080' '#1050#1086#1088#1077 +
        #1082#1090#1080#1074#1080' '#1085#1072' '#1042#1057' '#1079#1072' '#1090#1088#1091#1076
      FieldName = 'DATE_PERIODS_YEAR_PART_CODE'
      Required = True
    end
    object cdsDataEE_IND_REFRESH_INTERVAL: TAbmesFloatField
      FieldName = 'EE_IND_REFRESH_INTERVAL'
    end
    object cdsDataFIN_ORDER_REQUIREMENT_CODE: TAbmesFloatField
      DisplayLabel = #1048#1079#1080#1089#1082#1074#1072#1085#1077' '#1079#1072' '#1054#1055#1060
      FieldName = 'FIN_ORDER_REQUIREMENT_CODE'
      Required = True
    end
    object cdsDataSLOW_CONN_SF_WARNING_SIZE: TAbmesFloatField
      DisplayLabel = #1043#1086#1083#1077#1084#1080#1085#1072' '#1085#1072' '#1048#1048#1054' '#1079#1072' '#1087#1088#1077#1076#1091#1087#1088#1077#1078#1076#1077#1085#1080#1077' '#1087#1088#1080' '#1073#1072#1074#1085#1072' '#1074#1088#1098#1079#1082#1072
      FieldName = 'SLOW_CONN_SF_WARNING_SIZE'
      OnGetText = cdsDataSLOW_CONN_SF_WARNING_SIZEGetText
      OnSetText = cdsDataSLOW_CONN_SF_WARNING_SIZESetText
      DisplayFormat = ',0'
      EditFormat = '0'
      MaxValue = 9999999999.000000000000000000
    end
    object cdsDataMAX_UNFINISHED_MFG_PAST_DAYS: TAbmesFloatField
      FieldName = 'MAX_UNFINISHED_MFG_PAST_DAYS'
    end
    object cdsDataTIME_ZONE_ID: TAbmesWideStringField
      DisplayLabel = #1063#1072#1089#1086#1074#1072' '#1079#1086#1085#1072
      FieldName = 'TIME_ZONE_ID'
      Size = 250
    end
    object cdsDataDEFAULT_FO_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DEFAULT_FO_BRANCH_CODE'
    end
    object cdsDataDEFAULT_FO_EXEC_DEPT_CODE: TAbmesFloatField
      FieldName = 'DEFAULT_FO_EXEC_DEPT_CODE'
    end
    object cdsDataALLOW_NON_MAIN_ONLY_OE: TAbmesFloatField
      FieldName = 'ALLOW_NON_MAIN_ONLY_OE'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsDataDEFAULT_DCD_MODE_CODE: TAbmesFloatField
      FieldName = 'DEFAULT_DCD_MODE_CODE'
      Required = True
    end
    object cdsDataDEFAULT_INCLUDE_VAT: TAbmesFloatField
      FieldName = 'DEFAULT_INCLUDE_VAT'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsDataDEFAULT_PRODUCT_SPEC_REQ_CODE: TAbmesFloatField
      FieldName = 'DEFAULT_PRODUCT_SPEC_REQ_CODE'
    end
    object cdsDataOPEN_NEW_FIN_ORDER: TAbmesFloatField
      FieldName = 'OPEN_NEW_FIN_ORDER'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsDataIS_DISCOUNT_PERCENT_SHOWN_PRN: TAbmesFloatField
      FieldName = 'IS_DISCOUNT_PERCENT_SHOWN_PRN'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsDataDEFAULT_RELOAD_GROUP_SALE_INS: TAbmesFloatField
      FieldName = 'DEFAULT_RELOAD_GROUP_SALE_INS'
      FieldValueType = fvtBoolean
    end
    object cdsDataDEFAULT_RELOAD_GROUP_SALE_EDT: TAbmesFloatField
      FieldName = 'DEFAULT_RELOAD_GROUP_SALE_EDT'
      FieldValueType = fvtBoolean
    end
    object cdsDataOM_REQUIRES_OCC_DEPT: TAbmesFloatField
      FieldName = 'OM_REQUIRES_OCC_DEPT'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsDataSPEC_CONTROL_PROFESSION_CODE: TAbmesFloatField
      FieldName = 'SPEC_CONTROL_PROFESSION_CODE'
    end
    object cdsDataOM_REQUIRES_SPEC_CONTROL_FIRST: TAbmesFloatField
      FieldName = 'OM_REQUIRES_SPEC_CONTROL_FIRST'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsDataEE_CTRL_MAIN_PROFESSION_CODE: TAbmesFloatField
      FieldName = 'EE_CTRL_MAIN_PROFESSION_CODE'
    end
    object cdsDataDATABASE_ICON_INDEX: TAbmesFloatField
      DisplayLabel = #1048#1082#1086#1085#1072' '#1085#1072' '#1073#1072#1079#1072#1090#1072' '#1086#1090' '#1076#1072#1085#1085#1080
      FieldName = 'DATABASE_ICON_INDEX'
      Required = True
    end
  end
  object cdsPriorities: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvPriorities'
    Left = 65520
    Top = 32
    object cdsPrioritiesPRIORITY_CODE: TAbmesFloatField
      DisplayWidth = 4
      FieldName = 'PRIORITY_CODE'
      Required = True
      FieldValueType = fvtInteger
    end
    object cdsPrioritiesPRIORITY_NAME: TAbmesWideStringField
      FieldName = 'PRIORITY_NAME'
      Required = True
      Size = 50
    end
  end
  object dsPriorities: TDataSource
    DataSet = cdsPriorities
    Left = 16
    Top = 32
  end
  object cdsDateUnits: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conLogin
    Params = <>
    ProviderName = 'prvDateUnits'
    Left = 65520
    Top = 96
    object cdsDateUnitsTHE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'THE_DATE_UNIT_CODE'
    end
    object cdsDateUnitsTHE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'THE_DATE_UNIT_NAME'
      Size = 50
    end
  end
  object dsDateUnits: TDataSource
    DataSet = cdsDateUnits
    Left = 16
    Top = 96
  end
  object cdsProfessions: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conHumanResource
    Params = <>
    ProviderName = 'prvProfessions'
    Left = 65520
    Top = 160
    object cdsProfessionsPROFESSION_CODE: TAbmesFloatField
      FieldName = 'PROFESSION_CODE'
    end
    object cdsProfessionsPROFESSION_NAME: TAbmesWideStringField
      FieldName = 'PROFESSION_NAME'
      Size = 100
    end
  end
  object cdsDateFormats: TAbmesClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 65520
    Top = 128
    object cdsDateFormatsDATE_FORMAT_CODE: TAbmesFloatField
      FieldName = 'DATE_FORMAT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDateFormatsDATE_FORMAT_NAME: TAbmesWideStringField
      FieldName = 'DATE_FORMAT_NAME'
      Size = 50
    end
  end
  object dsDateFormats: TDataSource
    DataSet = cdsDateFormats
    Left = 16
    Top = 128
  end
  object cdsDateIntervalFormats: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvDateIntervalFormats'
    Left = 65520
    Top = 64
    object cdsDateIntervalFormatsDATE_INTERVAL_FORMAT_CODE: TAbmesFloatField
      FieldName = 'DATE_INTERVAL_FORMAT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDateIntervalFormatsDATE_INTERVAL_FORMAT_NAME: TAbmesWideStringField
      FieldName = 'DATE_INTERVAL_FORMAT_NAME'
      Size = 100
    end
  end
  object dsDateIntervalFormats: TDataSource
    DataSet = cdsDateIntervalFormats
    Left = 16
    Top = 64
  end
  object cdsWorkPriorities: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvWorkPriorities'
    Left = 65520
    Top = 192
    object cdsWorkPrioritiesWORK_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'WORK_PRIORITY_CODE'
    end
    object cdsWorkPrioritiesWORK_PRIORITY_NO: TAbmesFloatField
      DisplayWidth = 2
      FieldName = 'WORK_PRIORITY_NO'
    end
    object cdsWorkPrioritiesWORK_PRIORITY_NAME: TAbmesWideStringField
      FieldName = 'WORK_PRIORITY_NAME'
      Size = 50
    end
  end
  object dsWorkPriorities: TDataSource
    DataSet = cdsWorkPriorities
    Left = 16
    Top = 192
  end
  object cdsYearParts: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvYearParts'
    Left = 65520
    Top = 224
    object cdsYearPartsYEAR_PART_CODE: TAbmesFloatField
      FieldName = 'YEAR_PART_CODE'
    end
    object cdsYearPartsYEAR_PART_NAME: TAbmesWideStringField
      FieldName = 'YEAR_PART_NAME'
      Size = 100
    end
  end
  object dsYearParts: TDataSource
    DataSet = cdsYearParts
    Left = 16
    Top = 224
  end
  object cdsFinOrderRequirements: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvFinOrderRequirements'
    Left = 65520
    Top = 256
    object cdsFinOrderRequirementsFIN_ORDER_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'FIN_ORDER_REQUIREMENT_CODE'
    end
    object cdsFinOrderRequirementsFIN_ORDER_REQUIREMENT_NAME: TAbmesWideStringField
      FieldName = 'FIN_ORDER_REQUIREMENT_NAME'
      Size = 100
    end
  end
  object dsFinOrderRequirements: TDataSource
    DataSet = cdsFinOrderRequirements
    Left = 16
    Top = 256
  end
  object cdsTimeZones: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conNonDbUtils
    FieldDefs = <
      item
        Name = 'TIME_ZONE_ID'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 250
      end
      item
        Name = 'TIME_ZONE_NAME'
        DataType = ftWideString
        Size = 250
      end
      item
        Name = 'BIAS'
        DataType = ftFloat
      end
      item
        Name = 'TIME_ZONE_OFFSET'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'idxDefault'
        DescFields = 'BIAS'
        Fields = 'BIAS;TIME_ZONE_NAME'
        Options = [ixDescending]
      end>
    IndexName = 'idxDefault'
    Params = <>
    ProviderName = 'prvTimeZones'
    StoreDefs = True
    Left = 65520
    Top = 288
    object cdsTimeZonesTIME_ZONE_ID: TAbmesWideStringField
      FieldName = 'TIME_ZONE_ID'
      Required = True
      Size = 250
    end
    object cdsTimeZonesTIME_ZONE_NAME: TAbmesWideStringField
      FieldName = 'TIME_ZONE_NAME'
      Size = 250
    end
    object cdsTimeZonesBIAS: TAbmesFloatField
      FieldName = 'BIAS'
    end
    object cdsTimeZonesTIME_ZONE_OFFSET: TAbmesFloatField
      FieldName = 'TIME_ZONE_OFFSET'
    end
  end
  object dsTimeZones: TDataSource
    DataSet = cdsTimeZones
    Left = 16
    Top = 288
  end
  object cdsBranches: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompany
    Filter = '(IS_LOCAL_BRANCH <> 0) and (IS_INACTIVE = 0)'
    Params = <>
    ProviderName = 'prvBranches'
    Left = 65520
    Top = 320
    object cdsBranchesBRANCH_CODE: TAbmesFloatField
      DisplayWidth = 3
      FieldName = 'BRANCH_CODE'
    end
    object cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField
      DisplayWidth = 10
      FieldName = 'BRANCH_IDENTIFIER'
      Size = 255
    end
    object cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField
      FieldName = 'BRANCH_CODE_AND_NAME'
      Size = 255
    end
    object cdsBranchesIS_LOCAL_BRANCH: TAbmesFloatField
      FieldName = 'IS_LOCAL_BRANCH'
    end
    object cdsBranchesBRANCH_NO: TAbmesFloatField
      Alignment = taLeftJustify
      DisplayWidth = 3
      FieldName = 'BRANCH_NO'
    end
    object cdsBranchesIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
    end
  end
  object dsBranches: TDataSource
    DataSet = cdsBranches
    Left = 16
    Top = 320
  end
  object cdsDCDModes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conDeliveries
    Params = <>
    ProviderName = 'prvDCDModes'
    Left = 65520
    Top = 352
    object cdsDCDModesDCD_MODE_CODE: TAbmesFloatField
      FieldName = 'DCD_MODE_CODE'
      Required = True
    end
    object cdsDCDModesDCD_MODE_NO: TAbmesFloatField
      FieldName = 'DCD_MODE_NO'
      Required = True
    end
    object cdsDCDModesDCD_MODE_NAME: TAbmesWideStringField
      FieldName = 'DCD_MODE_NAME'
      Required = True
      Size = 100
    end
    object cdsDCDModesDCD_MODE_ABBREV: TAbmesWideStringField
      FieldName = 'DCD_MODE_ABBREV'
      Required = True
      Size = 100
    end
  end
  object dsDCDModes: TDataSource
    DataSet = cdsDCDModes
    Left = 16
    Top = 352
  end
  object cdsProductSpecRequirements: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conProductsTree
    Params = <>
    ProviderName = 'prvProductSpecRequirements'
    Left = 65520
    Top = 400
    object cdsProductSpecRequirementsPRODUCT_SPEC_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_SPEC_REQUIREMENT_CODE'
      Required = True
    end
    object cdsProductSpecRequirementsPRODUCT_SPEC_REQUIREMENT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_SPEC_REQUIREMENT_NAME'
      Required = True
      Size = 100
    end
  end
  object dsProductSpecRequirements: TDataSource
    DataSet = cdsProductSpecRequirements
    Left = 16
    Top = 400
  end
end
