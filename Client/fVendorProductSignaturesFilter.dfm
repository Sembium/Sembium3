inherited fmVendorProductSignaturesFilter: TfmVendorProductSignaturesFilter
  Caption = #1060#1080#1083#1090#1098#1088' '#1085#1072' '#1054#1079#1085#1072#1095#1077#1085#1080#1103' '#1085#1072' '#1059#1054#1073' '#1086#1090' '#1055#1072#1088#1090#1085#1100#1086#1088#1080
  ClientHeight = 284
  ClientWidth = 785
  ExplicitWidth = 791
  ExplicitHeight = 309
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 249
    Width = 785
    TabOrder = 2
    ExplicitTop = 249
    ExplicitWidth = 785
    inherited pnlOKCancel: TPanel
      Left = 517
      ExplicitLeft = 517
    end
    inherited pnlClose: TPanel
      Left = 428
      ExplicitLeft = 428
    end
    inherited pnlApply: TPanel
      Left = 696
      ExplicitLeft = 696
    end
  end
  inline frProduct: TfrParamProductFilter [1]
    Left = 400
    Top = 8
    Width = 377
    Height = 233
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    TabStop = True
    ExplicitLeft = 400
    ExplicitTop = 8
    inherited grpTreeNodeFilter: TGroupBox
      inherited lblUsedBy: TLabel
        Width = 61
        ExplicitWidth = 61
      end
      inherited lblProductOrigin: TLabel
        Width = 23
        ExplicitWidth = 23
      end
      inherited lblCommonStatus: TLabel
        Width = 45
        ExplicitWidth = 45
      end
      inherited lblIsActive: TLabel
        Width = 53
        ExplicitWidth = 53
      end
      inherited pnlNodes: TPanel
        inherited grdChosenNodes: TAbmesDBGrid
          FooterFont.Name = 'Microsoft Sans Serif'
          TitleFont.Name = 'Microsoft Sans Serif'
        end
      end
      inherited pnlParams: TPanel
        inherited grdChosenNodeParams: TAbmesDBGrid
          FooterFont.Name = 'Microsoft Sans Serif'
          TitleFont.Name = 'Microsoft Sans Serif'
        end
      end
    end
  end
  inline frCompany: TfrCompanyFilter [2]
    Left = 8
    Top = 8
    Width = 377
    Height = 233
    TabOrder = 0
    TabStop = True
    ExplicitLeft = 8
    ExplicitTop = 8
    inherited grpTreeNodeFilter: TGroupBox
      ExplicitHeight = 233
      inherited pnlChosenCompanies: TPanel
        inherited grdChosenCompanies: TAbmesDBGrid
          FooterFont.Name = 'Microsoft Sans Serif'
          TitleFont.Name = 'Microsoft Sans Serif'
        end
      end
      inherited pnlNotChosenCompanies: TPanel
        inherited grdNotChosenCompanies: TAbmesDBGrid
          FooterFont.Name = 'Microsoft Sans Serif'
          TitleFont.Name = 'Microsoft Sans Serif'
        end
      end
    end
  end
  inherited alActions: TActionList [3]
    inherited actForm: TAction
      Caption = #1060#1080#1083#1090#1098#1088' '#1085#1072' '#1054#1079#1085#1072#1095#1077#1085#1080#1103' '#1085#1072' '#1059#1054#1073' '#1086#1090' '#1055#1072#1088#1090#1085#1100#1086#1088#1080
    end
  end
  inherited dsData: TDataSource [5]
  end
  inherited cdsData: TAbmesClientDataSet [6]
  end
  inherited cdsFilterVariants: TAbmesClientDataSet [7]
    Top = 248
  end
  inherited dsFilterVariants: TDataSource
    Top = 248
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Left = 64
    Top = 248
  end
end
