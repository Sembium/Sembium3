inherited fmCompanyStatuses: TfmCompanyStatuses
  Left = 370
  Top = 327
  Caption = #1056#1072#1079#1074#1080#1090#1080#1077' '#1085#1072' '#1057#1090#1072#1090#1091#1089' '#1085#1072' '#1055#1072#1088#1090#1085#1100#1086#1088
  ClientHeight = 320
  ClientWidth = 339
  ExplicitWidth = 345
  ExplicitHeight = 345
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 285
    Width = 339
    ExplicitTop = 285
    ExplicitWidth = 339
    inherited pnlOKCancel: TPanel
      Left = 71
      ExplicitLeft = 71
    end
    inherited pnlClose: TPanel
      Left = -18
      ExplicitLeft = -18
    end
    inherited pnlApply: TPanel
      Left = 250
      Visible = False
      ExplicitLeft = 250
    end
  end
  inherited pnlMain: TPanel
    Width = 339
    Height = 285
    ExplicitWidth = 339
    ExplicitHeight = 285
    inherited pnlGrid: TPanel
      Top = 105
      Width = 323
      Height = 172
      ExplicitTop = 105
      ExplicitWidth = 323
      ExplicitHeight = 172
      inherited pnlNavigator: TPanel
        Width = 323
        ExplicitWidth = 323
        inherited pnlFilterButton: TPanel
          Left = 96
          ExplicitLeft = 96
        end
        inherited navData: TDBColorNavigator
          Width = 96
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Hints.Strings = ()
          ExplicitWidth = 96
        end
        inherited tlbTopGridButtons: TToolBar
          Left = 120
          ExplicitLeft = 120
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 298
        Height = 148
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = '_COMPANY_STATUS_NAME'
            Footers = <>
            Title.Caption = #1057#1090#1072#1090#1091#1089
            Width = 95
          end
          item
            Color = 16115403
            EditButtons = <>
            FieldName = 'STATUS_DATE'
            Footers = <>
            Title.Caption = #1054#1090' '#1076#1072#1090#1072
            Width = 89
          end
          item
            EditButtons = <>
            FieldName = '_EXISTANCE_MONTHS'
            Footers = <>
            Title.Caption = #1052#1077#1089#1077#1094#1080' '#1085#1072' '#1089#1098#1097#1077#1089#1090#1074#1091#1074#1072#1085#1077
            Width = 79
          end>
      end
      inherited pnlRightButtons: TPanel
        Left = 298
        Height = 148
        ExplicitLeft = 298
        ExplicitHeight = 148
        inherited btnEditRecord: TSpeedButton
          Visible = False
        end
      end
    end
    object pnlCompanyInfo: TPanel
      Left = 8
      Top = 8
      Width = 323
      Height = 97
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        323
        97)
      object gbCompanyName: TGroupBox
        Left = 0
        Top = -1
        Width = 323
        Height = 45
        Anchors = [akLeft, akTop, akRight]
        Caption = ' '#1055#1072#1088#1090#1085#1100#1086#1088' - '#1050#1088#1072#1090#1082#1086' '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '
        TabOrder = 0
        DesignSize = (
          323
          45)
        object edtCompanyName: TDBEdit
          Left = 8
          Top = 16
          Width = 307
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          Color = clBtnFace
          DataField = 'COMPANY_NAME'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 0
        end
      end
      object gbRoleAndPriority: TGroupBox
        Left = 0
        Top = 47
        Width = 323
        Height = 45
        Anchors = [akLeft, akTop, akRight]
        Caption = ' '#1055#1072#1079#1072#1088#1085#1072' '#1056#1086#1083#1103' '#1080' '#1055#1088#1080#1086#1088#1080#1090#1077#1090' '#1079#1072' '#1057#1090#1072#1090#1091#1089' '
        TabOrder = 1
        DesignSize = (
          323
          45)
        object edtRole: TDBEdit
          Left = 8
          Top = 16
          Width = 280
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          Color = clBtnFace
          DataField = '_BASE_ROLE_NAME'
          DataSource = dsGridData
          ReadOnly = True
          TabOrder = 0
        end
        object edtPriority: TDBEdit
          Left = 290
          Top = 16
          Width = 25
          Height = 21
          Anchors = [akTop, akRight]
          Color = clBtnFace
          DataField = '_PRIORITY_NO'
          DataSource = dsGridData
          ReadOnly = True
          TabOrder = 1
        end
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 72
    Top = 184
  end
  inherited cdsGridData: TAbmesClientDataSet
    FieldDefs = <
      item
        Name = 'COMPANY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'COMPANY_STATUS_CODE'
        DataType = ftFloat
      end
      item
        Name = 'COMPANY_STATUS_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'STATUS_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'NEXT_STATUS_DATE'
        DataType = ftTimeStamp
      end>
    IndexFieldNames = 'STATUS_DATE'
    Params = <
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end>
    Left = 40
    Top = 184
    object cdsGridDataCOMPANY_CODE: TAbmesFloatField
      FieldName = 'COMPANY_CODE'
    end
    object cdsGridDataCOMPANY_STATUS_CODE: TAbmesFloatField
      FieldName = 'COMPANY_STATUS_CODE'
    end
    object cdsGridDataCOMPANY_STATUS_NAME: TAbmesWideStringField
      FieldName = 'COMPANY_STATUS_NAME'
      ProviderFlags = []
      Size = 100
    end
    object cdsGridData_COMPANY_STATUS_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_COMPANY_STATUS_NAME'
      LookupDataSet = cdsStatuses
      LookupKeyFields = 'COMPANY_STATUS_CODE'
      LookupResultField = 'COMPANY_STATUS_NAME'
      KeyFields = 'COMPANY_STATUS_CODE'
      Size = 100
      Lookup = True
    end
    object cdsGridData_PRIORITY_NO: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_PRIORITY_NO'
      Calculated = True
    end
    object cdsGridData_BASE_ROLE_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_BASE_ROLE_NAME'
      Size = 50
      Calculated = True
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    Left = 40
    Top = 216
  end
  inherited dsGridDataParams: TDataSource
    Left = 72
    Top = 216
  end
  inherited dsData: TDataSource
    Left = 72
    Top = 152
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 40
    Top = 152
  end
  inherited cdsStatuses: TAbmesClientDataSet
    ProviderName = 'prvCompanyStatuses'
    ConnectionBroker = dmMain.conCompanies
    Left = 112
    Top = 184
    object cdsStatusesCOMPANY_STATUS_CODE: TAbmesFloatField
      FieldName = 'COMPANY_STATUS_CODE'
    end
    object cdsStatusesCOMPANY_STATUS_NAME: TAbmesWideStringField
      FieldName = 'COMPANY_STATUS_NAME'
      Size = 100
    end
  end
end
