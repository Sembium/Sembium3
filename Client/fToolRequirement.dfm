inherited fmToolRequirement: TfmToolRequirement
  Caption = #1048#1085#1089#1090#1088#1091#1084#1077#1085#1090#1072#1088#1080#1091#1084
  ClientWidth = 361
  ExplicitWidth = 367
  ExplicitHeight = 165
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Width = 361
    ExplicitWidth = 393
    inherited pnlOKCancel: TPanel
      Left = 93
      ExplicitLeft = 125
    end
    inherited pnlClose: TPanel
      Left = 4
      ExplicitLeft = 36
    end
    inherited pnlApply: TPanel
      Left = 272
      ExplicitLeft = 304
    end
  end
  inherited rgRequirement: TDBRadioGroup
    Width = 345
    ExplicitWidth = 377
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1048#1085#1089#1090#1088#1091#1084#1077#1085#1090#1072#1088#1080#1091#1084
    end
  end
  inherited cdsRequirements: TAbmesClientDataSet
    ProviderName = 'prvToolRequirements'
    ConnectionBroker = dmMain.conSpecifications
    object cdsRequirementsTOOL_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'TOOL_REQUIREMENT_CODE'
    end
    object cdsRequirementsTOOL_REQUIREMENT_NAME: TAbmesWideStringField
      FieldName = 'TOOL_REQUIREMENT_NAME'
      Size = 100
    end
  end
end
