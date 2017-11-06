inherited fmDocEmptinessRequirement: TfmDocEmptinessRequirement
  Caption = #1052#1048#1048#1054' '#1085#1077#1086#1073#1093#1086#1076#1080#1084#1086#1089#1090
  ExplicitWidth = 231
  ExplicitHeight = 165
  PixelsPerInch = 96
  TextHeight = 13
  inherited rgRequirement: TDBRadioGroup
    DataField = 'DOC_EMPTINESS_REQUIREMENT_CODE'
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1052#1048#1048#1054' '#1085#1077#1086#1073#1093#1086#1076#1080#1084#1086#1089#1090
    end
  end
  inherited cdsRequirements: TAbmesClientDataSet
    ProviderName = 'prvDocEmptinessRequirements'
    ConnectionBroker = dmMain.conDoc
    object cdsRequirementsDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'DOC_EMPTINESS_REQUIREMENT_CODE'
    end
    object cdsRequirementsDOC_EMPTINESS_REQUIREMENT_NAME: TAbmesWideStringField
      FieldName = 'DOC_EMPTINESS_REQUIREMENT_NAME'
      Size = 100
    end
  end
end
