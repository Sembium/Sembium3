inherited fmUserActivities: TfmUserActivities
  Left = 236
  Top = 150
  Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080' '#1085#1072' '#1055#1086#1090#1088#1077#1073#1080#1090#1077#1083
  ClientHeight = 576
  ClientWidth = 1017
  DesignSize = (
    1017
    576)
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 541
    Width = 1017
    inherited pnlOKCancel: TPanel
      Left = 749
    end
    inherited pnlClose: TPanel
      Left = 660
    end
    inherited pnlApply: TPanel
      Left = 928
    end
  end
  inherited pnlUser: TPanel
    Width = 1001
  end
  inherited pnlMain: TPanel
    Width = 1017
    Height = 541
    inherited pnlGrid: TPanel
      Width = 1001
      Height = 525
      inherited pnlNavigator: TPanel
        Width = 1001
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdData: TAbmesDBGrid
        Top = 59
        Width = 488
        Height = 466
        AutoFitColWidths = True
        TitleParams.MultiTitle = True
        TitleParams.VTitleMargin = 5
        Columns = <
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ACTIVITY_NO'
            Footers = <>
            Title.Caption = #1056#1072#1079#1088#1077#1096#1077#1085#1080' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080'|'#1050#1086#1076
            Width = 48
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ACTIVITY_NAME'
            Footers = <>
            Title.Caption = #1056#1072#1079#1088#1077#1096#1077#1085#1080' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 406
          end>
      end
      inherited grdOtherData: TAbmesDBGrid
        Left = 514
        Top = 59
        Width = 487
        Height = 466
        AutoFitColWidths = True
        TitleParams.MultiTitle = True
        TitleParams.VTitleMargin = 5
        Columns = <
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ACTIVITY_NO'
            Footers = <>
            Title.Caption = #1047#1072#1073#1088#1072#1085#1077#1085#1080' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080'|'#1050#1086#1076
            Width = 48
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ACTIVITY_NAME'
            Footers = <>
            Title.Caption = #1047#1072#1073#1088#1072#1085#1077#1085#1080' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 405
          end>
      end
      inherited pnlMoveButtons: TPanel
        Left = 488
        Top = 59
        Height = 466
      end
      object pnlInfo: TPanel
        Left = 0
        Top = 24
        Width = 1001
        Height = 35
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 4
        object pnlUserLogin: TPanel
          Left = 0
          Top = 0
          Width = 1001
          Height = 29
          Align = alTop
          TabOrder = 0
          DesignSize = (
            1001
            29)
          object pnlUserName: TPanel
            Left = 381
            Top = 0
            Width = 241
            Height = 25
            Anchors = [akTop]
            BevelOuter = bvNone
            TabOrder = 1
            object lblUser: TLabel
              Left = 0
              Top = 8
              Width = 60
              Height = 13
              Caption = #1055#1086#1090#1088#1077#1073#1080#1090#1077#1083
            end
            object edtUser: TDBEdit
              Left = 65
              Top = 4
              Width = 168
              Height = 21
              Color = clBtnFace
              DataField = 'EMPLOYEE_NAME'
              DataSource = dsData
              ReadOnly = True
              TabOrder = 0
            end
          end
          inline frSearchData: TfrDBGridSearch
            Left = 5
            Top = 4
            Width = 236
            Height = 22
            TabOrder = 0
            inherited pnlMain: TPanel
              Width = 236
              inherited tlbSearchData: TToolBar
                Left = 190
              end
              inherited edtSearch: TEdit
                Width = 189
              end
            end
          end
          inline frSearchOtherData: TfrDBGridSearch
            Left = 761
            Top = 4
            Width = 236
            Height = 22
            Anchors = [akTop, akRight]
            TabOrder = 2
            inherited pnlMain: TPanel
              Width = 236
              inherited tlbSearchData: TToolBar
                Left = 190
              end
              inherited edtSearch: TEdit
                Width = 189
              end
            end
          end
        end
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conCompany
    FieldDefs = <
      item
        Name = 'EMPLOYEE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'ACTIVITY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'ACTIVITY_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'ACTIVITY_NO'
        DataType = ftFloat
      end>
    Params = <
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvUserHasActivities'
    object cdsGridDataEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
    end
    object cdsGridDataACTIVITY_CODE: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'ACTIVITY_CODE'
    end
    object cdsGridDataACTIVITY_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'ACTIVITY_NAME'
      Size = 150
    end
    object cdsGridDataACTIVITY_NO: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'ACTIVITY_NO'
    end
  end
  inherited alActions: TActionList
    Left = 312
    inherited actForm: TAction
      Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080' '#1085#1072' '#1055#1086#1090#1088#1077#1073#1080#1090#1077#1083
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    object pdsGridDataParamsEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
    end
  end
  inherited dsData: TDataSource
    Left = 40
    Top = 88
  end
  inherited pmInsertMenu: TPopupMenu
    Left = 280
  end
  inherited cdsOtherGridData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conCompany
    Params = <
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvUserHasNotActivities'
    object cdsOtherGridDataEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
    end
    object cdsOtherGridDataACTIVITY_CODE: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'ACTIVITY_CODE'
    end
    object cdsOtherGridDataACTIVITY_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'ACTIVITY_NAME'
      Size = 150
    end
    object cdsOtherGridDataACTIVITY_NO: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'ACTIVITY_NO'
    end
  end
end
