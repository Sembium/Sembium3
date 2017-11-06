inherited fmDocProfile: TfmDocProfile
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = #1052#1048#1048#1054' '#1055#1088#1086#1092#1080#1083' - %s'
  ClientHeight = 396
  ClientWidth = 610
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 594
    Height = 345
  end
  object lblNo: TLabel [1]
    Left = 24
    Top = 16
    Width = 14
    Height = 13
    Caption = 'No'
  end
  object lblName: TLabel [2]
    Left = 103
    Top = 16
    Width = 76
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
  end
  inherited pnlBottomButtons: TPanel
    Top = 361
    Width = 610
    TabOrder = 3
    inherited pnlOKCancel: TPanel
      Left = 342
      TabOrder = 2
    end
    inherited pnlClose: TPanel
      Left = 253
      TabOrder = 1
    end
    inherited pnlApply: TPanel
      Left = 521
      TabOrder = 3
      Visible = False
    end
    object pnlAuthorizeButtons: TPanel
      Left = 0
      Top = 0
      Width = 129
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object pnlAuthorize: TPanel
        Left = 0
        Top = 0
        Width = 129
        Height = 35
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        object btnAuthorize: TBitBtn
          Left = 8
          Top = 2
          Width = 121
          Height = 25
          Action = actAuthorize
          Caption = #1040#1074#1090#1086#1088#1080#1079#1080#1088#1072#1085#1077
          Spacing = -1
          TabOrder = 0
        end
      end
      object pnlUnauthorize: TPanel
        Left = 129
        Top = 0
        Width = 129
        Height = 35
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        object btnUnauthorize: TBitBtn
          Left = 8
          Top = 2
          Width = 121
          Height = 25
          Action = actUnauthorize
          Caption = #1056#1072#1079#1072#1074#1090#1086#1088#1080#1079#1080#1088#1072#1085#1077
          Spacing = -1
          TabOrder = 0
        end
      end
    end
  end
  object edtNo: TDBEdit [4]
    Left = 24
    Top = 32
    Width = 68
    Height = 21
    DataField = 'DOC_PROFILE_NO'
    DataSource = dsData
    TabOrder = 0
  end
  object edtName: TDBEdit [5]
    Left = 103
    Top = 32
    Width = 482
    Height = 21
    DataField = 'DOC_PROFILE_NAME'
    DataSource = dsData
    TabOrder = 1
  end
  inline frDoc: TfrDoc [6]
    Left = 24
    Top = 64
    Width = 561
    Height = 281
    Anchors = [akLeft, akTop, akRight, akBottom]
    Constraints.MinHeight = 62
    TabOrder = 2
    inherited pnlMain: TPanel
      Width = 561
      Height = 281
      inherited pnlTop: TPanel
        Width = 561
        inherited pnlTopRight: TPanel
          Left = 471
          inherited pnlTopRightClient: TPanel
            Width = 90
            inherited pnlToggleShowInactiveDocItems: TPanel
              Left = 58
            end
          end
          inherited tlbMaximize: TToolBar
            Top = -50
            Align = alNone
          end
        end
      end
      inherited pnlBottom: TPanel
        Top = 256
        Width = 561
        inherited pnlCount: TPanel
          Left = 487
        end
      end
      inherited pnlGrid: TPanel
        Width = 561
        Height = 231
        inherited grdClonedDocItems: TAbmesDBGrid
          Width = 561
          Height = 231
          FooterFont.Name = 'Microsoft Sans Serif'
          TitleFont.Name = 'Microsoft Sans Serif'
        end
      end
    end
  end
  inherited alActions: TActionList [7]
    inherited actForm: TAction
      Caption = #1052#1048#1048#1054' '#1055#1088#1086#1092#1080#1083' - %s'
    end
    object actAuthorize: TAction
      Caption = #1040#1074#1090#1086#1088#1080#1079#1080#1088#1072#1085#1077
      ImageIndex = 55
      OnExecute = actAuthorizeExecute
      OnUpdate = actAuthorizeUpdate
    end
    object actUnauthorize: TAction
      Caption = #1056#1072#1079#1072#1074#1090#1086#1088#1080#1079#1080#1088#1072#1085#1077
      ImageIndex = 110
      OnExecute = actUnauthorizeExecute
      OnUpdate = actUnauthorizeUpdate
    end
  end
  inherited dsData: TDataSource [8]
  end
  inherited cdsData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conDoc
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_PROFILE_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvDocProfile'
    BeforeApplyUpdates = cdsDataBeforeApplyUpdates
    object cdsDataDOC_PROFILE_CODE: TAbmesFloatField
      FieldName = 'DOC_PROFILE_CODE'
      Required = True
    end
    object cdsDataDOC_ITEM_TEMPLATE_TYPE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_TEMPLATE_TYPE_CODE'
      Required = True
    end
    object cdsDataDOC_PROFILE_NO: TAbmesFloatField
      DisplayLabel = 'No'
      FieldName = 'DOC_PROFILE_NO'
      Required = True
    end
    object cdsDataDOC_PROFILE_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'DOC_PROFILE_NAME'
      Required = True
      Size = 250
    end
    object cdsDataDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsDataDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsDataAUTHORIZE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'AUTHORIZE_EMPLOYEE_CODE'
      OnChange = cdsDataAUTHORIZE_EMPLOYEE_CODEChange
    end
    object cdsDataAUTHORIZE_DATE: TAbmesSQLTimeStampField
      FieldName = 'AUTHORIZE_DATE'
    end
    object cdsDataAUTHORIZE_TIME: TAbmesSQLTimeStampField
      FieldName = 'AUTHORIZE_TIME'
    end
  end
end
