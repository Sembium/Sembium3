inherited fmDisciplineEvents: TfmDisciplineEvents
  Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1048#1079#1074#1098#1085#1088#1077#1076#1085#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103' '#1074' '#1056#1072#1073#1086#1090#1085#1086' '#1055#1086#1074#1077#1076#1077#1085#1080#1077
  ClientHeight = 513
  ClientWidth = 1019
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 478
    Width = 1019
    inherited pnlOKCancel: TPanel
      Left = 751
      TabOrder = 2
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 662
      TabOrder = 1
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 930
      TabOrder = 3
      Visible = False
    end
    object btnEditDetailRecord: TBitBtn
      Left = 8
      Top = 2
      Width = 129
      Height = 25
      Action = actEditDetailRecord
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077'...'
      DoubleBuffered = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
        0000FF00FF000000000000000000000000000000000000000000FFFFFF00FFFF
        FF0000000000FFFFFF000000000000000000FFFFFF0000000000FFFF00000000
        00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF00000000
        000000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFF00000000
        0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
        0000FFFFFF000000000000000000FFFFFF00FFFFFF0000000000FFFF00000000
        000000FFFF00FFFFFF0000FFFF00FFFFFF000000000000000000000000000000
        00000000000000FFFF0000000000FFFFFF00FFFFFF0000000000FFFF00000000
        0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
        FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFF00000000
        000000FFFF00FFFFFF0000000000000000000000000000000000000000000000
        000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
        00000000000000FFFF00FFFFFF0000FFFF00000000000000000000FFFF000000
        0000FFFFFF00FFFFFF000000000000000000FFFFFF0000000000FF00FF00FF00
        FF00FF00FF000000000000000000000000000000000000FFFF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000000000000FFFF0000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF000000000000FFFF0000000000FFFFFF00FFFFFF000000
        000000000000FFFFFF0000000000FFFFFF00FFFFFF0000000000FF00FF00FF00
        FF00FF00FF000000000000FFFF000000000000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00
        FF00000000000000FF0000000000FF00FF0000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FF00FF00FF00FF000000000000000000000000000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00}
      ParentDoubleBuffered = False
      Spacing = -1
      TabOrder = 0
    end
  end
  inherited pnlMain: TPanel
    Width = 1019
    Height = 478
    inherited sptDetail: TSplitter
      Top = 223
      Width = 1003
    end
    inherited pnlDetailGrid: TPanel
      Top = 226
      Width = 1003
      Height = 244
      TabOrder = 2
      inherited pnlDetailNavigator: TPanel
        Width = 1003
        inherited navDetail: TDBColorNavigator
          Width = 120
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbEdit]
          Hints.Strings = ()
        end
        inherited tlbDetailGridButtons: TToolBar
          Left = 120
        end
        object tlbDisciplineEventDocs: TToolBar
          Left = 152
          Top = 0
          Width = 88
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 36
          Caption = 'tlbDocs'
          Images = dmMain.ilDocs
          ParentShowHint = False
          ShowHint = False
          TabOrder = 2
          object sepDisciplineEventDocs: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'sepDisciplineEventTypeDocs'
            ImageIndex = 2
            Style = tbsSeparator
          end
          object pnlDisciplineEventDocs: TPanel
            Left = 8
            Top = 0
            Width = 44
            Height = 24
            Align = alLeft
            BevelOuter = bvNone
            Caption = #1048#1054#1056#1055#1074
            TabOrder = 0
          end
          object btnDisciplineEventDocs: TToolButton
            Left = 52
            Top = 0
            Action = actDisciplineEventDocs
          end
        end
        object tlbEmployeeDocs: TToolBar
          Left = 240
          Top = 0
          Width = 101
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 36
          Caption = 'tlbDocs'
          Images = dmMain.ilDocs
          ParentShowHint = False
          ShowHint = False
          TabOrder = 3
          object sepEmployeeDocs: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'sepDisciplineEventTypeDocs'
            ImageIndex = 2
            Style = tbsSeparator
          end
          object pnlEmployeeDocs: TPanel
            Left = 8
            Top = 0
            Width = 57
            Height = 24
            Align = alLeft
            BevelOuter = bvNone
            Caption = #1057#1083#1091#1078#1080#1090#1077#1083
            TabOrder = 0
          end
          object btnEmployeeDocs: TToolButton
            Left = 65
            Top = 0
            Action = actEmployeeDocs
          end
        end
        object pnlDetailsCaption: TPanel
          Left = 341
          Top = 0
          Width = 638
          Height = 24
          Align = alClient
          BevelOuter = bvNone
          Caption = #1048#1079#1074#1098#1085#1088#1077#1076#1085#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103' '#1074' '#1056#1072#1073#1086#1090#1085#1086' '#1055#1086#1074#1077#1076#1077#1085#1080#1077
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object tlbDetails: TToolBar
          Left = 979
          Top = 0
          Width = 24
          Height = 24
          Align = alRight
          AutoSize = True
          ButtonHeight = 24
          Caption = 'tlbDetails'
          TabOrder = 5
          DesignSize = (
            24
            24)
          object btnExtendedDetailInfo: TSpeedButton
            Left = 0
            Top = 0
            Width = 24
            Height = 24
            Action = actExtendedDetailInfo
            AllowAllUp = True
            Anchors = [akTop, akRight, akBottom]
            GroupIndex = 1
            Flat = True
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00F8C4
              B000F8C4B000F8C5B100F8C5B100F8C5B100F8C5B100F8C5B100F8C5B100F8C5
              B100F8C4B000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00F6AB9000F6B1
              9700F6B49B00F6B69D00F6B59C00F6B59C00F6B69D00F6B59C00F6B59C00F6B6
              9D00F6B39A00F6AB9000FF00FF00FF00FF00FF00FF00FF00FF00F3957100F49E
              7E00F5A48700F5A78900F5A68900F5A68900F5A78900F5A68900F5A68900F5A7
              8900F4A28400F3947100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00DA8F
              7300F3957200F4957200F3957200F3957200F4957200F3957200F3957200F495
              7200DA8F7300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00BB9D9300BAABAA00BAABAA00BB9D9300FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF0099B8C60083BED5008AD5EE0098D9F0008FC1D60099B8C600FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF0077C9EC0089D8EE0092DAEF009CDDF100A5E0F20081D0ED00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF0090B4C60077C8EB0089D7EE0092DAEF009CDDF100A5E0F20083D4EE0090B4
              C600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF007B8890007A94A0007F98A0008198A1008499A100869AA1007C95A0007B88
              9000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00969899006F75790073797D00747A7E00747B7F0073797D006F7579009698
              990042A5FF004AA9FF00FF00FF0058B1FF0060B5FF0067B9FF00FF00FF00FF00
              FF00FF00FF00777C80006A6F73006D7276006D7276006A6F7300777C80003BA1
              FF0042A5FF004AA9FF00FF00FF0058B1FF0060B5FF0067B9FF00FF00FF00FF00
              FF00FF00FF00FF00FF0093979A006F7478006F74780093979A00FF00FF003BA1
              FF0042A5FF004AA9FF00FF00FF0058B1FF0060B5FF0067B9FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00339C
              FF002C98FF002594FF00FF00FF00168CFF000E88FF000784FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00339C
              FF002C98FF002594FF00FF00FF00168CFF000E88FF000784FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00339C
              FF002C98FF002594FF00FF00FF00168CFF000E88FF000784FF00}
            Transparent = False
          end
        end
      end
      inherited grdDetail: TAbmesDBGrid
        Width = 1003
        Height = 220
        HorzScrollBar.Visible = False
        UseMultiTitle = True
        VertScrollBar.VisibleMode = sbAlwaysShowEh
        VTitleMargin = 5
        Columns = <
          item
            Alignment = taLeftJustify
            EditButtons = <>
            FieldName = 'DISC_EVENT_STATUS_CODE'
            Footers = <>
            Title.Caption = #1057#1090#1072#1090#1091#1089
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'DISCIPLINE_EVENT_DATE'
            Footers = <>
            Title.Caption = #1044#1072#1090#1072
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'DISCIPLINE_EVENT_RATING'
            Footers = <>
            Title.Caption = #1060#1072#1082#1090'. '#1090#1086#1095#1082#1080
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'DISCIPLINE_EVENT_COMMENT'
            Footers = <>
            Title.Caption = #1050#1086#1084#1077#1085#1090#1072#1088
            Width = 331
          end
          item
            EditButtons = <>
            FieldName = 'AUTHORIZE_EMPLOYEE_NAME'
            Footers = <>
            Title.Caption = #1059#1089#1090#1072#1085#1086#1074#1080#1083
            Width = 150
          end
          item
            EditButtons = <>
            FieldName = 'EMPLOYEE_NO'
            Footers = <>
            Title.Caption = #1057#1083#1091#1078#1080#1090#1077#1083'|'#1050#1086#1076
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'EMPLOYEE_NAME'
            Footers = <>
            Title.Caption = #1057#1083#1091#1078#1080#1090#1077#1083'|'#1048#1084#1077
            Width = 207
          end
          item
            EditButtons = <>
            FieldName = 'MAIN_OCC_DEPT_IDENTIFIER'
            Footers = <>
            Title.Caption = #1057#1083#1091#1078#1080#1090#1077#1083'|'#1054#1088#1063
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'CREATE_EMPLOYEE_ABBREV_NAME'
            Footers = <>
            Title.Caption = #1056#1077#1075#1080#1089#1090#1088#1080#1088#1072#1083'|'#1048#1084#1077
            Visible = False
            Width = 125
          end
          item
            EditButtons = <>
            FieldName = 'CREATE_DATE'
            Footers = <>
            Title.Caption = #1056#1077#1075#1080#1089#1090#1088#1080#1088#1072#1083'|'#1044#1072#1090#1072
            Visible = False
            Width = 31
          end
          item
            EditButtons = <>
            FieldName = 'STORNO_EMPLOYEE_ABBREV_NAME'
            Footers = <>
            Title.Caption = #1040#1085#1091#1083#1080#1088#1072#1083'|'#1048#1084#1077
            Visible = False
            Width = 124
          end
          item
            EditButtons = <>
            FieldName = 'STORNO_DATE'
            Footers = <>
            Title.Caption = #1040#1085#1091#1083#1080#1088#1072#1083'|'#1044#1072#1090#1072
            Visible = False
            Width = 31
          end>
      end
    end
    inherited pnlGrid: TPanel
      Top = 50
      Width = 1003
      Height = 173
      TabOrder = 1
      inherited pnlNavigator: TPanel
        Width = 1003
        inherited pnlFilterButton: TPanel
          Left = 96
        end
        inherited navData: TDBColorNavigator
          Width = 96
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Hints.Strings = ()
        end
        inherited tlbTopGridButtons: TToolBar
          Left = 120
        end
        object tlbDisciplineEventTypeDocs: TToolBar
          Left = 176
          Top = 0
          Width = 109
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 36
          Caption = 'tlbDocs'
          Images = dmMain.ilDocs
          ParentShowHint = False
          ShowHint = False
          TabOrder = 3
          object sepDisciplineEventTypeDocs: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'sepDisciplineEventTypeDocs'
            ImageIndex = 2
            Style = tbsSeparator
          end
          object pnlDisciplineEventTypeDocs: TPanel
            Left = 8
            Top = 0
            Width = 65
            Height = 24
            Align = alLeft
            BevelOuter = bvNone
            Caption = #1042#1080#1076' '#1048#1054#1056#1055#1074
            TabOrder = 0
          end
          object btnDisciplineEventTypeDocs: TToolButton
            Left = 73
            Top = 0
            Action = actDisciplineEventTypeDocs
          end
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 1003
        Height = 149
        FooterColor = 15258325
        FooterRowCount = 1
        VertScrollBar.VisibleMode = sbAlwaysShowEh
        OnGetCellParams = grdDataGetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'DET_NO_AS_FORMATED_TEXT'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1057#1090#1088#1091#1082#1090'. No'
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'DISC_EVENT_TYPE_NAME'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1042#1080#1076' '#1048#1079#1074#1098#1085#1088#1077#1076#1085#1086' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' '#1074' '#1056#1072#1073#1086#1090#1085#1086' '#1055#1086#1074#1077#1076#1077#1085#1080#1077
            Width = 697
          end
          item
            EditButtons = <>
            FieldName = 'DET_TOTAL_RATING'
            Footers = <>
            Title.Caption = #1054#1073#1097#1086' '#1060#1072#1082#1090'. '#1090#1086#1095#1082#1080
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'DISCIPLINE_EVENT_COUNT'
            Footer.FieldName = '_TOTAL_DISCIPLINE_EVENT_COUNT'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1041#1088#1086#1081' '#1048#1054#1056#1055#1074
            Width = 100
          end>
      end
    end
    object pnlFilter: TPanel
      Left = 8
      Top = 8
      Width = 1003
      Height = 42
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object lblMainOccupationDeptIdentifier: TLabel
        Left = 112
        Top = 0
        Width = 22
        Height = 13
        Caption = #1054#1088#1063
        FocusControl = edtMainOccupationDeptIdentifier
      end
      object lblEmployee: TLabel
        Left = 184
        Top = 0
        Width = 49
        Height = 13
        Caption = #1057#1083#1091#1078#1080#1090#1077#1083
      end
      object lblAuthorizeEmployee: TLabel
        Left = 408
        Top = 0
        Width = 95
        Height = 13
        Caption = #1059#1089#1090#1072#1085#1086#1074#1080#1083' '#1048#1054#1056#1055#1074
      end
      object frDisciplineEventDate: TLabel
        Left = 632
        Top = 0
        Width = 95
        Height = 13
        Caption = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1048#1054#1056#1055#1074
      end
      object lblDiscEventType: TLabel
        Left = 784
        Top = 0
        Width = 59
        Height = 13
        Caption = #1042#1080#1076' '#1048#1054#1056#1055#1074
        FocusControl = edtDiscEventType
      end
      object lblTheDate: TLabel
        Left = 0
        Top = 0
        Width = 48
        Height = 13
        Caption = #1050#1098#1084' '#1076#1072#1090#1072
      end
      object edtMainOccupationDeptIdentifier: TDBEdit
        Left = 112
        Top = 16
        Width = 65
        Height = 21
        Color = clBtnFace
        DataField = 'MAIN_OCCUPATION_DEPT_IDENTIFIER'
        DataSource = dsGridDataParams
        ReadOnly = True
        TabOrder = 1
      end
      inline frEmployee: TfrEmployeeFieldEditFrameBald
        Left = 184
        Top = 16
        Width = 217
        Height = 22
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        Constraints.MaxHeight = 22
        Constraints.MinHeight = 22
        TabOrder = 2
        TabStop = True
        inherited gbEmployee: TGroupBox
          Width = 236
          inherited pnlEmployeeName: TPanel
            Width = 161
            inherited pnlRightButtons: TPanel
              Left = 125
            end
            inherited pnlEmpoyeeNameInner: TPanel
              Width = 125
              inherited edtEmployeeName: TDBEdit
                Width = 79
              end
              inherited cbEmployee: TJvDBLookupCombo
                Width = 124
              end
            end
          end
          inherited pnlPaddingRight: TPanel
            Left = 226
          end
        end
        inherited dsData: TDataSource
          DataSet = pdsGridDataParams
        end
      end
      inline frAuthorizeEmployee: TfrEmployeeFieldEditFrameBald
        Left = 408
        Top = 16
        Width = 217
        Height = 22
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        Constraints.MaxHeight = 22
        Constraints.MinHeight = 22
        TabOrder = 3
        TabStop = True
        inherited gbEmployee: TGroupBox
          Width = 236
          inherited pnlEmployeeName: TPanel
            Width = 161
            inherited pnlRightButtons: TPanel
              Left = 125
            end
            inherited pnlEmpoyeeNameInner: TPanel
              Width = 125
              inherited edtEmployeeName: TDBEdit
                Width = 79
              end
              inherited cbEmployee: TJvDBLookupCombo
                Width = 124
              end
            end
          end
          inherited pnlPaddingRight: TPanel
            Left = 226
          end
        end
        inherited dsData: TDataSource
          DataSet = pdsGridDataParams
        end
      end
      inline frDisciplineEventDateInterval: TfrDateIntervalFrame
        Left = 632
        Top = 16
        Width = 145
        Height = 21
        Constraints.MaxHeight = 21
        Constraints.MaxWidth = 145
        Constraints.MinHeight = 21
        Constraints.MinWidth = 145
        TabOrder = 4
        TabStop = True
        inherited dsData: TDataSource
          DataSet = pdsGridDataParams
        end
      end
      object edtDiscEventType: TDBEdit
        Left = 784
        Top = 16
        Width = 219
        Height = 21
        Color = clBtnFace
        DataField = 'DISC_EVENT_TYPE_NAME'
        DataSource = dsGridDataParams
        ReadOnly = True
        TabOrder = 5
      end
      inline frTheDate: TfrDateFieldEditFrame
        Left = 0
        Top = 16
        Width = 105
        Height = 21
        Constraints.MaxHeight = 21
        Constraints.MaxWidth = 105
        Constraints.MinHeight = 21
        Constraints.MinWidth = 105
        TabOrder = 0
        TabStop = True
        inherited dsData: TDataSource
          DataSet = pdsGridDataParams
        end
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 144
    Top = 136
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    Left = 112
    Top = 136
    object cdsGridDataDISC_EVENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'DISC_EVENT_TYPE_CODE'
    end
    object cdsGridDataDET_NO_AS_FORMATED_TEXT: TAbmesWideStringField
      FieldName = 'DET_NO_AS_FORMATED_TEXT'
      Size = 50
    end
    object cdsGridDataDISC_EVENT_TYPE_NAME: TAbmesWideStringField
      FieldName = 'DISC_EVENT_TYPE_NAME'
      Size = 100
    end
    object cdsGridDataDET_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DET_DOC_BRANCH_CODE'
    end
    object cdsGridDataDET_DOC_CODE: TAbmesFloatField
      FieldName = 'DET_DOC_CODE'
    end
    object cdsGridDataDET_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'DET_HAS_DOC_ITEMS'
    end
    object cdsGridDataDET_COLOR: TAbmesFloatField
      FieldName = 'DET_COLOR'
    end
    object cdsGridDataDET_BACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'DET_BACKGROUND_COLOR'
    end
    object cdsGridDataDET_TOTAL_RATING: TAbmesFloatField
      FieldName = 'DET_TOTAL_RATING'
      DisplayFormat = ',0'
    end
    object cdsGridDataDISCIPLINE_EVENT_COUNT: TAbmesFloatField
      FieldName = 'DISCIPLINE_EVENT_COUNT'
    end
    object cdsGridData_TOTAL_DISCIPLINE_EVENT_COUNT: TAggregateField
      FieldName = '_TOTAL_DISCIPLINE_EVENT_COUNT'
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(DISCIPLINE_EVENT_COUNT)'
    end
  end
  inherited alActions: TActionList
    Left = 184
    Top = 0
    inherited actForm: TAction
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1048#1079#1074#1098#1085#1088#1077#1076#1085#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103' '#1074' '#1056#1072#1073#1086#1090#1085#1086' '#1055#1086#1074#1077#1076#1077#1085#1080#1077
    end
    inherited actFilter: TAction
      Visible = True
    end
    object actExtendedDetailInfo: TAction
      GroupIndex = 1
      Hint = #1056#1077#1075#1080#1089#1090#1088#1080#1088#1072#1083' '#1080' '#1040#1085#1091#1083#1080#1088#1072#1083' / '#1057#1083#1091#1078#1080#1090#1077#1083
      ImageIndex = 132
      OnExecute = actExtendedDetailInfoExecute
    end
    object actDisciplineEventTypeDocs: TAction
      ImageIndex = 1
      OnExecute = actDisciplineEventTypeDocsExecute
      OnUpdate = actDisciplineEventTypeDocsUpdate
    end
    object actDisciplineEventDocs: TAction
      ImageIndex = 1
      OnExecute = actDisciplineEventDocsExecute
      OnUpdate = actDisciplineEventDocsUpdate
    end
    object actEmployeeDocs: TAction
      ImageIndex = 1
      OnExecute = actEmployeeDocsExecute
      OnUpdate = actEmployeeDocsUpdate
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    AfterOpen = pdsGridDataParamsAfterOpen
    OnCalcFields = pdsGridDataParamsCalcFields
    DataSet = cdsDetail
    Left = 112
    Top = 168
    object pdsGridDataParamsMIN_DISC_EVENT_STATUS_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' - '#1054#1090
      FieldName = 'MIN_DISC_EVENT_STATUS_CODE'
    end
    object pdsGridDataParamsMAX_DISC_EVENT_STATUS_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' - '#1044#1086
      FieldName = 'MAX_DISC_EVENT_STATUS_CODE'
    end
    object pdsGridDataParamsTHE_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1050#1098#1084' '#1076#1072#1090#1072
      FieldName = 'THE_DATE'
      Required = True
    end
    object pdsGridDataParamsDISC_EVENT_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1042#1080#1076' '#1048#1079#1074#1098#1085#1088#1077#1076#1085#1086' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' '#1074' '#1056#1055#1074
      FieldName = 'DISC_EVENT_TYPE_CODE'
      OnChange = pdsGridDataParamsDISC_EVENT_TYPE_CODEChange
    end
    object pdsGridDataParamsDISC_EVENT_TYPE_NAME: TAbmesWideStringField
      FieldName = 'DISC_EVENT_TYPE_NAME'
      ProviderFlags = []
      OnGetText = FieldsAllWhenNullGetText
      Size = 100
    end
    object pdsGridDataParamsDISCIPLINE_EVENT_BEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1048#1054#1056#1055#1074' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'DISCIPLINE_EVENT_BEGIN_DATE'
      OnGetText = pdsGridDataParamsDISCIPLINE_EVENT_BEGIN_DATEGetText
    end
    object pdsGridDataParamsDISCIPLINE_EVENT_END_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1048#1054#1056#1055#1074' - '#1050#1088#1072#1081
      FieldName = 'DISCIPLINE_EVENT_END_DATE'
    end
    object pdsGridDataParamsEMPLOYEE_CODE: TAbmesFloatField
      DisplayLabel = #1057#1083#1091#1078#1080#1090#1077#1083
      FieldName = 'EMPLOYEE_CODE'
    end
    object pdsGridDataParamsMAIN_OCCUPATION_DEPT_CODE: TAbmesFloatField
      DisplayLabel = #1054#1088#1063
      FieldName = 'MAIN_OCCUPATION_DEPT_CODE'
      OnChange = pdsGridDataParamsMAIN_OCCUPATION_DEPT_CODEChange
    end
    object pdsGridDataParamsMAIN_OCCUPATION_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'MAIN_OCCUPATION_DEPT_IDENTIFIER'
      ProviderFlags = []
      OnGetText = FieldsAllWhenNullGetText
    end
    object pdsGridDataParamsCHOSEN_MAIN_OCCUPATION_DEPT_ONLY: TAbmesFloatField
      DisplayLabel = #1057#1072#1084#1086' '#1080#1079#1073#1088#1072#1085#1080#1103
      FieldName = 'CHOSEN_MAIN_OCCUPATION_DEPT_ONLY'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsAUTHORIZE_EMPLOYEE_CODE: TAbmesFloatField
      DisplayLabel = #1059#1089#1090#1072#1085#1086#1074#1080#1083
      FieldName = 'AUTHORIZE_EMPLOYEE_CODE'
    end
    object pdsGridDataParamsCREATE_BEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1056#1077#1075#1080#1089#1090#1088#1080#1088#1072#1085#1077' - '#1042#1088#1084#1048#1085#1090' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'CREATE_BEGIN_DATE'
    end
    object pdsGridDataParamsCREATE_END_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1056#1077#1075#1080#1089#1090#1088#1080#1088#1072#1085#1077' - '#1042#1088#1084#1048#1085#1090' - '#1050#1088#1072#1081
      FieldName = 'CREATE_END_DATE'
    end
    object pdsGridDataParamsCREATE_EMPLOYEE_CODE: TAbmesFloatField
      DisplayLabel = #1056#1077#1075#1080#1089#1090#1088#1080#1088#1072#1085#1077' - '#1057#1083#1091#1078#1080#1090#1077#1083
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object pdsGridDataParamsSTORNO_BEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1040#1085#1091#1083#1080#1088#1072#1085#1077' - '#1042#1088#1084#1048#1085#1090' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'STORNO_BEGIN_DATE'
    end
    object pdsGridDataParamsSTORNO_END_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1040#1085#1091#1083#1080#1088#1072#1085#1077' - '#1042#1088#1084#1048#1085#1090' - '#1050#1088#1072#1081
      FieldName = 'STORNO_END_DATE'
    end
    object pdsGridDataParamsSTORNO_EMPLOYEE_CODE: TAbmesFloatField
      DisplayLabel = #1040#1085#1091#1083#1080#1088#1072#1085#1077' - '#1057#1083#1091#1078#1080#1090#1077#1083
      FieldName = 'STORNO_EMPLOYEE_CODE'
    end
    object pdsGridDataParams_THE_DATE: TAbmesSQLTimeStampField
      FieldKind = fkCalculated
      FieldName = '_THE_DATE'
      Calculated = True
    end
    object pdsGridDataParams_EMPLOYEE_NO: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_EMPLOYEE_NO'
      LookupDataSet = frEmployee.cdsEmployees
      LookupKeyFields = 'EMPLOYEE_CODE'
      LookupResultField = 'EMPLOYEE_NO'
      KeyFields = 'EMPLOYEE_CODE'
      Lookup = True
    end
    object pdsGridDataParams_EMPLOYEE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_EMPLOYEE_NAME'
      LookupDataSet = frEmployee.cdsEmployees
      LookupKeyFields = 'EMPLOYEE_CODE'
      LookupResultField = 'EMPLOYEE_NAME'
      KeyFields = 'EMPLOYEE_CODE'
      OnGetText = FieldsAllWhenNullGetText
      Size = 100
      Lookup = True
    end
    object pdsGridDataParams_AUTHORIZE_EMPLOYEE_NO: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_AUTHORIZE_EMPLOYEE_NO'
      LookupDataSet = frAuthorizeEmployee.cdsEmployees
      LookupKeyFields = 'EMPLOYEE_CODE'
      LookupResultField = 'EMPLOYEE_NO'
      KeyFields = 'AUTHORIZE_EMPLOYEE_CODE'
      Lookup = True
    end
    object pdsGridDataParams_AUTHORIZE_EMPLOYEE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_AUTHORIZE_EMPLOYEE_NAME'
      LookupDataSet = frAuthorizeEmployee.cdsEmployees
      LookupKeyFields = 'EMPLOYEE_CODE'
      LookupResultField = 'EMPLOYEE_NAME'
      KeyFields = 'AUTHORIZE_EMPLOYEE_CODE'
      OnGetText = FieldsAllWhenNullGetText
      Size = 100
      Lookup = True
    end
  end
  inherited dsGridDataParams: TDataSource
    Left = 144
    Top = 168
  end
  inherited dsData: TDataSource
    Left = 144
    Top = 104
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 112
    Top = 104
  end
  inherited cdsDetail: TAbmesClientDataSet
    AggregatesActive = True
    ConnectionBroker = dmMain.conHumanResource
    FieldDefs = <
      item
        Name = 'EMPLOYEE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DISCIPLINE_EVENT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DISC_EVENT_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DET_NO_AS_FORMATED_TEXT'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'DISC_EVENT_TYPE_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'DET_DOC_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DET_DOC_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DET_HAS_DOC_ITEMS'
        DataType = ftFloat
      end
      item
        Name = 'DISC_EVENT_STATUS_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DISCIPLINE_EVENT_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'EMPLOYEE_NO'
        DataType = ftFloat
      end
      item
        Name = 'EMPLOYEE_NAME'
        DataType = ftWideString
        Size = 44
      end
      item
        Name = 'EMPLOYEE_DOC_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'EMPLOYEE_DOC_CODE'
        DataType = ftFloat
      end
      item
        Name = 'EMPLOYEE_HAS_DOC_ITEMS'
        DataType = ftFloat
      end
      item
        Name = 'MAIN_OCC_DEPT_IDENTIFIER'
        DataType = ftWideString
        Size = 46
      end
      item
        Name = 'DISCIPLINE_EVENT_RATING'
        DataType = ftFloat
      end
      item
        Name = 'DISCIPLINE_EVENT_COMMENT'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'AUTHORIZE_EMPLOYEE_NAME'
        DataType = ftWideString
        Size = 44
      end
      item
        Name = 'CREATE_EMPLOYEE_ABBREV_NAME'
        DataType = ftWideString
        Size = 54
      end
      item
        Name = 'CREATE_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'STORNO_EMPLOYEE_ABBREV_NAME'
        DataType = ftWideString
        Size = 54
      end
      item
        Name = 'STORNO_DATE'
        DataType = ftTimeStamp
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
        Name = 'HAS_DOC_ITEMS'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'idxDefault'
        Fields = 
          'DET_NO_AS_FORMATED_TEXT; DISCIPLINE_EVENT_DATE; EMPLOYEE_NAME; E' +
          'MPLOYEE_CODE; DISCIPLINE_EVENT_CODE'
        GroupingLevel = 1
      end>
    IndexName = 'idxDefault'
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_DISC_EVENT_STATUS_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MAX_DISC_EVENT_STATUS_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'DISC_EVENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DISC_EVENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAIN_OCCUPATION_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAIN_OCCUPATION_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CHOSEN_MAIN_OCCUPATION_DEPT_ONLY'
        ParamType = ptInput
        Value = 0.000000000000000000
      end
      item
        DataType = ftTimeStamp
        Name = 'DISCIPLINE_EVENT_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DISCIPLINE_EVENT_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DISCIPLINE_EVENT_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DISCIPLINE_EVENT_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'AUTHORIZE_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'AUTHORIZE_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CREATE_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CREATE_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CREATE_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CREATE_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CREATE_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CREATE_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STORNO_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STORNO_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STORNO_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STORNO_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORNO_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORNO_EMPLOYEE_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvDisciplineEvents'
    StoreDefs = True
    AfterOpen = cdsDetailAfterOpen
    object cdsDetailEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
    end
    object cdsDetailDISCIPLINE_EVENT_CODE: TAbmesFloatField
      FieldName = 'DISCIPLINE_EVENT_CODE'
    end
    object cdsDetailDISC_EVENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'DISC_EVENT_TYPE_CODE'
    end
    object cdsDetailDET_NO_AS_FORMATED_TEXT: TAbmesWideStringField
      FieldName = 'DET_NO_AS_FORMATED_TEXT'
      Size = 50
    end
    object cdsDetailDISC_EVENT_TYPE_NAME: TAbmesWideStringField
      FieldName = 'DISC_EVENT_TYPE_NAME'
      Size = 100
    end
    object cdsDetailDET_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DET_DOC_BRANCH_CODE'
    end
    object cdsDetailDET_DOC_CODE: TAbmesFloatField
      FieldName = 'DET_DOC_CODE'
    end
    object cdsDetailDET_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'DET_HAS_DOC_ITEMS'
    end
    object cdsDetailDET_COLOR: TAbmesFloatField
      FieldName = 'DET_COLOR'
    end
    object cdsDetailDET_BACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'DET_BACKGROUND_COLOR'
    end
    object cdsDetailDISC_EVENT_STATUS_CODE: TAbmesFloatField
      FieldName = 'DISC_EVENT_STATUS_CODE'
      OnGetText = cdsDetailDISC_EVENT_STATUS_CODEGetText
    end
    object cdsDetailDISCIPLINE_EVENT_DATE: TAbmesSQLTimeStampField
      FieldName = 'DISCIPLINE_EVENT_DATE'
    end
    object cdsDetailEMPLOYEE_NO: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'EMPLOYEE_NO'
    end
    object cdsDetailEMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'EMPLOYEE_NAME'
      Size = 44
    end
    object cdsDetailEMPLOYEE_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_DOC_BRANCH_CODE'
    end
    object cdsDetailEMPLOYEE_DOC_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_DOC_CODE'
    end
    object cdsDetailEMPLOYEE_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'EMPLOYEE_HAS_DOC_ITEMS'
    end
    object cdsDetailMAIN_OCC_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'MAIN_OCC_DEPT_IDENTIFIER'
      Size = 46
    end
    object cdsDetailDISCIPLINE_EVENT_RATING: TAbmesFloatField
      FieldName = 'DISCIPLINE_EVENT_RATING'
      DisplayFormat = ',0'
    end
    object cdsDetailDISCIPLINE_EVENT_COMMENT: TAbmesWideStringField
      FieldName = 'DISCIPLINE_EVENT_COMMENT'
      Size = 100
    end
    object cdsDetailAUTHORIZE_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'AUTHORIZE_EMPLOYEE_NAME'
      Size = 44
    end
    object cdsDetailCREATE_EMPLOYEE_ABBREV_NAME: TAbmesWideStringField
      FieldName = 'CREATE_EMPLOYEE_ABBREV_NAME'
      Size = 54
    end
    object cdsDetailCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object cdsDetailSTORNO_EMPLOYEE_ABBREV_NAME: TAbmesWideStringField
      FieldName = 'STORNO_EMPLOYEE_ABBREV_NAME'
      Size = 54
    end
    object cdsDetailSTORNO_DATE: TAbmesSQLTimeStampField
      FieldName = 'STORNO_DATE'
    end
    object cdsDetailDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsDetailDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsDetailHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
    end
    object cdsDetail_DET_DISCIPLINE_EVENT_COUNT: TAggregateField
      FieldName = '_DET_DISCIPLINE_EVENT_COUNT'
      Active = True
      Expression = 'Count(EMPLOYEE_CODE)'
      GroupingLevel = 1
      IndexName = 'idxDefault'
    end
    object cdsDetail_DET_TOTAL_RATING: TAggregateField
      FieldName = '_DET_TOTAL_RATING'
      Active = True
      Expression = 'Sum(DISCIPLINE_EVENT_RATING)'
      GroupingLevel = 1
      IndexName = 'idxDefault'
    end
  end
  object cdsEmployeeFrameAllEmployees: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conHumanResource
    Params = <
      item
        DataType = ftFloat
        Name = 'SPECIAL_PROFESSION_EMPLOYEE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPECIAL_PROFESSION_EMPLOYEE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPECIAL_PROFESSION_EMPLOYEE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPECIAL_PROFESSION_EMPLOYEE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUIRED_PROFESSION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUIRED_PROFESSION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUIRED_PROFESSION_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvEmployeeFrame'
    Left = 216
    Top = 136
  end
end
