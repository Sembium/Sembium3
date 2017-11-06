inherited fmDeficitCoverDecision: TfmDeficitCoverDecision
  Left = 269
  Top = 200
  Caption = #1055#1072#1082#1077#1090' '#1044#1080#1072#1083#1086#1079#1080' '#1089' '#1044#1086#1089#1090#1072#1074#1095#1080#1094#1080' %ForOrOf% %Provision% - %s'
  ClientHeight = 507
  ClientWidth = 714
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 467
    Width = 714
    Height = 40
    TabOrder = 2
    inherited pnlOKCancel: TPanel
      Left = 446
      Height = 40
      TabOrder = 5
      inherited btnOK: TBitBtn
        Top = 7
      end
      inherited btnCancel: TBitBtn
        Top = 7
        OnClick = actCancelUpdatesExecute
      end
    end
    inherited pnlClose: TPanel
      Left = 357
      Height = 40
      TabOrder = 4
      inherited btnClose: TBitBtn
        Top = 7
      end
    end
    inherited pnlApply: TPanel
      Left = 625
      Height = 40
      TabOrder = 6
      Visible = False
      inherited btnApply: TBitBtn
        Top = 7
      end
    end
    object pnlFinish: TPanel
      Left = 186
      Top = 0
      Width = 113
      Height = 40
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 2
      Visible = False
      object btnFinish: TBitBtn
        Left = 8
        Top = 7
        Width = 105
        Height = 25
        Action = actFinish
        Cancel = True
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
        Spacing = -1
        TabOrder = 0
      end
    end
    object pnlAnnul: TPanel
      Left = 299
      Top = 0
      Width = 118
      Height = 40
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 3
      Visible = False
      object btnAnnul: TBitBtn
        Left = 8
        Top = 7
        Width = 105
        Height = 25
        Action = actAnnul
        Cancel = True
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
        Spacing = -1
        TabOrder = 0
      end
    end
    object pnlIsAnnuled: TPanel
      Left = 97
      Top = 0
      Width = 89
      Height = 40
      Align = alLeft
      BevelOuter = bvNone
      Enabled = False
      TabOrder = 1
      Visible = False
      object chkIsAnnuled: TCheckBox
        Left = 9
        Top = 11
        Width = 80
        Height = 17
        Caption = #1040#1085#1091#1083#1080#1088#1072#1085
        Checked = True
        State = cbChecked
        TabOrder = 0
      end
    end
    object pnlIsFinished: TPanel
      Left = 0
      Top = 0
      Width = 97
      Height = 40
      Align = alLeft
      BevelOuter = bvNone
      Enabled = False
      TabOrder = 0
      Visible = False
      object CheckBox1: TCheckBox
        Left = 9
        Top = 11
        Width = 85
        Height = 17
        Caption = #1055#1088#1080#1082#1083#1102#1095#1077#1085
        Checked = True
        State = cbChecked
        TabOrder = 0
      end
    end
  end
  object grpId: TGroupBox [1]
    Left = 8
    Top = 8
    Width = 697
    Height = 65
    Caption = ' ID '#1055#1044#1044' '
    TabOrder = 0
    object lblDCDBranch: TLabel
      Left = 128
      Top = 16
      Width = 51
      Height = 13
      Caption = #1058#1055' '#1043#1083'.'
      FocusControl = cbDCDBranch
    end
    object lblDCDCode: TLabel
      Left = 192
      Top = 16
      Width = 14
      Height = 13
      Caption = 'No'
      FocusControl = edtDCDCode
    end
    object lblType: TLabel
      Left = 72
      Top = 16
      Width = 19
      Height = 13
      Caption = #1058#1080#1087
      FocusControl = cbType
    end
    object lblAspectType: TLabel
      Left = 296
      Top = 16
      Width = 36
      Height = 13
      Caption = #1040#1089#1087#1077#1082#1090
    end
    object lblDeliveryCount: TLabel
      Left = 400
      Top = 16
      Width = 45
      Height = 13
      Caption = #1041#1088'. '#1054#1044#1044
    end
    object lblStreamType: TLabel
      Left = 256
      Top = 16
      Width = 31
      Height = 13
      Caption = #1055#1086#1090#1086#1082
      FocusControl = edtDCDCode
    end
    object lblStatus: TLabel
      Left = 8
      Top = 16
      Width = 34
      Height = 13
      Caption = #1057#1090#1072#1090#1091#1089
      FocusControl = cbType
    end
    object cbDCDBranch: TJvDBLookupCombo
      Left = 128
      Top = 32
      Width = 57
      Height = 21
      DropDownWidth = 200
      DeleteKeyClear = False
      DataField = 'DCD_BRANCH_CODE'
      DataSource = dsData
      LookupField = 'BRANCH_CODE'
      LookupDisplay = 'BRANCH_CODE_AND_NAME'
      LookupSource = dsBranches
      TabOrder = 2
    end
    object edtDCDCode: TDBEdit
      Left = 192
      Top = 32
      Width = 57
      Height = 21
      TabStop = False
      Color = clBtnFace
      DataField = 'DCD_CODE'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 3
    end
    object pnlDocs: TToolBar
      Left = 352
      Top = 32
      Width = 36
      Height = 22
      Align = alNone
      AutoSize = True
      ButtonWidth = 36
      Images = dmMain.ilDocs
      TabOrder = 4
      object btnDocs: TToolButton
        Left = 0
        Top = 0
        Caption = 'btnDocs'
        ImageIndex = 0
        OnClick = btnDocsClick
      end
    end
    object cbType: TJvDBLookupCombo
      Left = 72
      Top = 32
      Width = 49
      Height = 21
      DropDownWidth = 350
      DataField = 'DELIVERY_DEAL_TYPE_CODE'
      DataSource = dsData
      LookupField = 'BORDER_DEAL_TYPE_CODE'
      LookupDisplay = 'BORDER_DEAL_TYPE_ABBREV;BORDER_DEAL_TYPE_NAME'
      LookupSource = dsDeliveryDealTypes
      TabOrder = 1
    end
    object cbAspectType: TJvDBLookupCombo
      Left = 296
      Top = 32
      Width = 57
      Height = 21
      DropDownWidth = 200
      DeleteKeyClear = False
      DisplayAllFields = True
      DataField = 'ASPECT_TYPE_CODE'
      DataSource = dsData
      LookupField = 'ASPECT_TYPE_CODE'
      LookupDisplay = 'ASPECT_TYPE_ABBREV;ASPECT_TYPE_NAME'
      LookupSource = dsAspectTypes
      TabOrder = 6
    end
    object edtDeliveryCount: TDBEdit
      Left = 400
      Top = 32
      Width = 49
      Height = 21
      TabStop = False
      Color = clBtnFace
      DataField = 'DELIVERY_COUNT'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 7
    end
    object cbStreamType: TJvDBLookupCombo
      Left = 256
      Top = 32
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
      TabOrder = 5
    end
    object edtStatus: TDBEdit
      Left = 8
      Top = 32
      Width = 49
      Height = 21
      TabStop = False
      DataField = '_STATUS_CODE'
      DataSource = dsData
      TabOrder = 0
    end
  end
  inline frEmployee: TfrEmployeeFieldEditFrameLabeled [2]
    Left = 8
    Top = 395
    Width = 697
    Height = 65
    Anchors = [akLeft, akBottom]
    Constraints.MaxHeight = 65
    Constraints.MinHeight = 65
    TabOrder = 1
    TabStop = True
    inherited gbEmployee: TGroupBox
      Width = 697
      Caption = ' '#1042#1086#1076#1077#1097' '#1055#1044#1044' '
      inherited pnlEmployeeName: TPanel
        Width = 622
        inherited pnlRightButtons: TPanel
          Left = 586
        end
        inherited pnlEmpoyeeNameInner: TPanel
          Width = 586
          inherited edtEmployeeName: TDBEdit
            Width = 611
          end
          inherited cbEmployee: TJvDBLookupCombo
            Width = 585
          end
        end
      end
      inherited pnlPaddingRight: TPanel
        Left = 687
      end
      inherited pnlLabels: TPanel
        Width = 693
        inherited lblCode: TLabel
          Width = 19
        end
        inherited lblName: TLabel
          Width = 22
        end
      end
    end
  end
  object gbDCDMode: TGroupBox [3]
    Left = 8
    Top = 88
    Width = 697
    Height = 297
    Anchors = [akLeft, akTop, akBottom]
    Caption = ' '#1056#1077#1078#1080#1084' '#1085#1072' '#1055#1072#1082#1077#1090#1072' '
    TabOrder = 3
    object pnlDCDObjectMode: TPanel
      Left = 2
      Top = 297
      Width = 693
      Height = 226
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      inline frProduct: TfrProductExFieldEditFrame
        Left = 8
        Top = 8
        Width = 677
        Height = 65
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        Constraints.MaxHeight = 549
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TabStop = True
        inherited gbTreeNode: TGroupBox
          Width = 677
          Caption = ' %ProductClassName% '
          inherited pnlTreeNode: TPanel
            Width = 13
            inherited pnlTreeNodeName: TPanel
              Width = 3
              inherited edtTreeNodeName: TDBEdit
                Width = 2
              end
            end
            inherited pnlTreeNodeNo: TPanel
              Left = -169
            end
            inherited pnlRightButtons: TPanel
              Left = -46
            end
            inherited pnlProductLabels: TPanel
              Width = 13
            end
          end
          inherited pnlRight: TPanel
            Left = -87
          end
        end
      end
      object pnlDeliveryLease: TPanel
        Left = 8
        Top = 80
        Width = 677
        Height = 65
        BevelOuter = bvNone
        TabOrder = 1
        object pnlLease: TPanel
          Left = 0
          Top = 65
          Width = 677
          Height = 65
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object gbPlanDeliveryQuantity: TGroupBox
            Left = 0
            Top = 0
            Width = 369
            Height = 65
            Caption = ' '#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1059#1054#1073' '
            TabOrder = 0
            object lblLeaseDateUnitQty: TLabel
              Left = 137
              Top = 16
              Width = 22
              Height = 13
              Caption = #1050'-'#1074#1086
            end
            object lblDateUnit: TLabel
              Left = 169
              Top = 16
              Width = 80
              Height = 13
              Caption = #1053#1072#1077#1084#1085#1072' '#1057#1090#1098#1087#1082#1072
            end
            object lblTotalLeaseQuantity: TLabel
              Left = 273
              Top = 16
              Width = 86
              Height = 13
              Caption = #1050'-'#1074#1086' '#1056#1072#1073'. '#1056#1077#1089#1091#1088#1089
            end
            object lblLeaseQuantity: TLabel
              Left = 8
              Top = 16
              Width = 42
              Height = 13
              Caption = #1056#1072#1073#1086#1090#1085#1086
              FocusControl = edtLeaseQuantity
            end
            object lblWorkMeasure: TDBText
              Left = 84
              Top = 35
              Width = 33
              Height = 14
              DataField = 'WORK_MEASURE_ABBREV'
              DataSource = dsData
            end
            object edtLeaseDateUnitQty: TDBEdit
              Left = 136
              Top = 32
              Width = 33
              Height = 21
              DataField = 'P_LEASE_DATE_UNIT_QUANTITY'
              DataSource = dsData
              TabOrder = 1
            end
            object cbDateUnit: TJvDBLookupCombo
              Left = 168
              Top = 32
              Width = 89
              Height = 21
              DataField = 'P_LEASE_DATE_UNIT_CODE'
              DataSource = dsData
              DisplayEmpty = ' '
              LookupField = 'THE_DATE_UNIT_CODE'
              LookupDisplay = 'THE_DATE_UNIT_NAME'
              LookupSource = dsDateUnits
              TabOrder = 2
            end
            object edtTotalLeaseQuantity: TDBEdit
              Left = 272
              Top = 32
              Width = 89
              Height = 21
              Color = clBtnFace
              DataField = '_TOTAL_LEASE_QUANTITY'
              DataSource = dsData
              ReadOnly = True
              TabOrder = 3
            end
            object edtLeaseQuantity: TDBEdit
              Left = 8
              Top = 32
              Width = 73
              Height = 21
              DataField = 'P_WORK_QUANTITY'
              DataSource = dsData
              TabOrder = 0
            end
          end
          object gbDateIntervals: TGroupBox
            Left = 376
            Top = 0
            Width = 301
            Height = 65
            Caption = ' '#1042#1088#1077#1084#1077#1074#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '
            TabOrder = 1
            object lblRentTimeInterval: TLabel
              Left = 10
              Top = 16
              Width = 86
              Height = 13
              Caption = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1053#1072#1077#1084
              FocusControl = frDeficitCoverDate
            end
            object lblOfferDeadlineDate2: TLabel
              Left = 162
              Top = 16
              Width = 92
              Height = 13
              Caption = #1055#1083#1072#1085#1086#1074#1072' '#1056#1077#1096#1077#1085#1080#1077
              FocusControl = frOfferDeadlineDate2
            end
            inline frLeaseDates: TfrDateIntervalFrame
              Left = 10
              Top = 32
              Width = 145
              Height = 21
              Constraints.MaxHeight = 21
              Constraints.MaxWidth = 145
              Constraints.MinHeight = 21
              Constraints.MinWidth = 145
              TabOrder = 0
              TabStop = True
            end
            inline frOfferDeadlineDate2: TfrDateFieldEditFrame
              Left = 162
              Top = 32
              Width = 105
              Height = 21
              Constraints.MaxHeight = 21
              Constraints.MaxWidth = 105
              Constraints.MinHeight = 21
              Constraints.MinWidth = 105
              TabOrder = 1
              TabStop = True
            end
          end
        end
        object pnlDelivery: TPanel
          Left = 0
          Top = 0
          Width = 677
          Height = 65
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object gbPlanLeaseQuantity: TGroupBox
            Left = 0
            Top = 0
            Width = 265
            Height = 65
            Caption = ' '#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' %ProductClassAbbrev% '
            TabOrder = 0
            object lblPlanWorkQuantity: TLabel
              Left = 8
              Top = 16
              Width = 42
              Height = 13
              Caption = #1056#1072#1073#1086#1090#1085#1086
              FocusControl = edtPlanWorkQuantity
            end
            object lblPlanWorkQuantityMeasure: TDBText
              Left = 84
              Top = 35
              Width = 33
              Height = 14
              DataField = 'WORK_MEASURE_ABBREV'
              DataSource = dsData
            end
            object edtPlanWorkQuantity: TDBEdit
              Left = 8
              Top = 32
              Width = 73
              Height = 21
              DataField = 'P_WORK_QUANTITY'
              DataSource = dsData
              TabOrder = 0
            end
            object pnlAccountQuantity: TPanel
              Left = 144
              Top = 16
              Width = 119
              Height = 41
              BevelOuter = bvNone
              TabOrder = 1
              object lblPlanAccountQuantity: TLabel
                Left = 0
                Top = 0
                Width = 59
                Height = 13
                Caption = #1057#1095#1077#1090#1086#1074#1086#1076#1085#1086
                FocusControl = edtPlanAccountQuantity
              end
              object lblPlanAccountQuantityMeasure: TDBText
                Left = 76
                Top = 19
                Width = 33
                Height = 14
                DataField = 'ACCOUNT_MEASURE_ABBREV'
                DataSource = dsData
              end
              object edtPlanAccountQuantity: TDBEdit
                Left = 0
                Top = 16
                Width = 73
                Height = 21
                DataField = 'P_ACCOUNT_QUANTITY'
                DataSource = dsData
                TabOrder = 0
              end
            end
          end
          object gbDates: TGroupBox
            Left = 420
            Top = 0
            Width = 257
            Height = 65
            Caption = ' '#1042#1088#1077#1084#1077#1074#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '
            TabOrder = 1
            object lblDeficitCoverDate: TLabel
              Left = 8
              Top = 16
              Width = 101
              Height = 13
              Caption = #1044#1072#1090#1072' '#1085#1072' '#1054#1090#1088'. '#1085#1072#1083#1080#1095'.'
              FocusControl = frDeficitCoverDate
            end
            object lblOfferDeadlineDate: TLabel
              Left = 120
              Top = 16
              Width = 92
              Height = 13
              Caption = #1055#1083#1072#1085#1086#1074#1072' '#1056#1077#1096#1077#1085#1080#1077
              FocusControl = frOfferDeadlineDate
            end
            inline frDeficitCoverDate: TfrDateFieldEditFrame
              Left = 8
              Top = 32
              Width = 105
              Height = 21
              Constraints.MaxHeight = 21
              Constraints.MaxWidth = 105
              Constraints.MinHeight = 21
              Constraints.MinWidth = 105
              TabOrder = 0
              TabStop = True
            end
            inline frOfferDeadlineDate: TfrDateFieldEditFrame
              Left = 120
              Top = 32
              Width = 105
              Height = 21
              Constraints.MaxHeight = 21
              Constraints.MaxWidth = 105
              Constraints.MinHeight = 21
              Constraints.MinWidth = 105
              TabOrder = 1
              TabStop = True
            end
          end
        end
      end
      inline frStore: TfrDeptFieldEditFrameLabeled
        Left = 8
        Top = 152
        Width = 677
        Height = 65
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        Constraints.MaxHeight = 65
        TabOrder = 2
        TabStop = True
        inherited gbTreeNode: TGroupBox
          Width = 677
          Caption = ' '#1058#1055' '#1079#1072' '#1087#1086#1083#1091#1095#1072#1074#1072#1085#1077' '#1074' '#1048#1055' '
          inherited lblTreeNodeName: TLabel
            Width = 76
          end
          inherited lblTreeNodeNo: TLabel
            Width = 19
          end
          inherited pnlTreeNode: TPanel
            Width = 661
            inherited pnlTreeNodeName: TPanel
              Width = 514
              inherited edtTreeNodeName: TDBEdit
                Width = 513
              end
            end
            inherited pnlTreeNodeNo: TPanel
              Left = 514
            end
            inherited pnlRightButtons: TPanel
              Left = 625
            end
          end
        end
      end
    end
    object pnlDCDSubjectMode: TPanel
      Left = 2
      Top = 15
      Width = 693
      Height = 282
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      inline frVendor: TfrPartnerExFieldEditFrame
        Left = 8
        Top = 8
        Width = 677
        Height = 65
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        Constraints.MaxHeight = 155
        Constraints.MinHeight = 49
        TabOrder = 0
        TabStop = True
        inherited gbPartner: TGroupBox
          Width = 677
          Height = 65
          Caption = ' '#1044#1086#1089#1090#1072#1074#1095#1080#1082' '
          inherited pnlNameAndButtons: TPanel
            Width = 252
            Height = 48
            inherited pnlRightButtons: TPanel
              Left = 216
              Height = 33
              inherited tlbDocButton: TToolBar
                Height = 33
              end
            end
            inherited pnlPartnerName: TPanel
              Width = 216
              Height = 33
              DesignSize = (
                216
                33)
              inherited edtPartnerName: TDBEdit
                Width = 203
              end
              inherited cbPartner: TJvDBLookupCombo
                Width = 217
              end
            end
            inherited pnlNameAndButtonsTop: TPanel
              Width = 252
              inherited lblPartner: TLabel
                Width = 76
              end
            end
          end
          inherited pnlPaddingRight: TPanel
            Left = 556
            Height = 48
          end
          inherited pnlPartnerCode: TPanel
            Height = 48
            DesignSize = (
              73
              48)
            inherited lblPartnerCode: TLabel
              Width = 19
            end
          end
          inherited pnlPaddingLeft: TPanel
            Height = 48
          end
          inherited frPartnerStatus: TfrCompanyStatus
            Height = 48
            Constraints.MaxHeight = 48
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
              DataSet = frVendor.cdsPartner
            end
          end
          inherited pnlPriority: TPanel
            Height = 48
            inherited lblPriority: TLabel
              Width = 38
            end
          end
          inherited pnlCountry: TPanel
            Left = 562
            Height = 48
          end
          inherited pnlParRelButton: TPanel
            Left = 602
            Height = 48
            DesignSize = (
              73
              48)
          end
        end
      end
      inline frMediator: TfrPartnerFieldEditFrameLabeled
        Left = 8
        Top = 80
        Width = 677
        Height = 65
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        Constraints.MaxHeight = 65
        Constraints.MinHeight = 65
        TabOrder = 1
        TabStop = True
        inherited gbPartner: TGroupBox
          Width = 677
          Caption = ' '#1055#1086#1089#1088#1077#1076#1085#1080#1082' '
          inherited pnlNameAndButtons: TPanel
            Width = 588
            inherited pnlRightButtons: TPanel
              Left = 552
            end
            inherited pnlPartnerName: TPanel
              Width = 552
              DesignSize = (
                552
                33)
              inherited edtPartnerName: TDBEdit
                Width = 553
              end
              inherited cbPartner: TJvDBLookupCombo
                Width = 553
              end
            end
          end
          inherited pnlPaddingRight: TPanel
            Left = 669
          end
          inherited pnlLabels: TPanel
            Width = 673
            inherited lblCode: TLabel
              Width = 19
            end
            inherited lblName: TLabel
              Width = 76
            end
          end
        end
      end
      object gbSubjectiveModeDates: TGroupBox
        Left = 8
        Top = 152
        Width = 677
        Height = 121
        Caption = ' '#1044#1072#1090#1080' '#1087#1086' '#1044#1080#1072#1083#1086#1075' '
        TabOrder = 2
        object lblPlanPositionDate: TLabel
          Left = 287
          Top = 13
          Width = 102
          Height = 13
          Caption = #1055#1083#1072#1085#1086#1074#1072' '#1055#1079#1094'. '#1048#1055
        end
        object lblPlanVendorPositionDate: TLabel
          Left = 423
          Top = 13
          Width = 128
          Height = 13
          Caption = #1055#1083#1072#1085#1086#1074#1072' '#1055#1079#1094'. '#1044#1086#1089#1090#1072#1074#1095#1080#1082
        end
        object lblPlanDecisionDate: TLabel
          Left = 559
          Top = 13
          Width = 92
          Height = 13
          Caption = #1055#1083#1072#1085#1086#1074#1072' '#1056#1077#1096#1077#1085#1080#1077
        end
        object lblRealPositionDate: TLabel
          Left = 287
          Top = 99
          Width = 99
          Height = 13
          Caption = #1054#1090#1095#1077#1090#1085#1072' '#1055#1079#1094'. '#1048#1055
        end
        object lblRealVendorPositionDate: TLabel
          Left = 423
          Top = 99
          Width = 125
          Height = 13
          Caption = #1054#1090#1095#1077#1090#1085#1072' '#1055#1079#1094'. '#1044#1086#1089#1090#1072#1074#1095#1080#1082
        end
        object lblPositionDatesAxis1: TLabel
          Left = 287
          Top = 48
          Width = 2
          Height = 26
          Caption = '|'#13#10'|'
          Color = clBtnFace
          ParentColor = False
        end
        object lblVendorPositionDatesAxis1: TLabel
          Left = 423
          Top = 48
          Width = 2
          Height = 26
          Caption = '|'#13#10'|'
          Color = clBtnFace
          ParentColor = False
        end
        object imgArrow3: TImage
          Left = 399
          Top = 40
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
        object imgArrow4: TImage
          Left = 535
          Top = 40
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
        object dbtPlanVendorPositionDateDiff: TDBText
          Left = 399
          Top = 24
          Width = 18
          Height = 14
          Alignment = taCenter
          DataField = '_PLAN_VENDOR_POSITION_DATE_DIFF'
        end
        object dbtPlanDecisionDateDiff: TDBText
          Left = 535
          Top = 24
          Width = 18
          Height = 13
          Alignment = taCenter
          DataField = '_PLAN_DECISION_DATE_DIFF'
        end
        object imgArrow5: TImage
          Left = 399
          Top = 72
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
        object dbtRealVendorPositionDateDiff: TDBText
          Left = 399
          Top = 85
          Width = 18
          Height = 14
          Alignment = taCenter
          DataField = '_REAL_VENDOR_POSITION_DATE_DIFF'
        end
        object lblPositionDatesAxis2: TLabel
          Left = 389
          Top = 48
          Width = 2
          Height = 26
          Caption = '|'#13#10'|'
          Color = clBtnFace
          ParentColor = False
        end
        object lblVendorPositionDatesAxis2: TLabel
          Left = 525
          Top = 48
          Width = 2
          Height = 26
          Caption = '|'#13#10'|'
          Color = clBtnFace
          ParentColor = False
        end
        object dbtDatesDeviation: TDBText
          Left = 311
          Top = 56
          Width = 62
          Height = 14
          Alignment = taCenter
          DataField = '_DATES_DEVIATION'
        end
        object dbtVendorDatesDeviation: TDBText
          Left = 439
          Top = 56
          Width = 62
          Height = 14
          Alignment = taCenter
          DataField = '_VENDOR_DATES_DEVIATION'
        end
        object imgArrow1: TImage
          Left = 127
          Top = 56
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
        object dbtRegisterDateDiff: TDBText
          Left = 127
          Top = 40
          Width = 18
          Height = 14
          Alignment = taCenter
          DataField = '_REGISTER_DATE_DIFF'
        end
        object lblStartDate: TLabel
          Left = 15
          Top = 32
          Width = 59
          Height = 13
          Caption = #1057#1090#1072#1088#1090#1080#1088#1072#1085#1077
        end
        object lblRegisterDate: TLabel
          Left = 150
          Top = 32
          Width = 71
          Height = 13
          Caption = #1056#1077#1075#1080#1089#1090#1088#1080#1088#1072#1085#1077
        end
        object dbtPlanPositionDateDiff: TDBText
          Left = 263
          Top = 24
          Width = 18
          Height = 14
          Alignment = taCenter
          DataField = '_PLAN_POSITION_DATE_DIFF'
        end
        object imgArrow2: TImage
          Left = 263
          Top = 40
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
        object imgArrow7: TImage
          Left = 263
          Top = 72
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
        object dbtRealPositionDateDiff: TDBText
          Left = 263
          Top = 85
          Width = 18
          Height = 14
          Alignment = taCenter
          DataField = '_REAL_POSITION_DATE_DIFF'
        end
        inline frPlanPositionDate: TfrDateFieldEditFrame
          Left = 287
          Top = 32
          Width = 105
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 105
          Constraints.MinHeight = 21
          Constraints.MinWidth = 105
          TabOrder = 2
          TabStop = True
        end
        inline frRealPositionDate: TfrDateFieldEditFrame
          Left = 287
          Top = 72
          Width = 105
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 105
          Constraints.MinHeight = 21
          Constraints.MinWidth = 105
          TabOrder = 3
          TabStop = True
        end
        inline frPlanVendorPositionDate: TfrDateFieldEditFrame
          Left = 423
          Top = 32
          Width = 105
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 105
          Constraints.MinHeight = 21
          Constraints.MinWidth = 105
          TabOrder = 4
          TabStop = True
        end
        inline frRealVendorPositionDate: TfrDateFieldEditFrame
          Left = 423
          Top = 72
          Width = 105
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 105
          Constraints.MinHeight = 21
          Constraints.MinWidth = 105
          TabOrder = 5
          TabStop = True
        end
        inline frPlanDecisionDate: TfrDateFieldEditFrame
          Left = 559
          Top = 32
          Width = 105
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 105
          Constraints.MinHeight = 21
          Constraints.MinWidth = 105
          TabOrder = 6
          TabStop = True
        end
        inline frStartDate: TfrDateFieldEditFrame
          Left = 15
          Top = 48
          Width = 105
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 105
          Constraints.MinHeight = 21
          Constraints.MinWidth = 105
          TabOrder = 0
          TabStop = True
        end
        inline frRegisterDate: TfrDateFieldEditFrame
          Left = 151
          Top = 48
          Width = 105
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 105
          Constraints.MinHeight = 21
          Constraints.MinWidth = 105
          TabOrder = 1
          TabStop = True
        end
      end
    end
  end
  object pnlDCDMode: TPanel [4]
    Left = 114
    Top = 84
    Width = 115
    Height = 21
    BevelOuter = bvNone
    TabOrder = 4
    object cbDCDMode: TJvDBLookupCombo
      Left = 4
      Top = 0
      Width = 105
      Height = 21
      DropDownCount = 3
      DeleteKeyClear = False
      DataField = '_DCD_MODE_NAME'
      DataSource = dsData
      TabOrder = 0
    end
  end
  inherited alActions: TActionList [5]
    Left = 152
    inherited actForm: TAction
      Caption = #1055#1072#1082#1077#1090' '#1044#1080#1072#1083#1086#1079#1080' '#1089' '#1044#1086#1089#1090#1072#1074#1095#1080#1094#1080' %ForOrOf% %Provision% - %s'
    end
    inherited actCancelUpdates: TAction
      Caption = #1054#1090#1082#1072#1079
    end
    object actFinish: TAction
      Caption = #1055#1088#1080#1082#1083#1102#1095#1074#1072#1085#1077'...'
      ImageIndex = 17
      OnExecute = actFinishExecute
      OnUpdate = actFinishUpdate
    end
    object actAnnul: TAction
      Caption = #1040#1085#1091#1083#1080#1088#1072#1085#1077'...'
      ImageIndex = 16
      OnExecute = actAnnulExecute
      OnUpdate = actAnnulUpdate
    end
  end
  inherited dsData: TDataSource [6]
    Left = 216
  end
  inherited cdsData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conDeliveries
    Params = <
      item
        DataType = ftFloat
        Name = 'DCD_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_OBJECT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvDeficitCoverDecision'
    BeforePost = cdsDataBeforePost
    OnCalcFields = cdsDataCalcFields
    BeforeApplyUpdates = cdsDataBeforeApplyUpdates
    Left = 184
    object cdsDataDCD_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDataDCD_OBJECT_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDataIS_DONE: TAbmesFloatField
      FieldName = 'IS_DONE'
      FieldValueType = fvtBoolean
    end
    object cdsDataIS_CANCELED: TAbmesFloatField
      FieldName = 'IS_CANCELED'
      FieldValueType = fvtBoolean
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
    object cdsDataCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object cdsDataCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object cdsDataCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object cdsDataDEPT_NO: TAbmesFloatField
      FieldName = 'DEPT_NO'
    end
    object cdsDataDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      Size = 50
    end
    object cdsDataPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 50
    end
    object cdsDataPRODUCT_ACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'PRODUCT_ACCOUNT_MEASURE_COEF'
      DisplayFormat = ',0.##'
      EditFormat = '0.##'
    end
    object cdsDataWORK_MEASURE_CODE: TAbmesFloatField
      FieldName = 'WORK_MEASURE_CODE'
    end
    object cdsDataACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_CODE'
    end
    object cdsDataWORK_MEASURE_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = 'WORK_MEASURE_ABBREV'
      LookupDataSet = cdsMeasures
      LookupKeyFields = 'MEASURE_CODE'
      LookupResultField = 'MEASURE_ABBREV'
      KeyFields = 'WORK_MEASURE_CODE'
      Size = 5
      Lookup = True
    end
    object cdsDataACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      LookupDataSet = cdsMeasures
      LookupKeyFields = 'MEASURE_CODE'
      LookupResultField = 'MEASURE_ABBREV'
      KeyFields = 'ACCOUNT_MEASURE_CODE'
      Size = 5
      Lookup = True
    end
    object cdsDataPRODUCT_CUSTOM_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CUSTOM_CODE'
    end
    object cdsDataDCD_BRANCH_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' '#1043#1083#1072#1074#1085#1086
      FieldName = 'DCD_BRANCH_CODE'
      Required = True
      OnChange = cdsDataDCD_BRANCH_CODEChange
    end
    object cdsDataDCD_CODE: TAbmesFloatField
      FieldName = 'DCD_CODE'
    end
    object cdsData_DCD_BRANCH: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_DCD_BRANCH'
      LookupDataSet = cdsBranches
      LookupKeyFields = 'BRANCH_CODE'
      LookupResultField = 'BRANCH_CODE_AND_NAME'
      KeyFields = 'DCD_BRANCH_CODE'
      Size = 50
      Lookup = True
    end
    object cdsDataDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsDataDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsDataHAS_DOC: TAbmesFloatField
      FieldName = 'HAS_DOC'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object cdsData_VPD_EMPLOYEE_NO: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_VPD_EMPLOYEE_NO'
      LookupDataSet = frEmployee.cdsEmployees
      LookupKeyFields = 'EMPLOYEE_CODE'
      LookupResultField = 'EMPLOYEE_NO'
      KeyFields = 'VPD_EMPLOYEE_CODE'
      Lookup = True
    end
    object cdsData_VPD_EMPLOYEE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_VPD_EMPLOYEE_NAME'
      LookupDataSet = frEmployee.cdsEmployees
      LookupKeyFields = 'EMPLOYEE_CODE'
      LookupResultField = 'EMPLOYEE_NAME'
      KeyFields = 'VPD_EMPLOYEE_CODE'
      Size = 100
      Lookup = True
    end
    object cdsDataASPECT_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1040#1089#1087#1077#1082#1090
      FieldName = 'ASPECT_TYPE_CODE'
      Required = True
    end
    object cdsDataDELIVERY_COUNT: TAbmesFloatField
      FieldName = 'DELIVERY_COUNT'
      ProviderFlags = []
    end
    object cdsDataDELIVERY_DEAL_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1058#1080#1087
      FieldName = 'DELIVERY_DEAL_TYPE_CODE'
      Required = True
      OnChange = cdsDataDELIVERY_DEAL_TYPE_CODEChange
    end
    object cdsData_ASPECT_TYPE_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_ASPECT_TYPE_ABBREV'
      LookupDataSet = cdsAspectTypes
      LookupKeyFields = 'ASPECT_TYPE_CODE'
      LookupResultField = 'ASPECT_TYPE_ABBREV'
      KeyFields = 'ASPECT_TYPE_CODE'
      Size = 100
      Lookup = True
    end
    object cdsData_DELIVERY_DEAL_TYPE_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_DELIVERY_DEAL_TYPE_ABBREV'
      LookupDataSet = cdsDeliveryDealTypes
      LookupKeyFields = 'BORDER_DEAL_TYPE_CODE'
      LookupResultField = 'BORDER_DEAL_TYPE_ABBREV'
      KeyFields = 'DELIVERY_DEAL_TYPE_CODE'
      Size = 100
      Lookup = True
    end
    object cdsData_STATUS_CODE: TAbmesFloatField
      Alignment = taCenter
      FieldKind = fkCalculated
      FieldName = '_STATUS_CODE'
      OnGetText = cdsData_STATUS_CODEGetText
      Calculated = True
    end
    object cdsDataDP_DECISION_QUANTITY: TAbmesFloatField
      FieldName = 'DP_DECISION_QUANTITY'
    end
    object cdsDataDC_QUANTITY: TAbmesFloatField
      FieldName = 'DC_QUANTITY'
    end
    object cdsDataDELIVERY_SD_QUANTITY: TAbmesFloatField
      FieldName = 'DELIVERY_SD_QUANTITY'
    end
    object cdsDataTOTAL_WORK_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_WORK_QUANTITY'
    end
    object cdsDataTOTAL_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_ACCOUNT_QUANTITY'
    end
    object cdsData_TOTAL_LEASE_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_TOTAL_LEASE_QUANTITY'
      DisplayFormat = ',0.##'
      Calculated = True
    end
    object cdsDataSTREAM_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1055#1086#1090#1086#1082
      FieldName = 'STREAM_TYPE_CODE'
      Required = True
    end
    object cdsData_PRODUCT_CLASS_CODE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_PRODUCT_CLASS_CODE'
      Calculated = True
    end
    object cdsData_PROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_PROD_ORDER_BASE_TYPE_CODE'
      Calculated = True
    end
    object cdsDataVPD_EMPLOYEE_CODE: TAbmesFloatField
      DisplayLabel = #1042#1086#1076#1077#1097' '#1055#1044#1044
      FieldName = 'VPD_EMPLOYEE_CODE'
      Required = True
    end
    object cdsDataDCD_MODE_CODE: TAbmesFloatField
      FieldName = 'DCD_MODE_CODE'
      Required = True
      OnChange = cdsDataDCD_MODE_CODEChange
    end
    object cdsData_DCD_MODE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_DCD_MODE_NAME'
      LookupDataSet = cdsDCDModes
      LookupKeyFields = 'DCD_MODE_CODE'
      LookupResultField = 'DCD_MODE_NAME'
      KeyFields = 'DCD_MODE_CODE'
      Size = 100
      Lookup = True
    end
    object cdsDataPLAN_DECISION_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1055#1083#1072#1085#1086#1074#1072' '#1044#1072#1090#1072' '#1079#1072' '#1056#1077#1096#1077#1085#1080#1077
      FieldName = 'PLAN_DECISION_DATE'
      Required = True
      OnValidate = DatesValidate
    end
    object cdsDataP_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'P_PRODUCT_CODE'
      OnChange = cdsDataP_PRODUCT_CODEChange
    end
    object cdsDataP_DEFICIT_COVER_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1044#1072#1090#1072' '#1085#1072' '#1054#1090#1088#1080#1094#1072#1090#1077#1083#1085#1072' '#1085#1072#1083#1080#1095#1085#1086#1089#1090
      FieldName = 'P_DEFICIT_COVER_DATE'
      OnChange = cdsDataP_DEFICIT_COVER_DATEChange
    end
    object cdsDataP_WORK_QUANTITY: TAbmesFloatField
      FieldName = 'P_WORK_QUANTITY'
      OnChange = cdsDataP_WORK_QUANTITYChange
      DisplayFormat = ',0.##'
      EditFormat = ',0.##'
    end
    object cdsDataP_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'P_ACCOUNT_QUANTITY'
      OnChange = cdsDataP_ACCOUNT_QUANTITYChange
      DisplayFormat = ',0.##'
      EditFormat = ',0.##'
    end
    object cdsDataP_PSD_STORE_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' '#1079#1072' '#1087#1086#1083#1091#1095#1072#1074#1072#1085#1077' '#1074' '#1048#1055
      FieldName = 'P_PSD_STORE_CODE'
    end
    object cdsDataP_LEASE_DATE_UNIT_QUANTITY: TAbmesFloatField
      FieldName = 'P_LEASE_DATE_UNIT_QUANTITY'
    end
    object cdsDataP_LEASE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'P_LEASE_DATE_UNIT_CODE'
    end
    object cdsDataP_RECEIVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'P_RECEIVE_DATE'
    end
    object cdsDataP_RETURN_DATE: TAbmesSQLTimeStampField
      FieldName = 'P_RETURN_DATE'
    end
    object cdsDataV_VENDOR_COMPANY_CODE: TAbmesFloatField
      DisplayLabel = #1044#1086#1089#1090#1072#1074#1095#1080#1082
      FieldName = 'V_VENDOR_COMPANY_CODE'
    end
    object cdsDataV_MEDIATOR_COMPANY_CODE: TAbmesFloatField
      FieldName = 'V_MEDIATOR_COMPANY_CODE'
    end
    object cdsDataV_START_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1044#1072#1090#1072' '#1085#1072' '#1057#1090#1072#1088#1090#1080#1088#1072#1085#1077
      FieldName = 'V_START_DATE'
      OnValidate = DatesValidate
    end
    object cdsDataV_REGISTER_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1044#1072#1090#1072' '#1085#1072' '#1056#1077#1075#1080#1089#1090#1088#1080#1088#1072#1085#1077
      FieldName = 'V_REGISTER_DATE'
      OnValidate = DatesValidate
    end
    object cdsDataV_PLAN_POSITION_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1044#1072#1090#1072' '#1055#1083#1072#1085#1086#1074#1072' '#1055#1079#1094'. '#1048#1055
      FieldName = 'V_PLAN_POSITION_DATE'
      OnValidate = DatesValidate
    end
    object cdsDataV_REAL_POSITION_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1044#1072#1090#1072' '#1054#1090#1095#1077#1090#1085#1072' '#1055#1079#1094'. '#1048#1055
      FieldName = 'V_REAL_POSITION_DATE'
      OnValidate = DatesValidate
    end
    object cdsDataV_PLAN_VENDOR_POSITION_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1044#1072#1090#1072' '#1055#1083#1072#1085#1086#1074#1072' '#1055#1079#1094'. '#1044#1086#1089#1090#1072#1074#1095#1080#1082
      FieldName = 'V_PLAN_VENDOR_POSITION_DATE'
      OnValidate = DatesValidate
    end
    object cdsDataV_REAL_VENDOR_POSITION_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1044#1072#1090#1072' '#1054#1090#1095#1077#1090#1085#1072' '#1055#1079#1094'. '#1044#1086#1089#1090#1072#1074#1095#1080#1082
      FieldName = 'V_REAL_VENDOR_POSITION_DATE'
      OnValidate = DatesValidate
    end
    object cdsDataPRODUCT_CLASS_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CLASS_CODE'
      Required = True
    end
    object cdsDataDCD_STATUS_CODE: TAbmesFloatField
      FieldName = 'DCD_STATUS_CODE'
    end
  end
  object cdsMeasures: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvMeasures'
    Left = 360
    Top = 65528
    object cdsMeasuresMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
    end
    object cdsMeasuresMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Required = True
      Size = 5
    end
  end
  object dsMeasures: TDataSource
    DataSet = cdsMeasures
    Left = 376
    Top = 65528
  end
  object cdsBranches: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompany
    Filter = '(IS_LOCAL_BRANCH <> 0) and (IS_INACTIVE = 0)'
    Params = <>
    ProviderName = 'prvBranches'
    Left = 304
    Top = 65528
    object cdsBranchesBRANCH_CODE: TAbmesFloatField
      FieldName = 'BRANCH_CODE'
    end
    object cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField
      FieldName = 'BRANCH_CODE_AND_NAME'
      Size = 255
    end
    object cdsBranchesBRANCH_NO: TAbmesFloatField
      FieldName = 'BRANCH_NO'
    end
    object cdsBranchesIS_LOCAL_BRANCH: TAbmesFloatField
      FieldName = 'IS_LOCAL_BRANCH'
    end
    object cdsBranchesIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
    end
  end
  object dsBranches: TDataSource
    DataSet = cdsBranches
    Left = 320
    Top = 65528
  end
  object cdsAspectTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvAspectTypes'
    Left = 592
    Top = 8
    object cdsAspectTypesASPECT_TYPE_CODE: TAbmesFloatField
      FieldName = 'ASPECT_TYPE_CODE'
    end
    object cdsAspectTypesASPECT_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'ASPECT_TYPE_ABBREV'
      Size = 100
    end
    object cdsAspectTypesASPECT_TYPE_NAME: TAbmesWideStringField
      FieldName = 'ASPECT_TYPE_NAME'
      Size = 100
    end
  end
  object dsAspectTypes: TDataSource
    DataSet = cdsAspectTypes
    Left = 608
    Top = 8
  end
  object cdsDeliveryDealTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conDeliveries
    Params = <>
    ProviderName = 'prvDeliveryDealTypes'
    Left = 544
    Top = 8
    object cdsDeliveryDealTypesBORDER_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'BORDER_DEAL_TYPE_CODE'
    end
    object cdsDeliveryDealTypesBORDER_DEAL_TYPE_ABBREV: TAbmesWideStringField
      DisplayWidth = 5
      FieldName = 'BORDER_DEAL_TYPE_ABBREV'
      Size = 100
    end
    object cdsDeliveryDealTypesBORDER_DEAL_TYPE_NAME: TAbmesWideStringField
      DisplayWidth = 20
      FieldName = 'BORDER_DEAL_TYPE_NAME'
      Size = 100
    end
    object cdsDeliveryDealTypesPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField
      FieldName = 'PROD_ORDER_BASE_TYPE_CODE'
    end
    object cdsDeliveryDealTypesOBTAINMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'OBTAINMENT_TYPE_CODE'
    end
  end
  object dsDeliveryDealTypes: TDataSource
    DataSet = cdsDeliveryDealTypes
    Left = 560
    Top = 8
  end
  object cdsDateUnits: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvDateUnits'
    Left = 416
    Top = 65528
    object cdsDateUnitsTHE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'THE_DATE_UNIT_CODE'
    end
    object cdsDateUnitsTHE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'THE_DATE_UNIT_NAME'
      Size = 50
    end
  end
  object dsDateUnits: TDataSource
    DataSet = cdsDateUnits
    Left = 432
    Top = 65528
  end
  object cdsStreamTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvStreamTypes'
    Left = 488
    Top = 8
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
    Left = 504
    Top = 8
  end
  object cdsDCDModes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conDeliveries
    Params = <>
    ProviderName = 'prvDCDModes'
    Left = 240
    Top = 80
    object cdsDCDModesDCD_MODE_CODE: TAbmesFloatField
      FieldName = 'DCD_MODE_CODE'
      Required = True
    end
    object cdsDCDModesDCD_MODE_NO: TAbmesFloatField
      FieldName = 'DCD_MODE_NO'
      Required = True
    end
    object cdsDCDModesDCD_MODE_NAME: TAbmesWideStringField
      FieldName = 'DCD_MODE_NAME'
      Required = True
      Size = 100
    end
    object cdsDCDModesDCD_MODE_ABBREV: TAbmesWideStringField
      FieldName = 'DCD_MODE_ABBREV'
      Required = True
      Size = 100
    end
  end
end
