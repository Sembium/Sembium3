inherited fmEmployeeDayAbsenceReasons: TfmEmployeeDayAbsenceReasons
  Left = 494
  Top = 193
  Caption = #1042#1080#1076#1086#1074#1077' '#1044#1086#1082#1091#1084#1077#1085#1090#1080' '#1079#1072' '#1062#1077#1083#1086#1076#1085#1077#1074#1085#1080' '#1054#1090#1089#1098#1089#1090#1074#1080#1103
  ClientHeight = 362
  ClientWidth = 347
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 327
    Width = 347
    inherited pnlOKCancel: TPanel
      Left = 79
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = -10
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 258
      Visible = False
    end
  end
  inherited pnlMain: TPanel
    Width = 347
    Height = 327
    inherited sptDetail: TSplitter
      Top = 162
      Width = 331
    end
    inherited pnlDetailGrid: TPanel
      Top = 165
      Width = 331
      Height = 154
      inherited pnlDetailNavigator: TPanel
        Width = 331
        inherited navDetail: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdDetail: TAbmesDBGrid
        Width = 331
        Height = 130
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = False
        Columns = <
          item
            EditButtons = <>
            FieldName = 'EMP_DAY_ABSENCE_DOC_TYPE_NAME'
            Footers = <>
            Title.Caption = #1042#1080#1076' '#1044#1086#1082#1091#1084#1077#1085#1090
            Width = 298
          end>
      end
    end
    inherited pnlGrid: TPanel
      Width = 331
      Height = 154
      inherited pnlNavigator: TPanel
        Width = 331
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
      end
      inherited grdData: TAbmesDBGrid
        Width = 331
        Height = 130
        Columns = <
          item
            EditButtons = <>
            FieldName = 'EMP_DAY_ABSENCE_REASON_NAME'
            Footers = <>
            Title.Caption = #1055#1088#1080#1095#1080#1085#1072' '#1079#1072' '#1062#1077#1083#1086#1076#1085#1077#1074#1085#1086' '#1054#1090#1089#1098#1089#1090#1074#1080#1077
            Width = 298
          end>
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    FieldDefs = <
      item
        Name = 'EMP_DAY_ABSENCE_REASON_CODE'
        DataType = ftFloat
      end
      item
        Name = 'EMP_DAY_ABSENCE_REASON_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'qryEmpDayAbsenceDocTypes'
        DataType = ftDataSet
      end>
    ProviderName = 'prvEmpDayAbsenceReasons'
    ConnectionBroker = dmMain.conEmployeeAvailability
    object cdsGridDataEMP_DAY_ABSENCE_REASON_CODE: TAbmesFloatField
      FieldName = 'EMP_DAY_ABSENCE_REASON_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsGridDataEMP_DAY_ABSENCE_REASON_NAME: TAbmesWideStringField
      FieldName = 'EMP_DAY_ABSENCE_REASON_NAME'
      Size = 100
    end
    object cdsGridDataqryEmpDayAbsenceDocTypes: TDataSetField
      FieldName = 'qryEmpDayAbsenceDocTypes'
    end
  end
  inherited alActions: TActionList
    Left = 186
    Top = 0
    inherited actForm: TAction
      Caption = #1042#1080#1076#1086#1074#1077' '#1044#1086#1082#1091#1084#1077#1085#1090#1080' '#1079#1072' '#1062#1077#1083#1086#1076#1085#1077#1074#1085#1080' '#1054#1090#1089#1098#1089#1090#1074#1080#1103
    end
  end
  inherited cdsDetail: TAbmesClientDataSet
    AggregatesActive = True
    DataSetField = cdsGridDataqryEmpDayAbsenceDocTypes
    OnNewRecord = cdsDetailNewRecord
    Top = 240
    object cdsDetailEMP_DAY_ABSENCE_REASON_CODE: TAbmesFloatField
      FieldName = 'EMP_DAY_ABSENCE_REASON_CODE'
    end
    object cdsDetailEMP_DAY_ABSENCE_DOC_TYPE_CODE: TAbmesFloatField
      FieldName = 'EMP_DAY_ABSENCE_DOC_TYPE_CODE'
    end
    object cdsDetailEMP_DAY_ABSENCE_DOC_TYPE_NAME: TAbmesWideStringField
      FieldName = 'EMP_DAY_ABSENCE_DOC_TYPE_NAME'
      Size = 50
    end
    object cdsDetail_MAX_EMP_DAY_ABSENCE_D_T_CODE: TAggregateField
      FieldName = '_MAX_EMP_DAY_ABSENCE_D_T_CODE'
      Active = True
      Expression = 'Max(EMP_DAY_ABSENCE_DOC_TYPE_CODE)'
    end
  end
  inherited dsDetail: TDataSource
    Top = 240
  end
end
