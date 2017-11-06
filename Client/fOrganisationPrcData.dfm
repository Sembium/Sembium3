inherited fmOrganisationPrcData: TfmOrganisationPrcData
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSizeable
  Caption = #1042#1086#1083#1077#1074#1086' '#1080' '#1048#1076#1077#1081#1085#1086' '#1055#1088#1086#1089#1090#1088#1072#1085#1089#1090#1074#1086' '#1085#1072' '#1057#1091#1073#1077#1082#1090#1085#1086#1089#1090#1090#1072
  ClientHeight = 636
  ClientWidth = 1007
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 601
    Width = 1007
    inherited pnlOKCancel: TPanel
      Left = 739
    end
    inherited pnlClose: TPanel
      Left = 650
    end
    inherited pnlApply: TPanel
      Left = 918
      Visible = False
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1042#1086#1083#1077#1074#1086' '#1080' '#1048#1076#1077#1081#1085#1086' '#1055#1088#1086#1089#1090#1088#1072#1085#1089#1090#1074#1086' '#1085#1072' '#1057#1091#1073#1077#1082#1090#1085#1086#1089#1090#1090#1072
    end
  end
  object cdsPrcData: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    AfterOpen = cdsPrcDataAfterOpen
    Left = 216
    object cdsPrcDataPRC_DATA: TBlobField
      FieldName = 'PRC_DATA'
      BlobType = ftOraBlob
      Size = 1
    end
  end
end
