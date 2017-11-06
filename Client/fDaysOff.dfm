inherited fmDaysOff: TfmDaysOff
  Left = 451
  Top = 307
  Caption = #1056#1072#1073#1086#1090#1077#1085' '#1080' '#1054#1092#1080#1094#1080#1072#1083#1077#1085' '#1050#1072#1083#1077#1085#1076#1072#1088
  ClientHeight = 245
  ClientWidth = 249
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 210
    Width = 249
    inherited pnlOKCancel: TPanel
      Left = -15
      Visible = False
      inherited btnOK: TBitBtn
        Top = 6
      end
      inherited btnCancel: TBitBtn
        Top = 6
      end
    end
    inherited pnlClose: TPanel
      Left = -104
      Visible = True
      inherited btnClose: TBitBtn
        Top = 6
      end
    end
    inherited pnlApply: TPanel
      Left = 164
      Width = 85
      Visible = False
      inherited btnApply: TBitBtn
        Top = 6
      end
    end
  end
  object pnlGrid: TPanel [1]
    Left = 2
    Top = 2
    Width = 244
    Height = 209
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object lblYear: TLabel
      Left = 16
      Top = 8
      Width = 36
      Height = 13
      Caption = #1043#1086#1076#1080#1085#1072
    end
    object lblMonth: TLabel
      Left = 121
      Top = 8
      Width = 33
      Height = 13
      Caption = #1052#1077#1089#1077#1094
    end
    object grdCalendar: TAbmesDBGrid
      Left = 5
      Top = 72
      Width = 233
      Height = 130
      DataGrouping.GroupLevels = <>
      DataSource = dsCalendar
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'Microsoft Sans Serif'
      FooterFont.Style = []
      FrozenCols = 1
      HorzScrollBar.Visible = False
      Options = [dgTitles, dgColLines, dgRowLines]
      OptionsEh = [dghFixed3D, dghClearSelection, dghDialogFind]
      RowDetailPanel.Color = clBtnFace
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Microsoft Sans Serif'
      TitleFont.Style = []
      VertScrollBar.VisibleMode = sbNeverShowEh
      OnDblClick = grdCalendarDblClick
      OnGetCellParams = grdCalendarGetCellParams
      OnKeyPress = grdCalendarKeyPress
      Columns = <
        item
          EditButtons = <>
          FieldName = 'WEEK'
          Footers = <>
          Title.Caption = #1057#1077#1076#1084'.'
          Width = 32
        end
        item
          EditButtons = <>
          FieldName = 'WEEK_DAY_1'
          Footers = <>
          Title.Alignment = taCenter
          Width = 27
        end
        item
          EditButtons = <>
          FieldName = 'WEEK_DAY_2'
          Footers = <>
          Title.Alignment = taCenter
          Width = 27
        end
        item
          EditButtons = <>
          FieldName = 'WEEK_DAY_3'
          Footers = <>
          Title.Alignment = taCenter
          Width = 27
        end
        item
          EditButtons = <>
          FieldName = 'WEEK_DAY_4'
          Footers = <>
          Title.Alignment = taCenter
          Width = 27
        end
        item
          EditButtons = <>
          FieldName = 'WEEK_DAY_5'
          Footers = <>
          Title.Alignment = taCenter
          Width = 27
        end
        item
          EditButtons = <>
          FieldName = 'WEEK_DAY_6'
          Footers = <>
          Title.Alignment = taCenter
          Width = 27
        end
        item
          EditButtons = <>
          FieldName = 'WEEK_DAY_7'
          Footers = <>
          Title.Alignment = taCenter
          Width = 27
        end
        item
          EditButtons = <>
          FieldName = 'OFFICIAL_WEEK_DAY_1'
          Footers = <>
          Title.Alignment = taCenter
          Visible = False
          Width = 27
        end
        item
          EditButtons = <>
          FieldName = 'OFFICIAL_WEEK_DAY_2'
          Footers = <>
          Title.Alignment = taCenter
          Visible = False
          Width = 27
        end
        item
          EditButtons = <>
          FieldName = 'OFFICIAL_WEEK_DAY_3'
          Footers = <>
          Title.Alignment = taCenter
          Visible = False
          Width = 27
        end
        item
          EditButtons = <>
          FieldName = 'OFFICIAL_WEEK_DAY_4'
          Footers = <>
          Title.Alignment = taCenter
          Visible = False
          Width = 27
        end
        item
          EditButtons = <>
          FieldName = 'OFFICIAL_WEEK_DAY_5'
          Footers = <>
          Title.Alignment = taCenter
          Visible = False
          Width = 27
        end
        item
          EditButtons = <>
          FieldName = 'OFFICIAL_WEEK_DAY_6'
          Footers = <>
          Title.Alignment = taCenter
          Visible = False
          Width = 27
        end
        item
          EditButtons = <>
          FieldName = 'OFFICIAL_WEEK_DAY_7'
          Footers = <>
          Title.Alignment = taCenter
          Visible = False
          Width = 27
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object edtYear: TEdit
      Left = 16
      Top = 24
      Width = 49
      Height = 21
      ReadOnly = True
      TabOrder = 0
      Text = '0'
    end
    object cbMonth: TComboBox
      Left = 121
      Top = 24
      Width = 97
      Height = 21
      Style = csDropDownList
      DropDownCount = 12
      TabOrder = 2
      Items.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '10'
        '11'
        '12')
    end
    object udYear: TUpDown
      Left = 65
      Top = 24
      Width = 16
      Height = 21
      Associate = edtYear
      TabOrder = 1
      Thousands = False
      Wrap = True
    end
    object tlbType: TToolBar
      Left = 5
      Top = 51
      Width = 233
      Height = 21
      Align = alNone
      ButtonHeight = 21
      ButtonWidth = 65
      Caption = 'tlbType'
      TabOrder = 4
      object btnToggleWorkCalendar: TSpeedButton
        Left = 0
        Top = 0
        Width = 116
        Height = 21
        Action = actToggleWorkCalendar
        GroupIndex = 1
        Down = True
        Flat = True
        Transparent = False
      end
      object btnToggleOfficialCalendar: TSpeedButton
        Left = 116
        Top = 0
        Width = 117
        Height = 21
        Action = actToggleOfficialCalendar
        GroupIndex = 1
        Flat = True
        Transparent = False
      end
    end
  end
  inherited alActions: TActionList
    Left = 128
    Top = 144
    inherited actForm: TAction
      Caption = #1056#1072#1073#1086#1090#1077#1085' '#1080' '#1054#1092#1080#1094#1080#1072#1083#1077#1085' '#1050#1072#1083#1077#1085#1076#1072#1088
    end
    object actToggleWorkCalendar: TAction
      AutoCheck = True
      Caption = #1056#1072#1073#1086#1090#1077#1085
      Checked = True
      GroupIndex = 1
      OnExecute = actToggleWorkCalendarExecute
    end
    object actToggleOfficialCalendar: TAction
      AutoCheck = True
      Caption = #1054#1092#1080#1094#1080#1072#1083#1077#1085
      GroupIndex = 1
      OnExecute = actToggleOfficialCalendarExecute
    end
    object actToggleDayOff: TAction
      OnExecute = actToggleDayOffExecute
      OnUpdate = actToggleDayOffUpdate
    end
  end
  inherited dsData: TDataSource
    Left = 48
    Top = 144
  end
  inherited cdsData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conCommon
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'THE_YEAR_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'THE_MONTH_DATE'
        ParamType = ptInput
      end>
    ProviderName = 'prvDaysOff'
    Left = 16
    Top = 144
    object cdsDataTHE_DATE: TAbmesSQLTimeStampField
      FieldName = 'THE_DATE'
    end
    object cdsDataDAYS_OFF: TAbmesFloatField
      FieldName = 'DAYS_OFF'
      FieldValueType = fvtBoolean
    end
    object cdsDataOFFICIAL_DAYS_OFF: TAbmesFloatField
      FieldName = 'OFFICIAL_DAYS_OFF'
      FieldValueType = fvtBoolean
    end
  end
  object cdsCalendar: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 17
    Top = 112
    object cdsCalendarWEEK_DAY_1: TAbmesSQLTimeStampField
      Alignment = taRightJustify
      FieldName = 'WEEK_DAY_1'
      OnGetText = WeekFieldsGetText
    end
    object cdsCalendarWEEK_DAY_2: TAbmesSQLTimeStampField
      Alignment = taRightJustify
      FieldName = 'WEEK_DAY_2'
      OnGetText = WeekFieldsGetText
    end
    object cdsCalendarWEEK_DAY_3: TAbmesSQLTimeStampField
      Alignment = taRightJustify
      FieldName = 'WEEK_DAY_3'
      OnGetText = WeekFieldsGetText
    end
    object cdsCalendarWEEK_DAY_5: TAbmesSQLTimeStampField
      Alignment = taRightJustify
      FieldName = 'WEEK_DAY_5'
      OnGetText = WeekFieldsGetText
    end
    object cdsCalendarWEEK_DAY_4: TAbmesSQLTimeStampField
      Alignment = taRightJustify
      FieldName = 'WEEK_DAY_4'
      OnGetText = WeekFieldsGetText
    end
    object cdsCalendarWEEK_DAY_6: TAbmesSQLTimeStampField
      Alignment = taRightJustify
      FieldName = 'WEEK_DAY_6'
      OnGetText = WeekFieldsGetText
    end
    object cdsCalendarWEEK_DAY_7: TAbmesSQLTimeStampField
      Alignment = taRightJustify
      FieldName = 'WEEK_DAY_7'
      OnGetText = WeekFieldsGetText
    end
    object cdsCalendarIS_WEEK_DAY_1_DAY_OFF: TBooleanField
      FieldKind = fkLookup
      FieldName = 'IS_WEEK_DAY_1_DAY_OFF'
      LookupDataSet = cdsData
      LookupKeyFields = 'THE_DATE'
      LookupResultField = 'DAYS_OFF'
      KeyFields = 'WEEK_DAY_1'
      Lookup = True
    end
    object cdsCalendarIS_WEEK_DAY_2_DAY_OFF: TBooleanField
      FieldKind = fkLookup
      FieldName = 'IS_WEEK_DAY_2_DAY_OFF'
      LookupDataSet = cdsData
      LookupKeyFields = 'THE_DATE'
      LookupResultField = 'DAYS_OFF'
      KeyFields = 'WEEK_DAY_2'
      Lookup = True
    end
    object cdsCalendarIS_WEEK_DAY_3_DAY_OFF: TBooleanField
      FieldKind = fkLookup
      FieldName = 'IS_WEEK_DAY_3_DAY_OFF'
      LookupDataSet = cdsData
      LookupKeyFields = 'THE_DATE'
      LookupResultField = 'DAYS_OFF'
      KeyFields = 'WEEK_DAY_3'
      Lookup = True
    end
    object cdsCalendarIS_WEEK_DAY_4_DAY_OFF: TBooleanField
      FieldKind = fkLookup
      FieldName = 'IS_WEEK_DAY_4_DAY_OFF'
      LookupDataSet = cdsData
      LookupKeyFields = 'THE_DATE'
      LookupResultField = 'DAYS_OFF'
      KeyFields = 'WEEK_DAY_4'
      Lookup = True
    end
    object cdsCalendarIS_WEEK_DAY_5_DAY_OFF: TBooleanField
      FieldKind = fkLookup
      FieldName = 'IS_WEEK_DAY_5_DAY_OFF'
      LookupDataSet = cdsData
      LookupKeyFields = 'THE_DATE'
      LookupResultField = 'DAYS_OFF'
      KeyFields = 'WEEK_DAY_5'
      Lookup = True
    end
    object cdsCalendarIS_WEEK_DAY_6_DAY_OFF: TBooleanField
      FieldKind = fkLookup
      FieldName = 'IS_WEEK_DAY_6_DAY_OFF'
      LookupDataSet = cdsData
      LookupKeyFields = 'THE_DATE'
      LookupResultField = 'DAYS_OFF'
      KeyFields = 'WEEK_DAY_6'
      Lookup = True
    end
    object cdsCalendarIS_WEEK_DAY_7_DAY_OFF: TBooleanField
      FieldKind = fkLookup
      FieldName = 'IS_WEEK_DAY_7_DAY_OFF'
      LookupDataSet = cdsData
      LookupKeyFields = 'THE_DATE'
      LookupResultField = 'DAYS_OFF'
      KeyFields = 'WEEK_DAY_7'
      Lookup = True
    end
    object cdsCalendarOFFICIAL_WEEK_DAY_1: TAbmesSQLTimeStampField
      Alignment = taRightJustify
      FieldName = 'OFFICIAL_WEEK_DAY_1'
      OnGetText = WeekFieldsGetText
    end
    object cdsCalendarOFFICIAL_WEEK_DAY_2: TAbmesSQLTimeStampField
      Alignment = taRightJustify
      FieldName = 'OFFICIAL_WEEK_DAY_2'
      OnGetText = WeekFieldsGetText
    end
    object cdsCalendarOFFICIAL_WEEK_DAY_3: TAbmesSQLTimeStampField
      Alignment = taRightJustify
      FieldName = 'OFFICIAL_WEEK_DAY_3'
      OnGetText = WeekFieldsGetText
    end
    object cdsCalendarOFFICIAL_WEEK_DAY_5: TAbmesSQLTimeStampField
      Alignment = taRightJustify
      FieldName = 'OFFICIAL_WEEK_DAY_5'
      OnGetText = WeekFieldsGetText
    end
    object cdsCalendarOFFICIAL_WEEK_DAY_4: TAbmesSQLTimeStampField
      Alignment = taRightJustify
      FieldName = 'OFFICIAL_WEEK_DAY_4'
      OnGetText = WeekFieldsGetText
    end
    object cdsCalendarOFFICIAL_WEEK_DAY_6: TAbmesSQLTimeStampField
      Alignment = taRightJustify
      FieldName = 'OFFICIAL_WEEK_DAY_6'
      OnGetText = WeekFieldsGetText
    end
    object cdsCalendarOFFICIAL_WEEK_DAY_7: TAbmesSQLTimeStampField
      Alignment = taRightJustify
      FieldName = 'OFFICIAL_WEEK_DAY_7'
      OnGetText = WeekFieldsGetText
    end
    object cdsCalendarIS_OFFICIAL_WEEK_DAY_1_DAY_OFF: TBooleanField
      FieldKind = fkLookup
      FieldName = 'IS_OFFICIAL_WEEK_DAY_1_DAY_OFF'
      LookupDataSet = cdsData
      LookupKeyFields = 'THE_DATE'
      LookupResultField = 'OFFICIAL_DAYS_OFF'
      KeyFields = 'OFFICIAL_WEEK_DAY_1'
      Lookup = True
    end
    object cdsCalendarIS_OFFICIAL_WEEK_DAY_2_DAY_OFF: TBooleanField
      FieldKind = fkLookup
      FieldName = 'IS_OFFICIAL_WEEK_DAY_2_DAY_OFF'
      LookupDataSet = cdsData
      LookupKeyFields = 'THE_DATE'
      LookupResultField = 'OFFICIAL_DAYS_OFF'
      KeyFields = 'OFFICIAL_WEEK_DAY_2'
      Lookup = True
    end
    object cdsCalendarIS_OFFICIAL_WEEK_DAY_3_DAY_OFF: TBooleanField
      FieldKind = fkLookup
      FieldName = 'IS_OFFICIAL_WEEK_DAY_3_DAY_OFF'
      LookupDataSet = cdsData
      LookupKeyFields = 'THE_DATE'
      LookupResultField = 'OFFICIAL_DAYS_OFF'
      KeyFields = 'OFFICIAL_WEEK_DAY_3'
      Lookup = True
    end
    object cdsCalendarIS_OFFICIAL_WEEK_DAY_4_DAY_OFF: TBooleanField
      FieldKind = fkLookup
      FieldName = 'IS_OFFICIAL_WEEK_DAY_4_DAY_OFF'
      LookupDataSet = cdsData
      LookupKeyFields = 'THE_DATE'
      LookupResultField = 'OFFICIAL_DAYS_OFF'
      KeyFields = 'OFFICIAL_WEEK_DAY_4'
      Lookup = True
    end
    object cdsCalendarIS_OFFICIAL_WEEK_DAY_5_DAY_OFF: TBooleanField
      FieldKind = fkLookup
      FieldName = 'IS_OFFICIAL_WEEK_DAY_5_DAY_OFF'
      LookupDataSet = cdsData
      LookupKeyFields = 'THE_DATE'
      LookupResultField = 'OFFICIAL_DAYS_OFF'
      KeyFields = 'OFFICIAL_WEEK_DAY_5'
      Lookup = True
    end
    object cdsCalendarIS_OFFICIAL_WEEK_DAY_6_DAY_OFF: TBooleanField
      FieldKind = fkLookup
      FieldName = 'IS_OFFICIAL_WEEK_DAY_6_DAY_OFF'
      LookupDataSet = cdsData
      LookupKeyFields = 'THE_DATE'
      LookupResultField = 'OFFICIAL_DAYS_OFF'
      KeyFields = 'OFFICIAL_WEEK_DAY_6'
      Lookup = True
    end
    object cdsCalendarIS_OFFICIAL_WEEK_DAY_7_DAY_OFF: TBooleanField
      FieldKind = fkLookup
      FieldName = 'IS_OFFICIAL_WEEK_DAY_7_DAY_OFF'
      LookupDataSet = cdsData
      LookupKeyFields = 'THE_DATE'
      LookupResultField = 'OFFICIAL_DAYS_OFF'
      KeyFields = 'OFFICIAL_WEEK_DAY_7'
      Lookup = True
    end
    object cdsCalendarWEEK: TAbmesFloatField
      FieldName = 'WEEK'
    end
  end
  object dsCalendar: TDataSource
    DataSet = cdsCalendar
    Left = 49
    Top = 112
  end
end
