inherited fmXModelFork: TfmXModelFork
  Left = 297
  Top = 293
  ActiveControl = edtDetailTechQuantity
  Caption = #1056#1072#1079#1082#1083#1086#1085#1077#1085#1080#1077' - %s'
  ExplicitWidth = 656
  ExplicitHeight = 381
  PixelsPerInch = 96
  TextHeight = 13
  inherited lblDetailTechQuantity: TLabel
    Width = 51
    Caption = #1058#1077#1093#1085'. '#1082'-'#1074#1086
    ExplicitWidth = 51
  end
  inherited lblTotalDetailTechQuantity: TLabel
    Left = 552
    Top = 16
    Visible = False
    ExplicitLeft = 552
    ExplicitTop = 16
  end
  inherited txtDetailTechMeasure: TDBText
    Left = 108
    ExplicitLeft = 108
  end
  inherited lblNotes: TLabel
    Left = 144
    ExplicitLeft = 144
  end
  inherited bvlSeparator: TBevel
    Width = 473
    ExplicitWidth = 473
  end
  inherited edtProductTechQuantity: TDBEdit
    TabOrder = 12
  end
  inherited edtProductTotalTechQuantity: TDBEdit
    TabOrder = 13
  end
  inherited edtProductTotalAccountQuantity: TDBEdit
    TabOrder = 14
  end
  inherited edtProductSecondaryTotalPrice: TDBEdit
    TabOrder = 19
  end
  inherited edtDetailTechQuantity: TDBEdit
    DataField = 'LINE_DETAIL_TECH_QUANTITY'
  end
  inherited edtTotalDetailTechQuantity: TDBEdit
    Left = 552
    Top = 32
    Visible = False
    ExplicitLeft = 552
    ExplicitTop = 32
  end
  inherited pnlCopyDetailToProduct: TPanel
    TabOrder = 10
  end
  inherited edtNotes: TDBEdit
    Left = 144
    Width = 289
    ExplicitLeft = 144
    ExplicitWidth = 289
  end
  inherited frProduct: TfrProductFieldEditFrame
    TabOrder = 11
  end
  object cbhIsWasteFork: TAbmesDBCheckBox [35]
    Left = 507
    Top = 175
    Width = 126
    Height = 17
    Caption = #1055#1086' '#1059#1054#1073' '#1073#1083#1086#1082#1080#1088#1072#1097
    DataField = 'IS_WASTE_FORK'
    DataSource = dsData
    ReadOnly = True
    TabOrder = 9
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1056#1072#1079#1082#1083#1086#1085#1077#1085#1080#1077' - %s'
    end
  end
end
