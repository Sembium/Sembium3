inherited fmSaleRequestGroup: TfmSaleRequestGroup
  Caption = 
    #1055#1072#1082#1077#1090' '#1044#1080#1072#1083#1086#1079#1080' '#1089' '#1050#1083#1080#1077#1085#1090' '#1079#1072' '#1055#1088#1086#1076#1072#1078#1073#1072' '#1085#1072' %ProductClassAbbrev% '#1087#1086' '#1047#1072 +
    #1076#1072#1085#1080#1077' - %s'
  ClientHeight = 308
  ClientWidth = 827
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 273
    Width = 827
    TabOrder = 6
    inherited pnlOKCancel: TPanel
      Left = 559
    end
    inherited pnlClose: TPanel
      Left = 470
    end
    inherited pnlApply: TPanel
      Left = 738
      Visible = False
    end
    object pnlFinishButton: TPanel
      Left = 0
      Top = 0
      Width = 113
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 3
      object btnFinish: TBitBtn
        Left = 8
        Top = 2
        Width = 105
        Height = 25
        Action = actFinish
        Caption = #1055#1088#1080#1082#1083#1102#1095#1074#1072#1085#1077'...'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
          000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBD
          BD00BDBDBD000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00000000007B7B7B007B7B7B00BDBDBD007B7B7B00000000007B7B
          7B00BDBDBD007B7B7B007B7B7B0000000000FF00FF00FF00FF00FF00FF00FF00
          FF0000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD007B7B7B00000000007B7B
          7B00BDBDBD00BDBDBD00BDBDBD00BDBDBD0000000000FF00FF00FF00FF00FF00
          FF00000000007B7B7B007B7B7B007B7B7B00BDBDBD00BDBDBD0000000000BDBD
          BD00BDBDBD007B7B7B007B7B7B007B7B7B0000000000FF00FF00FF00FF00FF00
          FF0000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD0000000000000000000000
          0000BDBDBD00BDBDBD00BDBDBD00BDBDBD0000000000FF00FF00FF00FF00FF00
          FF00000000007B7B7B007B7B7B007B7B7B007B7B7B0000000000000000000000
          00007B7B7B007B7B7B007B7B7B007B7B7B0000000000FF00FF00FF00FF00FF00
          FF0000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
          BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD0000000000FF00FF00FF00FF00FF00
          FF00FF00FF000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000BDBDBD0000000000FF00FF00FF00FF00FF00
          FF0000000000BDBDBD0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000BDBDBD0000000000FF00FF00FF00FF00FF00
          FF0000000000BDBDBD0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000BDBDBD0000000000FF00FF00FF00FF00FF00
          FF0000000000BDBDBD0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF007B7B7B007B7B7B00BDBDBD0000000000000000000000
          0000BDBDBD007B7B7B007B7B7B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0000000000BDBDBD00BDBDBD00BDBDBD00BDBD
          BD00BDBDBD0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
          000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        TabOrder = 0
      end
    end
    object pnlAnnulButton: TPanel
      Left = 113
      Top = 0
      Width = 113
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 4
      object btnAnnul: TBitBtn
        Left = 8
        Top = 2
        Width = 105
        Height = 25
        Action = actAnnul
        Caption = #1040#1085#1091#1083#1080#1088#1072#1085#1077'...'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF0000000000000000000000000000000000000000000000
          0000000000000000000000000000FFFF0000FFFF0000FFFF0000FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF000000000000000000FFFF
          FF0000FFFF00FFFFFF0000FFFF0000000000FFFF0000FFFF0000FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FFFFFF000000000000FFFF00FFFFFF0000FF
          FF000000000000FFFF00FFFFFF0000FFFF0000000000FFFF0000FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF0000000000000000000000
          000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF000000000000FF
          FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FF00FF00FF00
          FF00FF00FF00000000000000000000000000000000000000000000FFFF00FFFF
          FF0000000000FFFFFF0000FFFF00FFFFFF0000FFFF0000000000000000000000
          000000000000FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFFFF000000
          0000FFFFFF0000FFFF000000000000FFFF00FFFFFF0000000000FFFF00000000
          0000FFFFFF0000FFFF0000000000000000000000000000000000000000000000
          0000000000000000000000FFFF00FFFFFF000000000000000000FFFF00000000
          000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
          FF0000FFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFF00000000
          0000FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
          0000000000000000000000000000FFFFFF00FFFFFF0000000000FFFF00000000
          000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
          FF0000FFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFF00000000
          0000FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
          000000000000FFFFFF0000000000000000000000000000000000FFFF00000000
          000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
          0000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
          0000FF00FF00000000000000000000000000000000000000000000000000FFFF
          FF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000000000000000000000000000000000000000
          0000000000000000000000000000FF00FF00FF00FF00FF00FF00}
        TabOrder = 0
      end
    end
    object pnlFinished: TPanel
      Left = 345
      Top = 0
      Width = 127
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 5
      object chkFinished: TCheckBox
        Left = 16
        Top = 8
        Width = 113
        Height = 17
        Caption = #1055#1044#1050' '#1077' '#1087#1088#1080#1082#1083#1102#1095#1077#1085
        Checked = True
        Enabled = False
        State = cbChecked
        TabOrder = 0
      end
    end
    object pnlAnnuled: TPanel
      Left = 226
      Top = 0
      Width = 119
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 6
      object chkAnnuled: TCheckBox
        Left = 16
        Top = 8
        Width = 105
        Height = 17
        Caption = #1055#1044#1050' '#1077' '#1072#1085#1091#1083#1080#1088#1072#1085
        Checked = True
        Enabled = False
        State = cbChecked
        TabOrder = 0
      end
    end
  end
  object gbID: TGroupBox [1]
    Left = 8
    Top = 8
    Width = 545
    Height = 73
    Caption = ' ID '#1055#1072#1082#1077#1090' '#1044#1080#1072#1083#1086#1079#1080' '#1089' '#1050#1083#1080#1077#1085#1090' ('#1055#1044#1050') '
    TabOrder = 0
    object lblSaleDealType: TLabel
      Left = 64
      Top = 24
      Width = 19
      Height = 13
      Caption = #1058#1080#1087
    end
    object lblRequestBranch: TLabel
      Left = 112
      Top = 24
      Width = 51
      Height = 13
      Caption = #1058#1055' '#1043#1083'.'
    end
    object lblRequestNo: TLabel
      Left = 176
      Top = 24
      Width = 14
      Height = 13
      Caption = 'No'
    end
    object lblIsActivatedByClient: TLabel
      Left = 304
      Top = 24
      Width = 47
      Height = 13
      Caption = #1040#1082#1090#1080#1074'. '#1086#1090
    end
    object lblSaleCount: TLabel
      Left = 485
      Top = 8
      Width = 43
      Height = 13
      Caption = #1041#1088'. '#1054#1044#1050
    end
    object lblRealizationSaleCount: TLabel
      Left = 480
      Top = 24
      Width = 20
      Height = 13
      Caption = #1040#1056#1083
    end
    object lblPrognosisSaleCount: TLabel
      Left = 512
      Top = 24
      Width = 21
      Height = 13
      Caption = #1040#1055#1089
    end
    object lblStatus: TLabel
      Left = 8
      Top = 24
      Width = 34
      Height = 13
      Caption = #1057#1090#1072#1090#1091#1089
    end
    object lblClientRequestGroupNo: TLabel
      Left = 376
      Top = 24
      Width = 93
      Height = 13
      Caption = #1050#1083'. '#1086#1079#1085#1072#1095'. '#1085#1072' '#1055#1044#1050
    end
    object lblStreamType: TLabel
      Left = 224
      Top = 24
      Width = 31
      Height = 13
      Caption = #1055#1086#1090#1086#1082
    end
    object cbSaleDealType: TJvDBLookupCombo
      Left = 64
      Top = 40
      Width = 41
      Height = 21
      DropDownWidth = 250
      DeleteKeyClear = False
      DisplayAllFields = True
      DataField = 'SALE_DEAL_TYPE_CODE'
      DataSource = dsData
      LookupField = 'SALE_DEAL_TYPE_CODE'
      LookupDisplay = 'SALE_DEAL_TYPE_ABBREV;SALE_DEAL_TYPE_NAME'
      LookupSource = dsSaleDealTypes
      TabOrder = 1
    end
    object cbRequestBranch: TJvDBLookupCombo
      Left = 112
      Top = 40
      Width = 63
      Height = 21
      DisplayAllFields = True
      DataField = 'REQUEST_BRANCH_CODE'
      DataSource = dsData
      DisplayEmpty = ' '
      LookupField = 'BRANCH_CODE'
      LookupDisplay = 'BRANCH_IDENTIFIER'
      LookupSource = dsBranches
      TabOrder = 2
    end
    object edtRequestNo: TDBEdit
      Left = 176
      Top = 40
      Width = 41
      Height = 21
      TabStop = False
      Color = clBtnFace
      DataField = 'REQUEST_NO'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 3
    end
    object edtRealizationSaleCount: TDBEdit
      Left = 480
      Top = 40
      Width = 25
      Height = 21
      TabStop = False
      Color = clBtnFace
      DataField = 'REALIZATION_SALE_COUNT'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 7
    end
    object edtPrognosisSaleCount: TDBEdit
      Left = 512
      Top = 40
      Width = 25
      Height = 21
      TabStop = False
      Color = clBtnFace
      DataField = 'PROGNOSIS_SALE_COUNT'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 8
    end
    object tbDocButton: TToolBar
      Left = 258
      Top = 39
      Width = 39
      Height = 22
      Align = alNone
      ButtonWidth = 36
      EdgeInner = esNone
      EdgeOuter = esNone
      Images = dmMain.ilDocs
      TabOrder = 9
      object btnDocs: TToolButton
        Left = 0
        Top = 0
        Action = actDocumentation
        ParentShowHint = False
        ShowHint = True
      end
    end
    object edtStatus: TDBEdit
      Left = 8
      Top = 40
      Width = 41
      Height = 21
      TabStop = False
      Color = clBtnFace
      DataField = 'STATUS_CODE'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 0
    end
    object edtClientRequestGroupNo: TDBEdit
      Left = 376
      Top = 40
      Width = 97
      Height = 21
      DataField = 'CLIENT_REQUEST_GROUP_NO'
      DataSource = dsData
      TabOrder = 6
    end
    object cbStreamType: TJvDBLookupCombo
      Left = 224
      Top = 40
      Width = 33
      Height = 21
      DropDownWidth = 200
      DeleteKeyClear = False
      DisplayAllFields = True
      DataField = 'STREAM_TYPE_CODE'
      DataSource = dsData
      LookupField = 'STREAM_TYPE_CODE'
      LookupDisplay = 'STREAM_TYPE_ABBREV;STREAM_TYPE_NAME'
      LookupSource = dsStreamTypes
      TabOrder = 4
    end
    object cbIsActivatedByClient: TJvDBComboBox
      Left = 304
      Top = 40
      Width = 65
      Height = 21
      DataField = 'IS_ACTIVATED_BY_CLIENT'
      DataSource = dsData
      ItemHeight = 13
      Items.Strings = (
        #1048#1055
        #1050#1083#1080#1077#1085#1090)
      TabOrder = 5
      Values.Strings = (
        'False'
        'True')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
      ListSettings.OutfilteredValueFont.Style = []
    end
  end
  object gbDates: TGroupBox [2]
    Left = 560
    Top = 8
    Width = 257
    Height = 73
    Caption = ' '#1044#1072#1090#1080' '#1085#1072' '#1055#1044#1050' '
    TabOrder = 1
    object imgArrow: TImage
      Left = 120
      Top = 48
      Width = 15
      Height = 11
      Picture.Data = {
        07544269746D617036010000424D360100000000000076000000280000001E00
        00000C0000000100040000000000C00000000000000000000000100000001000
        000000000000000080000080000000808000800000008000800080800000C0C0
        C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
        FF00777777778877777777777778877777007777777F00877777777777F77877
        77007777777F00087777777777F7778777007888888700008777888888777778
        7700F00000000000087F7777777777778700F00000000000008F777777777777
        7800F00000000000007F7777777777777700F00000000000077F777777777777
        7700FFFFFFFF0000777FFFFFFFF7777777007777777F00077777777777F77777
        77007777777F00777777777777F7777777007777777FF7777777777777FF7777
        7700}
      Transparent = True
    end
    object dbtRequestRegisterDateDiff: TDBText
      Left = 120
      Top = 32
      Width = 18
      Height = 14
      Alignment = taCenter
      DataField = '_REQUEST_REGISTER_DATE_DIFF'
      DataSource = dsData
    end
    object lblRequestSendDate: TLabel
      Left = 8
      Top = 24
      Width = 59
      Height = 13
      Caption = #1057#1090#1072#1088#1090#1080#1088#1072#1085#1077
    end
    object lblRequestRegisterDate: TLabel
      Left = 144
      Top = 24
      Width = 71
      Height = 13
      Caption = #1056#1077#1075#1080#1089#1090#1088#1080#1088#1072#1085#1077
    end
    inline frRequestSendDate: TfrDateFieldEditFrame
      Left = 8
      Top = 40
      Width = 105
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 105
      Constraints.MinHeight = 21
      Constraints.MinWidth = 105
      TabOrder = 0
      TabStop = True
      inherited alActions: TActionList
        Top = 24
      end
      inherited dsData: TDataSource
        Top = 24
      end
      inherited cdsDate: TAbmesClientDataSet
        Top = 24
      end
      inherited dsDate: TDataSource
        Top = 24
      end
    end
    inline frRequestRegisterDate: TfrDateFieldEditFrame
      Left = 144
      Top = 40
      Width = 105
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 105
      Constraints.MinHeight = 21
      Constraints.MinWidth = 105
      TabOrder = 1
      TabStop = True
      inherited alActions: TActionList
        Top = 24
      end
      inherited dsData: TDataSource
        Top = 24
      end
      inherited cdsDate: TAbmesClientDataSet
        Top = 24
      end
      inherited dsDate: TDataSource
        Top = 24
      end
    end
  end
  inline frClient: TfrPartnerExFieldEditFrame [3]
    Left = 8
    Top = 88
    Width = 809
    Height = 60
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 155
    Constraints.MinHeight = 49
    TabOrder = 2
    TabStop = True
    inherited gbPartner: TGroupBox
      Width = 809
      Caption = ' '#1050#1083#1080#1077#1085#1090' '
      inherited pnlNameAndButtons: TPanel
        Width = 384
        inherited pnlRightButtons: TPanel
          Left = 348
        end
        inherited pnlPartnerName: TPanel
          Width = 348
          inherited edtPartnerName: TDBEdit
            Width = 335
          end
          inherited cbPartner: TJvDBLookupCombo
            Width = 349
          end
        end
        inherited pnlNameAndButtonsTop: TPanel
          Width = 384
          inherited lblPartner: TLabel
            Width = 76
          end
        end
      end
      inherited pnlPaddingRight: TPanel
        Left = 688
      end
      inherited pnlPartnerCode: TPanel
        inherited lblPartnerCode: TLabel
          Width = 19
        end
      end
      inherited frPartnerStatus: TfrCompanyStatus
        inherited lblCurrentStatus: TLabel
          Width = 34
        end
        inherited lblReachMonths: TLabel
          Width = 6
        end
        inherited lblExistanceMonths: TLabel
          Width = 6
        end
        inherited lblMonths: TLabel
          Width = 11
        end
        inherited dsData: TDataSource
          DataSet = frClient.cdsPartner
        end
      end
      inherited pnlPriority: TPanel
        inherited lblPriority: TLabel
          Width = 38
        end
      end
      inherited pnlCountry: TPanel
        Left = 694
      end
      inherited pnlParRelButton: TPanel
        Left = 734
      end
    end
  end
  inline frMediator: TfrPartnerFieldEditFrame [4]
    Left = 8
    Top = 152
    Width = 409
    Height = 49
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    Constraints.MinHeight = 49
    TabOrder = 3
    TabStop = True
    inherited gbPartner: TGroupBox
      Width = 409
      Caption = ' '#1055#1086#1089#1088#1077#1076#1085#1080#1082' '
      inherited pnlNameAndButtons: TPanel
        Width = 320
        inherited pnlRightButtons: TPanel
          Left = 284
        end
        inherited pnlPartnerName: TPanel
          Width = 284
          inherited edtPartnerName: TDBEdit
            Width = 285
          end
          inherited cbPartner: TJvDBLookupCombo
            Width = 285
          end
        end
      end
      inherited pnlPaddingRight: TPanel
        Left = 401
      end
    end
  end
  inline frSRGEmployee: TfrEmployeeFieldEditFrame [5]
    Left = 424
    Top = 152
    Width = 393
    Height = 49
    Constraints.MaxHeight = 49
    Constraints.MinHeight = 49
    TabOrder = 4
    TabStop = True
    inherited gbEmployee: TGroupBox
      Width = 393
      Caption = ' '#1042#1086#1076#1077#1097' '#1087#1086' '#1055#1044#1050' '
      inherited pnlEmployeeName: TPanel
        Width = 318
        inherited pnlRightButtons: TPanel
          Left = 282
        end
        inherited pnlEmpoyeeNameInner: TPanel
          Width = 282
          inherited edtEmployeeName: TDBEdit
            Width = 281
          end
          inherited cbEmployee: TJvDBLookupCombo
            Width = 281
          end
        end
      end
      inherited pnlPaddingRight: TPanel
        Left = 383
      end
    end
  end
  object gbNotes: TGroupBox
    Left = 8
    Top = 208
    Width = 809
    Height = 57
    Caption = ' '#1041#1077#1083#1077#1078#1082#1080' '
    TabOrder = 5
    object moNotes: TDBMemo
      Left = 8
      Top = 16
      Width = 793
      Height = 33
      DataField = 'NOTES'
      DataSource = dsData
      TabOrder = 0
    end
  end
  inherited alActions: TActionList
    Left = 288
    inherited actForm: TAction
      Caption = 
        #1055#1072#1082#1077#1090' '#1044#1080#1072#1083#1086#1079#1080' '#1089' '#1050#1083#1080#1077#1085#1090' '#1079#1072' '#1055#1088#1086#1076#1072#1078#1073#1072' '#1085#1072' %ProductClassAbbrev% '#1087#1086' '#1047#1072 +
        #1076#1072#1085#1080#1077' - %s'
    end
    object actFinish: TAction
      Caption = #1055#1088#1080#1082#1083#1102#1095#1074#1072#1085#1077'...'
      Hint = #1055#1088#1080#1082#1083#1102#1095#1074#1072#1085#1077
      ImageIndex = 17
      OnExecute = actFinishExecute
      OnUpdate = actFinishUpdate
    end
    object actAnnul: TAction
      Caption = #1040#1085#1091#1083#1080#1088#1072#1085#1077'...'
      Hint = #1040#1085#1091#1083#1080#1088#1072#1085#1077
      ImageIndex = 16
      OnExecute = actAnnulExecute
      OnUpdate = actAnnulUpdate
    end
    object actDocumentation: TAction
      Hint = #1052#1048#1048#1054' '#1085#1072' '#1055#1044#1050
      ImageIndex = 1
      OnExecute = actDocumentationExecute
    end
  end
  inherited dsData: TDataSource
    Left = 256
  end
  inherited cdsData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conSaleOrders
    Params = <
      item
        DataType = ftFloat
        Name = 'REQUEST_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUEST_NO'
        ParamType = ptInput
      end>
    ProviderName = 'prvSaleRequestGroup'
    AfterOpen = cdsDataAfterOpen
    BeforePost = cdsDataBeforePost
    OnCalcFields = cdsDataCalcFields
    BeforeApplyUpdates = cdsDataBeforeApplyUpdates
    Left = 224
    object cdsDataREQUEST_BRANCH_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' '#1043#1083'.'
      FieldName = 'REQUEST_BRANCH_CODE'
      Required = True
      OnChange = cdsDataREQUEST_BRANCH_CODEChange
    end
    object cdsDataREQUEST_NO: TAbmesFloatField
      FieldName = 'REQUEST_NO'
    end
    object cdsDataSALE_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_ORDER_TYPE_CODE'
    end
    object cdsDataSALE_DEAL_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1058#1080#1087
      FieldName = 'SALE_DEAL_TYPE_CODE'
      Required = True
      OnChange = cdsDataSALE_DEAL_TYPE_CODEChange
    end
    object cdsDataREQUEST_SEND_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1044#1072#1090#1072' '#1085#1072' '#1057#1090#1072#1088#1090#1080#1088#1072#1085#1077
      FieldName = 'REQUEST_SEND_DATE'
      Required = True
      OnChange = cdsDataREQUEST_SEND_DATEChange
    end
    object cdsDataREQUEST_REGISTER_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1044#1072#1090#1072' '#1085#1072' '#1056#1077#1075#1080#1089#1090#1088#1080#1088#1072#1085#1077
      FieldName = 'REQUEST_REGISTER_DATE'
      Required = True
      OnValidate = cdsDataREQUEST_REGISTER_DATEValidate
    end
    object cdsDataCLIENT_COMPANY_CODE: TAbmesFloatField
      DisplayLabel = #1050#1083#1080#1077#1085#1090
      FieldName = 'CLIENT_COMPANY_CODE'
      Required = True
      OnChange = cdsDataCLIENT_COMPANY_CODEChange
    end
    object cdsDataMEDIATOR_COMPANY_CODE: TAbmesFloatField
      FieldName = 'MEDIATOR_COMPANY_CODE'
    end
    object cdsDataSRG_EMPLOYEE_CODE: TAbmesFloatField
      DisplayLabel = #1042#1086#1076#1077#1097' '#1087#1086' '#1055#1044#1050
      FieldName = 'SRG_EMPLOYEE_CODE'
      Required = True
    end
    object cdsDataCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object cdsDataCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object cdsDataCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object cdsDataFINISH_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'FINISH_EMPLOYEE_CODE'
    end
    object cdsDataFINISH_DATE: TAbmesSQLTimeStampField
      FieldName = 'FINISH_DATE'
    end
    object cdsDataFINISH_TIME: TAbmesSQLTimeStampField
      FieldName = 'FINISH_TIME'
    end
    object cdsDataANNUL_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ANNUL_EMPLOYEE_CODE'
    end
    object cdsDataANNUL_DATE: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_DATE'
    end
    object cdsDataANNUL_TIME: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_TIME'
    end
    object cdsData_REQUEST_REGISTER_DATE_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_REQUEST_REGISTER_DATE_DIFF'
      Calculated = True
    end
    object cdsDataPROGNOSIS_SALE_COUNT: TAbmesFloatField
      FieldName = 'PROGNOSIS_SALE_COUNT'
    end
    object cdsDataREALIZATION_SALE_COUNT: TAbmesFloatField
      FieldName = 'REALIZATION_SALE_COUNT'
    end
    object cdsDataCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object cdsDataCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object cdsDataCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object cdsDataDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsDataDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsData_REQUEST_BRANCH_IDENTIFIER: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_REQUEST_BRANCH_IDENTIFIER'
      LookupDataSet = cdsBranches
      LookupKeyFields = 'BRANCH_CODE'
      LookupResultField = 'BRANCH_IDENTIFIER'
      KeyFields = 'REQUEST_BRANCH_CODE'
      Lookup = True
    end
    object cdsDataSTATUS_CODE: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'STATUS_CODE'
      ProviderFlags = []
      OnGetText = cdsDataSTATUS_CODEGetText
    end
    object cdsDataCLIENT_REQUEST_GROUP_NO: TAbmesWideStringField
      FieldName = 'CLIENT_REQUEST_GROUP_NO'
      Size = 50
    end
    object cdsDataHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object cdsDataSTREAM_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1055#1086#1090#1086#1082
      FieldName = 'STREAM_TYPE_CODE'
      Required = True
    end
    object cdsDataIS_ACTIVATED_BY_CLIENT: TAbmesFloatField
      DisplayLabel = #1040#1082#1090#1080#1074'. '#1086#1090
      FieldName = 'IS_ACTIVATED_BY_CLIENT'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsDataPRODUCT_CLASS_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CLASS_CODE'
    end
    object cdsDataNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 2000
    end
  end
  object cdsSaleDealTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conSalesCommon
    Filter = 'SALE_DEAL_TYPE_CODE = 1'
    Params = <>
    ProviderName = 'prvSaleDealTypes'
    Left = 80
    Top = 56
    object cdsSaleDealTypesSALE_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_DEAL_TYPE_CODE'
    end
    object cdsSaleDealTypesSALE_DEAL_TYPE_NAME: TAbmesWideStringField
      FieldName = 'SALE_DEAL_TYPE_NAME'
      Size = 100
    end
    object cdsSaleDealTypesSALE_DEAL_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'SALE_DEAL_TYPE_ABBREV'
      Size = 100
    end
  end
  object dsSaleDealTypes: TDataSource
    DataSet = cdsSaleDealTypes
    Left = 96
    Top = 56
  end
  object dsBranches: TDataSource
    DataSet = cdsBranches
    Left = 152
    Top = 56
  end
  object cdsBranches: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompany
    Filter = '(IS_LOCAL_BRANCH <> 0) and (IS_INACTIVE = 0)'
    Params = <>
    ProviderName = 'prvBranches'
    Left = 136
    Top = 56
    object cdsBranchesBRANCH_CODE: TAbmesFloatField
      FieldName = 'BRANCH_CODE'
    end
    object cdsBranchesBRANCH_NO: TAbmesFloatField
      DisplayWidth = 3
      FieldName = 'BRANCH_NO'
    end
    object cdsBranchesNAME: TAbmesWideStringField
      FieldName = 'NAME'
      Size = 50
    end
    object cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField
      FieldName = 'BRANCH_IDENTIFIER'
      Size = 255
    end
    object cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField
      FieldName = 'BRANCH_CODE_AND_NAME'
      Size = 255
    end
    object cdsBranchesIS_LOCAL_BRANCH: TAbmesFloatField
      FieldName = 'IS_LOCAL_BRANCH'
    end
    object cdsBranchesIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
    end
  end
  object cdsStreamTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvStreamTypes'
    Left = 360
    Top = 72
    object cdsStreamTypesSTREAM_TYPE_CODE: TAbmesFloatField
      FieldName = 'STREAM_TYPE_CODE'
    end
    object cdsStreamTypesSTREAM_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'STREAM_TYPE_ABBREV'
      Size = 100
    end
    object cdsStreamTypesSTREAM_TYPE_NAME: TAbmesWideStringField
      FieldName = 'STREAM_TYPE_NAME'
    end
  end
  object dsStreamTypes: TDataSource
    DataSet = cdsStreamTypes
    Left = 376
    Top = 72
  end
  object cdsSaleRequestGroupDefaults: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conSaleOrders
    Params = <
      item
        DataType = ftFloat
        Name = 'CLIENT_COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'REQUEST_SEND_DATE'
        ParamType = ptInput
      end>
    ProviderName = 'prvSaleRequestGroupDefaults'
    Left = 408
    object cdsSaleRequestGroupDefaultsMEDIATOR_COMPANY_CODE: TAbmesFloatField
      FieldName = 'MEDIATOR_COMPANY_CODE'
    end
  end
end
