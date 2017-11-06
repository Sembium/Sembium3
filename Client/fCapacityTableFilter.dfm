inherited fmCapacityTableFilter: TfmCapacityTableFilter
  Left = 339
  Top = 303
  Caption = '%s '#1085#1072' '#1042#1048#1052' - '#1058#1072#1073#1083#1080#1095#1077#1085' '#1085#1072' %Capacity% '#1085#1072' '#1058#1055
  ClientHeight = 636
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 601
  end
  inherited pnlMain: TPanel
    Height = 472
    object rgExcessHoursState: TDBRadioGroup
      Left = 8
      Top = 392
      Width = 185
      Height = 73
      Caption = '      '#1044#1077#1092#1080#1094#1080#1090' / '#1055#1088#1077#1085#1072#1090#1086#1074'. '
      DataField = 'EXCESS_HOURS_STATE'
      DataSource = dsData
      Items.Strings = (
        #1042#1089#1080#1095#1082#1080
        #1048#1084#1072
        #1053#1103#1084#1072)
      ParentBackground = True
      TabOrder = 5
      Values.Strings = (
        '2'
        '1'
        '0')
    end
    object rgFreeHoursState: TDBRadioGroup
      Left = 584
      Top = 392
      Width = 185
      Height = 73
      Caption = '      '#1057#1074#1086#1073#1086#1076#1077#1085' '
      DataField = 'FREE_HOURS_STATE'
      DataSource = dsData
      Items.Strings = (
        #1042#1089#1080#1095#1082#1080
        #1048#1084#1072
        #1053#1103#1084#1072)
      ParentBackground = True
      TabOrder = 6
      Values.Strings = (
        '2'
        '1'
        '0')
    end
    object rgSupportingHoursState: TDBRadioGroup
      Left = 200
      Top = 392
      Width = 185
      Height = 73
      Caption = '      '#1054#1073#1089#1083#1091#1078#1074#1072#1085#1077' '
      DataField = 'LOGISTICS_HOURS_STATE'
      DataSource = dsData
      Items.Strings = (
        #1042#1089#1080#1095#1082#1080
        #1048#1084#1072
        #1053#1103#1084#1072)
      ParentBackground = True
      TabOrder = 7
      Values.Strings = (
        '2'
        '1'
        '0')
    end
    object rgDevelopingHoursState: TDBRadioGroup
      Left = 392
      Top = 392
      Width = 185
      Height = 73
      Caption = '      '#1045#1082#1089#1087#1083#1086#1072#1090#1072#1094#1080#1103' '
      DataField = 'EXPLOITATION_HOURS_STATE'
      DataSource = dsData
      Items.Strings = (
        #1042#1089#1080#1095#1082#1080
        #1048#1084#1072
        #1053#1103#1084#1072)
      ParentBackground = True
      TabOrder = 8
      Values.Strings = (
        '2'
        '1'
        '0')
    end
    object pnlExcessHoursStateColor: TPanel
      Left = 18
      Top = 393
      Width = 11
      Height = 11
      BevelOuter = bvLowered
      Color = 8553215
      ParentBackground = False
      TabOrder = 9
    end
    object pnlSupportingHoursStateColor: TPanel
      Left = 210
      Top = 393
      Width = 11
      Height = 11
      BevelOuter = bvLowered
      Color = 13559807
      ParentBackground = False
      TabOrder = 10
    end
    object pnlDevelopingHoursStateColor: TPanel
      Left = 402
      Top = 393
      Width = 11
      Height = 11
      BevelOuter = bvLowered
      Color = 15261138
      ParentBackground = False
      TabOrder = 11
    end
    object pnlFreeHoursStateColor: TPanel
      Left = 594
      Top = 393
      Width = 11
      Height = 11
      BevelOuter = bvLowered
      Color = 14155735
      ParentBackground = False
      TabOrder = 12
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = '%s '#1085#1072' '#1042#1048#1052' - '#1058#1072#1073#1083#1080#1095#1077#1085' '#1085#1072' %Capacity% '#1085#1072' '#1058#1055
    end
  end
  inherited cdsFilterVariants: TAbmesClientDataSet
    Top = 472
  end
  inherited dsFilterVariants: TDataSource
    Top = 472
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Top = 488
  end
end
