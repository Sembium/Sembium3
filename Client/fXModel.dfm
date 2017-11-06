inherited fmXModel: TfmXModel
  Left = 254
  Top = 221
  Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1077#1085' '#1052#1054#1044#1045#1083' - %s'
  ClientHeight = 659
  ClientWidth = 953
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 624
    Width = 953
    TabOrder = 3
    inherited pnlOKCancel: TPanel
      Left = 685
    end
    inherited pnlClose: TPanel
      Left = 596
    end
    inherited pnlApply: TPanel
      Left = 864
    end
    inherited pnlBottomButtonsClient: TPanel
      Left = 33
      Width = 563
      inherited pnlResizeWorkspaceButton: TPanel
        Left = 529
        TabOrder = 4
      end
      object pnlClosed: TPanel
        Left = 452
        Top = 0
        Width = 89
        Height = 35
        Align = alLeft
        BevelOuter = bvNone
        Enabled = False
        TabOrder = 1
        Visible = False
        object chbClosed: TCheckBox
          Left = 8
          Top = 8
          Width = 77
          Height = 15
          Caption = #1055#1088#1080#1082#1083#1102#1095#1077#1085
          Checked = True
          State = cbChecked
          TabOrder = 0
        end
      end
      object pnlAnnuled: TPanel
        Left = 541
        Top = 0
        Width = 81
        Height = 35
        Align = alLeft
        BevelOuter = bvNone
        Enabled = False
        TabOrder = 2
        Visible = False
        object chbAnnuled: TCheckBox
          Left = 8
          Top = 8
          Width = 70
          Height = 17
          Caption = #1040#1085#1091#1083#1080#1088#1072#1085
          Checked = True
          State = cbChecked
          TabOrder = 0
        end
      end
      object pnlLeftButtons: TPanel
        Left = 0
        Top = 0
        Width = 452
        Height = 35
        Align = alLeft
        AutoSize = True
        BevelOuter = bvNone
        TabOrder = 0
        object pnlModelChangesButton: TPanel
          Left = 0
          Top = 0
          Width = 113
          Height = 35
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          object btnModelChanges: TBitBtn
            Left = 8
            Top = 2
            Width = 105
            Height = 25
            Action = actModelChanges
            Caption = #1048#1089#1090'. '#1079#1072#1084#1077#1085#1080
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF000000000000000000000000000000000000000000000000000000
              000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00000000000000FF000000FF000000FF000000FF000000FF000000FF000000
              FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
              00000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
              FF00000000000000840000000000FF00FF00FF00FF00FF00FF00000000000000
              0000000084000000840000008400000084000000840000008400000084000000
              840000000000000084000000840000000000FF00FF00FF00FF00000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000084000000840000000000FF00FF00FF00FF000000
              00007B7B7B0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF0000000000FFFFFF0000000000000084000000840000000000FF00FF00FF00
              FF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF0000000000FFFFFF0000000000000000000000840000000000FF00FF00FF00
              FF00FF00FF0000000000FFFFFF00FFFFFF007B7B7B0000000000000000000000
              000000000000FFFFFF0000000000FFFFFF000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00000000000000000000000000FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF0000000000FFFFFF000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF007B7B7B000000
              0000000000000000000000000000FFFFFF0000000000FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FFFF
              FF007B7B7B0000000000000000000000000000000000FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
              000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            ParentShowHint = False
            ShowHint = True
            Spacing = -1
            TabOrder = 0
          end
        end
        object pnlCloseModelButton: TPanel
          Left = 339
          Top = 0
          Width = 113
          Height = 35
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 3
          object btnCloseModel: TBitBtn
            Left = 8
            Top = 2
            Width = 105
            Height = 25
            Action = actCloseModel
            Caption = #1055#1088#1080#1082#1083#1102#1095#1074#1072#1085#1077
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
        object pnlModelStatus: TPanel
          Left = 113
          Top = 0
          Width = 113
          Height = 35
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          object btnModelStatus: TBitBtn
            Left = 8
            Top = 2
            Width = 105
            Height = 25
            Action = actModelStatus
            Caption = #1057#1083#1077#1076#1077#1085#1077'...'
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF0000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
              FF00FF00FF00FF00FF0000000000FFFFFF00000000000000000000000000FFFF
              FF0000000000FFFFFF000000000000000000FFFFFF0000000000FF00FF00FF00
              FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
              FF00FF00FF00FF00FF0000000000FFFFFF000000000000000000FFFFFF000000
              000000000000FFFFFF000000000000000000FFFFFF0000000000FF00FF00FF00
              FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
              FF00FF00FF00FF00FF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
              FF000000000000000000FFFFFF0000000000FFFFFF0000000000FF00FF00FF00
              FF00FF00FF0000000000FFFFFF0000FFFF000000000000000000FFFFFF000000
              0000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
              FF0000000000FFFFFF0000FFFF000000000000FFFF00FFFFFF0000000000FFFF
              FF0000FFFF0000000000FFFFFF0000000000FFFFFF0000000000FF00FF000000
              0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFFFF0000FF
              FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF000000
              000000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFFFF0000FFFF000000
              0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
              0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFF
              FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFF00000000
              000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000000000000000
              0000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFF0000FFFF
              00000000000000FFFF00FFFFFF0000FFFF000000000000FFFF00FFFFFF0000FF
              FF0000000000FFFFFF0000000000FFFFFF0000000000FF00FF00FFFF0000FFFF
              0000FFFF00000000000000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
              0000FFFFFF00FFFFFF000000000000000000FF00FF00FF00FF00FFFF0000FFFF
              0000FFFF0000FFFF000000000000000000000000000000000000000000000000
              0000000000000000000000000000FF00FF00FF00FF00FF00FF00}
            Spacing = -1
            TabOrder = 0
          end
        end
        object pnlModelCapacityStatus: TPanel
          Left = 226
          Top = 0
          Width = 113
          Height = 35
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 2
          object btnModelCapacityStatus: TBitBtn
            Left = 8
            Top = 2
            Width = 105
            Height = 25
            Action = actModelCapacityStatus
            Caption = #1050#1072#1087#1072#1094#1080#1090#1077#1090'...'
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
              0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00000000000000FF0000000000FF00FF00FF00FF00FF00FF00FF00
              FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00000000000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00000000000000FF000000FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
              FF00FF00FF000000FF000000FF000000000000000000FF00FF00000000008484
              84000000FF000000FF000000FF0084848400FF00FF00FF00FF0000000000FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
              0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
              FF00000000000000FF008484840084848400FF00FF00FF00FF00FF00FF00FF00
              FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00000000008484
              8400000000000000FF00000000000000FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00000000008484
              8400000000000000FF00000000000000FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            ParentShowHint = False
            ShowHint = True
            Spacing = -1
            TabOrder = 0
          end
        end
      end
      object pnlIsArchived: TPanel
        Left = 622
        Top = 0
        Width = 91
        Height = 35
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 3
        object chbArchived: TAbmesDBCheckBox
          Left = 8
          Top = 8
          Width = 73
          Height = 17
          Caption = #1040#1088#1093#1080#1074#1080#1088#1072#1085
          DataField = 'IS_ARCHIVED'
          DataSource = dsData
          TabOrder = 0
          ValueChecked = 'True'
          ValueUnchecked = 'False'
          BeforeToggle = chbArchivedBeforeToggle
          ImmediateUpdateField = True
        end
      end
    end
    inherited pnlDocStatusButton: TPanel
      Width = 33
    end
  end
  inherited pnlMain: TPanel
    inherited pnlGrid: TPanel
      inherited pnlNavigator: TPanel
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
    end
  end
  inherited pnlMainData: TPanel
    Width = 953
    Height = 295
    BorderWidth = 8
    TabOrder = 1
    object pnlBoundObject: TPanel [0]
      Left = 8
      Top = 8
      Width = 937
      Height = 281
      Align = alTop
      TabOrder = 0
      inline frMLBoundProcessObject: TfrMLBoundProcessObject
        Left = 3
        Top = 8
        Width = 929
        Height = 70
        TabOrder = 0
        TabStop = True
        DesignSize = (
          929
          70)
        inherited gbProductionOrder: TGroupBox
          Left = 6
          Width = 283
          inherited lblStatus: TLabel
            Width = 34
          end
          inherited lblSaleBranchNo: TLabel
            Width = 33
          end
          inherited lblSaleNo: TLabel
            Width = 14
            Caption = 'No'
          end
          inherited lblProductionOrderType: TLabel
            Width = 38
          end
          inherited pnlDocs: TToolBar
            inherited btnDocs: TSpeedButton
              Hint = #1055#1086#1082#1072#1079#1074#1072' '#1052#1048#1048#1054' '#1085#1072' '#1054#1055#1042
              OnClick = frMLBoundProcessObjectbtnDocsClick
            end
          end
        end
        inherited gbManagerEmployee: TGroupBox
          Width = 126
          Anchors = [akLeft, akTop, akRight]
          DesignSize = (
            126
            65)
          inherited edtManagerEmployeeName: TDBEdit
            Width = 109
          end
        end
        inherited gbProductionStart: TGroupBox
          Left = 429
          Width = 193
          Anchors = [akTop, akRight]
          inherited edtStartCoef2: TLabel
            Width = 24
          end
          inherited edtStartCoef: TDBEdit
            Width = 34
          end
          inherited frProductionStartDate: TfrDateFieldEditFrame
            inherited dsData: TDataSource
              DataSet = frMLBoundProcessObject.cdsData
            end
          end
        end
      end
      object gbProductionFinal: TGroupBox
        Left = 8
        Top = 80
        Width = 921
        Height = 65
        Caption = ' '#1060#1080#1085#1072#1083' '#1085#1072' ID '#1054#1055#1042' '
        TabOrder = 2
        object lblResultProduct: TLabel
          Left = 8
          Top = 16
          Width = 92
          Height = 13
          Caption = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
        end
        object lblTechQuantity: TLabel
          Left = 464
          Top = 16
          Width = 51
          Height = 13
          Caption = #1058#1077#1093#1085'. '#1082'-'#1074#1086
          FocusControl = edtTechQuantity
        end
        object txtTechMeasure: TDBText
          Left = 525
          Top = 35
          Width = 29
          Height = 17
          DataField = '_RESULT_PRODUCT_TECH_MEASURE_ABBREV'
          DataSource = dsData
        end
        object lblResultStore: TLabel
          Left = 584
          Top = 16
          Width = 70
          Height = 13
          Caption = #1058#1055' '#1055#1088#1080#1077#1084#1085#1080#1082
        end
        object lblEnterResultStoreBeginDate: TLabel
          Left = 736
          Top = 16
          Width = 110
          Height = 13
          Caption = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1055#1088#1080#1077#1084#1072#1085#1077
        end
        object lblEnterShipmentStoreDateDiff: TLabel
          Left = 889
          Top = 15
          Width = 24
          Height = 13
          Caption = #1088#1079#1088#1074
          FocusControl = edtEnterShipmentStoreDateDiff
        end
        object lblQuantity: TLabel
          Left = 360
          Top = 17
          Width = 46
          Height = 13
          Caption = #1056#1072#1073'. '#1082'-'#1074#1086
          FocusControl = edtQuantity
        end
        object txtMeasureAbbrev: TDBText
          Left = 421
          Top = 36
          Width = 29
          Height = 17
          DataField = 'SALE_MEASURE_ABBREV'
          DataSource = frMLBoundProcessObject.dsData
        end
        object edtTechQuantity: TDBEdit
          Left = 464
          Top = 32
          Width = 57
          Height = 21
          DataField = 'TECH_QUANTITY'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 2
        end
        inline frResultProduct: TfrProductFieldEditFrameBald
          Left = 8
          Top = 32
          Width = 345
          Height = 22
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Constraints.MaxHeight = 22
          Constraints.MinHeight = 22
          TabOrder = 0
          TabStop = True
          DesignSize = (
            345
            22)
          inherited gbTreeNode: TGroupBox
            Width = 361
            DesignSize = (
              361
              49)
            inherited pnlTreeNode: TPanel
              Width = 345
              inherited pnlTreeNodeName: TPanel
                Width = 163
                DesignSize = (
                  163
                  22)
                inherited edtTreeNodeName: TDBEdit
                  Width = 162
                end
              end
              inherited pnlTreeNodeNo: TPanel
                Left = 163
              end
              inherited pnlRightButtons: TPanel
                Left = 286
              end
            end
          end
        end
        inline frEnterResultStoreDateInterval: TfrDateIntervalFrame
          Left = 736
          Top = 31
          Width = 145
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 145
          Constraints.MinHeight = 21
          Constraints.MinWidth = 145
          TabOrder = 4
          TabStop = True
        end
        object edtEnterShipmentStoreDateDiff: TDBEdit
          Left = 888
          Top = 31
          Width = 25
          Height = 21
          Color = clBtnFace
          DataField = '_ENTER_SH_STORE_DATE_DIFF'
          DataSource = dsData
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 5
        end
        inline frResultStore: TfrDeptFieldEditFrameBald
          Left = 584
          Top = 31
          Width = 147
          Height = 22
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Constraints.MaxHeight = 22
          Constraints.MinHeight = 22
          TabOrder = 3
          TabStop = True
          DesignSize = (
            147
            22)
          inherited gbTreeNode: TGroupBox
            Width = 163
            DesignSize = (
              163
              49)
            inherited pnlTreeNode: TPanel
              Width = 147
              inherited pnlTreeNodeName: TPanel
                Width = 111
                DesignSize = (
                  111
                  22)
                inherited edtTreeNodeName: TDBEdit
                  Width = 110
                end
              end
              inherited pnlTreeNodeNo: TPanel
                Left = 0
                Align = alClient
              end
              inherited pnlRightButtons: TPanel
                Left = 111
              end
            end
          end
        end
        object edtQuantity: TDBEdit
          Left = 360
          Top = 32
          Width = 57
          Height = 21
          Color = clBtnFace
          DataField = 'SALE_MANUFACTURE_QUANTITY'
          DataSource = frMLBoundProcessObject.dsData
          ReadOnly = True
          TabOrder = 1
        end
      end
      object gbEngineering: TGroupBox
        Left = 8
        Top = 152
        Width = 673
        Height = 65
        Caption = ' '#1048#1085#1078#1077#1085#1077#1088#1080#1085#1075' '#1087#1086' ID '#1054#1055#1042' '
        TabOrder = 3
        object lblSpecVersionNo: TLabel
          Left = 8
          Top = 16
          Width = 40
          Height = 13
          Caption = #1048#1085#1078#1057#1090#1088
          FocusControl = edtSpecVersionNo
        end
        object lblSpecVersionNo2: TLabel
          Left = 8
          Top = 35
          Width = 11
          Height = 13
          Caption = #8470
        end
        object lblSpecModelVariantNo: TLabel
          Left = 104
          Top = 16
          Width = 50
          Height = 13
          Caption = #1055'-'#1052#1054#1044#1045#1083
          FocusControl = edtSpecModelVariantNo
        end
        object lblSpecModelVariantNo2: TLabel
          Left = 104
          Top = 35
          Width = 11
          Height = 13
          Caption = #8470
        end
        object lblLimitingEmployee: TLabel
          Left = 417
          Top = 16
          Width = 60
          Height = 13
          Caption = #1040#1082#1090#1080#1074#1080#1088#1072#1085#1077
        end
        object lblLimitingDate: TLabel
          Left = 563
          Top = 16
          Width = 26
          Height = 13
          Caption = #1044#1072#1090#1072
        end
        object lblSaleType: TLabel
          Left = 160
          Top = 16
          Width = 19
          Height = 13
          Caption = #1042#1080#1076
          FocusControl = edtSaleType
        end
        object lblStructureCoef: TLabel
          Left = 56
          Top = 17
          Width = 22
          Height = 13
          Hint = #1050#1086#1077#1092#1080#1094#1080#1077#1085#1090' '#1085#1072' '#1057#1090#1088#1091#1082#1090#1091#1088#1085#1072' '#1071#1089#1085#1086#1089#1090
          Caption = #1050#1057#1071
          FocusControl = edtStructureCoef
          ParentShowHint = False
          ShowHint = True
        end
        object lblOkidu: TLabel
          Left = 256
          Top = 16
          Width = 109
          Height = 13
          Caption = #1048#1085#1078#1077#1085#1077#1088' '#1052#1054#1044#1045#1083'-'#1080#1077#1088
        end
        object lblModelDevelopmentType: TLabel
          Left = 189
          Top = 16
          Width = 59
          Height = 13
          Caption = #1054#1073#1077#1084' '#1056#1072#1079#1088'.'
          FocusControl = edtModelDevelopmentTypeAbbrev
        end
        object edtSpecVersionNo: TDBEdit
          Left = 24
          Top = 32
          Width = 25
          Height = 21
          Color = clBtnFace
          DataField = 'SPEC_VERSION_NO'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 0
        end
        object edtSpecModelVariantNo: TDBEdit
          Left = 120
          Top = 32
          Width = 33
          Height = 21
          Color = clBtnFace
          DataField = 'SPEC_MODEL_VARIANT_NO'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 2
        end
        object edtLimitingEmployeeName: TDBEdit
          Left = 416
          Top = 32
          Width = 141
          Height = 21
          Color = clBtnFace
          DataField = '_LIMITING_EMPLOYEE_NAME'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 6
        end
        object edtSaleType: TDBEdit
          Left = 160
          Top = 32
          Width = 22
          Height = 21
          Color = 16770250
          DataField = 'MODEL_OPERATIONS_STATUS_CODE'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 3
        end
        object edtStructureCoef: TJvEdit
          Left = 56
          Top = 32
          Width = 41
          Height = 21
          Alignment = taCenter
          ClipboardCommands = [caCopy]
          Color = 12971970
          ReadOnly = True
          TabOrder = 1
          Text = ''
        end
        inline frLimitingDate: TfrDateFieldEditFrame
          Left = 562
          Top = 32
          Width = 105
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 105
          Constraints.MinHeight = 21
          Constraints.MinWidth = 105
          TabOrder = 7
          TabStop = True
        end
        object edtModelDevelopmentTypeAbbrev: TDBEdit
          Left = 189
          Top = 32
          Width = 60
          Height = 21
          Color = clBtnFace
          DataField = 'MODEL_DEVELOPMENT_TYPE_ABBREV'
          DataSource = frMLBoundProcessObject.dsData
          ReadOnly = True
          TabOrder = 4
        end
        object edtOwnerEmployee: TDBEdit
          Left = 257
          Top = 32
          Width = 152
          Height = 21
          Color = clBtnFace
          DataField = '_OWNER_EMPLOYEE_NAME'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 5
        end
      end
      object gbNotes: TGroupBox
        Left = 688
        Top = 152
        Width = 241
        Height = 65
        Caption = ' '#1041#1077#1083#1077#1078#1082#1080' '
        TabOrder = 4
        DesignSize = (
          241
          65)
        object moNotes: TDBMemo
          Left = 5
          Top = 15
          Width = 231
          Height = 45
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataField = 'NOTES'
          DataSource = dsData
          TabOrder = 0
        end
      end
      object gbPrices: TGroupBox
        Left = 144
        Top = 224
        Width = 481
        Height = 49
        Caption = ' '#1042#1083#1086#1078#1077#1085#1072' '#1057#1090#1086#1081#1085#1086#1089#1090' '
        TabOrder = 7
        object lblInvestedValueType: TLabel
          Left = 118
          Top = 22
          Width = 19
          Height = 13
          Caption = #1058#1080#1087
          FocusControl = edtInvestedValueType
        end
        object lblTotalInvestedValue: TLabel
          Left = 240
          Top = 22
          Width = 29
          Height = 13
          Caption = #1054#1073#1097#1086
          FocusControl = edtTotalInvestedValue
        end
        object lblTotalInvestedValueCurrencyAbbrev: TLabel
          Left = 356
          Top = 22
          Width = 37
          Height = 13
          Caption = 'CRNCY'
        end
        object lblInvestedValueResultProductTechQuantity: TLabel
          Left = 6
          Top = 22
          Width = 43
          Height = 13
          Caption = #1055#1072#1088#1090#1080#1076#1072
          FocusControl = edtInvestedValueResultProductTechQuantity
        end
        object txtSpecProductTechMeasureAbbrev: TDBText
          Left = 87
          Top = 22
          Width = 25
          Height = 13
          DataField = '_RESULT_PRODUCT_TECH_MEASURE_ABBREV'
          DataSource = dsData
        end
        object edtInvestedValueType: TEdit
          Left = 141
          Top = 19
          Width = 93
          Height = 21
          Color = clBtnFace
          ReadOnly = True
          TabOrder = 1
        end
        object btnInvestedValueFilter: TBitBtn
          Left = 384
          Top = 15
          Width = 89
          Height = 25
          Action = actInvestedValueFilter
          Caption = #1047#1072#1076#1072#1074#1072#1085#1077'...'
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
            0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF000000000000000000000000000000000000000000FF00FF0000000000FFFF
            FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF0000000000FFFFFF00000000000000000000000000FF00FF0000000000FFFF
            FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF0000000000FFFFFF00000000000000000000000000FF00FF00000000000000
            00000000000000000000000000000000000000000000FF00FF00000000000000
            00000000000000000000000000000000000000000000FF00FF00000000000000
            0000FFFFFF00000000000000000000000000000000000000000000000000FFFF
            FF000000000000000000000000000000000000000000FF00FF00000000000000
            0000FFFFFF00000000000000000000000000FF00FF000000000000000000FFFF
            FF000000000000000000000000000000000000000000FF00FF00000000000000
            0000FFFFFF00000000000000000000000000FF00FF000000000000000000FFFF
            FF000000000000000000000000000000000000000000FF00FF00FF00FF000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
            FF0000000000FFFFFF00000000000000000000000000FF00FF0000000000FFFF
            FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF000000000000000000000000000000000000000000FF00FF00000000000000
            0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
            00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF000000
            0000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
            00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          Spacing = -1
          TabOrder = 3
        end
        object edtTotalInvestedValue: TJvEdit
          Left = 273
          Top = 19
          Width = 81
          Height = 21
          Alignment = taRightJustify
          ClipboardCommands = [caCopy]
          Color = clBtnFace
          ReadOnly = True
          TabOrder = 2
          Text = ''
        end
        object edtInvestedValueResultProductTechQuantity: TJvEdit
          Left = 52
          Top = 19
          Width = 33
          Height = 21
          Alignment = taRightJustify
          ClipboardCommands = [caCopy]
          Color = clBtnFace
          ReadOnly = True
          TabOrder = 0
          Text = ''
        end
      end
      object gbProduction: TGroupBox
        Left = 632
        Top = 8
        Width = 297
        Height = 65
        Caption = ' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' ID '#1054#1055#1042' '
        TabOrder = 1
        object lblStartAfterLimitingDays: TLabel
          Left = 168
          Top = 19
          Width = 7
          Height = 13
          Caption = #1040
          FocusControl = edtStartAfterLimitingDays
          Transparent = True
        end
        object lblProductionDept: TLabel
          Left = 8
          Top = 16
          Width = 78
          Height = 13
          Caption = #1058#1055' '#1056#1077#1072#1083#1080#1079#1072#1090#1086#1088
          FocusControl = frProductionDept
        end
        object lblModelLegth: TLabel
          Left = 160
          Top = 8
          Width = 44
          Height = 13
          Caption = #1055#1077#1088#1080#1086#1076#1080
        end
        object lblPlanModelLength: TLabel
          Left = 192
          Top = 19
          Width = 8
          Height = 13
          Caption = #1055
          FocusControl = edtPlanModelLength
          Transparent = True
        end
        object lblRealModelLength: TLabel
          Left = 216
          Top = 19
          Width = 7
          Height = 13
          Caption = #1056
          FocusControl = edtRealModelLength
          Transparent = True
        end
        object edtProductionDateDiff: TLabel
          Left = 240
          Top = 8
          Width = 49
          Height = 13
          Caption = #1054#1090#1082#1083' '#1042#1088#1084
        end
        object lblProductionDateDiffMax: TLabel
          Left = 248
          Top = 19
          Width = 6
          Height = 13
          Caption = '+'
          FocusControl = edtProductionDateDiffMax
          Transparent = True
        end
        object lblProductionDateDiffMin: TLabel
          Left = 272
          Top = 19
          Width = 6
          Height = 13
          Caption = #8212
          FocusControl = edtProductionDateDiffMax
          Transparent = True
        end
        object edtStartAfterLimitingDays: TDBEdit
          Left = 160
          Top = 32
          Width = 25
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = 'START_AFTER_LIMITING_DAYS'
          DataSource = frMLBoundProcessObject.dsData
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 1
        end
        inline frProductionDept: TfrDeptFieldEditFrameBald
          Left = 8
          Top = 32
          Width = 147
          Height = 22
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Constraints.MaxHeight = 22
          Constraints.MinHeight = 22
          TabOrder = 0
          TabStop = True
          DesignSize = (
            147
            22)
          inherited gbTreeNode: TGroupBox
            Width = 163
            DesignSize = (
              163
              49)
            inherited pnlTreeNode: TPanel
              Width = 147
              inherited pnlTreeNodeName: TPanel
                Width = 111
                DesignSize = (
                  111
                  22)
                inherited edtTreeNodeName: TDBEdit
                  Width = 110
                end
              end
              inherited pnlTreeNodeNo: TPanel
                Left = 0
                Align = alClient
              end
              inherited pnlRightButtons: TPanel
                Left = 111
              end
            end
          end
        end
        object edtPlanModelLength: TDBEdit
          Left = 184
          Top = 32
          Width = 25
          Height = 21
          Color = clBtnFace
          DataField = 'INITIAL_TREATMENT_WORKDAYS'
          DataSource = frMLBoundProcessObject.dsData
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 2
        end
        object edtRealModelLength: TDBEdit
          Left = 208
          Top = 32
          Width = 25
          Height = 21
          Color = clBtnFace
          DataField = 'REAL_PRODUCTION_WORKDAYS'
          DataSource = frMLBoundProcessObject.dsData
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 3
        end
        object edtProductionDateDiffMax: TDBEdit
          Left = 240
          Top = 32
          Width = 25
          Height = 21
          Color = clBtnFace
          DataField = 'MAX_OP_DATE_POSITIVE_DIFF'
          DataSource = frMLBoundProcessObject.dsData
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 4
        end
        object edtProductionDateDiffMin: TDBEdit
          Left = 264
          Top = 32
          Width = 25
          Height = 21
          Color = clBtnFace
          DataField = 'MIN_OP_DATE_NEGATIVE_DIFF'
          DataSource = frMLBoundProcessObject.dsData
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 5
        end
      end
      object gbWastingSale: TGroupBox
        Left = 632
        Top = 224
        Width = 297
        Height = 49
        Caption = ' '#1055#1086#1079#1080#1094#1080#1103' '#1085#1072' ID '#1054#1055#1042' '
        TabOrder = 8
        DesignSize = (
          297
          49)
        object gbWastingSaleDetails: TPanel
          Left = 39
          Top = 17
          Width = 256
          Height = 25
          Anchors = [akTop, akRight]
          BevelOuter = bvNone
          TabOrder = 1
          object pnlWastingSale: TPanel
            Left = -121
            Top = 0
            Width = 257
            Height = 25
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 0
            object lblWastingSale: TLabel
              Left = 0
              Top = 5
              Width = 63
              Height = 13
              Caption = 'ID '#1054#1055#1042' '#1054#1089#1085'.'
            end
            object edtWastingSaleNo: TDBEdit
              Left = 96
              Top = 2
              Width = 49
              Height = 21
              Color = clBtnFace
              DataField = 'WASTING_SALE_NO'
              DataSource = frMLBoundProcessObject.dsData
              ReadOnly = True
              TabOrder = 1
            end
            object btnWastingSaleModelStatus: TBitBtn
              Left = 152
              Top = 1
              Width = 97
              Height = 23
              Action = actWastingSaleModelStatus
              Caption = #1057#1083#1077#1076#1077#1085#1077'...'
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000FF00FF00FF00
                FF00FF00FF00FF00FF0000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000FF00FF00FF00
                FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
                FF00FF00FF00FF00FF0000000000FFFFFF00000000000000000000000000FFFF
                FF0000000000FFFFFF000000000000000000FFFFFF0000000000FF00FF00FF00
                FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
                FF00FF00FF00FF00FF0000000000FFFFFF000000000000000000FFFFFF000000
                000000000000FFFFFF000000000000000000FFFFFF0000000000FF00FF00FF00
                FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
                FF00FF00FF00FF00FF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                FF000000000000000000FFFFFF0000000000FFFFFF0000000000FF00FF00FF00
                FF00FF00FF0000000000FFFFFF0000FFFF000000000000000000FFFFFF000000
                0000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
                FF0000000000FFFFFF0000FFFF000000000000FFFF00FFFFFF0000000000FFFF
                FF0000FFFF0000000000FFFFFF0000000000FFFFFF0000000000FF00FF000000
                0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFFFF0000FF
                FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF000000
                000000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFFFF0000FFFF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
                0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFF
                FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFF00000000
                000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000000000000000
                0000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFF0000FFFF
                00000000000000FFFF00FFFFFF0000FFFF000000000000FFFF00FFFFFF0000FF
                FF0000000000FFFFFF0000000000FFFFFF0000000000FF00FF00FFFF0000FFFF
                0000FFFF00000000000000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
                0000FFFFFF00FFFFFF000000000000000000FF00FF00FF00FF00FFFF0000FFFF
                0000FFFF0000FFFF000000000000000000000000000000000000000000000000
                0000000000000000000000000000FF00FF00FF00FF00FF00FF00}
              TabOrder = 2
            end
            object edtWastingSaleBranchNo: TDBEdit
              Left = 64
              Top = 2
              Width = 25
              Height = 21
              Color = clBtnFace
              DataField = 'WASTING_SALE_BRANCH_NO'
              DataSource = frMLBoundProcessObject.dsData
              ReadOnly = True
              TabOrder = 0
            end
          end
          object pnlWasteCompensatorProductionOrders: TPanel
            Left = 136
            Top = 0
            Width = 120
            Height = 25
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 1
            object btnWasteCompensatorProductionOrders: TBitBtn
              Left = 0
              Top = 1
              Width = 113
              Height = 23
              Action = actWasteCompensatorProductionOrders
              Caption = #1057#1098#1087#1098#1090#1089#1090#1074#1072#1097#1080'...'
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FF00FF00FF00
                FF00FF00FF00FF00FF0000000000FFFFFF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00000000000000000000000000FFFFFF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FF00FF00FF00FF00FF00
                FF00FF00FF00000000000000000000000000FFFFFF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF0000000000FFFFFF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00000000000000000000000000FFFFFF00FF00FF00FF00
                FF00FF00FF000000000000000000FFFFFF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FFFFFF00FF00
                FF000000000000000000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
                000000000000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000000000000000
                0000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
                000000000000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FFFFFF00FF00
                FF0000000000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF0000000000000000000000000000000000FFFFFF00FF00FF00FF00
                FF00FF00FF000000000000000000FFFFFF00FF00FF00FF00FF00FF00FF00FF00
                FF0000000000000000000000000000000000FFFFFF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF000000000000000000FFFFFF00FF00FF00FF00FF00FF00
                FF000000000000000000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF000000000000000000FFFFFF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
              TabOrder = 0
            end
          end
        end
        object edtIsWasteCompenstatingOrder: TDBEdit
          Left = 8
          Top = 19
          Width = 25
          Height = 21
          Color = clBtnFace
          DataField = 'IS_WASTE_COMPENSATING_ORDER'
          DataSource = frMLBoundProcessObject.dsData
          ReadOnly = True
          TabOrder = 0
        end
      end
      object gbPriority: TGroupBox
        Left = 8
        Top = 224
        Width = 61
        Height = 49
        Caption = ' '#1054#1089#1085'.'#1055#1088'. '
        TabOrder = 5
        DesignSize = (
          61
          49)
        object edtPriority: TDBEdit
          Left = 7
          Top = 19
          Width = 47
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'PRIORITY_NO'
          DataSource = frMLBoundProcessObject.dsData
          ReadOnly = True
          TabOrder = 0
        end
      end
      object gbWorkPriority: TGroupBox
        Left = 76
        Top = 224
        Width = 61
        Height = 49
        Caption = ' '#1054#1087'. '#1055#1088'. '
        TabOrder = 6
        DesignSize = (
          61
          49)
        object edtWorkPriority: TDBEdit
          Left = 7
          Top = 19
          Width = 47
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          Color = 15461355
          DataField = 'WORK_PRIORITY_NO'
          DataSource = frMLBoundProcessObject.dsData
          ReadOnly = True
          TabOrder = 0
        end
      end
    end
    inherited grdPrint: TAbmesDBGrid
      Left = 928
      Top = 240
      TabOrder = 1
      Columns = <
        item
          Alignment = taCenter
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'IS_SHRUNK'
          Footers = <>
          Title.Caption = #177
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'NO_AS_FORMATED_TEXT'
          Footers = <>
          Title.Caption = #1057#1090#1088#1091#1082#1090#1091#1088#1077#1085' '#1085#1086#1084#1077#1088
          Width = 95
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'FORK_NO'
          Footers = <>
          Title.Caption = #1056#1082
          Width = 16
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = '_LINE_TYPE_ABRREV'
          Footers = <>
          Title.Caption = #1042' '#1080' '#1076
          Width = 15
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DETAIL_NAME'
          Footers = <>
          Title.Caption = #1050#1088#1072#1081#1085#1072' '#1057#1090#1088#1091#1082#1090#1091#1088#1085#1072' '#1063#1072#1089#1090
          Width = 188
        end
        item
          Alignment = taCenter
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DETAIL_HAS_DOCUMENTATION'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Footers = <>
          Title.Caption = #1048' '#1048' '#1054
          Width = 15
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = '_DETAIL_TECH_QUANTITY_SHOW'
          Footers = <>
          Title.Caption = #1058#1077#1093#1085#1086#1083#1086#1075#1080#1095#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1057#1090#1088#1091#1082#1090'.'
          Width = 42
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = '_LINE_DETAIL_TECH_QUANTITY_SHOW'
          Footers = <>
          Title.Caption = #1058#1077#1093#1085#1086#1083#1086#1075#1080#1095#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1054#1073#1097#1086
          Width = 42
        end
        item
          Alignment = taCenter
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = '_DETAIL_TECH_MEASURE_ABBREV'
          Footers = <>
          Title.Caption = #1058#1077#1093#1085#1086#1083#1086#1075#1080#1095#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1052'.'#1077#1076'.'
          Width = 29
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PRODUCT_NAME'
          Footers = <>
          Title.Caption = #1053#1072#1095#1072#1083#1085#1072' '#1057#1090#1088#1091#1082#1090#1091#1088#1085#1072' '#1063#1072#1089#1090
          Width = 188
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PRODUCT_HAS_DOCUMENTATION'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Footers = <>
          Title.Caption = #1048' '#1048' '#1054
          Width = 15
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = '_PRODUCT_PRECISION_LEVEL_NO'
          Footers = <>
          Title.Caption = #1053#1058
          Width = 20
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PRODUCT_TECH_QUANTITY'
          Footers = <>
          Title.Caption = #1058#1077#1093#1085#1086#1083#1086#1075#1080#1095#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1047#1072' 1 '#1050#1057#1063
          Width = 42
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'TOTAL_PRODUCT_TECH_QUANTITY'
          Footers = <>
          Title.Caption = #1058#1077#1093#1085#1086#1083#1086#1075#1080#1095#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1054#1073#1097#1086
          Width = 42
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = '_PRODUCT_TECH_MEASURE_ABBREV'
          Footers = <>
          Title.Caption = #1058#1077#1093#1085#1086#1083#1086#1075#1080#1095#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1052'.'#1077#1076'.'
          Width = 29
        end>
    end
  end
  inherited pnlLinesData: TPanel
    Top = 295
    Width = 953
    Height = 329
    TabOrder = 2
    DesignSize = (
      953
      329)
    inherited pcMain: TPageControl
      Width = 937
      Height = 313
      inherited tsLines1: TTabSheet
        inherited pnlDataButtons1: TPanel
          Top = 239
          Width = 917
          DesignSize = (
            917
            33)
          inherited btnRecursivePrint: TBitBtn
            Left = 812
            Anchors = [akTop, akRight]
          end
        end
        inherited grdLines1: TAbmesDBGrid
          Width = 917
          Height = 239
          Columns = <
            item
              AutoFitColWidth = False
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'IS_SHRUNK'
              Footers = <>
              Title.Caption = #177
              Width = 10
            end
            item
              AutoFitColWidth = False
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'NO_AS_FORMATED_TEXT'
              Footers = <>
              Title.Caption = #1057#1090#1088#1091#1082#1090#1091#1088#1077#1085' '#1085#1086#1084#1077#1088
              Width = 167
            end
            item
              AutoFitColWidth = False
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'FORK_NO'
              Footers = <>
              Title.Caption = #1056#1082
              Width = 20
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = '_LINE_TYPE_ABRREV'
              Footers = <>
              Title.Caption = #1042' '#1080' '#1076
              Width = 15
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'DETAIL_NAME'
              Footers = <>
              Title.Caption = #1050#1088#1072#1081#1085#1072' '#1057#1090#1088#1091#1082#1090#1091#1088#1085#1072' '#1063#1072#1089#1090
              Width = 452
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'DETAIL_NO'
              Footers = <>
              Title.Caption = #1053#1086#1084#1077#1088
              Visible = False
            end
            item
              Alignment = taCenter
              CellButtons = <>
              Color = 15532031
              DynProps = <>
              EditButtons = <>
              FieldName = 'DETAIL_HAS_DOCUMENTATION'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = [fsBold]
              Footers = <>
              Title.Caption = #1048' '#1048' '#1054
              Width = 15
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'DETAIL_TECH_QUANTITY'
              Footers = <>
              Title.Caption = #1058#1077#1093#1085#1086#1083#1086#1075#1080#1095#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1057#1090#1088#1091#1082#1090#1091#1088#1085#1086
              Width = 71
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = '_LINE_DETAIL_TECH_QUANTITY_SHOW'
              Footers = <>
              Title.Caption = #1058#1077#1093#1085#1086#1083#1086#1075#1080#1095#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1054#1073#1097#1086
              Width = 71
            end
            item
              Alignment = taCenter
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = '_DETAIL_TECH_MEASURE_ABBREV'
              Footers = <>
              Title.Caption = #1058#1077#1093#1085#1086#1083#1086#1075#1080#1095#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1052'.'#1077#1076'.'
              Width = 39
            end
            item
              Alignment = taCenter
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'IS_FOR_SINGLE_USE'
              Footers = <>
              Title.Caption = #1041#1077#1079' '#1074#1088'.'
              Title.Hint = #1041#1077#1079' '#1074#1088#1098#1097#1072#1085#1077
              Title.Orientation = tohVertical
              Width = 15
            end>
        end
      end
      inherited tsLines2: TTabSheet
        inherited pnlDataButtons2: TPanel
          Top = 239
          Width = 917
          object pnlLineChangeButton: TPanel
            Left = 804
            Top = 0
            Width = 113
            Height = 33
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 4
            object btnLineChange: TBitBtn
              Left = 8
              Top = 8
              Width = 105
              Height = 25
              Action = actLineChange
              Caption = #1047#1072#1084#1103#1085#1072'...'
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF0000000000FFFFFF0000000000000000000000000000000000FFFF
                FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF0000000000FFFFFF00000000000000000000000000000000000000
                000000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF0000000000FFFFFF00000000000000000000000000000000000000
                000000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF0000000000FFFFFF00000000000000000000000000FFFFFF00FFFF
                FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
                0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF0000000000FFFFFF000000000000000000FFFFFF00FFFFFF000000
                0000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
                000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF000000000000000000000000000000000000000000000000000000
                0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
              Spacing = -1
              TabOrder = 0
            end
          end
          object pnlShowProductVIMButton: TPanel
            Left = 578
            Top = 0
            Width = 113
            Height = 33
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 3
          end
          object pnlLineChangesButton: TPanel
            Left = 691
            Top = 0
            Width = 113
            Height = 33
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 5
            object btnLineChanges: TBitBtn
              Left = 8
              Top = 8
              Width = 105
              Height = 25
              Action = actLineChanges
              Caption = #1048#1089#1090'. '#1079#1072#1084#1077#1085#1080
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF000000FF000000FF000000FF000000FF000000FF000000FF000000
                FF000000FF000000FF0000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF000000FF00000000000000FF000000FF000000FF000000FF000000
                FF00000000000000FF0000FFFF0000FFFF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF000000FF00000000000000FF000000FF000000FF000000FF000000
                FF00000000000000FF0000FFFF008484840000FFFF00FF00FF00FF00FF00FF00
                FF00FF00FF000000FF0000000000000000000000000000000000000000000000
                0000000000000000FF0000FFFF00848484008484840000FFFF00FF00FF00FF00
                FF00FF00FF000000FF000000FF00000000000000FF000000FF000000FF000000
                00000000FF000000FF0000FFFF00848484008484840000FFFF00FF00FF00FF00
                FF00FF00FF000000FF000000FF0000000000000000000000FF00000000000000
                00000000FF000000FF0000FFFF00848484008484840000FFFF00FF00FF00FF00
                FF00FF00FF000000FF000000FF000000FF000000000000000000000000000000
                FF000000FF000000FF0000FFFF008484840000FFFF0000FFFF00FF00FF00FF00
                FF00FF00FF000000FF000000FF000000FF000000FF00000000000000FF000000
                FF000000FF000000FF0000FFFF00848484008484840000FFFF00FF00FF00FF00
                FF00FF00FF000000FF000000FF000000FF000000FF000000FF000000FF000000
                FF000000FF000000FF0000FFFF0000FFFF008484840000FFFF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF000000FF000000FF000000FF000000FF000000FF00
                0000FF000000FF000000FF00000000FFFF0000FFFF0000FFFF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000FF000000FF00
                0000FF000000FF000000FF000000FF00000000FFFF0000FFFF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000FF00
                0000FF000000FF000000FF000000FF000000FF00000000FFFF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
              ParentShowHint = False
              ShowHint = True
              Spacing = -1
              TabOrder = 0
            end
          end
        end
        inherited grdLines2: TAbmesDBGrid
          Width = 917
          Height = 239
          Columns = <
            item
              Alignment = taCenter
              AutoFitColWidth = False
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'IS_SHRUNK'
              Footers = <>
              Title.Caption = #177
              Width = 10
            end
            item
              AutoFitColWidth = False
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'NO_AS_FORMATED_TEXT'
              Footers = <>
              Title.Caption = #1057#1090#1088#1091#1082#1090#1091#1088#1077#1085' '#1085#1086#1084#1077#1088
              Width = 167
            end
            item
              AutoFitColWidth = False
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'FORK_NO'
              Footers = <>
              Title.Caption = #1056#1082
              Width = 20
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = '_LINE_TYPE_ABRREV'
              Footers = <>
              Title.Caption = #1042' '#1080' '#1076
              Width = 15
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'PRODUCT_NAME'
              Footers = <>
              Title.Caption = #1053#1072#1095#1072#1083#1085#1072' '#1057#1090#1088#1091#1082#1090#1091#1088#1085#1072' '#1063#1072#1089#1090
              Width = 280
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'PRODUCT_NO'
              Footers = <>
              Title.Caption = #1053#1086#1084#1077#1088
              Visible = False
            end
            item
              Alignment = taCenter
              CellButtons = <>
              Color = 15532031
              DynProps = <>
              EditButtons = <>
              FieldName = 'PRODUCT_HAS_DOCUMENTATION'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = [fsBold]
              Footers = <>
              Title.Caption = #1048' '#1048' '#1054
              Width = 15
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = '_PRODUCT_PRECISION_LEVEL_NO'
              Footers = <>
              Title.Caption = #1053#1058
              Title.Hint = #1053#1080#1074#1086' '#1085#1072' '#1090#1086#1095#1085#1086#1089#1090
              Width = 20
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'PRODUCT_TECH_QUANTITY'
              Footers = <>
              Title.Caption = #1058#1077#1093#1085#1086#1083#1086#1075#1080#1095#1085#1086' '#1082'-'#1074#1086'|'#1047#1072' 1 '#1050#1057#1063
              Width = 55
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'TOTAL_PRODUCT_TECH_QUANTITY'
              Footers = <>
              Title.Caption = #1058#1077#1093#1085#1086#1083#1086#1075#1080#1095#1085#1086' '#1082'-'#1074#1086'|'#1054#1073#1097#1086
            end
            item
              Alignment = taCenter
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = '_PRODUCT_TECH_MEASURE_ABBREV'
              Footers = <>
              Title.Caption = #1058#1077#1093#1085#1086#1083#1086#1075#1080#1095#1085#1086' '#1082'-'#1074#1086'|'#1052'.'#1077#1076'.'
              Width = 39
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'TOTAL_PRODUCT_ACCOUNT_QUANTITY'
              Footers = <>
              Title.Caption = #1057#1095#1077#1090'. '#1082'-'#1074#1086'|'#1054#1073#1097#1086
            end
            item
              Alignment = taCenter
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = '_PRODUCT_ACCOUNT_MEASURE_ABBREV'
              Footers = <>
              Title.Caption = #1057#1095#1077#1090'. '#1082'-'#1074#1086'|'#1052'.'#1077#1076'.'
              Width = 39
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'PRODUCT_SECONDARY_SINGLE_PRICE'
              Footers = <>
              Title.Caption = #1062#1077#1085#1072' '#1074' %s|'#1045#1076'-'#1095#1085#1072
              Width = 40
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'PRODUCT_SECONDARY_TOTAL_PRICE'
              Footers = <>
              Title.Caption = #1062#1077#1085#1072' '#1074' %s|'#1054#1073#1097#1086
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = '_MLL_CHANGE_STATUS_ABBREV'
              Footers = <>
              Title.Caption = ' '#1047'    '#1072'    '#1084' '
              Title.Hint = #1047#1072#1084#1077#1085#1080
              Title.ToolTips = True
              Width = 20
            end>
        end
      end
      inherited tsStages: TTabSheet
        inherited pnlStagesDataButtons: TPanel
          Top = 239
          Width = 917
          inherited pnlStagesDataButtonsInner: TPanel
            Left = 457
          end
        end
        inherited pnlStages: TPanel
          Left = 473
          Width = 444
          Height = 239
          inherited grdStages: TAbmesDBGrid
            Width = 444
            Height = 239
            DataSource = dsStages
            Columns = <
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'ML_MODEL_STAGE_NO'
                Footers = <>
                Title.Caption = #8470
                Width = 20
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'DEPT_NAME'
                Footers = <>
                Title.Caption = #1045#1090#1058#1055'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                Width = 208
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'DEPT_IDENTIFIER'
                Footers = <>
                Title.Caption = #1045#1090#1058#1055'|'#1050#1086#1076
                Width = 51
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'TREATMENT_WORKDAYS'
                Footers = <>
                Title.Caption = #1056#1072#1073#1086#1090#1085#1080' '#1076#1085#1080' '#1079#1072'|'#1048#1079#1087#1098#1083#1085'.'
                Width = 45
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'OUTGOING_WORKDAYS'
                Footers = <>
                Title.Caption = #1056#1072#1073#1086#1090#1085#1080' '#1076#1085#1080' '#1079#1072'|'#1048#1079#1093#1086#1076
                Width = 45
              end
              item
                Alignment = taCenter
                CellButtons = <>
                Color = 15532031
                DynProps = <>
                EditButtons = <>
                FieldName = 'HAS_DOCUMENTATION'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Courier New'
                Font.Style = [fsBold]
                Footers = <>
                Title.Caption = #1048' '#1048' '#1054
                Width = 15
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'OPERATION_COUNT'
                Footers = <>
                Title.Caption = #1041#1088'. '#1054#1087'.'
                Title.Hint = #1041#1088#1086#1081' '#1086#1087#1077#1088#1072#1094#1080#1080
                Width = 21
              end>
          end
        end
        inherited pnlSplitter: TPanel
          Left = 465
          Height = 239
        end
        inherited grdLines3: TAbmesDBGrid
          Width = 465
          Height = 239
          Columns = <
            item
              Alignment = taCenter
              AutoFitColWidth = False
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'IS_SHRUNK'
              Footers = <>
              Title.Caption = #177
              Width = 10
            end
            item
              AutoFitColWidth = False
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'NO_AS_FORMATED_TEXT'
              Footers = <>
              Title.Caption = #1057#1090#1088#1091#1082#1090#1091#1088#1077#1085' '#1085#1086#1084#1077#1088
              Width = 167
            end
            item
              AutoFitColWidth = False
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'FORK_NO'
              Footers = <>
              Title.Caption = #1056#1082
              Width = 20
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = '_LINE_TYPE_ABRREV'
              Footers = <>
              Title.Caption = #1042' '#1080' '#1076
              Width = 15
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'DETAIL_NAME'
              Footers = <>
              Title.Caption = #1050#1088#1072#1081#1085#1072' '#1057#1090#1088#1091#1082#1090#1091#1088#1085#1072' '#1063#1072#1089#1090
              Width = 216
            end>
        end
      end
      inherited tsModel: TTabSheet
        inherited grdModel: TAbmesDBGrid
          Width = 917
          Height = 165
          DataSource = dsModel
        end
        inherited pnlModelControls: TPanel
          Width = 929
          DesignSize = (
            929
            32)
          inherited btnToggleInvestedValue: TSpeedButton
            Left = 855
          end
          inherited btnMaximizeInModel: TSpeedButton
            Left = 903
          end
          inherited btnToggleInvestedValuePart: TSpeedButton
            Left = 876
          end
          object btnMakeLimiting: TBitBtn [4]
            Left = 120
            Top = 6
            Width = 105
            Height = 21
            Action = actMakeLimiting
            Caption = #1040#1082#1090#1080#1074#1080#1088#1072#1085#1077
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF0000000000FF00FF00FF00FF00FF00FF00FF00FF0000FFFF0000000000FF00
              FF00FF00FF00FF00FF00FF00FF007B7B7B0000000000FF00FF00FF00FF0000FF
              FF00FF00FF0000000000FF00FF00FF00FF00FF00FF0000FFFF0000000000FF00
              FF00FF00FF00FF00FF007B7B7B0000FFFF00FF00FF00FF00FF00FF00FF00FF00
              FF0000FFFF00FF00FF0000000000FF00FF00FF00FF0000FFFF00FF00FF00FF00
              FF00FF00FF007B7B7B0000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF0000FFFF00FF00FF00FF00FF00FF00FF0000000000000000000000
              0000FF00FF0000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF0000FFFF0000FFFF000000
              000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
              FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
              0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
              FF0000FFFF0000000000FF00FF0000000000000000000000000000FFFF0000FF
              FF0000FFFF00FF00FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
              FF0000FFFF000000000000FFFF0000FFFF0000FFFF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
              FF0000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF007B7B7B0000000000FF00FF0000FFFF0000FFFF0000FFFF00FF00
              FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF007B7B7B0000FFFF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00
              FF00FF00FF0000FFFF00FF00FF0000000000FF00FF00FF00FF00FF00FF007B7B
              7B0000FFFF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF0000000000FF00
              FF00FF00FF00FF00FF0000FFFF00FF00FF0000000000FF00FF00FF00FF0000FF
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF0000000000FF00
              FF00FF00FF00FF00FF00FF00FF0000FFFF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            Spacing = -1
            TabOrder = 1
          end
          inherited btnPrintModel: TBitBtn
            Left = 776
            TabOrder = 3
          end
          object btnGenerateBaseModel: TBitBtn
            Left = 234
            Top = 6
            Width = 199
            Height = 21
            Action = actGenerateBaseModel
            Caption = #1043#1077#1085#1077#1088#1080#1088#1072#1085#1077' '#1085#1072' '#1086#1089#1085#1086#1074#1085#1080' '#1077#1090#1072#1087#1080
            Spacing = -1
            TabOrder = 2
          end
        end
        inherited pnlModelLeft: TPanel
          Height = 165
        end
        inherited pnlModelRight: TPanel
          Left = 923
          Height = 165
        end
        inherited pnlModelBottom: TPanel
          Top = 261
          Width = 929
        end
        inherited pnlModelTaskEdit: TPanel
          Width = 929
          DesignSize = (
            929
            32)
          inherited btnMaximizeInModel2: TSpeedButton
            Left = 902
          end
          inherited lblEditTaskInModelCaption: TLabel
            Width = 664
          end
        end
        inherited pnlTaskModelTop: TPanel
          Width = 929
          inherited pnlTaskModelTopClient: TPanel
            Width = 815
            inherited btnMaximizeInModel3: TSpeedButton
              Left = 788
            end
            inherited lblTaskModelCaption: TLabel
              Width = 667
            end
          end
        end
      end
      inherited tsTasks: TTabSheet
        inherited pnlTasksTop: TPanel
          Width = 743
          Height = 0
          Align = alNone
          Visible = False
        end
        inherited grdTasks: TAbmesDBGrid
          Top = 0
          Width = 334
          Height = 279
          DataSource = dsTasks
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'MATERIAL_LIST_TASK_NO'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #8470
              Width = 30
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'MATERIAL_LIST_TASK_NAME'
              Footers = <>
              Title.Alignment = taCenter
              Width = 270
            end>
        end
        inherited pnlTasksButtons: TPanel
          Left = 334
          Top = 0
          Height = 279
          inherited blvDivider: TBevel
            Height = 279
          end
        end
        inherited grdTaskDepts: TAbmesDBGrid
          Left = 469
          Top = 0
          Width = 335
          Height = 279
          DataSource = dsTaskDepts
          TitleParams.VTitleMargin = 5
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'DEPT_NAME'
              Footers = <>
              Title.Caption = #1058#1055'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
              Width = 244
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'DEPT_IDENTIFIER'
              Footers = <>
              Title.Caption = #1058#1055'|'#1050#1086#1076
              Width = 56
            end>
        end
        inherited pnlTaskDeptsButtons: TPanel
          Left = 804
          Top = 0
          Height = 279
        end
      end
    end
    inherited pnlNav: TPanel
      Left = 585
      Top = 3
      Width = 360
      inherited tlbTopButtons: TToolBar
        Left = 17
        Width = 343
        inherited pnlShowLevel: TPanel
          inherited edtShowLevel: TEdit
            Text = '26'
          end
          inherited udShowLevel: TUpDown
            Max = 26
            Position = 26
          end
        end
        inherited navLines: TDBColorNavigator
          Hints.Strings = ()
        end
        object tlbShowProductVIM: TToolBar
          Left = 315
          Top = 0
          Width = 28
          Height = 20
          Align = alLeft
          AutoSize = True
          ButtonHeight = 20
          Caption = 'tlbShowProductVIM'
          TabOrder = 4
          DesignSize = (
            28
            20)
          object btnShowProductVIM: TSpeedButton
            Left = 0
            Top = 0
            Width = 20
            Height = 20
            Action = actShowProductVIM
            Anchors = [akTop, akRight, akBottom]
            Flat = True
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00FF00
              FF007B7B7B00FF00FF00FF00FF00FF00FF007B7B7B00FF00FF00FF00FF00FF00
              FF007B7B7B00FF00FF00FF00FF00FF00FF007B7B7B00FF00FF00FF00FF00FF00
              FF007B7B7B00FF00FF007B7B7B00FF00FF007B7B7B00FF00FF007B7B7B00FF00
              FF007B7B7B00FF00FF007B7B7B00FF00FF007B7B7B00FF00FF007B7B7B007B7B
              7B00000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000FF00FF00FF00
              FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007B7B
              7B00000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF0000000000FF00FF000000FF00FF00FF000000FF000000FF00FF00FF00FF00
              0000FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF007B7B7B007B7B
              7B00000000007B7B7B000000FF007B7B7B000000FF007B7B7B000000FF007B7B
              7B007B7B7B00FF0000007B7B7B007B7B7B007B7B7B007B7B7B00FF00FF00FF00
              FF0000000000FF00FF00FF00FF000000FF00FF00FF00FF00FF000000FF00FF00
              FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF007B7B
              7B0000000000FF000000FF00FF00FF00FF00FF00FF00FF000000FF00FF000000
              FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF0000000000FF00FF00FF000000FF00FF00FF000000FF00FF00FF00FF000000
              FF00FF00FF000000FF00FF0000000000FF00FF00FF00FF00FF007B7B7B007B7B
              7B00000000007B7B7B00FF0000007B7B7B00FF0000007B7B7B007B7B7B007B7B
              7B000000FF007B7B7B007B7B7B00FF0000000000FF007B7B7B00FF00FF00FF00
              FF0000000000FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF007B7B
              7B0000000000FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00
              FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007B7B7B007B7B
              7B00000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
              7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          end
          object sepShowProductVIM: TToolButton
            Left = 20
            Top = 0
            Width = 8
            Caption = 'sepShowProductVIM'
            Style = tbsSeparator
          end
        end
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 208
    Top = 384
  end
  inherited cdsGridData: TAbmesClientDataSet
    Aggregates = <
      item
        Active = True
        GroupingLevel = 1
        IndexName = 'idxNo'
        Visible = False
      end
      item
        Active = True
        GroupingLevel = 2
        IndexName = 'idxNo'
        Visible = False
      end
      item
        Active = True
        GroupingLevel = 3
        IndexName = 'idxNo'
        Visible = False
      end
      item
        Active = True
        GroupingLevel = 4
        IndexName = 'idxNo'
        Visible = False
      end
      item
        Active = True
        GroupingLevel = 5
        IndexName = 'idxNo'
        Visible = False
      end
      item
        Active = True
        GroupingLevel = 6
        IndexName = 'idxNo'
        Visible = False
      end
      item
        Active = True
        GroupingLevel = 7
        IndexName = 'idxNo'
        Visible = False
      end
      item
        Active = True
        GroupingLevel = 8
        IndexName = 'idxNo'
        Visible = False
      end>
    DataSetField = cdsDataqryXModelLines
    FieldDefs = <
      item
        Name = 'MLL_OBJECT_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'MLL_OBJECT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'ML_OBJECT_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'ML_OBJECT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PARENT_MLL_OBJECT_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PARENT_MLL_OBJECT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'FORK_0_MLL_OBJECT_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'FORK_0_MLL_OBJECT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'NO_1'
        DataType = ftFloat
      end
      item
        Name = 'NO_2'
        DataType = ftFloat
      end
      item
        Name = 'NO_3'
        DataType = ftFloat
      end
      item
        Name = 'NO_4'
        DataType = ftFloat
      end
      item
        Name = 'NO_5'
        DataType = ftFloat
      end
      item
        Name = 'NO_6'
        DataType = ftFloat
      end
      item
        Name = 'NO_7'
        DataType = ftFloat
      end
      item
        Name = 'NO_8'
        DataType = ftFloat
      end
      item
        Name = 'NO_9'
        DataType = ftFloat
      end
      item
        Name = 'NO_10'
        DataType = ftFloat
      end
      item
        Name = 'NO_11'
        DataType = ftFloat
      end
      item
        Name = 'NO_12'
        DataType = ftFloat
      end
      item
        Name = 'NO_13'
        DataType = ftFloat
      end
      item
        Name = 'NO_14'
        DataType = ftFloat
      end
      item
        Name = 'NO_15'
        DataType = ftFloat
      end
      item
        Name = 'NO_16'
        DataType = ftFloat
      end
      item
        Name = 'NO_17'
        DataType = ftFloat
      end
      item
        Name = 'NO_18'
        DataType = ftFloat
      end
      item
        Name = 'NO_19'
        DataType = ftFloat
      end
      item
        Name = 'NO_20'
        DataType = ftFloat
      end
      item
        Name = 'NO_21'
        DataType = ftFloat
      end
      item
        Name = 'NO_22'
        DataType = ftFloat
      end
      item
        Name = 'NO_23'
        DataType = ftFloat
      end
      item
        Name = 'NO_24'
        DataType = ftFloat
      end
      item
        Name = 'NO_25'
        DataType = ftFloat
      end
      item
        Name = 'NO_AS_TEXT'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'NO_AS_FORMATED_TEXT'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'FORK_NO'
        DataType = ftFloat
      end
      item
        Name = 'IS_WASTE_FORK'
        DataType = ftFloat
      end
      item
        Name = 'NO_AS_FORMATED_TEXT_EX'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'DETAIL_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DETAIL_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'DETAIL_NO'
        DataType = ftFloat
      end
      item
        Name = 'DETAIL_HAS_DOCUMENTATION'
        DataType = ftFloat
      end
      item
        Name = 'DETAIL_IS_INACTIVE'
        DataType = ftFloat
      end
      item
        Name = 'DETAIL_PARENT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DETAIL_IS_SELF_APPROVED'
        DataType = ftFloat
      end
      item
        Name = 'DETAIL_TECH_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_DETAIL_TECH_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'LINE_DETAIL_TECH_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'PAR_LINE_DETAIL_TECH_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'DETAIL_TECH_MEASURE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'PRODUCT_NO'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_HAS_DOCUMENTATION'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_IS_INACTIVE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_TECH_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_PRODUCT_TECH_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_TECH_MEASURE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_TECH_MEASURE_COEF'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_PRODUCT_ACCOUNT_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_ACCOUNT_MEASURE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_ACCOUNT_MEASURE_COEF'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_SECONDARY_SINGLE_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_SINGLE_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_SECONDARY_TOTAL_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_IS_FOR_TREATMENT_USE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_IS_FOR_DIRECT_USE'
        DataType = ftFloat
      end
      item
        Name = 'STORE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_NEED_BEGIN_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'PRODUCT_NEED_END_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'NOTES'
        DataType = ftWideString
        Size = 250
      end
      item
        Name = 'CONSTRUCTION_NOTES'
        DataType = ftWideString
        Size = 250
      end
      item
        Name = 'ANNUL_EMPLOYEE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'ANNUL_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'ANNUL_TIME'
        DataType = ftTimeStamp
      end
      item
        Name = 'IS_FORK'
        DataType = ftFloat
      end
      item
        Name = 'IS_NOT_FORK'
        DataType = ftFloat
      end
      item
        Name = 'MATERIAL_LIST_LINE_CHANGE_NO'
        DataType = ftFloat
      end
      item
        Name = 'MLL_CHANGE_STATUS'
        DataType = ftFloat
      end
      item
        Name = 'LAST_MM_MLMS_MODEL_STAGE_NO'
        DataType = ftFloat
      end
      item
        Name = 'NOT_STORNO_STORE_DEAL_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'IS_FOR_SINGLE_USE'
        DataType = ftFloat
      end
      item
        Name = 'MAX_MOVED_TECH_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'APPROVE_CYCLE_NO'
        DataType = ftFloat
      end
      item
        Name = 'IS_COMPLETE'
        DataType = ftFloat
      end
      item
        Name = 'qryXModelLineStages'
        DataType = ftDataSet
      end>
    IndexDefs = <
      item
        Name = 'idxNoNew'
        Fields = 'NO_AS_FORMATED_TEXT_EX; FORK_NO'
      end>
    IndexName = 'idxNoNew'
    BeforeEdit = cdsGridDataBeforeEdit
    BeforeDelete = cdsGridDataBeforeDelete
    Left = 176
    Top = 384
    object cdsGridDataMLL_OBJECT_BRANCH_CODE: TAbmesFloatField [0]
      FieldName = 'MLL_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsGridDataMLL_OBJECT_CODE: TAbmesFloatField [1]
      FieldName = 'MLL_OBJECT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsGridDataML_OBJECT_BRANCH_CODE: TAbmesFloatField [2]
      FieldName = 'ML_OBJECT_BRANCH_CODE'
    end
    object cdsGridDataML_OBJECT_CODE: TAbmesFloatField [3]
      FieldName = 'ML_OBJECT_CODE'
    end
    object cdsGridDataPARENT_MLL_OBJECT_BRANCH_CODE: TAbmesFloatField [4]
      FieldName = 'PARENT_MLL_OBJECT_BRANCH_CODE'
    end
    object cdsGridDataPARENT_MLL_OBJECT_CODE: TAbmesFloatField [5]
      FieldName = 'PARENT_MLL_OBJECT_CODE'
    end
    object cdsGridDataFORK_0_MLL_OBJECT_BRANCH_CODE: TAbmesFloatField [6]
      FieldName = 'FORK_0_MLL_OBJECT_BRANCH_CODE'
    end
    object cdsGridDataFORK_0_MLL_OBJECT_CODE: TAbmesFloatField [7]
      FieldName = 'FORK_0_MLL_OBJECT_CODE'
    end
    inherited cdsGridDataNO_1: TAbmesFloatField
      ProviderFlags = [pfInUpdate]
    end
    inherited cdsGridDataNO_2: TAbmesFloatField
      ProviderFlags = [pfInUpdate]
    end
    inherited cdsGridDataNO_3: TAbmesFloatField
      ProviderFlags = [pfInUpdate]
    end
    inherited cdsGridDataNO_4: TAbmesFloatField
      ProviderFlags = [pfInUpdate]
    end
    inherited cdsGridDataNO_5: TAbmesFloatField
      ProviderFlags = [pfInUpdate]
    end
    inherited cdsGridDataNO_6: TAbmesFloatField
      ProviderFlags = [pfInUpdate]
    end
    inherited cdsGridDataNO_7: TAbmesFloatField
      ProviderFlags = [pfInUpdate]
    end
    inherited cdsGridDataNO_8: TAbmesFloatField
      ProviderFlags = [pfInUpdate]
    end
    inherited cdsGridDataNO_9: TAbmesFloatField
      ProviderFlags = [pfInUpdate]
    end
    inherited cdsGridDataNO_10: TAbmesFloatField
      ProviderFlags = [pfInUpdate]
    end
    inherited cdsGridDataNO_11: TAbmesFloatField
      ProviderFlags = [pfInUpdate]
    end
    inherited cdsGridDataNO_12: TAbmesFloatField
      ProviderFlags = [pfInUpdate]
    end
    inherited cdsGridDataNO_13: TAbmesFloatField
      ProviderFlags = [pfInUpdate]
    end
    inherited cdsGridDataNO_14: TAbmesFloatField
      ProviderFlags = [pfInUpdate]
    end
    inherited cdsGridDataNO_15: TAbmesFloatField
      ProviderFlags = [pfInUpdate]
    end
    inherited cdsGridDataNO_16: TAbmesFloatField
      ProviderFlags = [pfInUpdate]
    end
    inherited cdsGridDataNO_17: TAbmesFloatField
      ProviderFlags = [pfInUpdate]
    end
    inherited cdsGridDataNO_18: TAbmesFloatField
      ProviderFlags = [pfInUpdate]
    end
    inherited cdsGridDataNO_19: TAbmesFloatField
      ProviderFlags = [pfInUpdate]
    end
    inherited cdsGridDataNO_20: TAbmesFloatField
      ProviderFlags = [pfInUpdate]
    end
    inherited cdsGridDataNO_21: TAbmesFloatField
      ProviderFlags = [pfInUpdate]
    end
    inherited cdsGridDataNO_22: TAbmesFloatField
      ProviderFlags = [pfInUpdate]
    end
    inherited cdsGridDataNO_23: TAbmesFloatField
      ProviderFlags = [pfInUpdate]
    end
    inherited cdsGridDataNO_24: TAbmesFloatField
      ProviderFlags = [pfInUpdate]
    end
    inherited cdsGridDataNO_25: TAbmesFloatField
      ProviderFlags = [pfInUpdate]
    end
    inherited cdsGridDataNO_AS_TEXT: TAbmesWideStringField
      ProviderFlags = [pfInUpdate]
    end
    inherited cdsGridDataNO_AS_FORMATED_TEXT: TAbmesWideStringField
      ProviderFlags = [pfInUpdate]
    end
    object cdsGridDataFORK_NO: TAbmesFloatField [35]
      DisplayLabel = #1056#1082
      FieldName = 'FORK_NO'
    end
    object cdsGridDataIS_WASTE_FORK: TAbmesFloatField [36]
      FieldName = 'IS_WASTE_FORK'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataNO_AS_FORMATED_TEXT_EX: TAbmesWideStringField [37]
      FieldName = 'NO_AS_FORMATED_TEXT_EX'
      ProviderFlags = []
      Size = 100
    end
    object cdsGridDataPAR_LINE_DETAIL_TECH_QUANTITY: TAbmesFloatField [38]
      FieldName = 'PAR_LINE_DETAIL_TECH_QUANTITY'
      ProviderFlags = []
      OnChange = cdsGridDataPAR_LINE_DETAIL_TECH_QUANTITYChange
    end
    object cdsGridDataLINE_DETAIL_TECH_QUANTITY: TAbmesFloatField [39]
      DisplayLabel = #1058#1077#1093#1085#1086#1083#1086#1075#1080#1095#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'LINE_DETAIL_TECH_QUANTITY'
      OnChange = cdsGridDataLINE_DETAIL_TECH_QUANTITYChange
      DisplayFormat = ',0.###'
    end
    object cdsGridDataSTORE_CODE: TAbmesFloatField [41]
      FieldName = 'STORE_CODE'
    end
    object cdsGridDataPRODUCT_NEED_BEGIN_DATE: TAbmesSQLTimeStampField [42]
      FieldName = 'PRODUCT_NEED_BEGIN_DATE'
    end
    inherited cdsGridDataDETAIL_NAME: TAbmesWideStringField
      ProviderFlags = []
    end
    object cdsGridDataPRODUCT_NEED_END_DATE: TAbmesSQLTimeStampField [44]
      FieldName = 'PRODUCT_NEED_END_DATE'
    end
    object cdsGridDataIS_FORK: TAbmesFloatField [45]
      FieldName = 'IS_FORK'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object cdsGridDataIS_NOT_FORK: TAbmesFloatField [46]
      FieldName = 'IS_NOT_FORK'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    inherited cdsGridDataDETAIL_NO: TAbmesFloatField
      ProviderFlags = []
    end
    inherited cdsGridDataDETAIL_HAS_DOCUMENTATION: TAbmesFloatField
      ProviderFlags = []
    end
    inherited cdsGridDataDETAIL_IS_INACTIVE: TAbmesFloatField
      ProviderFlags = []
    end
    object cdsGridDataMATERIAL_LIST_LINE_CHANGE_NO: TAbmesFloatField [50]
      FieldName = 'MATERIAL_LIST_LINE_CHANGE_NO'
      ProviderFlags = []
    end
    object cdsGridDataMLL_CHANGE_STATUS: TAbmesFloatField [51]
      FieldName = 'MLL_CHANGE_STATUS'
      ProviderFlags = []
    end
    inherited cdsGridDataDETAIL_PARENT_CODE: TAbmesFloatField
      ProviderFlags = []
    end
    object cdsGridDataANNUL_EMPLOYEE_CODE: TAbmesFloatField [53]
      FieldName = 'ANNUL_EMPLOYEE_CODE'
      OnChange = cdsGridDataANNUL_EMPLOYEE_CODEChange
      OnValidate = cdsGridDataANNUL_EMPLOYEE_CODEValidate
    end
    object cdsGridDataANNUL_DATE: TAbmesSQLTimeStampField [54]
      FieldName = 'ANNUL_DATE'
    end
    object cdsGridDataANNUL_TIME: TAbmesSQLTimeStampField [55]
      FieldName = 'ANNUL_TIME'
    end
    object cdsGridDataLAST_MM_MLMS_MODEL_STAGE_NO: TAbmesFloatField [56]
      FieldName = 'LAST_MM_MLMS_MODEL_STAGE_NO'
      ProviderFlags = []
    end
    object cdsGridDataNOT_STORNO_STORE_DEAL_COUNT: TAbmesFloatField [57]
      FieldName = 'NOT_STORNO_STORE_DEAL_COUNT'
      ProviderFlags = []
    end
    object cdsGridDataqryXModelLineStages: TDataSetField [58]
      FieldName = 'qryXModelLineStages'
    end
    inherited cdsGridDataDETAIL_IS_SELF_APPROVED: TAbmesFloatField
      ProviderFlags = []
    end
    inherited cdsGridDataTOTAL_DETAIL_TECH_QUANTITY: TAbmesFloatField
      OnChange = cdsGridDataTOTAL_DETAIL_TECH_QUANTITYChange
    end
    inherited cdsGridDataDETAIL_TECH_MEASURE_CODE: TAbmesFloatField
      ProviderFlags = []
    end
    inherited cdsGridDataPRODUCT_NAME: TAbmesWideStringField
      ProviderFlags = []
    end
    object cdsGridData_MLL_CHANGE_STATUS_ABBREV: TAbmesWideStringField [65]
      FieldKind = fkCalculated
      FieldName = '_MLL_CHANGE_STATUS_ABBREV'
      Size = 100
      Calculated = True
    end
    inherited cdsGridDataPRODUCT_NO: TAbmesFloatField
      ProviderFlags = []
    end
    inherited cdsGridDataPRODUCT_HAS_DOCUMENTATION: TAbmesFloatField
      ProviderFlags = []
    end
    inherited cdsGridDataPRODUCT_IS_INACTIVE: TAbmesFloatField
      ProviderFlags = []
    end
    inherited cdsGridDataTOTAL_PRODUCT_TECH_QUANTITY: TAbmesFloatField
      ProviderFlags = []
    end
    inherited cdsGridDataPRODUCT_TECH_MEASURE_CODE: TAbmesFloatField
      ProviderFlags = []
    end
    inherited cdsGridDataPRODUCT_TECH_MEASURE_COEF: TAbmesFloatField
      ProviderFlags = []
    end
    inherited cdsGridDataTOTAL_PRODUCT_ACCOUNT_QUANTITY: TAbmesFloatField
      ProviderFlags = []
    end
    inherited cdsGridDataPRODUCT_ACCOUNT_MEASURE_CODE: TAbmesFloatField
      ProviderFlags = []
    end
    inherited cdsGridDataPRODUCT_ACCOUNT_MEASURE_COEF: TAbmesFloatField
      ProviderFlags = []
    end
    inherited cdsGridDataPRODUCT_SECONDARY_SINGLE_PRICE: TAbmesFloatField
      ProviderFlags = []
    end
    inherited cdsGridDataPRODUCT_SINGLE_PRICE: TAbmesFloatField
      ProviderFlags = []
    end
    inherited cdsGridDataPRODUCT_SECONDARY_TOTAL_PRICE: TAbmesFloatField
      ProviderFlags = []
    end
    object cdsGridDataAPPROVE_CYCLE_NO: TAbmesFloatField [84]
      FieldName = 'APPROVE_CYCLE_NO'
    end
    inherited cdsGridDataPRODUCT_IS_FOR_TREATMENT_USE: TAbmesFloatField
      ProviderFlags = []
    end
    inherited cdsGridDataPRODUCT_IS_FOR_DIRECT_USE: TAbmesFloatField
      ProviderFlags = []
    end
    inherited cdsGridDataIS_FOR_SINGLE_USE: TAbmesFloatField
      ProviderFlags = [pfInUpdate]
    end
    object cdsGridDataMAX_MOVED_TECH_QUANTITY: TAbmesFloatField [92]
      FieldName = 'MAX_MOVED_TECH_QUANTITY'
      ProviderFlags = []
    end
    object cdsGridData_MAX_MLL_OBJECT_CODE: TAggregateField
      FieldName = '_MAX_MLL_OBJECT_CODE'
      Active = True
      DisplayName = ''
      Expression = 'Max(MLL_OBJECT_CODE)'
    end
    object cdsGridData_MAX_MLL_CHANGE_STATUS: TAggregateField
      FieldName = '_MAX_MLL_CHANGE_STATUS'
      Active = True
      DisplayName = ''
      Expression = 'Max(MLL_CHANGE_STATUS)'
    end
  end
  inherited alActions: TActionList
    Left = 48
    Top = 400
    inherited actForm: TAction
      Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1077#1085' '#1052#1054#1044#1045#1083' - %s'
    end
    inherited actAddSpecification: TAction
      OnExecute = actAddSpecificationExecute
    end
    inherited actInsertSpecification: TAction
      OnExecute = actInsertSpecificationExecute
    end
    object actChangeBoundObject: TAction [24]
      Caption = #1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090'...'
      Hint = #1055#1088#1086#1084#1103#1085#1072' '#1085#1072' '#1086#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090#1090#1072
      ImageIndex = 76
    end
    object actAddFork: TAction [25]
      Category = 'Lines'
      Caption = #1044#1086#1073#1072#1074#1103#1085#1077' '#1085#1072' '#1088#1072#1079#1082#1083#1086#1085#1077#1085#1080#1077'...'
      Hint = #1044#1086#1073#1072#1074#1103#1085#1077' '#1085#1072' '#1088#1072#1079#1082#1083#1086#1085#1077#1085#1080#1077
      OnExecute = actAddForkExecute
      OnUpdate = actAddForkUpdate
    end
    object actLineChange: TAction [28]
      Category = 'Lines'
      Caption = #1047#1072#1084#1103#1085#1072'...'
      ImageIndex = 21
      OnExecute = actLineChangeExecute
      OnUpdate = actLineChangeUpdate
    end
    object actMakeLimiting: TAction [29]
      Caption = #1040#1082#1090#1080#1074#1080#1088#1072#1085#1077
      Hint = #1040#1082#1090#1080#1074#1080#1088#1072#1085#1077
      ImageIndex = 55
      OnExecute = actMakeLimitingExecute
      OnUpdate = actMakeLimitingUpdate
    end
    inherited actCheckModel: TAction
      OnUpdate = actCheckModelUpdate
    end
    object actShowProductVIM: TAction [40]
      Category = 'Lines'
      Hint = #1042#1048#1052' '#1085#1072' '#1053#1072#1095#1072#1083#1085#1072#1090#1072' '#1057#1090#1088#1091#1082#1090#1091#1088#1085#1072' '#1063#1072#1089#1090
      ImageIndex = 30
      OnExecute = actShowProductVIMExecute
      OnUpdate = actShowProductVIMUpdate
    end
    object actLineChanges: TAction [45]
      Category = 'Lines'
      Caption = #1048#1089#1090'. '#1079#1072#1084#1077#1085#1080
      Hint = #1048#1089#1090#1086#1088#1080#1103' '#1085#1072' '#1079#1072#1084#1077#1085#1080#1090#1077' '#1087#1086' '#1080#1079#1073#1088#1072#1085#1080#1103' '#1088#1077#1076' '#1086#1090' '#1056'-'#1052#1054#1044#1045#1083'-'#1072
      ImageIndex = 24
      OnExecute = actLineChangesExecute
      OnUpdate = actLineChangesUpdate
    end
    object actModelChanges: TAction [46]
      Caption = #1048#1089#1090'. '#1079#1072#1084#1077#1085#1080
      Hint = #1048#1089#1090#1086#1088#1080#1103' '#1085#1072' '#1079#1072#1084#1077#1085#1080#1090#1077' '#1087#1086' '#1074#1089#1080#1095#1082#1080' '#1088#1077#1076#1086#1074#1077' '#1086#1090' '#1056'-'#1052#1054#1044#1045#1083'-'#1072
      ImageIndex = 78
      OnExecute = actModelChangesExecute
      OnUpdate = actModelChangesUpdate
    end
    object actCloseModel: TAction [47]
      Caption = #1055#1088#1080#1082#1083#1102#1095#1074#1072#1085#1077
      Hint = #1055#1088#1080#1082#1083#1102#1095#1074#1072#1085#1077
      ImageIndex = 17
      OnExecute = actCloseModelExecute
    end
    inherited actResizeFormHeight: TAction
      ImageIndex = 77
    end
    object actModelStatus: TAction [54]
      Caption = #1057#1083#1077#1076#1077#1085#1077'...'
      ImageIndex = 18
      OnExecute = actModelStatusExecute
      OnUpdate = actModelStatusUpdate
    end
    object actModelCapacityStatus: TAction [55]
      Caption = #1050#1072#1087#1072#1094#1080#1090#1077#1090'...'
      Hint = #1040#1085#1072#1083#1080#1079' '#1085#1072' '#1050#1072#1087#1072#1094#1080#1090#1077#1090#1072' '#1087#1086' '#1056'-'#1052#1054#1044#1045#1083'-'#1072
      ImageIndex = 51
      OnExecute = actModelCapacityStatusExecute
      OnUpdate = actModelCapacityStatusUpdate
    end
    inherited actDocStatus: TAction
      OnExecute = actDocStatusExecute
    end
    object actWastingSaleModelStatus: TAction
      Caption = #1057#1083#1077#1076#1077#1085#1077'...'
      ImageIndex = 18
      OnExecute = actWastingSaleModelStatusExecute
      OnUpdate = actWastingSaleModelStatusUpdate
    end
    object actWasteCompensatorProductionOrders: TAction
      Caption = #1057#1098#1087#1098#1090#1089#1090#1074#1072#1097#1080'...'
      ImageIndex = 11
      OnExecute = actWasteCompensatorProductionOrdersExecute
      OnUpdate = actWasteCompensatorProductionOrdersUpdate
    end
    object actShowWastingSale: TAction
      Hint = #1055#1086#1082#1072#1079#1074#1072' '#1054#1089#1085#1086#1074#1077#1085' '#1054#1055#1042
      ImageIndex = 101
      OnExecute = actShowWastingSaleExecute
      OnUpdate = actShowWastingSaleUpdate
    end
    object actGenerateBaseModel: TAction
      Caption = #1043#1077#1085#1077#1088#1080#1088#1072#1085#1077' '#1085#1072' '#1086#1089#1085#1086#1074#1085#1080' '#1077#1090#1072#1087#1080
      ImageIndex = 34
      OnExecute = actGenerateBaseModelExecute
      OnUpdate = actGenerateBaseModelUpdate
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    Left = 384
    Top = 384
  end
  inherited dsGridDataParams: TDataSource
    Left = 416
    Top = 384
  end
  inherited dsData: TDataSource
    Left = 248
    Top = 352
  end
  inherited cdsData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conXModels
    Params = <
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvXModel'
    BeforeOpen = cdsDataBeforeOpen
    AfterEdit = cdsDataAfterEdit
    BeforePost = cdsDataBeforePost
    OnCalcFields = cdsDataCalcFields
    BeforeApplyUpdates = cdsDataBeforeApplyUpdates
    Left = 216
    Top = 352
    object cdsDataML_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDataML_OBJECT_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDataBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_BRANCH_CODE'
    end
    object cdsDataBND_PROCESS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_CODE'
    end
    object cdsDataBND_PROCESS_OBJECT_CLASS_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_CLASS_CODE'
      ProviderFlags = []
    end
    object cdsDataBND_SALE_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'BND_SALE_ORDER_TYPE_CODE'
      ProviderFlags = []
    end
    object cdsDataMAIN_DEPT_CODE: TAbmesFloatField
      FieldName = 'MAIN_DEPT_CODE'
      OnChange = cdsDataMAIN_DEPT_CODEChange
    end
    object cdsDataMAIN_DEPT_NAME: TAbmesWideStringField
      DisplayLabel = #1043#1083#1072#1074#1085#1086' '#1087#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1077#1085#1086' '#1058#1055
      FieldName = 'MAIN_DEPT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object cdsDataMAIN_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'MAIN_DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object cdsDataMAIN_DEPT_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'MAIN_DEPT_BEGIN_DATE'
      ProviderFlags = []
    end
    object cdsDataMAIN_DEPT_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'MAIN_DEPT_END_DATE'
      ProviderFlags = []
    end
    object cdsDataRESULT_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'RESULT_PRODUCT_CODE'
      OnChange = cdsDataRESULT_PRODUCT_CODEChange
    end
    object cdsDataRESULT_PRODUCT_NAME: TAbmesWideStringField
      DisplayLabel = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
      FieldName = 'RESULT_PRODUCT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object cdsDataRESULT_PRODUCT_NO: TAbmesFloatField
      FieldName = 'RESULT_PRODUCT_NO'
      ProviderFlags = []
    end
    object cdsDataRES_PRODUCT_TECH_MEASURE_CODE: TAbmesFloatField
      FieldName = 'RES_PRODUCT_TECH_MEASURE_CODE'
      ProviderFlags = []
    end
    object cdsDataRES_PRODUCT_TECH_MEASURE_COEF: TAbmesFloatField
      FieldName = 'RES_PRODUCT_TECH_MEASURE_COEF'
      ProviderFlags = []
    end
    object cdsDataTECH_QUANTITY: TAbmesFloatField
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'TECH_QUANTITY'
      Required = True
      DisplayFormat = ',0.###'
    end
    object cdsDataSPEC_VERSION_NO: TAbmesFloatField
      FieldName = 'SPEC_VERSION_NO'
    end
    object cdsDataSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
    end
    object cdsDataRESULT_STORE_CODE: TAbmesFloatField
      FieldName = 'RESULT_STORE_CODE'
    end
    object cdsDataENTER_RESULT_STORE_BEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1053#1072#1095#1072#1083#1085#1072' '#1076#1072#1090#1072' '#1085#1072' '#1042#1088#1084#1048#1085#1090' '#1079#1072' '#1087#1086#1089#1090#1098#1087#1083#1077#1085#1080#1077
      FieldName = 'ENTER_RESULT_STORE_BEGIN_DATE'
      OnChange = cdsDataENTER_RESULT_STORE_BEGIN_DATEChange
      OnGetText = cdsDataENTER_RESULT_STORE_BEGIN_DATEGetText
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object cdsDataENTER_RESULT_STORE_END_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1050#1088#1072#1081#1085#1072' '#1076#1072#1090#1072' '#1085#1072' '#1042#1088#1084#1048#1085#1090' '#1079#1072' '#1087#1086#1089#1090#1098#1087#1083#1077#1085#1080#1077
      FieldName = 'ENTER_RESULT_STORE_END_DATE'
      OnChange = cdsDataENTER_RESULT_STORE_END_DATEChange
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object cdsDataOWNER_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'OWNER_EMPLOYEE_CODE'
      OnChange = cdsDataOWNER_EMPLOYEE_CODEChange
    end
    object cdsDataIS_ARCHIVED: TAbmesFloatField
      FieldName = 'IS_ARCHIVED'
      FieldValueType = fvtBoolean
    end
    object cdsDataCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object cdsDataCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
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
    object cdsDataLIMITING_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'LIMITING_EMPLOYEE_CODE'
    end
    object cdsDataLIMITING_DATE: TAbmesSQLTimeStampField
      FieldName = 'LIMITING_DATE'
    end
    object cdsDataLIMITING_TIME: TAbmesSQLTimeStampField
      FieldName = 'LIMITING_TIME'
    end
    object cdsDataCLOSE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CLOSE_EMPLOYEE_CODE'
    end
    object cdsDataCLOSE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CLOSE_DATE'
    end
    object cdsDataCLOSE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CLOSE_TIME'
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
    object cdsDataNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object cdsDataTRANSIENT_STATUS_CODE: TAbmesFloatField
      FieldName = 'TRANSIENT_STATUS_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDataWORKDAYS_TO_EXIST: TAbmesFloatField
      DisplayLabel = #1056#1072#1073#1086#1090#1085#1080' '#1076#1085#1080' '#1085#1072' '#1089#1098#1097#1077#1089#1090#1074#1091#1074#1072#1085#1077' '#1085#1072' '#1059#1087#1088#1072#1074#1083#1103#1077#1084#1080#1103' '#1054#1073#1077#1082#1090
      FieldName = 'WORKDAYS_TO_EXIST'
      ProviderFlags = [pfInUpdate]
      MaxValue = 2147483647.000000000000000000
      MinValue = 1.000000000000000000
      FieldValueType = fvtInteger
    end
    object cdsDataIS_OPERATIONS_MODEL: TAbmesFloatField
      FieldName = 'IS_OPERATIONS_MODEL'
      ProviderFlags = [pfInUpdate]
      FieldValueType = fvtBoolean
    end
    object cdsDataINITIAL_TREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'INITIAL_TREATMENT_WORKDAYS'
    end
    object cdsDataSALE_BRANCH_NO: TAbmesFloatField
      FieldName = 'SALE_BRANCH_NO'
      ProviderFlags = []
    end
    object cdsDataSALE_NO: TAbmesFloatField
      FieldName = 'SALE_NO'
      ProviderFlags = []
    end
    object cdsDataSALE_GROUP_BRANCH_NO: TAbmesFloatField
      FieldName = 'SALE_GROUP_BRANCH_NO'
      ProviderFlags = []
    end
    object cdsDataSALE_GROUP_CODE: TAbmesFloatField
      FieldName = 'SALE_GROUP_CODE'
      ProviderFlags = []
    end
    object cdsDataMAX_MLMS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MAX_MLMS_OBJECT_CODE'
      ProviderFlags = []
    end
    object cdsDataMAX_MLMSO_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MAX_MLMSO_OBJECT_CODE'
      ProviderFlags = []
    end
    object cdsDataQUANTITY_IN: TAbmesFloatField
      FieldName = 'QUANTITY_IN'
      ProviderFlags = []
    end
    object cdsDataMODEL_OPERATIONS_STATUS_CODE: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'MODEL_OPERATIONS_STATUS_CODE'
      ProviderFlags = []
      OnGetText = cdsDataMODEL_OPERATIONS_STATUS_CODEGetText
    end
    object cdsDataqryXModelLines: TDataSetField
      FieldName = 'qryXModelLines'
    end
    object cdsData_OWNER_EMPLOYEE_NAME: TAbmesWideStringField
      DisplayLabel = #1055#1088'&'#1055#1083' '#1048#1085#1078#1077#1085#1077#1088
      FieldKind = fkLookup
      FieldName = '_OWNER_EMPLOYEE_NAME'
      LookupDataSet = cdsEmployees
      LookupKeyFields = 'EMPLOYEE_CODE'
      LookupResultField = 'EMPLOYEE_NAME'
      KeyFields = 'OWNER_EMPLOYEE_CODE'
      Size = 70
      Lookup = True
    end
    object cdsData_LIMITING_EMPLOYEE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_LIMITING_EMPLOYEE_NAME'
      LookupDataSet = cdsEmployees
      LookupKeyFields = 'EMPLOYEE_CODE'
      LookupResultField = 'EMPLOYEE_NAME'
      KeyFields = 'LIMITING_EMPLOYEE_CODE'
      Size = 70
      Lookup = True
    end
    object cdsData_RESULT_PRODUCT_TECH_MEASURE_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_RESULT_PRODUCT_TECH_MEASURE_ABBREV'
      LookupDataSet = cdsMeasures
      LookupKeyFields = 'MEASURE_CODE'
      LookupResultField = 'MEASURE_ABBREV'
      KeyFields = 'RES_PRODUCT_TECH_MEASURE_CODE'
      Size = 5
      Lookup = True
    end
    object cdsDataqryXModelTasks: TDataSetField
      FieldName = 'qryXModelTasks'
    end
    object cdsDataMODEL_LEVEL_1_INVESTED_VALUE: TAbmesFloatField
      FieldName = 'MODEL_LEVEL_1_INVESTED_VALUE'
      ProviderFlags = []
    end
    object cdsDataMODEL_LEVEL_1_IV_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'MODEL_LEVEL_1_IV_IS_INCOMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsDataLAST_SHIPMENT_STORE_IN_DATE: TAbmesSQLTimeStampField
      FieldName = 'LAST_SHIPMENT_STORE_IN_DATE'
    end
    object cdsDataSALE_REMAINING_QUANTITY: TAbmesFloatField
      FieldName = 'SALE_REMAINING_QUANTITY'
    end
    object cdsData_ENTER_SH_STORE_DATE_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_ENTER_SH_STORE_DATE_DIFF'
      Calculated = True
    end
    object cdsData_OWNER_EMPLOYEE_NO: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_OWNER_EMPLOYEE_NO'
      LookupDataSet = cdsEmployees
      LookupKeyFields = 'EMPLOYEE_CODE'
      LookupResultField = 'EMPLOYEE_NO'
      KeyFields = 'OWNER_EMPLOYEE_CODE'
      Lookup = True
    end
  end
  inherited cdsMeasures: TAbmesClientDataSet
    Left = 464
    Top = 280
    inherited cdsMeasuresMEASURE_CODE: TAbmesFloatField
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  inherited pmAdd: TPopupMenu
    Left = 432
    Top = 280
    object miLineBeforeAddFork: TMenuItem [3]
      Caption = '-'
    end
    object miAddFork: TMenuItem [4]
      Action = actAddFork
    end
  end
  inherited cdsModel: TAbmesClientDataSet
    IndexDefs = <
      item
        Name = 'idxNo'
        Fields = 'NO_AS_FORMATED_TEXT_EX; FORK_NO'
        Options = [ixUnique]
      end>
    BeforePost = cdsModelBeforePost
    Left = 674
    Top = 416
  end
  inherited dsModel: TDataSource
    Left = 706
    Top = 416
  end
  inherited pgdModel: TPrintDBGridEh
    Left = 920
    Top = 280
    BeforeGridText_Data = {
      7B5C727466315C616E73695C616E7369637067313235315C64656666305C6465
      666C616E67313032367B5C666F6E7474626C7B5C66305C66726F6D616E5C6670
      7271325C66636861727365743230347B5C2A5C666E616D652054696D6573204E
      657720526F6D616E3B7D54696D6573204E657720526F6D616E204359523B7D7B
      5C66315C666E696C5C66636861727365743230347B5C2A5C666E616D65204172
      69616C3B7D417269616C204359523B7D7D0D0A7B5C636F6C6F7274626C203B5C
      7265643139325C677265656E3139325C626C75653139323B7D0D0A5C76696577
      6B696E64345C7563315C706172645C686967686C69676874315C6C616E673330
      38315C625C695C66305C6673323820205C66315C2763665C2765625C2765305C
      2765645C2765385C2766305C2765305C276639205C686967686C696768743020
      205C69305C2763635C2763655C2763345C2763355C276562205C2765375C2765
      30205C2766315C2766615C2765375C2765345C2765305C2765325C2765305C27
      65645C276535205C2765645C276530205C2765355C2765345C2765385C276564
      5C2765385C2766365C276530205C2763665C2766305C2765655C2765345C2766
      335C2765615C276632202F5C2763662D5C276363205C2765645C276530205C27
      65355C2765342E205C2763662F5C686967686C69676874315C695C7061720D0A
      7D0D0A00}
  end
  object cdsStages: TAbmesClientDataSet [17]
    Aggregates = <>
    AggregatesActive = True
    DataSetField = cdsGridDataqryXModelLineStages
    FieldDefs = <
      item
        Name = 'MLMS_OBJECT_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'MLMS_OBJECT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'MLL_OBJECT_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'MLL_OBJECT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'ML_MODEL_STAGE_NO'
        DataType = ftFloat
      end
      item
        Name = 'DEPT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DEPT_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'DEPT_IDENTIFIER'
        DataType = ftWideString
        Size = 46
      end
      item
        Name = 'DEPT_IS_STORE'
        DataType = ftFloat
      end
      item
        Name = 'DEPT_BEGIN_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'DEPT_END_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'TREATMENT_WORKDAYS'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_TREATMENT_WORKDAYS'
        DataType = ftFloat
      end
      item
        Name = 'OUTGOING_WORKDAYS'
        DataType = ftFloat
      end
      item
        Name = 'IS_AUTO_MOVEMENT'
        DataType = ftFloat
      end
      item
        Name = 'TREATMENT_BEGIN_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'TREATMENT_END_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'NO_1'
        DataType = ftFloat
      end
      item
        Name = 'NO_2'
        DataType = ftFloat
      end
      item
        Name = 'NO_3'
        DataType = ftFloat
      end
      item
        Name = 'NO_4'
        DataType = ftFloat
      end
      item
        Name = 'NO_5'
        DataType = ftFloat
      end
      item
        Name = 'NO_6'
        DataType = ftFloat
      end
      item
        Name = 'NO_7'
        DataType = ftFloat
      end
      item
        Name = 'NO_8'
        DataType = ftFloat
      end
      item
        Name = 'NO_9'
        DataType = ftFloat
      end
      item
        Name = 'NO_10'
        DataType = ftFloat
      end
      item
        Name = 'NO_11'
        DataType = ftFloat
      end
      item
        Name = 'NO_12'
        DataType = ftFloat
      end
      item
        Name = 'NO_13'
        DataType = ftFloat
      end
      item
        Name = 'NO_14'
        DataType = ftFloat
      end
      item
        Name = 'NO_15'
        DataType = ftFloat
      end
      item
        Name = 'NO_16'
        DataType = ftFloat
      end
      item
        Name = 'NO_17'
        DataType = ftFloat
      end
      item
        Name = 'NO_18'
        DataType = ftFloat
      end
      item
        Name = 'NO_19'
        DataType = ftFloat
      end
      item
        Name = 'NO_20'
        DataType = ftFloat
      end
      item
        Name = 'NO_21'
        DataType = ftFloat
      end
      item
        Name = 'NO_22'
        DataType = ftFloat
      end
      item
        Name = 'NO_23'
        DataType = ftFloat
      end
      item
        Name = 'NO_24'
        DataType = ftFloat
      end
      item
        Name = 'NO_25'
        DataType = ftFloat
      end
      item
        Name = 'FORK_NO'
        DataType = ftFloat
      end
      item
        Name = 'DOC_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DOC_CODE'
        DataType = ftFloat
      end
      item
        Name = 'HAS_DOCUMENTATION'
        DataType = ftFloat
      end
      item
        Name = 'DOC_EMPTINESS_REQUIREMENT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DOC_IS_COMPLETE'
        DataType = ftFloat
      end
      item
        Name = 'UNAPPROVED_ACTIVE_DI_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'OPERATION_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'LAST_OM_MLMS_OPERATION_NO'
        DataType = ftFloat
      end
      item
        Name = 'EXTERNAL_WORK_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'D_STAGE_LEVEL_ORG_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'D_ADDITIONAL_PRICE_COEF'
        DataType = ftFloat
      end
      item
        Name = 'qryMLMSOperations'
        DataType = ftDataSet
      end>
    IndexDefs = <
      item
        Name = 'idxStageNo'
        Fields = 'ML_MODEL_STAGE_NO'
      end>
    IndexName = 'idxStageNo'
    Params = <>
    StoreDefs = True
    BeforePost = cdsStagesBeforePost
    AfterPost = cdsStagesAfterPost
    AfterCancel = cdsStagesAfterCancel
    BeforeDelete = cdsStagesBeforeDelete
    AfterDelete = cdsStagesAfterDelete
    OnCalcFields = cdsStagesCalcFields
    OnFilterRecord = cdsStagesFilterRecord
    OnNewRecord = cdsStagesNewRecord
    Left = 176
    Top = 416
    object cdsStagesMLMS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLMS_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsStagesMLMS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLMS_OBJECT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsStagesMLL_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_BRANCH_CODE'
    end
    object cdsStagesMLL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_CODE'
    end
    object cdsStagesML_MODEL_STAGE_NO: TAbmesFloatField
      FieldName = 'ML_MODEL_STAGE_NO'
    end
    object cdsStagesDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
      OnChange = cdsStagesDEPT_CODEChange
    end
    object cdsStagesDEPT_NAME: TAbmesWideStringField
      DisplayLabel = #1058#1055
      FieldName = 'DEPT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object cdsStagesDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object cdsStagesDEPT_IS_STORE: TAbmesFloatField
      FieldName = 'DEPT_IS_STORE'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object cdsStagesDEPT_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEPT_BEGIN_DATE'
    end
    object cdsStagesDEPT_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEPT_END_DATE'
    end
    object cdsStagesTREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'TREATMENT_WORKDAYS'
    end
    object cdsStagesTOTAL_TREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'TOTAL_TREATMENT_WORKDAYS'
    end
    object cdsStagesOUTGOING_WORKDAYS: TAbmesFloatField
      FieldName = 'OUTGOING_WORKDAYS'
    end
    object cdsStagesIS_AUTO_MOVEMENT: TAbmesFloatField
      FieldName = 'IS_AUTO_MOVEMENT'
      FieldValueType = fvtBoolean
    end
    object cdsStagesTREATMENT_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'TREATMENT_BEGIN_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsStagesTREATMENT_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'TREATMENT_END_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsStagesDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsStagesDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsStagesHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
      ProviderFlags = []
      DisplayBoolValues = 'i;'
      FieldValueType = fvtBoolean
    end
    object cdsStagesDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'DOC_EMPTINESS_REQUIREMENT_CODE'
    end
    object cdsStagesDOC_IS_COMPLETE: TAbmesFloatField
      FieldName = 'DOC_IS_COMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsStagesUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAPPROVED_ACTIVE_DI_COUNT'
    end
    object cdsStagesEXTERNAL_WORK_PRICE: TAbmesFloatField
      DisplayLabel = #1054#1073#1086#1073#1097#1077#1085#1072' '#1089#1090#1086#1081#1085#1086#1089#1090' '#1079#1072' '#1080#1079#1087#1098#1083#1085#1077#1085#1080#1077' '#1085#1072' '#1077#1090#1072#1087
      FieldName = 'EXTERNAL_WORK_PRICE'
      OnGetText = cdsStagesEXTERNAL_WORK_PRICEGetText
      MaxValue = 999999999999.000100000000000000
      MinValue = 0.010000000000000000
    end
    object cdsStagesOPERATION_COUNT: TAbmesFloatField
      FieldName = 'OPERATION_COUNT'
    end
    object cdsStagesNO_1: TAbmesFloatField
      FieldName = 'NO_1'
      ProviderFlags = []
    end
    object cdsStagesNO_2: TAbmesFloatField
      FieldName = 'NO_2'
      ProviderFlags = []
    end
    object cdsStagesNO_3: TAbmesFloatField
      FieldName = 'NO_3'
      ProviderFlags = []
    end
    object cdsStagesNO_4: TAbmesFloatField
      FieldName = 'NO_4'
      ProviderFlags = []
    end
    object cdsStagesNO_5: TAbmesFloatField
      FieldName = 'NO_5'
      ProviderFlags = []
    end
    object cdsStagesNO_6: TAbmesFloatField
      FieldName = 'NO_6'
      ProviderFlags = []
    end
    object cdsStagesNO_7: TAbmesFloatField
      FieldName = 'NO_7'
      ProviderFlags = []
    end
    object cdsStagesNO_8: TAbmesFloatField
      FieldName = 'NO_8'
      ProviderFlags = []
    end
    object cdsStagesNO_9: TAbmesFloatField
      FieldName = 'NO_9'
      ProviderFlags = [pfInUpdate]
    end
    object cdsStagesNO_10: TAbmesFloatField
      FieldName = 'NO_10'
      ProviderFlags = [pfInUpdate]
    end
    object cdsStagesNO_11: TAbmesFloatField
      FieldName = 'NO_11'
      ProviderFlags = [pfInUpdate]
    end
    object cdsStagesNO_12: TAbmesFloatField
      FieldName = 'NO_12'
      ProviderFlags = [pfInUpdate]
    end
    object cdsStagesNO_13: TAbmesFloatField
      FieldName = 'NO_13'
      ProviderFlags = [pfInUpdate]
    end
    object cdsStagesNO_14: TAbmesFloatField
      FieldName = 'NO_14'
      ProviderFlags = [pfInUpdate]
    end
    object cdsStagesNO_15: TAbmesFloatField
      FieldName = 'NO_15'
      ProviderFlags = [pfInUpdate]
    end
    object cdsStagesNO_16: TAbmesFloatField
      FieldName = 'NO_16'
      ProviderFlags = [pfInUpdate]
    end
    object cdsStagesNO_17: TAbmesFloatField
      FieldName = 'NO_17'
      ProviderFlags = [pfInUpdate]
    end
    object cdsStagesNO_18: TAbmesFloatField
      FieldName = 'NO_18'
      ProviderFlags = [pfInUpdate]
    end
    object cdsStagesNO_19: TAbmesFloatField
      FieldName = 'NO_19'
      ProviderFlags = [pfInUpdate]
    end
    object cdsStagesNO_20: TAbmesFloatField
      FieldName = 'NO_20'
      ProviderFlags = [pfInUpdate]
    end
    object cdsStagesNO_21: TAbmesFloatField
      FieldName = 'NO_21'
      ProviderFlags = [pfInUpdate]
    end
    object cdsStagesNO_22: TAbmesFloatField
      FieldName = 'NO_22'
      ProviderFlags = [pfInUpdate]
    end
    object cdsStagesNO_23: TAbmesFloatField
      FieldName = 'NO_23'
      ProviderFlags = [pfInUpdate]
    end
    object cdsStagesNO_24: TAbmesFloatField
      FieldName = 'NO_24'
      ProviderFlags = [pfInUpdate]
    end
    object cdsStagesNO_25: TAbmesFloatField
      FieldName = 'NO_25'
      ProviderFlags = [pfInUpdate]
    end
    object cdsStagesFORK_NO: TAbmesFloatField
      FieldName = 'FORK_NO'
      ProviderFlags = []
    end
    object cdsStagesLAST_OM_MLMS_OPERATION_NO: TAbmesFloatField
      FieldName = 'LAST_OM_MLMS_OPERATION_NO'
      ProviderFlags = []
    end
    object cdsStages_SHOW_APPROVE_CYCLE_NO: TAbmesWideStringField
      Alignment = taCenter
      FieldKind = fkCalculated
      FieldName = '_SHOW_APPROVE_CYCLE_NO'
      Calculated = True
    end
    object cdsStagesqryMLMSOperations: TDataSetField
      FieldName = 'qryMLMSOperations'
    end
    object cdsStages_MAX_MLMS_OBJECT_CODE: TAggregateField
      FieldName = '_MAX_MLMS_OBJECT_CODE'
      Active = True
      DisplayName = ''
      Expression = 'Max(MLMS_OBJECT_CODE)'
    end
    object cdsStages_MAX_ML_MODEL_STAGE_NO: TAggregateField
      FieldName = '_MAX_ML_MODEL_STAGE_NO'
      Active = True
      DisplayName = ''
      Expression = 'Max(ML_MODEL_STAGE_NO)'
    end
    object cdsStages_MAX_TOTAL_TREATMENT_WORKDAYS: TAggregateField
      FieldName = '_MAX_TOTAL_TREATMENT_WORKDAYS'
      Active = True
      DisplayName = ''
      Expression = 'Max(TOTAL_TREATMENT_WORKDAYS)'
    end
    object cdsStages_MIN_ML_MODEL_STAGE_NO: TAggregateField
      FieldName = '_MIN_ML_MODEL_STAGE_NO'
      Active = True
      DisplayName = ''
      Expression = 'Min(ML_MODEL_STAGE_NO)'
    end
  end
  object dsStages: TDataSource [18]
    DataSet = cdsStages
    Left = 208
    Top = 416
  end
  inherited cdsModelTasks: TAbmesClientDataSet
    IndexDefs = <
      item
        Name = 'idxGroupByDept'
        Fields = 
          'TASK_NO; LINE_LEVEL; NO_AS_FORMATED_TEXT_EX; FORK_NO; DEPT_CODE;' +
          ' DEPT_BEGIN_DATE; STAGE_NO'
      end>
    Left = 602
    Top = 416
    object cdsModelTasksFORK_NO: TAbmesFloatField [29]
      FieldName = 'FORK_NO'
    end
    object cdsModelTasksNO_AS_FORMATED_TEXT_EX: TAbmesWideStringField [30]
      FieldName = 'NO_AS_FORMATED_TEXT_EX'
      Size = 100
    end
    object cdsModelTasksDEPT_DATES: TAbmesWideStringField [31]
      FieldName = 'DEPT_DATES'
    end
    object cdsModelTasksTO_DEPT_DATES: TAbmesWideStringField [32]
      FieldName = 'TO_DEPT_DATES'
    end
  end
  inherited cdsModelTasksHeader: TAbmesClientDataSet
    OnNewRecord = cdsModelTasksHeaderNewRecord
    Left = 634
    Top = 416
    object cdsModelTasksHeaderLIMITING_STATUS: TAbmesWideStringField
      FieldName = 'LIMITING_STATUS'
    end
    object cdsModelTasksHeaderSALE_BRANCH_NO: TAbmesFloatField
      FieldName = 'SALE_BRANCH_NO'
    end
    object cdsModelTasksHeaderSALE_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'SALE_TYPE_ABBREV'
      Size = 10
    end
    object cdsModelTasksHeaderSALE_NO: TAbmesFloatField
      FieldName = 'SALE_NO'
    end
    object cdsModelTasksHeaderMAIN_DEPT_NAME: TAbmesWideStringField
      FieldName = 'MAIN_DEPT_NAME'
    end
    object cdsModelTasksHeaderOWNER_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'OWNER_EMPLOYEE_CODE'
    end
    object cdsModelTasksHeader_OWNER_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = '_OWNER_EMPLOYEE_NAME'
      Size = 70
    end
    object cdsModelTasksHeader_OWNER_EMPLOYEE_NO: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_OWNER_EMPLOYEE_NO'
      LookupDataSet = cdsEmployees
      LookupKeyFields = 'EMPLOYEE_CODE'
      LookupResultField = 'EMPLOYEE_NO'
      KeyFields = 'OWNER_EMPLOYEE_CODE'
      Lookup = True
    end
    object cdsModelTasksHeaderBEGIN_DATE: TAbmesWideStringField
      FieldName = 'BEGIN_DATE'
    end
    object cdsModelTasksHeaderEND_DATE: TAbmesWideStringField
      FieldName = 'END_DATE'
    end
    object cdsModelTasksHeaderRESULT_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'RESULT_PRODUCT_NAME'
      Size = 100
    end
    object cdsModelTasksHeaderRESULT_PRODUCT_NO: TAbmesFloatField
      FieldName = 'RESULT_PRODUCT_NO'
    end
    object cdsModelTasksHeaderTECH_QUANTITY: TAbmesFloatField
      FieldName = 'TECH_QUANTITY'
      DisplayFormat = ',0.###'
    end
    object cdsModelTasksHeaderSALE_MANAGER_CODE: TAbmesFloatField
      FieldName = 'SALE_MANAGER_CODE'
    end
    object cdsModelTasksHeaderSALE_MANAGER_NAME: TAbmesWideStringField
      FieldName = 'SALE_MANAGER_NAME'
      Size = 41
    end
    object cdsModelTasksHeaderSALE_CLIENT_COMPANY_SHORT_NAME: TAbmesWideStringField
      FieldName = 'SALE_CLIENT_COMPANY_SHORT_NAME'
    end
    object cdsModelTasksHeaderSALE_CLIENT_COUNTRY_ABBREV: TAbmesWideStringField
      FieldName = 'SALE_CLIENT_COUNTRY_ABBREV'
      Size = 5
    end
    object cdsModelTasksHeaderSALE_CLIENT_PRODUCT_SIGNATURE: TAbmesWideStringField
      FieldName = 'SALE_CLIENT_PRODUCT_SIGNATURE'
      Size = 50
    end
    object cdsModelTasksHeaderSALE_CLIENT_REQUEST_NO: TAbmesWideStringField
      FieldName = 'SALE_CLIENT_REQUEST_NO'
      Size = 50
    end
    object cdsModelTasksHeaderML_STATE: TAbmesWideStringField
      FieldName = 'ML_STATE'
    end
    object cdsModelTasksHeaderSALE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'SALE_IDENTIFIER'
    end
    object cdsModelTasksHeaderHAS_WASTE_COMPENSATORS: TAbmesFloatField
      FieldName = 'HAS_WASTE_COMPENSATORS'
      DisplayBoolValues = #1048#1084#1072';'#1053#1103#1084#1072
      FieldValueType = fvtBoolean
    end
    object cdsModelTasksHeaderRESULT_STORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'RESULT_STORE_IDENTIFIER'
    end
    object cdsModelTasksHeaderSTORE_DATE_INTERVAL: TAbmesWideStringField
      FieldName = 'STORE_DATE_INTERVAL'
    end
    object cdsModelTasksHeaderMAIN_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'MAIN_DEPT_IDENTIFIER'
    end
    object cdsModelTasksHeaderPRIORITY_NO: TAbmesFloatField
      FieldName = 'PRIORITY_NO'
    end
    object cdsModelTasksHeaderWORK_PRIORITY_NO: TAbmesFloatField
      FieldName = 'WORK_PRIORITY_NO'
    end
    object cdsModelTasksHeaderIS_WASTE_COMPENSATING_ORDER: TAbmesFloatField
      FieldName = 'IS_WASTE_COMPENSATING_ORDER'
      DisplayBoolValues = #1057';'#1054
      FieldValueType = fvtBoolean
    end
    object cdsModelTasksHeaderSALE_MANUFACTURE_QUANTITY: TAbmesFloatField
      FieldName = 'SALE_MANUFACTURE_QUANTITY'
    end
    object cdsModelTasksHeaderSALE_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'SALE_MEASURE_ABBREV'
      Size = 5
    end
    object cdsModelTasksHeaderCOMPANY_PRODUCT_NAMES: TAbmesWideStringField
      FieldName = 'COMPANY_PRODUCT_NAMES'
      Size = 250
    end
    object cdsModelTasksHeaderSTRUCTURE_COEF: TAbmesWideStringField
      FieldName = 'STRUCTURE_COEF'
    end
  end
  inherited cdsFilteredGridData: TAbmesClientDataSet
    IndexDefs = <
      item
        Name = 'idxNo'
        Fields = 'NO_AS_FORMATED_TEXT_EX; FORK_NO'
        Options = [ixUnique]
      end>
    Top = 344
  end
  inherited dsFilteredGridData: TDataSource
    Top = 344
  end
  inherited cdsProfessions: TAbmesClientDataSet
    Left = 816
    Top = 0
    inherited cdsProfessionsPROFESSION_CODE: TAbmesFloatField
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  inherited cdsOperations: TAbmesClientDataSet
    DataSetField = cdsStagesqryMLMSOperations
    FieldDefs = <
      item
        Name = 'OPERATION_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DETAIL_WORK_HOUR_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'PROFESSION_CODE'
        DataType = ftFloat
      end
      item
        Name = 'EFFORT_COEF'
        DataType = ftFloat
      end
      item
        Name = 'HOUR_PRICE'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'idxOperationNo'
        Fields = 
          'OPERATION_TYPE_CODE; MLMS_OPERATION_NO; MLMS_OPERATION_VARIANT_N' +
          'O'
      end>
    Left = 176
    Top = 448
    object cdsOperationsMLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField [0]
      FieldName = 'MLMSO_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsOperationsMLMSO_OBJECT_CODE: TAbmesFloatField [1]
      FieldName = 'MLMSO_OBJECT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsOperationsMLMS_OBJECT_BRANCH_CODE: TAbmesFloatField [2]
      FieldName = 'MLMS_OBJECT_BRANCH_CODE'
    end
    object cdsOperationsMLMS_OBJECT_CODE: TAbmesFloatField [3]
      FieldName = 'MLMS_OBJECT_CODE'
    end
    object cdsOperationsMLMS_OPERATION_NO: TAbmesFloatField [4]
      FieldName = 'MLMS_OPERATION_NO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsOperationsMLMS_OPERATION_VARIANT_NO: TAbmesFloatField [5]
      FieldName = 'MLMS_OPERATION_VARIANT_NO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsOperationsDONE_SETUP_COUNT: TAbmesFloatField [20]
      FieldName = 'DONE_SETUP_COUNT'
    end
    inherited cdsOperationsPROFESSION_CODE: TAbmesFloatField
      OnChange = cdsOperationsPROFESSION_CODEChange
    end
    object cdsOperationsIS_ACTIVE: TAbmesFloatField [27]
      FieldName = 'IS_ACTIVE'
      ProviderFlags = [pfInUpdate]
      FieldValueType = fvtBoolean
    end
    object cdsOperationsVARIANT_DETAIL_TECH_QUANTITY: TAbmesFloatField [28]
      FieldName = 'VARIANT_DETAIL_TECH_QUANTITY'
      ProviderFlags = [pfInUpdate]
    end
    inherited cdsOperationsHAS_DOCUMENTATION: TAbmesFloatField [35]
    end
    object cdsOperationsTREATMENT_BEGIN_DATE: TAbmesSQLTimeStampField [36]
      FieldName = 'TREATMENT_BEGIN_DATE'
    end
    object cdsOperationsTREATMENT_END_DATE: TAbmesSQLTimeStampField [37]
      FieldName = 'TREATMENT_END_DATE'
    end
    inherited cdsOperationsTYPICAL_TOOL_PRODUCT_NO: TAbmesFloatField [40]
    end
    inherited cdsOperationsDOC_CODE: TAbmesFloatField [42]
    end
    object cdsOperationsNO_1: TAbmesFloatField [43]
      FieldName = 'NO_1'
      ProviderFlags = []
    end
    object cdsOperationsNO_2: TAbmesFloatField [44]
      FieldName = 'NO_2'
      ProviderFlags = []
    end
    object cdsOperationsNO_3: TAbmesFloatField [45]
      FieldName = 'NO_3'
      ProviderFlags = []
    end
    object cdsOperationsNO_4: TAbmesFloatField [46]
      FieldName = 'NO_4'
      ProviderFlags = []
    end
    object cdsOperationsNO_5: TAbmesFloatField [47]
      FieldName = 'NO_5'
      ProviderFlags = []
    end
    object cdsOperationsNO_6: TAbmesFloatField [48]
      FieldName = 'NO_6'
      ProviderFlags = []
    end
    object cdsOperationsNO_7: TAbmesFloatField [49]
      FieldName = 'NO_7'
      ProviderFlags = []
    end
    object cdsOperationsNO_8: TAbmesFloatField [50]
      FieldName = 'NO_8'
      ProviderFlags = []
    end
    object cdsOperationsNO_9: TAbmesFloatField [51]
      FieldName = 'NO_9'
      ProviderFlags = []
    end
    object cdsOperationsNO_10: TAbmesFloatField [52]
      FieldName = 'NO_10'
      ProviderFlags = []
    end
    object cdsOperationsNO_11: TAbmesFloatField [53]
      FieldName = 'NO_11'
      ProviderFlags = []
    end
    object cdsOperationsNO_12: TAbmesFloatField [54]
      FieldName = 'NO_12'
      ProviderFlags = []
    end
    object cdsOperationsNO_13: TAbmesFloatField [55]
      FieldName = 'NO_13'
      ProviderFlags = []
    end
    object cdsOperationsNO_14: TAbmesFloatField [56]
      FieldName = 'NO_14'
      ProviderFlags = []
    end
    object cdsOperationsNO_15: TAbmesFloatField [57]
      FieldName = 'NO_15'
      ProviderFlags = []
    end
    object cdsOperationsNO_16: TAbmesFloatField [58]
      FieldName = 'NO_16'
      ProviderFlags = []
    end
    object cdsOperationsNO_17: TAbmesFloatField [59]
      FieldName = 'NO_17'
      ProviderFlags = []
    end
    object cdsOperationsNO_18: TAbmesFloatField [60]
      FieldName = 'NO_18'
      ProviderFlags = []
    end
    object cdsOperationsNO_19: TAbmesFloatField [61]
      FieldName = 'NO_19'
      ProviderFlags = []
    end
    object cdsOperationsNO_20: TAbmesFloatField [62]
      FieldName = 'NO_20'
      ProviderFlags = []
    end
    object cdsOperationsNO_21: TAbmesFloatField [63]
      FieldName = 'NO_21'
      ProviderFlags = []
    end
    object cdsOperationsNO_22: TAbmesFloatField [64]
      FieldName = 'NO_22'
      ProviderFlags = []
    end
    object cdsOperationsNO_23: TAbmesFloatField [65]
      FieldName = 'NO_23'
      ProviderFlags = []
    end
    object cdsOperationsNO_24: TAbmesFloatField [66]
      FieldName = 'NO_24'
      ProviderFlags = []
    end
    object cdsOperationsNO_25: TAbmesFloatField [67]
      FieldName = 'NO_25'
      ProviderFlags = []
    end
    object cdsOperationsFORK_NO: TAbmesFloatField [68]
      FieldName = 'FORK_NO'
      ProviderFlags = []
    end
    object cdsOperationsML_MODEL_STAGE_NO: TAbmesFloatField [69]
      FieldName = 'ML_MODEL_STAGE_NO'
      ProviderFlags = []
    end
    object cdsOperationsHAS_IN_MOVEMENTS: TAbmesFloatField [70]
      FieldName = 'HAS_IN_MOVEMENTS'
      FieldValueType = fvtBoolean
    end
    object cdsOperationsHAS_OUT_MOVEMENTS: TAbmesFloatField [71]
      FieldName = 'HAS_OUT_MOVEMENTS'
      FieldValueType = fvtBoolean
    end
    inherited cdsOperationsTREATMENT_BEGIN_WORKDAY_NO: TAbmesFloatField [72]
    end
    inherited cdsOperationsTREATMENT_WORKDAYS: TAbmesFloatField [73]
    end
    inherited cdsOperationsPROGRAM_TOOL_REQUIREMENT_CODE: TAbmesFloatField [74]
    end
    inherited cdsOperationsSPECIFIC_TOOL_REQUIREMENT_CODE: TAbmesFloatField [75]
    end
    inherited cdsOperationsTYPICAL_TOOL_REQUIREMENT_CODE: TAbmesFloatField [76]
    end
    inherited cdsOperationsPROGRAM_TOOL_IS_COMPLETE: TAbmesFloatField [77]
    end
    inherited cdsOperationsSPECIFIC_TOOL_IS_COMPLETE: TAbmesFloatField [78]
    end
    inherited cdsOperationsTYPICAL_TOOL_IS_COMPLETE: TAbmesFloatField [79]
    end
    inherited cdsOperationsTYPICAL_TOOL_DETAIL_TECH_QTY: TAbmesFloatField [80]
    end
    object cdsOperationsREAL_SETUP_HOUR_PRICE: TAbmesFloatField [89]
      DisplayLabel = #1053#1072#1089#1090#1088#1086#1081#1082#1072' - '#1074#1077#1094' / '#1095#1072#1089
      FieldName = 'REAL_SETUP_HOUR_PRICE'
      DisplayFormat = '0.00'
    end
    object cdsOperationsREAL_HOUR_PRICE: TAbmesFloatField [91]
      DisplayLabel = #1074#1077#1094' / '#1095#1072#1089
      FieldName = 'REAL_HOUR_PRICE'
      DisplayFormat = '0.00'
    end
    inherited cdsOperations_MAX_OPERATION_NO: TAggregateField
      Expression = 'Max(MLMS_OPERATION_NO)'
    end
    inherited cdsOperations_MAX_OPERATION_VARIANT_NO: TAggregateField
      Expression = 'Max(MLMS_OPERATION_VARIANT_NO)'
    end
    inherited cdsOperations_OPERATION_COUNT: TAggregateField
      Expression = 
        'Count(OPERATION_TYPE_CODE) - Sum(MLMS_OPERATION_VARIANT_NO/MLMS_' +
        'OPERATION_VARIANT_NO)'
    end
    object cdsOperations_SUM_VARIANT_DETAIL_TECH_QTY: TAggregateField
      FieldName = '_SUM_VARIANT_DETAIL_TECH_QTY'
      Active = True
      DisplayName = ''
      Expression = 'Sum(VARIANT_DETAIL_TECH_QUANTITY)'
      GroupingLevel = 2
      IndexName = 'idxOperationNo'
    end
    object cdsOperations_MAX_MLMSO_OBJECT_CODE: TAggregateField
      FieldName = '_MAX_MLMSO_OBJECT_CODE'
      Active = True
      DisplayName = ''
      Expression = 'Max(MLMSO_OBJECT_CODE)'
    end
    object cdsOperations_OPERATION_ACTIVE_VARIANT_COUNT: TAggregateField
      FieldName = '_OPERATION_ACTIVE_VARIANT_COUNT'
      Active = True
      DisplayName = ''
      Expression = 'Sum(IS_ACTIVE)'
      GroupingLevel = 2
      IndexName = 'idxOperationNo'
    end
  end
  inherited cdsRecursivePrint: TAbmesClientDataSet
    Left = 400
    Top = 424
    object cdsRecursivePrintFORK_NO: TAbmesFloatField
      FieldName = 'FORK_NO'
    end
  end
  inherited cdsOperationCreateLike: TAbmesClientDataSet
    Left = 48
    Top = 322
  end
  inherited cdsStageInvestedValues: TAbmesClientDataSet
    IndexDefs = <
      item
        Name = 'idxDefault'
        Fields = 'MLMS_OBJECT_BRANCH_CODE; MLMS_OBJECT_CODE'
        Options = [ixUnique]
      end>
    IndexName = 'idxDefault'
    StoreDefs = True
    object cdsStageInvestedValuesMLMS_OBJECT_BRANCH_CODE: TAbmesFloatField [0]
      FieldName = 'MLMS_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsStageInvestedValuesMLMS_OBJECT_CODE: TAbmesFloatField [1]
      FieldName = 'MLMS_OBJECT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object cdsInsertSpecLines: TAbmesClientDataSet [29]
    Aggregates = <>
    ConnectionBroker = dmMain.conXModels
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_MODEL_VARIANT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_MODEL_VARIANT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvInsertSpecLines'
    Left = 480
    Top = 384
    object cdsInsertSpecLinesSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
    end
    object cdsInsertSpecLinesSPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_CODE'
    end
    object cdsInsertSpecLinesSPEC_VERSION_NO: TAbmesFloatField
      FieldName = 'SPEC_VERSION_NO'
    end
    object cdsInsertSpecLinesSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
    end
    object cdsInsertSpecLinesNO_1: TAbmesFloatField
      FieldName = 'NO_1'
    end
    object cdsInsertSpecLinesNO_2: TAbmesFloatField
      FieldName = 'NO_2'
    end
    object cdsInsertSpecLinesNO_3: TAbmesFloatField
      FieldName = 'NO_3'
    end
    object cdsInsertSpecLinesNO_4: TAbmesFloatField
      FieldName = 'NO_4'
    end
    object cdsInsertSpecLinesNO_5: TAbmesFloatField
      FieldName = 'NO_5'
    end
    object cdsInsertSpecLinesNO_6: TAbmesFloatField
      FieldName = 'NO_6'
    end
    object cdsInsertSpecLinesNO_7: TAbmesFloatField
      FieldName = 'NO_7'
    end
    object cdsInsertSpecLinesNO_8: TAbmesFloatField
      FieldName = 'NO_8'
    end
    object cdsInsertSpecLinesNO_9: TAbmesFloatField
      FieldName = 'NO_9'
    end
    object cdsInsertSpecLinesNO_10: TAbmesFloatField
      FieldName = 'NO_10'
    end
    object cdsInsertSpecLinesNO_11: TAbmesFloatField
      FieldName = 'NO_11'
    end
    object cdsInsertSpecLinesNO_12: TAbmesFloatField
      FieldName = 'NO_12'
    end
    object cdsInsertSpecLinesNO_13: TAbmesFloatField
      FieldName = 'NO_13'
    end
    object cdsInsertSpecLinesNO_14: TAbmesFloatField
      FieldName = 'NO_14'
    end
    object cdsInsertSpecLinesNO_15: TAbmesFloatField
      FieldName = 'NO_15'
    end
    object cdsInsertSpecLinesNO_16: TAbmesFloatField
      FieldName = 'NO_16'
    end
    object cdsInsertSpecLinesNO_17: TAbmesFloatField
      FieldName = 'NO_17'
    end
    object cdsInsertSpecLinesNO_18: TAbmesFloatField
      FieldName = 'NO_18'
    end
    object cdsInsertSpecLinesNO_19: TAbmesFloatField
      FieldName = 'NO_19'
    end
    object cdsInsertSpecLinesNO_20: TAbmesFloatField
      FieldName = 'NO_20'
    end
    object cdsInsertSpecLinesNO_21: TAbmesFloatField
      FieldName = 'NO_21'
    end
    object cdsInsertSpecLinesNO_22: TAbmesFloatField
      FieldName = 'NO_22'
    end
    object cdsInsertSpecLinesNO_23: TAbmesFloatField
      FieldName = 'NO_23'
    end
    object cdsInsertSpecLinesNO_24: TAbmesFloatField
      FieldName = 'NO_24'
    end
    object cdsInsertSpecLinesNO_25: TAbmesFloatField
      FieldName = 'NO_25'
    end
    object cdsInsertSpecLinesDETAIL_CODE: TAbmesFloatField
      FieldName = 'DETAIL_CODE'
    end
    object cdsInsertSpecLinesDETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'DETAIL_TECH_QUANTITY'
    end
    object cdsInsertSpecLinesPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object cdsInsertSpecLinesPRODUCT_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'PRODUCT_TECH_QUANTITY'
    end
    object cdsInsertSpecLinesNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object cdsInsertSpecLinesCONSTRUCTION_NOTES: TAbmesWideStringField
      FieldName = 'CONSTRUCTION_NOTES'
      Size = 250
    end
    object cdsInsertSpecLinesIS_FOR_SINGLE_USE: TAbmesFloatField
      FieldName = 'IS_FOR_SINGLE_USE'
      FieldValueType = fvtBoolean
    end
    object cdsInsertSpecLinesPARENT_NO_1: TAbmesFloatField
      FieldName = 'PARENT_NO_1'
    end
    object cdsInsertSpecLinesPARENT_NO_2: TAbmesFloatField
      FieldName = 'PARENT_NO_2'
    end
    object cdsInsertSpecLinesPARENT_NO_3: TAbmesFloatField
      FieldName = 'PARENT_NO_3'
    end
    object cdsInsertSpecLinesPARENT_NO_4: TAbmesFloatField
      FieldName = 'PARENT_NO_4'
    end
    object cdsInsertSpecLinesPARENT_NO_5: TAbmesFloatField
      FieldName = 'PARENT_NO_5'
    end
    object cdsInsertSpecLinesPARENT_NO_6: TAbmesFloatField
      FieldName = 'PARENT_NO_6'
    end
    object cdsInsertSpecLinesPARENT_NO_7: TAbmesFloatField
      FieldName = 'PARENT_NO_7'
    end
    object cdsInsertSpecLinesPARENT_NO_8: TAbmesFloatField
      FieldName = 'PARENT_NO_8'
    end
    object cdsInsertSpecLinesPARENT_NO_9: TAbmesFloatField
      FieldName = 'PARENT_NO_9'
    end
    object cdsInsertSpecLinesPARENT_NO_10: TAbmesFloatField
      FieldName = 'PARENT_NO_10'
    end
    object cdsInsertSpecLinesPARENT_NO_11: TAbmesFloatField
      FieldName = 'PARENT_NO_11'
    end
    object cdsInsertSpecLinesPARENT_NO_12: TAbmesFloatField
      FieldName = 'PARENT_NO_12'
    end
    object cdsInsertSpecLinesPARENT_NO_13: TAbmesFloatField
      FieldName = 'PARENT_NO_13'
    end
    object cdsInsertSpecLinesPARENT_NO_14: TAbmesFloatField
      FieldName = 'PARENT_NO_14'
    end
    object cdsInsertSpecLinesPARENT_NO_15: TAbmesFloatField
      FieldName = 'PARENT_NO_15'
    end
    object cdsInsertSpecLinesPARENT_NO_16: TAbmesFloatField
      FieldName = 'PARENT_NO_16'
    end
    object cdsInsertSpecLinesPARENT_NO_17: TAbmesFloatField
      FieldName = 'PARENT_NO_17'
    end
    object cdsInsertSpecLinesPARENT_NO_18: TAbmesFloatField
      FieldName = 'PARENT_NO_18'
    end
    object cdsInsertSpecLinesPARENT_NO_19: TAbmesFloatField
      FieldName = 'PARENT_NO_19'
    end
    object cdsInsertSpecLinesPARENT_NO_20: TAbmesFloatField
      FieldName = 'PARENT_NO_20'
    end
    object cdsInsertSpecLinesPARENT_NO_21: TAbmesFloatField
      FieldName = 'PARENT_NO_21'
    end
    object cdsInsertSpecLinesPARENT_NO_22: TAbmesFloatField
      FieldName = 'PARENT_NO_22'
    end
    object cdsInsertSpecLinesPARENT_NO_23: TAbmesFloatField
      FieldName = 'PARENT_NO_23'
    end
    object cdsInsertSpecLinesPARENT_NO_24: TAbmesFloatField
      FieldName = 'PARENT_NO_24'
    end
    object cdsInsertSpecLinesPARENT_NO_25: TAbmesFloatField
      FieldName = 'PARENT_NO_25'
    end
    object cdsInsertSpecLinesMAIN_DEPT_CODE: TAbmesFloatField
      FieldName = 'MAIN_DEPT_CODE'
    end
    object cdsInsertSpecLinesDETAIL_NAME: TAbmesWideStringField
      FieldName = 'DETAIL_NAME'
      Size = 100
    end
    object cdsInsertSpecLinesDETAIL_NO: TAbmesFloatField
      FieldName = 'DETAIL_NO'
    end
    object cdsInsertSpecLinesDETAIL_HAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'DETAIL_HAS_DOCUMENTATION'
    end
    object cdsInsertSpecLinesDETAIL_IS_INACTIVE: TAbmesFloatField
      FieldName = 'DETAIL_IS_INACTIVE'
    end
    object cdsInsertSpecLinesDETAIL_PARENT_CODE: TAbmesFloatField
      FieldName = 'DETAIL_PARENT_CODE'
    end
    object cdsInsertSpecLinesDETAIL_IS_SELF_APPROVED: TAbmesFloatField
      FieldName = 'DETAIL_IS_SELF_APPROVED'
    end
    object cdsInsertSpecLinesDETAIL_TECH_MEASURE_CODE: TAbmesFloatField
      FieldName = 'DETAIL_TECH_MEASURE_CODE'
    end
    object cdsInsertSpecLinesPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object cdsInsertSpecLinesPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object cdsInsertSpecLinesPRODUCT_HAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOCUMENTATION'
    end
    object cdsInsertSpecLinesPRODUCT_IS_INACTIVE: TAbmesFloatField
      FieldName = 'PRODUCT_IS_INACTIVE'
      FieldValueType = fvtBoolean
    end
    object cdsInsertSpecLinesPRODUCT_TECH_MEASURE_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_TECH_MEASURE_CODE'
    end
    object cdsInsertSpecLinesPRODUCT_TECH_MEASURE_COEF: TAbmesFloatField
      FieldName = 'PRODUCT_TECH_MEASURE_COEF'
    end
    object cdsInsertSpecLinesPRODUCT_ACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_ACCOUNT_MEASURE_CODE'
    end
    object cdsInsertSpecLinesPRODUCT_ACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'PRODUCT_ACCOUNT_MEASURE_COEF'
    end
    object cdsInsertSpecLinesPRODUCT_SECONDARY_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'PRODUCT_SECONDARY_SINGLE_PRICE'
    end
    object cdsInsertSpecLinesPRODUCT_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'PRODUCT_SINGLE_PRICE'
    end
    object cdsInsertSpecLinesPRODUCT_INVESTMENT_VALUE_2: TAbmesFloatField
      FieldName = 'PRODUCT_INVESTMENT_VALUE_2'
    end
    object cdsInsertSpecLinesPRODUCT_INVESTMENT_VALUE_3: TAbmesFloatField
      FieldName = 'PRODUCT_INVESTMENT_VALUE_3'
    end
    object cdsInsertSpecLinesPRODUCT_INVESTMENT_VALUE_4: TAbmesFloatField
      FieldName = 'PRODUCT_INVESTMENT_VALUE_4'
    end
    object cdsInsertSpecLinesPRODUCT_INVESTMENT_VALUE_5: TAbmesFloatField
      FieldName = 'PRODUCT_INVESTMENT_VALUE_5'
    end
    object cdsInsertSpecLinesPRODUCT_PRECISION_LEVEL_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_PRECISION_LEVEL_CODE'
    end
    object cdsInsertSpecLinesDETAIL_IS_PRODUCTION_PRODUCT: TAbmesFloatField
      FieldName = 'DETAIL_IS_PRODUCTION_PRODUCT'
      FieldValueType = fvtBoolean
    end
    object cdsInsertSpecLinesAPPROVE_CYCLE_NO: TAbmesFloatField
      FieldName = 'APPROVE_CYCLE_NO'
    end
    object cdsInsertSpecLinesIS_COMPLETE: TAbmesFloatField
      FieldName = 'IS_COMPLETE'
    end
    object cdsInsertSpecLinesqryInsertSpecStages: TDataSetField
      FieldName = 'qryInsertSpecStages'
    end
  end
  object cdsInsertSpecStages: TAbmesClientDataSet [30]
    Aggregates = <>
    DataSetField = cdsInsertSpecLinesqryInsertSpecStages
    IndexFieldNames = 'SPEC_LINE_STAGE_NO'
    Params = <>
    Left = 480
    Top = 416
    object cdsInsertSpecStagesSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
    end
    object cdsInsertSpecStagesSPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_CODE'
    end
    object cdsInsertSpecStagesSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
    end
    object cdsInsertSpecStagesSPEC_LINE_STAGE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_STAGE_CODE'
    end
    object cdsInsertSpecStagesSPEC_LINE_STAGE_NO: TAbmesFloatField
      FieldName = 'SPEC_LINE_STAGE_NO'
    end
    object cdsInsertSpecStagesDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object cdsInsertSpecStagesDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      Size = 100
    end
    object cdsInsertSpecStagesDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      Size = 46
    end
    object cdsInsertSpecStagesDEPT_IS_STORE: TAbmesFloatField
      FieldName = 'DEPT_IS_STORE'
    end
    object cdsInsertSpecStagesDEPT_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEPT_BEGIN_DATE'
      ProviderFlags = []
    end
    object cdsInsertSpecStagesDEPT_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEPT_END_DATE'
      ProviderFlags = []
    end
    object cdsInsertSpecStagesTREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'TREATMENT_WORKDAYS'
    end
    object cdsInsertSpecStagesTOTAL_TREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'TOTAL_TREATMENT_WORKDAYS'
    end
    object cdsInsertSpecStagesOUTGOING_WORKDAYS: TAbmesFloatField
      FieldName = 'OUTGOING_WORKDAYS'
    end
    object cdsInsertSpecStagesIS_AUTO_MOVEMENT: TAbmesFloatField
      FieldName = 'IS_AUTO_MOVEMENT'
      FieldValueType = fvtBoolean
    end
    object cdsInsertSpecStagesDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInsertSpecStagesDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInsertSpecStagesHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
      ProviderFlags = []
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsInsertSpecStagesDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'DOC_EMPTINESS_REQUIREMENT_CODE'
    end
    object cdsInsertSpecStagesDOC_IS_COMPLETE: TAbmesFloatField
      FieldName = 'DOC_IS_COMPLETE'
    end
    object cdsInsertSpecStagesUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAPPROVED_ACTIVE_DI_COUNT'
    end
    object cdsInsertSpecStagesSMVS_TYPE_CODE: TAbmesFloatField
      FieldName = 'SMVS_TYPE_CODE'
    end
    object cdsInsertSpecStagesOPERATION_COUNT: TAbmesFloatField
      FieldName = 'OPERATION_COUNT'
    end
    object cdsInsertSpecStagesEXTERNAL_WORK_PRICE: TAbmesFloatField
      FieldName = 'EXTERNAL_WORK_PRICE'
    end
    object cdsInsertSpecStagesqryInsertSpecOperations: TDataSetField
      FieldName = 'qryInsertSpecOperations'
    end
  end
  object pgdSaleModel: TPrintDBGridEh [31]
    Options = []
    Page.BottomMargin = 1.000000000000000000
    Page.LeftMargin = 1.500000000000000000
    Page.RightMargin = 1.500000000000000000
    Page.TopMargin = 1.000000000000000000
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'Microsoft Sans Serif'
    PageFooter.Font.Style = []
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -11
    PageHeader.Font.Name = 'Microsoft Sans Serif'
    PageHeader.Font.Style = []
    Units = MM
    Left = 920
    Top = 376
    BeforeGridText_Data = {
      7B5C727466315C616E73695C616E7369637067313235315C64656666305C6465
      666C616E67313032367B5C666F6E7474626C7B5C66305C6673776973735C6670
      7271325C66636861727365743230347B5C2A5C666E616D6520417269616C3B7D
      417269616C204359523B7D7B5C66315C6673776973735C66707271325C666368
      61727365743020417269616C3B7D7D0D0A7B5C636F6C6F7274626C203B5C7265
      643139325C677265656E3139325C626C75653139323B7D0D0A7B5C7374796C65
      73686565747B204E6F726D616C3B7D7B5C73312068656164696E6720313B7D7D
      0D0A5C766965776B696E64345C7563315C706172645C747831333630385C7478
      32323533395C686967686C69676874315C6C616E67333038315C625C695C6630
      5C667333302020706C626C4C696D697474696E67205C686967686C6967687430
      20205C693020706C626C584D6F64656C5C6C616E67313032365C66733238203A
      5C62305C66733234202020706C626C53424E6F3A205C686967686C6967687431
      5C6C616E67313033332020535F425F4E4F205C686967686C6967687430202020
      5C6C616E673130323620706C626C5354413A205C686967686C69676874312020
      535F545F41205C686967686C69676874302020205C6C616E67313033335C6631
      20706C626C53616C654E6F5C6C616E67313032365C663020205C686967686C69
      67687431202053414C455F4E4F205C686967686C69676874305C7461625C6220
      706C626C4D61696E446570744E616D653A5C623020205C686967686C69676874
      3120204D41494E5F444550545F4E414D45205C686967686C69676874305C7461
      625C686967686C69676874315C6C616E67313033335C625C695C7061720D0A5C
      706172645C686967686C69676874305C6C616E67333038315C62305C69305C70
      61720D0A5C706172645C6B6565706E5C73315C747831333630385C7478323233
      39375C6C616E67313033335C625C663120706C626C46696E616C5C6630203A5C
      623020205C663120706C626C426567696E446174655C6C616E67313032365C66
      3020205C686967686C69676874315C6C616E67313033332020424547494E5F44
      415445205C686967686C696768743020205C663120706C626C456E6444617465
      5C6C616E67313032365C663020205C686967686C696768743120205C6C616E67
      3130333320454E445F44415445205C686967686C69676874305C7461625C7061
      720D0A5C706172645C6C616E67313032365C7061720D0A5C706172645C747831
      333630385C747832323235355C6220706C626C526573756C7450726F64756374
      4E616D653A5C6C616E673330383120205C686967686C69676874315C6C616E67
      3130333320205C623020524553554C545F50524F445543545F4E414D455C6220
      205C686967686C69676874302020205C6C616E67313032365C623020706C626C
      526573756C7450726F647563744E6F5C6C616E67333038315C6220205C686967
      686C69676874315C6C616E67313033335C62302020524553554C545F50524F44
      5543545F4E4F5C6C616E67333038315C6220205C686967686C69676874302020
      5C7461625C6C616E673130323620706C626C5175616E746974795C6C616E6731
      303333203A205C686967686C69676874315C623020205155414E54495459205C
      686967686C696768743020205F524553554C545F50524F445543545F4D454153
      5552455F4142425245565C7461625C6C616E67313032365C7061720D0A5C7061
      72645C7061720D0A5C706172645C7478373531335C747831333630385C747832
      323533395C6220706C626C436C69656E743A5C6C616E673330383120205C6869
      67686C69676874315C6C616E673130333320205C623020535F435F435F535F4E
      5C6220205C686967686C69676874302020205C663120706C626C436F756E7472
      795C6C616E67333038315C6630203A205C686967686C696768743120205C6230
      20535F5C6C616E673130333320435F435F415C6C616E67333038315C6220205C
      686967686C696768743020205C7461625C6C616E67313033335C663120706C62
      6C436C69656E74524E6F5C6C616E67313032365C6630203A5C6C616E67333038
      3120205C686967686C69676874315C6C616E673130333320205C623020535F43
      5F525F4E4F205C686967686C69676874305C6C616E67333038315C625C746162
      5C6C616E673130323620706C626C53616C65436C69656E7450726F6475637453
      69676E61747572655C6C616E6731303333203A205C686967686C69676874315C
      6230202053414C455F434C49454E545F50524F445543545F5349474E41545552
      45205C686967686C69676874305C7461625C6C616E67313032365C7061720D0A
      5C706172645C747831333138335C747832323235355C6C616E67313033335C62
      5C66312020205C7461625C7461625C6C616E67313032365C66305C7061720D0A
      5C706172645C686967686C69676874315C6C616E67333038315C695C66733330
      5C7061720D0A7D0D0A00}
  end
  object pgdSaleGroupModel: TPrintDBGridEh [32]
    Options = []
    Page.BottomMargin = 1.000000000000000000
    Page.LeftMargin = 1.500000000000000000
    Page.RightMargin = 1.500000000000000000
    Page.TopMargin = 1.000000000000000000
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'Microsoft Sans Serif'
    PageFooter.Font.Style = []
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -11
    PageHeader.Font.Name = 'Microsoft Sans Serif'
    PageHeader.Font.Style = []
    Units = MM
    Left = 920
    Top = 440
  end
  object pgdProductionOrderModel: TPrintDBGridEh [33]
    Options = []
    Page.BottomMargin = 1.000000000000000000
    Page.LeftMargin = 1.500000000000000000
    Page.RightMargin = 1.500000000000000000
    Page.TopMargin = 1.000000000000000000
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'Microsoft Sans Serif'
    PageFooter.Font.Style = []
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -11
    PageHeader.Font.Name = 'Microsoft Sans Serif'
    PageHeader.Font.Style = []
    Units = MM
    Left = 920
    Top = 408
    BeforeGridText_Data = {
      7B5C727466315C616E73695C616E7369637067313235315C64656666305C6465
      666C616E67313032367B5C666F6E7474626C7B5C66305C6673776973735C6670
      7271325C66636861727365743230347B5C2A5C666E616D6520417269616C3B7D
      417269616C204359523B7D7B5C66315C6673776973735C66707271325C666368
      61727365743020417269616C3B7D7D0D0A7B5C636F6C6F7274626C203B5C7265
      643139325C677265656E3139325C626C75653139323B7D0D0A5C766965776B69
      6E64345C7563315C706172645C6E6F77696463746C7061725C7478353832325C
      7478373234325C7478383934365C7478393934305C747831313231385C747831
      323633385C747831353136385C747832303639365C6C616E67313034395C6630
      5C667332385C7461625C6C616E67313032365C695C6673323020706C626C4D4C
      5374617465436F64655C69305C7461625C6C616E67313033335C695C66312070
      6C626C49445C6C616E67313034395C69305C66305C7461625C6C616E67313032
      365C6920706C626C5072696F726974795C69305C7461625C6C616E6731303333
      5C695C663120706C626C576F726B5072696F726974795C6C616E67313034395C
      69305C66305C7461625C6C616E67313032365C6920706C626C49735761737465
      436F6D70656E736174696E674F726465725C69305C7461625C6920706C626C48
      61735761737465436F6D70656E7361746F72735C7061720D0A5C625C69305C66
      73323820706C626C584D6F64656C456469745C62305C667332305C7461625C68
      6967686C69676874315C6C616E67313033335C6220204D4C5C6C616E67323035
      37205F5C6C616E67313033332053544154455C6C616E6732303537205F5C6C61
      6E673130333320434F44455C6C616E673130323620205C686967686C69676874
      305C62305C7461625C686967686C69676874315C6C616E67313033335C622020
      505C6C616E6732303537205F5C6C616E6731303333204F5C6C616E6732303537
      205F5C6C616E673130333320545C6C616E6732303537205F5C6C616E67313033
      3320415C6C616E6732303537202F5C6C616E673130333320535C6C616E673230
      3537205F5C6C616E673130333320425C6C616E6732303537205F5C6C616E6731
      303333204E4F5C6C616E6732303537202F5C6C616E67313033332053414C455F
      4E4F2F535F545F415C6C616E673130323620205C686967686C69676874305C62
      305C7461625C686967686C69676874315C6220205C6C616E6731303333205052
      494F524954595F4E4F5C6C616E673130323620205C686967686C69676874305C
      62305C7461625C686967686C69676874315C6220205C6C616E67313033332057
      4F524B5F5052494F524954595F4E4F5C6C616E673130323620205C686967686C
      69676874305C62305C7461625C686967686C69676874315C6C616E6731303333
      5C62202049535F57415354455F434F4D50454E534154494E475F4F524445525C
      6C616E673130323620205C686967686C69676874305C6C616E67323035375C62
      305C7461625C686967686C69676874315C6C616E67313033335C622020484153
      5F57415354455F434F4D50454E5341544F52535C6C616E673130323620205C68
      6967686C69676874305C6C616E67323035375C7461625C62305C7061720D0A5C
      706172645C6E6F77696463746C7061725C747831373634305C74783230363936
      5C6C616E67313032365C667331325C7061720D0A5C706172645C6E6F77696463
      746C7061725C7478363533325C7478373636385C7478393531345C7478313133
      36305C747831323439365C695C6673323020706C626C526573756C7450726F64
      7563745C69305C7461625C6920706C626C537472756374436F65665C74616220
      706C626C576F726B5175616E746974795C7461625C7461625C2764345C276365
      5C2766305C276366205C2763665C2766302E5C74616220706C626C53746F7265
      44617465496E74657276616C5C7061720D0A5C686967686C69676874315C625C
      69305C6673323820205C6C616E67313033335C6673323020524553554C545F50
      524F445543545C6C616E6731303236205F4E414D45205C686967686C69676874
      3020205C686967686C696768743120205C6C616E673130333320524553554C54
      5C6C616E6731303236205F50524F445543545F4E4F205C686967686C69676874
      305C7461625C686967686C69676874315C6C616E673130333320205354525543
      545F434F45465C6C616E673130323620205C686967686C69676874305C746162
      5C686967686C69676874315C6C616E673130333320205155414E544954595C6C
      616E673130323620205C686967686C69676874305C6C616E673130333320205C
      6230205F524553554C545F50524F445543545F4D4541535552455F4142425245
      565C6C616E67313032365C625C7461625C7461625C686967686C69676874315C
      6C616E67313033332020524553554C545F53544F52455F4944454E5449464945
      525C6C616E673130323620205C686967686C69676874305C7461625C68696768
      6C69676874315C6C616E6731303333202053544F52455F444154455F494E5445
      5256414C5C6C616E673130323620205C686967686C69676874305C7461625C62
      305C695C7061720D0A5C706172645C6E6F77696463746C7061725C667331325C
      7061720D0A5C706172645C6E6F77696463746C7061725C7478343235335C7478
      363233375C7478393439385C747831313334305C747831323738305C66733230
      20706C626C436F6D70616E7950726F647563744E616D65735C74616220706C62
      6C4D61696E446570745C74616220706C626C4F776E6572456D706C6F7965654E
      616D655C6C616E67313034395C7461625C686967686C69676874315C7061720D
      0A5C6C616E67323035375C69305C6673323820205C6C616E67313033335C625C
      6673323020434F4D50414E595F50524F445543545F5C6C616E6731303236204E
      414D455C6C616E673130333320535C6C616E673130323620205C686967686C69
      676874305C7461625C686967686C696768743120205C6C616E6731303333204D
      41494E5F444550545F4944454E5449464945525C6C616E673130323620205C68
      6967686C69676874305C6C616E67323035375C667332385C7461625C68696768
      6C69676874315C6673323020205C6C616E6731303333205F4F574E45525F454D
      504C4F5945455C6C616E6731303236205F4E414D45205C686967686C69676874
      305C7461625C6C616E67313033335C62305C7461625C6C616E67313032365C69
      5C7061720D0A5C706172645C6C616E67313034395C69305C667332385C706172
      0D0A7D0D0A00}
  end
  object cdsTasks: TAbmesClientDataSet [34]
    Aggregates = <>
    AggregatesActive = True
    DataSetField = cdsDataqryXModelTasks
    FieldDefs = <
      item
        Name = 'ML_OBJECT_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'ML_OBJECT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'MATERIAL_LIST_TASK_NO'
        DataType = ftFloat
      end
      item
        Name = 'MATERIAL_LIST_TASK_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'qryXModelTaskDepts'
        DataType = ftDataSet
      end>
    IndexDefs = <
      item
        Name = 'idxTaskNo'
        Fields = 'ML_OBJECT_BRANCH_CODE; ML_OBJECT_CODE; MATERIAL_LIST_TASK_NO'
        Options = [ixUnique]
      end>
    IndexName = 'idxTaskNo'
    Params = <>
    StoreDefs = True
    BeforeDelete = cdsTasksBeforeDelete
    OnNewRecord = cdsTasksNewRecord
    Left = 256
    Top = 384
    object cdsTasksML_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsTasksML_OBJECT_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsTasksMATERIAL_LIST_TASK_NO: TAbmesFloatField
      FieldName = 'MATERIAL_LIST_TASK_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsTasksMATERIAL_LIST_TASK_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'MATERIAL_LIST_TASK_NAME'
      Required = True
      Size = 100
    end
    object cdsTasksqryXModelTaskDepts: TDataSetField
      FieldName = 'qryXModelTaskDepts'
    end
    object cdsTasks_MAX_MATERIAL_LIST_TASK_NO: TAggregateField
      FieldName = '_MAX_MATERIAL_LIST_TASK_NO'
      Active = True
      DisplayName = ''
      Expression = 'Max(MATERIAL_LIST_TASK_NO)'
    end
  end
  object dsTasks: TDataSource [35]
    DataSet = cdsTasks
    Left = 288
    Top = 384
  end
  object cdsTaskDepts: TAbmesClientDataSet [36]
    Aggregates = <>
    DataSetField = cdsTasksqryXModelTaskDepts
    FieldDefs = <
      item
        Name = 'ML_OBJECT_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'ML_OBJECT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'MATERIAL_LIST_TASK_NO'
        DataType = ftFloat
      end
      item
        Name = 'DEPT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DEPT_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'DEPT_IDENTIFIER'
        DataType = ftWideString
        Size = 46
      end>
    IndexDefs = <
      item
        Name = 'idxTaskDept'
        Fields = 
          'ML_OBJECT_BRANCH_CODE; ML_OBJECT_CODE; MATERIAL_LIST_TASK_NO; DE' +
          'PT_CODE'
        Options = [ixUnique]
      end>
    IndexName = 'idxTaskDept'
    Params = <>
    StoreDefs = True
    AfterPost = cdsTaskDeptsAfterPost
    AfterCancel = cdsTaskDeptsAfterCancel
    OnNewRecord = cdsTaskDeptsNewRecord
    Left = 256
    Top = 416
    object cdsTaskDeptsML_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsTaskDeptsML_OBJECT_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsTaskDeptsMATERIAL_LIST_TASK_NO: TAbmesFloatField
      FieldName = 'MATERIAL_LIST_TASK_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsTaskDeptsDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      OnChange = cdsTaskDeptsDEPT_CODEChange
    end
    object cdsTaskDeptsDEPT_NAME: TAbmesWideStringField
      DisplayLabel = #1058#1055
      FieldName = 'DEPT_NAME'
      ProviderFlags = []
      Required = True
      Size = 100
    end
    object cdsTaskDeptsDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
  end
  object dsTaskDepts: TDataSource [37]
    DataSet = cdsTaskDepts
    Left = 288
    Top = 416
  end
  object cdsInsertSpecTasks: TAbmesClientDataSet [38]
    Aggregates = <>
    ConnectionBroker = dmMain.conXModels
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_MODEL_VARIANT_NO'
        ParamType = ptInput
      end>
    ProviderName = 'prvInsertSpecTasks'
    Left = 520
    Top = 384
    object cdsInsertSpecTasksSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
    end
    object cdsInsertSpecTasksSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
    end
    object cdsInsertSpecTasksSPEC_MODEL_VARIANT_TASK_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_TASK_NO'
    end
    object cdsInsertSpecTasksSPEC_MODEL_VARIANT_TASK_NAME: TAbmesWideStringField
      FieldName = 'SPEC_MODEL_VARIANT_TASK_NAME'
      Size = 100
    end
    object cdsInsertSpecTasksqryInsertSpecTaskDepts: TDataSetField
      FieldName = 'qryInsertSpecTaskDepts'
    end
  end
  object cdsInsertSpecTaskDepts: TAbmesClientDataSet [39]
    Aggregates = <>
    DataSetField = cdsInsertSpecTasksqryInsertSpecTaskDepts
    Params = <>
    Left = 520
    Top = 416
    object cdsInsertSpecTaskDeptsSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
    end
    object cdsInsertSpecTaskDeptsSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
    end
    object cdsInsertSpecTaskDeptsSPEC_MODEL_VARIANT_TASK_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_TASK_NO'
    end
    object cdsInsertSpecTaskDeptsDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object cdsInsertSpecTaskDeptsDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      Size = 100
    end
    object cdsInsertSpecTaskDeptsDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      Size = 46
    end
  end
  object cdsInsertSpecOperations: TAbmesClientDataSet [40]
    Aggregates = <>
    DataSetField = cdsInsertSpecStagesqryInsertSpecOperations
    Params = <>
    Left = 480
    Top = 448
    object cdsInsertSpecOperationsSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
    end
    object cdsInsertSpecOperationsSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
    end
    object cdsInsertSpecOperationsSPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_CODE'
    end
    object cdsInsertSpecOperationsSPEC_LINE_STAGE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_STAGE_CODE'
    end
    object cdsInsertSpecOperationsSMVS_OPERATION_CODE: TAbmesFloatField
      FieldName = 'SMVS_OPERATION_CODE'
    end
    object cdsInsertSpecOperationsSMVS_OPERATION_NO: TAbmesFloatField
      FieldName = 'SMVS_OPERATION_NO'
    end
    object cdsInsertSpecOperationsSMVS_OPERATION_VARIANT_NO: TAbmesFloatField
      FieldName = 'SMVS_OPERATION_VARIANT_NO'
    end
    object cdsInsertSpecOperationsOPERATION_TYPE_CODE: TAbmesFloatField
      FieldName = 'OPERATION_TYPE_CODE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsInsertSpecOperationsIS_NORMAL_OPERATION: TAbmesFloatField
      FieldName = 'IS_NORMAL_OPERATION'
      FieldValueType = fvtBoolean
    end
    object cdsInsertSpecOperationsDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object cdsInsertSpecOperationsDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      Size = 100
    end
    object cdsInsertSpecOperationsDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      Size = 46
    end
    object cdsInsertSpecOperationsDEPT_PARENT_CODE: TAbmesFloatField
      FieldName = 'DEPT_PARENT_CODE'
      ProviderFlags = []
    end
    object cdsInsertSpecOperationsDEPT_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEPT_BEGIN_DATE'
      ProviderFlags = []
    end
    object cdsInsertSpecOperationsDEPT_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEPT_END_DATE'
      ProviderFlags = []
    end
    object cdsInsertSpecOperationsSETUP_PROFESSION_CODE: TAbmesFloatField
      FieldName = 'SETUP_PROFESSION_CODE'
    end
    object cdsInsertSpecOperationsDEPT_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'DEPT_PRODUCT_CODE'
    end
    object cdsInsertSpecOperationsSETUP_EFFORT_COEF: TAbmesFloatField
      FieldName = 'SETUP_EFFORT_COEF'
    end
    object cdsInsertSpecOperationsSETUP_HOUR_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'SETUP_HOUR_TECH_QUANTITY'
    end
    object cdsInsertSpecOperationsSETUP_COUNT: TAbmesFloatField
      FieldName = 'SETUP_COUNT'
    end
    object cdsInsertSpecOperationsPROFESSION_CODE: TAbmesFloatField
      FieldName = 'PROFESSION_CODE'
    end
    object cdsInsertSpecOperationsEFFORT_COEF: TAbmesFloatField
      FieldName = 'EFFORT_COEF'
    end
    object cdsInsertSpecOperationsHOUR_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'HOUR_TECH_QUANTITY'
    end
    object cdsInsertSpecOperationsPROGRAM_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_PRODUCT_CODE'
    end
    object cdsInsertSpecOperationsPROGRAM_TOOL_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PROGRAM_TOOL_PRODUCT_NAME'
      Size = 100
    end
    object cdsInsertSpecOperationsPROGRAM_TOOL_PRODUCT_NO: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_PRODUCT_NO'
    end
    object cdsInsertSpecOperationsSPECIFIC_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_PRODUCT_CODE'
    end
    object cdsInsertSpecOperationsSPECIFIC_TOOL_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'SPECIFIC_TOOL_PRODUCT_NAME'
      Size = 100
    end
    object cdsInsertSpecOperationsSPECIFIC_TOOL_PRODUCT_NO: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_PRODUCT_NO'
    end
    object cdsInsertSpecOperationsTYPICAL_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_PRODUCT_CODE'
    end
    object cdsInsertSpecOperationsTYPICAL_TOOL_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'TYPICAL_TOOL_PRODUCT_NAME'
      Size = 100
    end
    object cdsInsertSpecOperationsTYPICAL_TOOL_PRODUCT_NO: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_PRODUCT_NO'
    end
    object cdsInsertSpecOperationsNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object cdsInsertSpecOperationsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsInsertSpecOperationsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsInsertSpecOperationsSPECIFIC_TOOL_DETAIL_TECH_QTY: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'SPECIFIC_TOOL_DETAIL_TECH_QTY'
      OnGetText = cdsOperationsSPECIFIC_TOOL_DETAIL_TECH_QTYGetText
      DisplayFormat = ',0.###'
    end
    object cdsInsertSpecOperationsTYPICAL_TOOL_DETAIL_TECH_QTY: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'TYPICAL_TOOL_DETAIL_TECH_QTY'
      OnGetText = cdsOperationsSPECIFIC_TOOL_DETAIL_TECH_QTYGetText
      DisplayFormat = ',0.###'
    end
    object cdsInsertSpecOperationsPROGRAM_TOOL_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_REQUIREMENT_CODE'
    end
    object cdsInsertSpecOperationsSPECIFIC_TOOL_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_REQUIREMENT_CODE'
    end
    object cdsInsertSpecOperationsTYPICAL_TOOL_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_REQUIREMENT_CODE'
    end
    object cdsInsertSpecOperationsPROGRAM_TOOL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_IS_COMPLETE'
    end
    object cdsInsertSpecOperationsSPECIFIC_TOOL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_IS_COMPLETE'
    end
    object cdsInsertSpecOperationsTYPICAL_TOOL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_IS_COMPLETE'
    end
    object cdsInsertSpecOperationsTREATMENT_BEGIN_WORKDAY_NO: TAbmesFloatField
      FieldName = 'TREATMENT_BEGIN_WORKDAY_NO'
    end
    object cdsInsertSpecOperationsTREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'TREATMENT_WORKDAYS'
    end
    object cdsInsertSpecOperationsHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
    end
    object cdsInsertSpecOperationsDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'DOC_EMPTINESS_REQUIREMENT_CODE'
    end
    object cdsInsertSpecOperationsDOC_IS_COMPLETE: TAbmesFloatField
      FieldName = 'DOC_IS_COMPLETE'
    end
    object cdsInsertSpecOperationsUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAPPROVED_ACTIVE_DI_COUNT'
    end
    object cdsInsertSpecOperationsHAS_SPECIAL_CONTROL: TAbmesFloatField
      FieldName = 'HAS_SPECIAL_CONTROL'
    end
    object cdsInsertSpecOperationsIS_AUTO_MOVEMENT: TAbmesFloatField
      FieldName = 'IS_AUTO_MOVEMENT'
    end
    object cdsInsertSpecOperationsIS_AUTO_SETUP: TAbmesFloatField
      FieldName = 'IS_AUTO_SETUP'
    end
    object cdsInsertSpecOperationsD_HOUR_PRICE: TAbmesFloatField
      FieldName = 'D_HOUR_PRICE'
    end
    object cdsInsertSpecOperationsD_MAINTAINANCE_HOUR_PRICE: TAbmesFloatField
      FieldName = 'D_MAINTAINANCE_HOUR_PRICE'
    end
    object cdsInsertSpecOperationsD_PARALLEL_OPERATOR_COUNT: TAbmesFloatField
      FieldName = 'D_PARALLEL_OPERATOR_COUNT'
    end
    object cdsInsertSpecOperationsD_PARALLEL_PROCESS_COUNT: TAbmesFloatField
      FieldName = 'D_PARALLEL_PROCESS_COUNT'
    end
  end
  object cdsGridDataLDTQ: TAbmesClientDataSet [41]
    Aggregates = <>
    AggregatesActive = True
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'idxNo'
        Fields = 'NO_AS_FORMATED_TEXT; FORK_NO'
      end>
    IndexName = 'idxNo'
    Params = <>
    StoreDefs = True
    Left = 132
    Top = 365
    object cdsGridDataLDTQNO_AS_FORMATED_TEXT: TAbmesWideStringField
      FieldName = 'NO_AS_FORMATED_TEXT'
      Size = 100
    end
    object cdsGridDataLDTQFORK_NO: TAbmesFloatField
      FieldName = 'FORK_NO'
    end
    object cdsGridDataLDTQIS_FORK: TAbmesFloatField
      FieldName = 'IS_FORK'
    end
    object cdsGridDataLDTQLINE_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'LINE_DETAIL_TECH_QUANTITY'
    end
    object cdsGridDataLDTQMAX_MOVED_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'MAX_MOVED_TECH_QUANTITY'
    end
    object cdsGridDataLDTQIS_NOT_WASTE_FORK: TAbmesFloatField
      FieldName = 'IS_NOT_WASTE_FORK'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataLDTQ_SUM_FORKS_QUANTITY: TAggregateField
      FieldName = '_SUM_FORKS_QUANTITY'
      Active = True
      DisplayName = ''
      Expression = 'Sum(LINE_DETAIL_TECH_QUANTITY * IS_FORK * IS_NOT_WASTE_FORK)'
      GroupingLevel = 1
      IndexName = 'idxNo'
    end
    object cdsGridDataLDTQ_FORK_COUNT: TAggregateField
      FieldName = '_FORK_COUNT'
      Active = True
      DisplayName = ''
      Expression = 'Sum(IS_FORK)'
      IndexName = 'idxNo'
    end
  end
  object cdsFork0Stages: TAbmesClientDataSet [42]
    Aggregates = <>
    Params = <>
    Left = 596
    Top = 381
    object cdsFork0StagesX_MLMS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'X_MLMS_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsFork0StagesX_MLMS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'X_MLMS_OBJECT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsFork0StagesML_MODEL_STAGE_NO: TAbmesFloatField
      FieldName = 'ML_MODEL_STAGE_NO'
    end
    object cdsFork0StagesDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object cdsFork0StagesDEPT_NAME: TAbmesWideStringField
      DisplayLabel = #1058#1055
      FieldName = 'DEPT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object cdsFork0StagesDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object cdsFork0StagesDEPT_IS_STORE: TAbmesFloatField
      FieldName = 'DEPT_IS_STORE'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object cdsFork0StagesDEPT_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEPT_BEGIN_DATE'
      ProviderFlags = []
    end
    object cdsFork0StagesDEPT_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEPT_END_DATE'
      ProviderFlags = []
    end
    object cdsFork0StagesTREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'TREATMENT_WORKDAYS'
    end
    object cdsFork0StagesTOTAL_TREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'TOTAL_TREATMENT_WORKDAYS'
    end
    object cdsFork0StagesOUTGOING_WORKDAYS: TAbmesFloatField
      FieldName = 'OUTGOING_WORKDAYS'
    end
    object cdsFork0StagesIS_AUTO_MOVEMENT: TAbmesFloatField
      FieldName = 'IS_AUTO_MOVEMENT'
      FieldValueType = fvtBoolean
    end
    object cdsFork0StagesTREATMENT_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'TREATMENT_BEGIN_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFork0StagesTREATMENT_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'TREATMENT_END_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFork0StagesDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFork0StagesDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFork0StagesHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
      ProviderFlags = []
      DisplayBoolValues = 'i;'
      FieldValueType = fvtBoolean
    end
    object cdsFork0StagesDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'DOC_EMPTINESS_REQUIREMENT_CODE'
    end
    object cdsFork0StagesDOC_IS_COMPLETE: TAbmesFloatField
      FieldName = 'DOC_IS_COMPLETE'
    end
    object cdsFork0StagesUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAPPROVED_ACTIVE_DI_COUNT'
    end
    object cdsFork0StagesOPERATION_COUNT: TAbmesFloatField
      FieldName = 'OPERATION_COUNT'
    end
    object cdsFork0StagesEXTERNAL_WORK_PRICE: TAbmesFloatField
      FieldName = 'EXTERNAL_WORK_PRICE'
    end
  end
  object cdsFork0Operations: TAbmesClientDataSet [43]
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'idxDefault'
        Fields = 
          'X_MLMS_OBJECT_BRANCH_CODE; X_MLMS_OBJECT_CODE; MLMS_OPERATION_NO' +
          '; MLMS_OPERATION_VARIANT_NO'
      end>
    IndexName = 'idxDefault'
    MasterFields = 'X_MLMS_OBJECT_BRANCH_CODE; X_MLMS_OBJECT_CODE'
    MasterSource = dsFork0Stages
    PacketRecords = 0
    Params = <>
    StoreDefs = True
    Left = 659
    Top = 381
    object cdsFork0OperationsX_MLMS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'X_MLMS_OBJECT_BRANCH_CODE'
    end
    object cdsFork0OperationsX_MLMS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'X_MLMS_OBJECT_CODE'
    end
    object cdsFork0OperationsMLMS_OPERATION_NO: TAbmesFloatField
      FieldName = 'MLMS_OPERATION_NO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFork0OperationsMLMS_OPERATION_VARIANT_NO: TAbmesFloatField
      FieldName = 'MLMS_OPERATION_VARIANT_NO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFork0OperationsOPERATION_TYPE_CODE: TAbmesFloatField
      FieldName = 'OPERATION_TYPE_CODE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsFork0OperationsDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object cdsFork0OperationsDEPT_NAME: TAbmesWideStringField
      DisplayLabel = #1054#1073#1086#1089#1086#1073#1077#1085' '#1056#1072#1073#1086#1090#1077#1085' '#1042#1098#1079#1077#1083
      FieldName = 'DEPT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object cdsFork0OperationsDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object cdsFork0OperationsDEPT_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'DEPT_PRODUCT_CODE'
    end
    object cdsFork0OperationsDEPT_PARENT_CODE: TAbmesFloatField
      FieldName = 'DEPT_PARENT_CODE'
      ProviderFlags = []
    end
    object cdsFork0OperationsDEPT_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEPT_BEGIN_DATE'
      ProviderFlags = []
    end
    object cdsFork0OperationsDEPT_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEPT_END_DATE'
      ProviderFlags = []
    end
    object cdsFork0OperationsSETUP_PROFESSION_CODE: TAbmesFloatField
      FieldName = 'SETUP_PROFESSION_CODE'
    end
    object cdsFork0OperationsSETUP_EFFORT_COEF: TAbmesFloatField
      DisplayLabel = #1053#1072#1089#1090#1088#1086#1081#1082#1072' - '#1050#1086#1077#1092#1080#1094#1080#1077#1085#1090' '#1085#1072' '#1048#1085#1090#1077#1085#1079#1080#1090#1077#1090
      FieldName = 'SETUP_EFFORT_COEF'
      DisplayFormat = '0.00'
    end
    object cdsFork0OperationsSETUP_HOUR_TECH_QUANTITY: TAbmesFloatField
      DisplayLabel = #1053#1072#1089#1090#1088#1086#1081#1082#1072' - '#1048#1079#1093#1086#1076#1103#1097#1072' '#1055#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1085#1086#1089#1090
      FieldName = 'SETUP_HOUR_TECH_QUANTITY'
      DisplayFormat = '0.###'
    end
    object cdsFork0OperationsSETUP_COUNT: TAbmesFloatField
      FieldName = 'SETUP_COUNT'
    end
    object cdsFork0OperationsPROFESSION_CODE: TAbmesFloatField
      FieldName = 'PROFESSION_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFork0OperationsEFFORT_COEF: TAbmesFloatField
      DisplayLabel = #1050#1086#1077#1092#1080#1094#1080#1077#1085#1090' '#1085#1072' '#1048#1085#1090#1077#1085#1079#1080#1090#1077#1090
      FieldName = 'EFFORT_COEF'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0.00'
    end
    object cdsFork0OperationsHOUR_TECH_QUANTITY: TAbmesFloatField
      DisplayLabel = #1048#1079#1093#1086#1076#1103#1097#1072' '#1055#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1085#1086#1089#1090
      FieldName = 'HOUR_TECH_QUANTITY'
    end
    object cdsFork0OperationsPROGRAM_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_PRODUCT_CODE'
    end
    object cdsFork0OperationsPROGRAM_TOOL_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PROGRAM_TOOL_PRODUCT_NAME'
      Size = 100
    end
    object cdsFork0OperationsPROGRAM_TOOL_PRODUCT_NO: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_PRODUCT_NO'
    end
    object cdsFork0OperationsSPECIFIC_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_PRODUCT_CODE'
    end
    object cdsFork0OperationsSPECIFIC_TOOL_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'SPECIFIC_TOOL_PRODUCT_NAME'
      Size = 100
    end
    object cdsFork0OperationsSPECIFIC_TOOL_PRODUCT_NO: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_PRODUCT_NO'
    end
    object cdsFork0OperationsTYPICAL_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_PRODUCT_CODE'
    end
    object cdsFork0OperationsTYPICAL_TOOL_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'TYPICAL_TOOL_PRODUCT_NAME'
      Size = 100
    end
    object cdsFork0OperationsTYPICAL_TOOL_PRODUCT_NO: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_PRODUCT_NO'
    end
    object cdsFork0OperationsPROGRAM_TOOL_REQUIREMENT_CODE: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'PROGRAM_TOOL_REQUIREMENT_CODE'
    end
    object cdsFork0OperationsSPECIFIC_TOOL_REQUIREMENT_CODE: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'SPECIFIC_TOOL_REQUIREMENT_CODE'
    end
    object cdsFork0OperationsTYPICAL_TOOL_REQUIREMENT_CODE: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'TYPICAL_TOOL_REQUIREMENT_CODE'
    end
    object cdsFork0OperationsPROGRAM_TOOL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_IS_COMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsFork0OperationsSPECIFIC_TOOL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_IS_COMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsFork0OperationsTYPICAL_TOOL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_IS_COMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsFork0OperationsNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object cdsFork0OperationsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsFork0OperationsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsFork0OperationsHAS_DOCUMENTATION: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'HAS_DOCUMENTATION'
      ProviderFlags = []
      DisplayFormat = '0'
      DisplayBoolValues = 'i;'
      FieldValueType = fvtBoolean
    end
    object cdsFork0OperationsDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'DOC_EMPTINESS_REQUIREMENT_CODE'
    end
    object cdsFork0OperationsDOC_IS_COMPLETE: TAbmesFloatField
      FieldName = 'DOC_IS_COMPLETE'
    end
    object cdsFork0OperationsUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAPPROVED_ACTIVE_DI_COUNT'
    end
    object cdsFork0OperationsSPECIFIC_TOOL_DETAIL_TECH_QTY: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'SPECIFIC_TOOL_DETAIL_TECH_QTY'
      DisplayFormat = ',0.###'
    end
    object cdsFork0OperationsTYPICAL_TOOL_DETAIL_TECH_QTY: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'TYPICAL_TOOL_DETAIL_TECH_QTY'
      DisplayFormat = ',0.###'
    end
    object cdsFork0OperationsTREATMENT_BEGIN_WORKDAY_NO: TAbmesFloatField
      DisplayLabel = #1053#1072#1095#1072#1083#1077#1085' '#1088#1072#1073#1086#1090#1077#1085' '#1076#1077#1085' '#1086#1090' '#1077#1090#1072#1087#1072
      FieldName = 'TREATMENT_BEGIN_WORKDAY_NO'
      ProviderFlags = [pfInUpdate]
      MaxValue = 1000000000.000000000000000000
      MinValue = 1.000000000000000000
      FieldValueType = fvtInteger
    end
    object cdsFork0OperationsTREATMENT_WORKDAYS: TAbmesFloatField
      DisplayLabel = #1055#1088#1086#1076#1098#1083#1078#1080#1090#1077#1083#1085#1086#1089#1090' ('#1088#1072#1073'. '#1076#1085#1080' )'
      FieldName = 'TREATMENT_WORKDAYS'
      ProviderFlags = [pfInUpdate]
      MaxValue = 1000000000.000000000000000000
      MinValue = 1.000000000000000000
      FieldValueType = fvtInteger
    end
    object cdsFork0OperationsTREATMENT_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'TREATMENT_BEGIN_DATE'
    end
    object cdsFork0OperationsTREATMENT_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'TREATMENT_END_DATE'
    end
    object cdsFork0OperationsHAS_SPECIAL_CONTROL: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'HAS_SPECIAL_CONTROL'
      DisplayFormat = '0'
      DisplayBoolValues = '!;'
      FieldValueType = fvtBoolean
    end
    object cdsFork0OperationsD_HOUR_PRICE: TAbmesFloatField
      FieldName = 'D_HOUR_PRICE'
    end
    object cdsFork0OperationsD_MAINTAINANCE_HOUR_PRICE: TAbmesFloatField
      FieldName = 'D_MAINTAINANCE_HOUR_PRICE'
    end
    object cdsFork0OperationsD_PARALLEL_OPERATOR_COUNT: TAbmesFloatField
      FieldName = 'D_PARALLEL_OPERATOR_COUNT'
    end
    object cdsFork0OperationsD_PARALLEL_PROCESS_COUNT: TAbmesFloatField
      FieldName = 'D_PARALLEL_PROCESS_COUNT'
    end
  end
  object dsFork0Stages: TDataSource [44]
    DataSet = cdsFork0Stages
    Left = 628
    Top = 381
  end
  object cdsModelStatusParams: TAbmesClientDataSet [45]
    Aggregates = <>
    Params = <>
    Left = 724
    Top = 365
    object cdsModelStatusParamsML_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsModelStatusParamsML_OBJECT_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsModelStatusParamsMLL_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsModelStatusParamsMLL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  inherited pgdModelTask: TPrintDBGridEh
    Left = 920
    Top = 344
    BeforeGridText_Data = {
      7B5C727466315C616E73695C616E7369637067313235315C64656666305C6465
      666C616E67313032367B5C666F6E7474626C7B5C66305C6673776973735C6670
      7271325C66636861727365743230347B5C2A5C666E616D6520417269616C3B7D
      417269616C204359523B7D7B5C66315C66726F6D616E5C66707271325C666368
      61727365743230347B5C2A5C666E616D652054696D6573204E657720526F6D61
      6E3B7D54696D6573204E657720526F6D616E204359523B7D7B5C66325C666E69
      6C5C66636861727365743230347B5C2A5C666E616D6520417269616C3B7D4172
      69616C204359523B7D7D0D0A5C766965776B696E64345C7563315C706172645C
      747831333138335C747832323235355C6C616E67313033335C625C66305C6673
      323420205C7461625C7461625C6C616E67313032365C7061720D0A5C70617264
      5C747832313738305C747832313936305C6C616E67313033335C756C5C62305C
      66315C7461625C756C6E6F6E655C7461625C7061720D0A5C7061720D0A5C6C61
      6E67313032365C66325C6673323820706C626C5461736B4E616D653A205C6C61
      6E67313033335C625C66733330205441534B5F4E414D455C62305C667332385C
      7061720D0A5C706172645C6C616E67333038315C625C66315C7061720D0A7D0D
      0A00}
  end
  object cdsMllInvestedValues: TAbmesClientDataSet [50]
    Aggregates = <>
    ConnectionBroker = dmMain.conXModels
    Params = <
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvMllInvestedValues'
    BeforeOpen = cdsInvestedValuesBeforeOpen
    Left = 456
    object cdsMllInvestedValuesMLL_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_BRANCH_CODE'
    end
    object cdsMllInvestedValuesMLL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_CODE'
    end
    object cdsMllInvestedValuesPLAN_INVESTED_VALUE_1: TAbmesFloatField
      FieldName = 'PLAN_INVESTED_VALUE_1'
    end
    object cdsMllInvestedValuesPLAN_IV_1_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'PLAN_IV_1_IS_INCOMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsMllInvestedValuesPLAN_INVESTED_VALUE_2: TAbmesFloatField
      FieldName = 'PLAN_INVESTED_VALUE_2'
    end
    object cdsMllInvestedValuesPLAN_IV_2_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'PLAN_IV_2_IS_INCOMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsMllInvestedValuesPLAN_INVESTED_VALUE_3: TAbmesFloatField
      FieldName = 'PLAN_INVESTED_VALUE_3'
    end
    object cdsMllInvestedValuesPLAN_IV_3_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'PLAN_IV_3_IS_INCOMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsMllInvestedValuesPLAN_INVESTED_VALUE_4: TAbmesFloatField
      FieldName = 'PLAN_INVESTED_VALUE_4'
    end
    object cdsMllInvestedValuesPLAN_IV_4_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'PLAN_IV_4_IS_INCOMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsMllInvestedValuesPLAN_INVESTED_VALUE_5: TAbmesFloatField
      FieldName = 'PLAN_INVESTED_VALUE_5'
    end
    object cdsMllInvestedValuesPLAN_IV_5_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'PLAN_IV_5_IS_INCOMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsMllInvestedValuesREAL_INVESTED_VALUE_1: TAbmesFloatField
      FieldName = 'REAL_INVESTED_VALUE_1'
    end
    object cdsMllInvestedValuesREAL_IV_1_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'REAL_IV_1_IS_INCOMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsMllInvestedValuesREAL_INVESTED_VALUE_2: TAbmesFloatField
      FieldName = 'REAL_INVESTED_VALUE_2'
    end
    object cdsMllInvestedValuesREAL_IV_2_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'REAL_IV_2_IS_INCOMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsMllInvestedValuesREAL_INVESTED_VALUE_3: TAbmesFloatField
      FieldName = 'REAL_INVESTED_VALUE_3'
    end
    object cdsMllInvestedValuesREAL_IV_3_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'REAL_IV_3_IS_INCOMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsMllInvestedValuesREAL_INVESTED_VALUE_4: TAbmesFloatField
      FieldName = 'REAL_INVESTED_VALUE_4'
    end
    object cdsMllInvestedValuesREAL_IV_4_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'REAL_IV_4_IS_INCOMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsMllInvestedValuesREAL_INVESTED_VALUE_5: TAbmesFloatField
      FieldName = 'REAL_INVESTED_VALUE_5'
    end
    object cdsMllInvestedValuesREAL_IV_5_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'REAL_IV_5_IS_INCOMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsMllInvestedValuesWASTE_INVESTED_VALUE_1: TAbmesFloatField
      FieldName = 'WASTE_INVESTED_VALUE_1'
    end
    object cdsMllInvestedValuesWASTE_IV_1_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'WASTE_IV_1_IS_INCOMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsMllInvestedValuesWASTE_INVESTED_VALUE_2: TAbmesFloatField
      FieldName = 'WASTE_INVESTED_VALUE_2'
    end
    object cdsMllInvestedValuesWASTE_IV_2_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'WASTE_IV_2_IS_INCOMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsMllInvestedValuesWASTE_INVESTED_VALUE_3: TAbmesFloatField
      FieldName = 'WASTE_INVESTED_VALUE_3'
    end
    object cdsMllInvestedValuesWASTE_IV_3_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'WASTE_IV_3_IS_INCOMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsMllInvestedValuesWASTE_INVESTED_VALUE_4: TAbmesFloatField
      FieldName = 'WASTE_INVESTED_VALUE_4'
    end
    object cdsMllInvestedValuesWASTE_IV_4_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'WASTE_IV_4_IS_INCOMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsMllInvestedValuesWASTE_INVESTED_VALUE_5: TAbmesFloatField
      FieldName = 'WASTE_INVESTED_VALUE_5'
    end
    object cdsMllInvestedValuesWASTE_IV_5_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'WASTE_IV_5_IS_INCOMPLETE'
      FieldValueType = fvtBoolean
    end
  end
  object cdsMlmsInvestedValues: TAbmesClientDataSet [51]
    Aggregates = <>
    ConnectionBroker = dmMain.conXModels
    Params = <
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvMlmsInvestedValues'
    BeforeOpen = cdsInvestedValuesBeforeOpen
    Left = 488
    object cdsMlmsInvestedValuesMLMS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLMS_OBJECT_BRANCH_CODE'
    end
    object cdsMlmsInvestedValuesMLMS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLMS_OBJECT_CODE'
    end
    object cdsMlmsInvestedValuesPLAN_INVESTED_VALUE_2: TAbmesFloatField
      FieldName = 'PLAN_INVESTED_VALUE_2'
    end
    object cdsMlmsInvestedValuesPLAN_IV_2_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'PLAN_IV_2_IS_INCOMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsMlmsInvestedValuesREAL_INVESTED_VALUE_2: TAbmesFloatField
      FieldName = 'REAL_INVESTED_VALUE_2'
    end
    object cdsMlmsInvestedValuesREAL_IV_2_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'REAL_IV_2_IS_INCOMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsMlmsInvestedValuesWASTE_INVESTED_VALUE_2: TAbmesFloatField
      FieldName = 'WASTE_INVESTED_VALUE_2'
    end
    object cdsMlmsInvestedValuesWASTE_IV_2_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'WASTE_IV_2_IS_INCOMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsMlmsInvestedValuesPLAN_INVESTED_VALUE_3: TAbmesFloatField
      FieldName = 'PLAN_INVESTED_VALUE_3'
    end
    object cdsMlmsInvestedValuesPLAN_IV_3_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'PLAN_IV_3_IS_INCOMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsMlmsInvestedValuesREAL_INVESTED_VALUE_3: TAbmesFloatField
      FieldName = 'REAL_INVESTED_VALUE_3'
    end
    object cdsMlmsInvestedValuesREAL_IV_3_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'REAL_IV_3_IS_INCOMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsMlmsInvestedValuesWASTE_INVESTED_VALUE_3: TAbmesFloatField
      FieldName = 'WASTE_INVESTED_VALUE_3'
    end
    object cdsMlmsInvestedValuesWASTE_IV_3_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'WASTE_IV_3_IS_INCOMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsMlmsInvestedValuesPLAN_INVESTED_VALUE_4: TAbmesFloatField
      FieldName = 'PLAN_INVESTED_VALUE_4'
    end
    object cdsMlmsInvestedValuesPLAN_IV_4_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'PLAN_IV_4_IS_INCOMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsMlmsInvestedValuesREAL_INVESTED_VALUE_4: TAbmesFloatField
      FieldName = 'REAL_INVESTED_VALUE_4'
    end
    object cdsMlmsInvestedValuesREAL_IV_4_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'REAL_IV_4_IS_INCOMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsMlmsInvestedValuesWASTE_INVESTED_VALUE_4: TAbmesFloatField
      FieldName = 'WASTE_INVESTED_VALUE_4'
    end
    object cdsMlmsInvestedValuesWASTE_IV_4_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'WASTE_IV_4_IS_INCOMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsMlmsInvestedValuesPLAN_INVESTED_VALUE_5: TAbmesFloatField
      FieldName = 'PLAN_INVESTED_VALUE_5'
    end
    object cdsMlmsInvestedValuesPLAN_IV_5_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'PLAN_IV_5_IS_INCOMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsMlmsInvestedValuesREAL_INVESTED_VALUE_5: TAbmesFloatField
      FieldName = 'REAL_INVESTED_VALUE_5'
    end
    object cdsMlmsInvestedValuesREAL_IV_5_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'REAL_IV_5_IS_INCOMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsMlmsInvestedValuesWASTE_INVESTED_VALUE_5: TAbmesFloatField
      FieldName = 'WASTE_INVESTED_VALUE_5'
    end
    object cdsMlmsInvestedValuesWASTE_IV_5_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'WASTE_IV_5_IS_INCOMPLETE'
      FieldValueType = fvtBoolean
    end
  end
  inherited pgdModelRecursive: TPrintDBGridEh
    Left = 920
    Top = 312
    BeforeGridText_Data = {
      7B5C727466315C616E73695C616E7369637067313235315C64656666305C6465
      666C616E67313032367B5C666F6E7474626C7B5C66305C66726F6D616E5C6670
      7271325C66636861727365743230347B5C2A5C666E616D652054696D6573204E
      657720526F6D616E3B7D54696D6573204E657720526F6D616E204359523B7D7B
      5C66315C666E696C5C66636861727365743230347B5C2A5C666E616D65204172
      69616C3B7D417269616C204359523B7D7B5C66325C666E696C5C66707271325C
      6663686172736574323034204D532053616E732053657269663B7D7D0D0A7B5C
      636F6C6F7274626C203B5C7265643139325C677265656E3139325C626C756531
      39323B7D0D0A5C766965776B696E64345C7563315C706172645C756C5C625C66
      305C667333365C7061720D0A5C756C6E6F6E655C66315C6673323820706C626C
      44657461696C5374727563745C62305C6673323020205C6C616E673130333320
      2020205C6C616E673130323620706C626C4E6F4173546578745C6C616E673130
      333320205C686967686C696768743120204E4F5F41535F54455854205C686967
      686C696768743020205C6C616E673130323620706C626C44657461696C4E616D
      65205C686967686C69676874315C6C616E6731303333202044455441494C5F4E
      414D45205C686967686C696768743020205C6C616E673130323620706C626C44
      657461696C4E6F205C686967686C69676874315C6C616E673130333320204445
      5441494C5F4E4F205C686967686C69676874305C6C616E67313032365C667331
      365C7061720D0A5C66325C7061720D0A5C6C616E67333038315C625C66305C66
      7332385C7061720D0A7D0D0A00}
  end
  inherited pgdInvestedValues: TPrintDBGridEh
    Left = 920
    Top = 472
    BeforeGridText_Data = {
      7B5C727466315C616E73695C616E7369637067313235315C64656666305C6465
      666C616E67313032367B5C666F6E7474626C7B5C66305C6673776973735C6670
      7271325C66636861727365743230347B5C2A5C666E616D6520417269616C3B7D
      417269616C204359523B7D7D0D0A7B5C636F6C6F7274626C203B5C7265643139
      325C677265656E3139325C626C75653139323B7D0D0A5C766965776B696E6434
      5C7563315C706172645C6E6F77696463746C7061725C7478353832325C747837
      3234325C7478383934365C7478393934305C747831313231385C747831323633
      385C747831353136385C747832303639365C6C616E67313034395C66305C6673
      32385C7461625C6C616E67313032365C695C6673323020706C626C4D4C537461
      7465436F64655C69305C7461625C6C616E67313033335C6920706C626C49445C
      6C616E67313034395C69305C7461625C6C616E67313032365C6920706C626C50
      72696F726974795C69305C7461625C6920706C626C576F726B5072696F726974
      795C6C616E67313034395C69305C7461625C6C616E67313032365C6920706C62
      6C49735761737465436F6D70656E736174696E674F726465725C69305C746162
      5C6920706C626C4861735761737465436F6D70656E7361746F72735C7061720D
      0A5C625C69305C6673323820706C626C584D6F64656C73496E76657374656456
      616C7565735C62305C667332305C7461625C686967686C69676874315C6C616E
      67313033335C6220204D4C5C6C616E6732303537205F5C6C616E673130333320
      53544154455C6C616E6732303537205F5C6C616E673130333320434F44455C6C
      616E673130323620205C686967686C69676874305C62305C7461625C68696768
      6C69676874315C6C616E67313033335C622020505C6C616E6732303537205F5C
      6C616E6731303333204F5C6C616E6732303537205F5C6C616E67313033332054
      5C6C616E6732303537205F5C6C616E673130333320415C6C616E673230353720
      2F5C6C616E673130333320535C6C616E6732303537205F5C6C616E6731303333
      20425C6C616E6732303537205F5C6C616E6731303333204E4F5C6C616E673230
      3537202F5C6C616E67313033332053414C455F4E4F2F535F545F415C6C616E67
      3130323620205C686967686C69676874305C62305C7461625C686967686C6967
      6874315C6220205C6C616E6731303333205052494F524954595F4E4F5C6C616E
      673130323620205C686967686C69676874305C62305C7461625C686967686C69
      676874315C6220205C6C616E673130333320574F524B5F5052494F524954595F
      4E4F5C6C616E673130323620205C686967686C69676874305C62305C7461625C
      686967686C69676874315C6C616E67313033335C62202049535F57415354455F
      434F4D50454E534154494E475F4F524445525C6C616E673130323620205C6869
      67686C69676874305C6C616E67323035375C62305C7461625C686967686C6967
      6874315C6C616E67313033335C6220204841535F57415354455F434F4D50454E
      5341544F52535C6C616E673130323620205C686967686C69676874305C6C616E
      67323035375C7461625C62305C7061720D0A5C706172645C6E6F77696463746C
      7061725C747831373634305C747832303639365C6C616E67313032365C667331
      325C7061720D0A5C706172645C6E6F77696463746C7061725C7478363533325C
      7478373636385C7478393531345C747831313336305C747831323439365C695C
      6673323020706C626C526573756C7450726F647563745C69305C7461625C6920
      706C626C537472756374436F65665C74616220706C626C576F726B5175616E74
      6974795C7461625C74616220706C626C526573756C7453746F72655C74616220
      706C626C53746F726544617465496E74657276616C5C7061720D0A5C68696768
      6C69676874315C625C69305C6673323820205C6C616E67313033335C66733230
      20524553554C545F50524F445543545C6C616E6731303236205F4E414D45205C
      686967686C696768743020205C686967686C696768743120205C6C616E673130
      333320524553554C545C6C616E6731303236205F50524F445543545F4E4F205C
      686967686C69676874305C7461625C686967686C69676874315C6C616E673130
      333320205354525543545F434F45465C6C616E673130323620205C686967686C
      69676874305C7461625C686967686C69676874315C6C616E6731303333202051
      55414E544954595C6C616E673130323620205C686967686C69676874305C6C61
      6E673130333320205C6230205F524553554C545F50524F445543545F4D454153
      5552455F4142425245565C6C616E67313032365C625C7461625C7461625C6869
      67686C69676874315C6C616E67313033332020524553554C545F53544F52455F
      4944454E5449464945525C6C616E673130323620205C686967686C6967687430
      5C7461625C686967686C69676874315C6C616E6731303333202053544F52455F
      444154455F494E54455256414C5C6C616E673130323620205C686967686C6967
      6874305C7461625C62305C695C7061720D0A5C706172645C6E6F77696463746C
      7061725C667331325C7061720D0A5C706172645C6E6F77696463746C7061725C
      7478343235335C7478363233375C7478393439385C747831313334305C747831
      323738305C6673323020706C626C436F6D70616E7950726F647563744E616D65
      735C74616220706C626C4D61696E446570745C74616220706C626C4F776E6572
      456D706C6F7965654E616D655C6C616E67313034395C7461625C6C616E673130
      323620706C626C496E76657374656456616C75655174795C74616220706C626C
      496E76657374656456616C7565547970655C74616220706C626C546F74616C49
      6E76657374656456616C75655C686967686C69676874315C6C616E6731303439
      5C7061720D0A5C6C616E67323035375C69305C6673323820205C6C616E673130
      33335C625C6673323020434F4D50414E595F50524F445543545F5C6C616E6731
      303236204E414D455C6C616E673130333320535C6C616E673130323620205C68
      6967686C69676874305C7461625C686967686C696768743120205C6C616E6731
      303333204D41494E5F444550545F4944454E5449464945525C6C616E67313032
      3620205C686967686C69676874305C6C616E67323035375C667332385C746162
      5C686967686C69676874315C6673323020205C6C616E6731303333205F4F574E
      45525F454D504C4F5945455C6C616E6731303236205F4E414D45205C68696768
      6C69676874305C7461625C686967686C69676874315C6C616E67313033332020
      494E5645535445445F56414C55455F515459205C686967686C69676874302020
      5C623020494E5645535445445F56414C55455F4D4541535552455F4142425245
      565C625C7461625C686967686C69676874312020494E5645535445445F56414C
      55455F54595045205C686967686C69676874305C6C616E67313032365C746162
      5C686967686C69676874315C6C616E67313033332020544F54414C5F494E5645
      535445445F56414C5545205C686967686C69676874305C6C616E673130323620
      205C6C616E67313033335C623020494E5645535445445F56414C55455F435552
      52454E43595F4142425245565C7461625C6C616E67313032365C695C7061720D
      0A5C706172645C6C616E67313034395C69305C667332385C7061720D0A7D0D0A
      00}
  end
  object cdsML: TAbmesClientDataSet [54]
    Aggregates = <>
    Params = <>
    Left = 800
    Top = 184
    object cdsMLML_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_BRANCH_CODE'
    end
    object cdsMLML_OBJECT_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_CODE'
    end
  end
  object cdsWasteCompensatorsParams: TAbmesClientDataSet [55]
    Aggregates = <>
    Params = <>
    Left = 833
    Top = 183
    object cdsWasteCompensatorsParamsIS_WASTE_COMPENSATOR_STATUS: TAbmesFloatField
      FieldName = 'IS_WASTE_COMPENSATOR_STATUS'
    end
    object cdsWasteCompensatorsParamsWASTING_SALE_BRANCH_CODE: TAbmesFloatField
      FieldName = 'WASTING_SALE_BRANCH_CODE'
    end
    object cdsWasteCompensatorsParamsWASTING_SALE_NO: TAbmesFloatField
      FieldName = 'WASTING_SALE_NO'
    end
    object cdsWasteCompensatorsParamsMIN_ML_STATE_CODE: TAbmesFloatField
      FieldName = 'MIN_ML_STATE_CODE'
    end
    object cdsWasteCompensatorsParamsMAX_ML_STATE_CODE: TAbmesFloatField
      FieldName = 'MAX_ML_STATE_CODE'
    end
  end
  object cdsEmployees: TAbmesClientDataSet [56]
    Aggregates = <>
    ConnectionBroker = dmMain.conHumanResource
    Params = <>
    ProviderName = 'prvEmployees'
    Left = 768
    Top = 184
    object cdsEmployeesEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsEmployeesEMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'EMPLOYEE_NAME'
      ProviderFlags = []
      Size = 44
    end
    object cdsEmployeesEMPLOYEE_NO: TAbmesFloatField
      FieldName = 'EMPLOYEE_NO'
    end
  end
  object cdsStructurePrintHeader: TAbmesClientDataSet [60]
    Aggregates = <>
    Params = <>
    Left = 432
    Top = 424
    object cdsStructurePrintHeaderML_STATE: TAbmesWideStringField
      FieldName = 'ML_STATE'
    end
    object cdsStructurePrintHeaderSALE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'SALE_IDENTIFIER'
    end
    object cdsStructurePrintHeaderPRIORITY_NO: TAbmesFloatField
      FieldName = 'PRIORITY_NO'
    end
    object cdsStructurePrintHeaderWORK_PRIORITY_NO: TAbmesFloatField
      FieldName = 'WORK_PRIORITY_NO'
    end
    object cdsStructurePrintHeaderHAS_WASTE_COMPENSATORS: TAbmesFloatField
      FieldName = 'HAS_WASTE_COMPENSATORS'
      DisplayBoolValues = #1048#1084#1072';'#1053#1103#1084#1072
      FieldValueType = fvtBoolean
    end
    object cdsStructurePrintHeaderRESULT_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'RESULT_PRODUCT_NAME'
      Size = 100
    end
    object cdsStructurePrintHeaderRESULT_PRODUCT_NO: TAbmesFloatField
      FieldName = 'RESULT_PRODUCT_NO'
    end
    object cdsStructurePrintHeaderSALE_MANUFACTURE_QUANTITY: TAbmesFloatField
      FieldName = 'SALE_MANUFACTURE_QUANTITY'
    end
    object cdsStructurePrintHeaderSALE_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'SALE_MEASURE_ABBREV'
      Size = 5
    end
    object cdsStructurePrintHeaderRESULT_STORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'RESULT_STORE_IDENTIFIER'
    end
    object cdsStructurePrintHeaderSTORE_DATE_INTERVAL: TAbmesWideStringField
      FieldName = 'STORE_DATE_INTERVAL'
      Size = 50
    end
    object cdsStructurePrintHeaderCOMPANY_PRODUCT_NAMES: TAbmesWideStringField
      FieldName = 'COMPANY_PRODUCT_NAMES'
      Size = 250
    end
    object cdsStructurePrintHeaderMAIN_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'MAIN_DEPT_IDENTIFIER'
      Size = 50
    end
    object cdsStructurePrintHeader_OWNER_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = '_OWNER_EMPLOYEE_NAME'
      Size = 100
    end
    object cdsStructurePrintHeaderINVESTED_VALUE_QUANTITY: TAbmesWideStringField
      FieldName = 'INVESTED_VALUE_QUANTITY'
      Size = 50
    end
    object cdsStructurePrintHeaderINVESTED_VALUE_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'INVESTED_VALUE_MEASURE_ABBREV'
      Size = 5
    end
    object cdsStructurePrintHeaderINVESTED_VALUE_TYPE: TAbmesWideStringField
      FieldName = 'INVESTED_VALUE_TYPE'
    end
    object cdsStructurePrintHeaderTOTAL_INVESTED_VALUE: TAbmesWideStringField
      FieldName = 'TOTAL_INVESTED_VALUE'
      Size = 50
    end
    object cdsStructurePrintHeaderINVESTED_VALUE_CURRENCY_ABBREV: TAbmesWideStringField
      FieldName = 'INVESTED_VALUE_CURRENCY_ABBREV'
      Size = 5
    end
    object cdsStructurePrintHeader_IS_WASTE_COMPENSATING_ORDER: TAbmesWideStringField
      FieldName = '_IS_WASTE_COMPENSATING_ORDER'
      Size = 5
    end
    object cdsStructurePrintHeaderTECH_QUANTITY: TAbmesFloatField
      FieldName = 'TECH_QUANTITY'
    end
    object cdsStructurePrintHeader_RESULT_PRODUCT_TECH_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = '_RESULT_PRODUCT_TECH_MEASURE_ABBREV'
      Size = 5
    end
  end
  object cdsMlmsoInvestedValues: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conXModels
    Params = <
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLMS_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLMS_OBJECT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvMlmsoInvestedValues'
    BeforeOpen = cdsMlmsoInvestedValuesBeforeOpen
    Left = 520
    object cdsMlmsoInvestedValuesMLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLMSO_OBJECT_BRANCH_CODE'
    end
    object cdsMlmsoInvestedValuesMLMSO_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLMSO_OBJECT_CODE'
    end
    object cdsMlmsoInvestedValuesPLAN_SETUP_INVESTED_VALUE_2: TAbmesFloatField
      FieldName = 'PLAN_SETUP_INVESTED_VALUE_2'
    end
    object cdsMlmsoInvestedValuesPLAN_SETUP_IV_2_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'PLAN_SETUP_IV_2_IS_INCOMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsMlmsoInvestedValuesPLAN_INVESTED_VALUE_2: TAbmesFloatField
      FieldName = 'PLAN_INVESTED_VALUE_2'
    end
    object cdsMlmsoInvestedValuesPLAN_IV_2_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'PLAN_IV_2_IS_INCOMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsMlmsoInvestedValuesREAL_SETUP_INVESTED_VALUE_2: TAbmesFloatField
      FieldName = 'REAL_SETUP_INVESTED_VALUE_2'
    end
    object cdsMlmsoInvestedValuesREAL_SETUP_IV_2_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'REAL_SETUP_IV_2_IS_INCOMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsMlmsoInvestedValuesREAL_INVESTED_VALUE_2: TAbmesFloatField
      FieldName = 'REAL_INVESTED_VALUE_2'
    end
    object cdsMlmsoInvestedValuesREAL_IV_2_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'REAL_IV_2_IS_INCOMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsMlmsoInvestedValuesWASTE_SETUP_INVESTED_VALUE_2: TAbmesFloatField
      FieldName = 'WASTE_SETUP_INVESTED_VALUE_2'
    end
    object cdsMlmsoInvestedValuesWASTE_SETUP_IV_2_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'WASTE_SETUP_IV_2_IS_INCOMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsMlmsoInvestedValuesWASTE_INVESTED_VALUE_2: TAbmesFloatField
      FieldName = 'WASTE_INVESTED_VALUE_2'
    end
    object cdsMlmsoInvestedValuesWASTE_IV_2_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'WASTE_IV_2_IS_INCOMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsMlmsoInvestedValuesPLAN_SETUP_INVESTED_VALUE_3: TAbmesFloatField
      FieldName = 'PLAN_SETUP_INVESTED_VALUE_3'
    end
    object cdsMlmsoInvestedValuesPLAN_SETUP_IV_3_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'PLAN_SETUP_IV_3_IS_INCOMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsMlmsoInvestedValuesPLAN_INVESTED_VALUE_3: TAbmesFloatField
      FieldName = 'PLAN_INVESTED_VALUE_3'
    end
    object cdsMlmsoInvestedValuesPLAN_IV_3_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'PLAN_IV_3_IS_INCOMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsMlmsoInvestedValuesREAL_SETUP_INVESTED_VALUE_3: TAbmesFloatField
      FieldName = 'REAL_SETUP_INVESTED_VALUE_3'
    end
    object cdsMlmsoInvestedValuesREAL_SETUP_IV_3_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'REAL_SETUP_IV_3_IS_INCOMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsMlmsoInvestedValuesREAL_INVESTED_VALUE_3: TAbmesFloatField
      FieldName = 'REAL_INVESTED_VALUE_3'
    end
    object cdsMlmsoInvestedValuesREAL_IV_3_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'REAL_IV_3_IS_INCOMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsMlmsoInvestedValuesWASTE_SETUP_INVESTED_VALUE_3: TAbmesFloatField
      FieldName = 'WASTE_SETUP_INVESTED_VALUE_3'
    end
    object cdsMlmsoInvestedValuesWASTE_SETUP_IV_3_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'WASTE_SETUP_IV_3_IS_INCOMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsMlmsoInvestedValuesWASTE_INVESTED_VALUE_3: TAbmesFloatField
      FieldName = 'WASTE_INVESTED_VALUE_3'
    end
    object cdsMlmsoInvestedValuesWASTE_IV_3_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'WASTE_IV_3_IS_INCOMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsMlmsoInvestedValuesPLAN_SETUP_INVESTED_VALUE_4: TAbmesFloatField
      FieldName = 'PLAN_SETUP_INVESTED_VALUE_4'
    end
    object cdsMlmsoInvestedValuesPLAN_SETUP_IV_4_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'PLAN_SETUP_IV_4_IS_INCOMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsMlmsoInvestedValuesPLAN_INVESTED_VALUE_4: TAbmesFloatField
      FieldName = 'PLAN_INVESTED_VALUE_4'
    end
    object cdsMlmsoInvestedValuesPLAN_IV_4_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'PLAN_IV_4_IS_INCOMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsMlmsoInvestedValuesREAL_SETUP_INVESTED_VALUE_4: TAbmesFloatField
      FieldName = 'REAL_SETUP_INVESTED_VALUE_4'
    end
    object cdsMlmsoInvestedValuesREAL_SETUP_IV_4_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'REAL_SETUP_IV_4_IS_INCOMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsMlmsoInvestedValuesREAL_INVESTED_VALUE_4: TAbmesFloatField
      FieldName = 'REAL_INVESTED_VALUE_4'
    end
    object cdsMlmsoInvestedValuesREAL_IV_4_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'REAL_IV_4_IS_INCOMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsMlmsoInvestedValuesWASTE_SETUP_INVESTED_VALUE_4: TAbmesFloatField
      FieldName = 'WASTE_SETUP_INVESTED_VALUE_4'
    end
    object cdsMlmsoInvestedValuesWASTE_SETUP_IV_4_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'WASTE_SETUP_IV_4_IS_INCOMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsMlmsoInvestedValuesWASTE_INVESTED_VALUE_4: TAbmesFloatField
      FieldName = 'WASTE_INVESTED_VALUE_4'
    end
    object cdsMlmsoInvestedValuesWASTE_IV_4_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'WASTE_IV_4_IS_INCOMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsMlmsoInvestedValuesPLAN_SETUP_INVESTED_VALUE_5: TAbmesFloatField
      FieldName = 'PLAN_SETUP_INVESTED_VALUE_5'
    end
    object cdsMlmsoInvestedValuesPLAN_SETUP_IV_5_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'PLAN_SETUP_IV_5_IS_INCOMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsMlmsoInvestedValuesPLAN_INVESTED_VALUE_5: TAbmesFloatField
      FieldName = 'PLAN_INVESTED_VALUE_5'
    end
    object cdsMlmsoInvestedValuesPLAN_IV_5_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'PLAN_IV_5_IS_INCOMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsMlmsoInvestedValuesREAL_SETUP_INVESTED_VALUE_5: TAbmesFloatField
      FieldName = 'REAL_SETUP_INVESTED_VALUE_5'
    end
    object cdsMlmsoInvestedValuesREAL_SETUP_IV_5_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'REAL_SETUP_IV_5_IS_INCOMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsMlmsoInvestedValuesREAL_INVESTED_VALUE_5: TAbmesFloatField
      FieldName = 'REAL_INVESTED_VALUE_5'
    end
    object cdsMlmsoInvestedValuesREAL_IV_5_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'REAL_IV_5_IS_INCOMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsMlmsoInvestedValuesWASTE_SETUP_INVESTED_VALUE_5: TAbmesFloatField
      FieldName = 'WASTE_SETUP_INVESTED_VALUE_5'
    end
    object cdsMlmsoInvestedValuesWASTE_SETUP_IV_5_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'WASTE_SETUP_IV_5_IS_INCOMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsMlmsoInvestedValuesWASTE_INVESTED_VALUE_5: TAbmesFloatField
      FieldName = 'WASTE_INVESTED_VALUE_5'
    end
    object cdsMlmsoInvestedValuesWASTE_IV_5_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'WASTE_IV_5_IS_INCOMPLETE'
      FieldValueType = fvtBoolean
    end
  end
  object cdsWastingSaleParams: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 720
    Top = 224
    object cdsWastingSaleParamsSALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_BRANCH_CODE'
    end
    object cdsWastingSaleParamsSALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_CODE'
    end
  end
end
