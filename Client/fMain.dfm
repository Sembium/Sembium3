object fmMain: TfmMain
  Left = 234
  Top = 101
  Action = actForm
  Caption = '%AppName%'
  ClientHeight = 741
  ClientWidth = 904
  Color = clBtnFace
  Constraints.MinHeight = 530
  Constraints.MinWidth = 920
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Microsoft Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  ShowHint = True
  WindowState = wsMaximized
  OnClick = actFormExecute
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnHide = FormHide
  OnResize = FormResize
  OnShow = FormShow
  DesignSize = (
    904
    741)
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 904
    Height = 265
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object pnlCommands: TPanel
      Left = 0
      Top = 0
      Width = 904
      Height = 265
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object bvlTime: TBevel
        Left = 0
        Top = 22
        Width = 904
        Height = 2
        Align = alTop
        Shape = bsBottomLine
      end
      object bvlMainMenuAndExceptEventIndicators: TBevel
        Left = 0
        Top = 45
        Width = 904
        Height = 2
        Align = alTop
        Shape = bsBottomLine
      end
      object pnlToolbars: TPanel
        Left = 0
        Top = 47
        Width = 904
        Height = 1150
        Align = alTop
        AutoSize = True
        BevelOuter = bvNone
        PopupMenu = pmToolbars
        TabOrder = 0
        object pnlToolbar1: TPanel
          Tag = 1
          Left = 0
          Top = 0
          Width = 904
          Height = 46
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 0
          Visible = False
          object bvlToolbar1: TBevel
            Left = 0
            Top = 44
            Width = 904
            Height = 2
            Align = alBottom
            Shape = bsBottomLine
          end
          object lblToolbar1: TJvLabel
            Left = 0
            Top = 0
            Width = 19
            Height = 44
            Align = alLeft
            Alignment = taCenter
            AutoSize = False
            Caption = #1057#1091#1073
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 12615680
            Font.Height = -13
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
            Angle = 90
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -13
            HotTrackFont.Name = 'Microsoft Sans Serif'
            HotTrackFont.Style = []
          end
          object tlb1: TToolBar
            Tag = 1
            Left = 19
            Top = 0
            Width = 885
            Height = 44
            Align = alClient
            AutoSize = True
            ButtonHeight = 44
            ButtonWidth = 81
            Images = ilLargeImages
            ShowCaptions = True
            TabOrder = 0
            Wrapable = False
            object sepToolbarCaption1: TToolButton
              Left = 0
              Top = 0
              Width = 8
              Caption = 'ToolButton4'
              ImageIndex = 2
              Style = tbsSeparator
            end
            object btnCompany: TToolButton
              Left = 8
              Top = 0
              Action = actCompany
              Caption = #1048#1055
              ImageIndex = 5
            end
            object btnCompanies: TToolButton
              Left = 89
              Top = 0
              Action = actCompanies
              Caption = #1055#1072#1088#1090#1085#1100#1086#1088#1080
            end
            object sepEmployees: TToolButton
              Left = 170
              Top = 0
              Width = 8
              Caption = 'sepEmployees'
              ImageIndex = 2
              Style = tbsSeparator
            end
            object btnEmployees: TToolButton
              Left = 178
              Top = 0
              Action = actEmployees
              Caption = #1057#1083#1091#1078#1080#1090#1077#1083#1080
            end
            object btnTeams: TToolButton
              Left = 259
              Top = 0
              Action = actTeams
              Caption = #1045#1082#1080#1087#1080
            end
            object sepWorkHours: TToolButton
              Left = 340
              Top = 0
              Width = 8
              Caption = 'sepWorkHours'
              ImageIndex = 4
              Style = tbsSeparator
            end
            object btnWorkHours: TToolButton
              Left = 348
              Top = 0
              Action = actWorkHours
              Caption = #1058#1088#1091#1076' '#1085#1072' '#1054#1087#1077#1088'.'
            end
            object btnEmployeeEarnings: TToolButton
              Left = 429
              Top = 0
              Action = actEmployeeEarnings
              Caption = #1058#1088#1091#1076' '#1085#1072' '#1057#1083#1091#1078'.'
            end
            object btnMonthTeams: TToolButton
              Left = 510
              Top = 0
              Action = actMonthTeams
              Caption = #1045#1082#1080#1087#1085#1080' '#1056#1072#1079#1087#1088'.'
            end
          end
        end
        object pnlToolbar2: TPanel
          Tag = 2
          Left = 0
          Top = 92
          Width = 904
          Height = 46
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          Visible = False
          object bvlToolbar2: TBevel
            Left = 0
            Top = 44
            Width = 904
            Height = 2
            Align = alBottom
            Shape = bsBottomLine
          end
          object lblToolbar2: TJvLabel
            Left = 0
            Top = 0
            Width = 19
            Height = 44
            Align = alLeft
            Alignment = taCenter
            AutoSize = False
            Caption = #1057#1091#1073
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 12615680
            Font.Height = -13
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
            Angle = 90
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -13
            HotTrackFont.Name = 'Microsoft Sans Serif'
            HotTrackFont.Style = []
          end
          object tlb2: TToolBar
            Tag = 2
            Left = 19
            Top = 0
            Width = 885
            Height = 44
            Align = alClient
            AutoSize = True
            ButtonHeight = 44
            ButtonWidth = 82
            Images = ilLargeImages
            ShowCaptions = True
            TabOrder = 0
            Wrapable = False
            object sepToolbarCaption2: TToolButton
              Left = 0
              Top = 0
              Width = 8
              Caption = 'ToolButton4'
              ImageIndex = 2
              Style = tbsSeparator
            end
            object btnEmployeesAvailability: TToolButton
              Left = 8
              Top = 0
              Action = actEmployeesAvailability
              Caption = #1055#1088'. '#1080' '#1054#1090#1089'.'
            end
            object btnEmployeesTotalAvailability: TToolButton
              Left = 90
              Top = 0
              Action = actEmployeesTotalAvailability
              Caption = #1054#1073#1086#1073#1097'. '#1055' '#1080' '#1054
            end
            object btnEmployeesAvailabilityGraph: TToolButton
              Left = 172
              Top = 0
              Action = actEmployeesAvailabilityGraph
              Caption = #1042#1048#1052' '#1055' '#1080' '#1054
            end
            object btnFailedEmployeeMovements: TToolButton
              Left = 254
              Top = 0
              Action = actFailedEmployeeMovements
              Caption = #1053#1077#1087#1088'. '#1056#1077#1075'.'
            end
            object sepDisciplineEventTypes: TToolButton
              Left = 336
              Top = 0
              Width = 8
              Caption = 'sepDisciplineEventTypes'
              ImageIndex = 3
              Style = tbsSeparator
            end
            object btnDisciplineEventTypes: TToolButton
              Left = 344
              Top = 0
              Action = actDisciplineEventTypes
              Caption = #1050#1083#1072#1089'. '#1042#1048#1054#1056#1055#1074
            end
            object btnDisciplineEvents: TToolButton
              Left = 426
              Top = 0
              Action = actDisciplineEvents
              Caption = #1048#1054' '#1056#1055#1074
            end
          end
        end
        object pnlToolbar3: TPanel
          Tag = 3
          Left = 0
          Top = 138
          Width = 904
          Height = 46
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          Visible = False
          object bvlToolbar3: TBevel
            Left = 0
            Top = 44
            Width = 904
            Height = 2
            Align = alBottom
            Shape = bsBottomLine
          end
          object lblToolbar3: TJvLabel
            Left = 0
            Top = 0
            Width = 19
            Height = 44
            Align = alLeft
            Alignment = taCenter
            AutoSize = False
            Caption = #1054#1073
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 12615680
            Font.Height = -13
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
            Angle = 90
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -13
            HotTrackFont.Name = 'Microsoft Sans Serif'
            HotTrackFont.Style = []
          end
          object tlb3: TToolBar
            Tag = 3
            Left = 19
            Top = 0
            Width = 885
            Height = 44
            Align = alClient
            AutoSize = True
            ButtonHeight = 44
            ButtonWidth = 69
            Images = ilLargeImages
            ShowCaptions = True
            TabOrder = 0
            Wrapable = False
            object sepToolbarCaption3: TToolButton
              Left = 0
              Top = 0
              Width = 8
              Caption = 'ToolButton4'
              ImageIndex = 2
              Style = tbsSeparator
            end
            object btnProducts: TToolButton
              Left = 8
              Top = 0
              Action = actProducts
              Caption = #1059#1054#1073
            end
            object btnCommonGroups: TToolButton
              Left = 77
              Top = 0
              Action = actCommonGroups
              Caption = #1058#1049#1057
            end
            object btnVendorProductNames: TToolButton
              Left = 146
              Top = 0
              Action = actVendorProductNames
              Caption = #1055#1072#1088#1090#1085'. '#1054#1079#1085'.'
            end
            object sepNewEngineeringOrder: TToolButton
              Left = 215
              Top = 0
              Width = 8
              Caption = 'sepNewEngineeringOrder'
              ImageIndex = 3
              Style = tbsSeparator
            end
            object btnNewEngineeringOrder: TToolButton
              Left = 223
              Top = 0
              Action = actNewEngineeringOrder
              Caption = #1054#1055#1048#1056
            end
            object btnEngineeringOrders: TToolButton
              Left = 292
              Top = 0
              Action = actEngineeringOrders
              Caption = #1054#1055#1048#1056
            end
            object sepNewSpecification: TToolButton
              Left = 361
              Top = 0
              Width = 8
              Caption = 'sepNewSpecification'
              ImageIndex = 5
              Style = tbsSeparator
            end
            object btnNewSpecification: TToolButton
              Left = 369
              Top = 0
              Action = actNewSpecification
              Caption = #1055'-'#1052#1054#1044#1045#1083
            end
            object btnSpecifications: TToolButton
              Left = 438
              Top = 0
              Action = actSpecifications
              Caption = #1055'-'#1052#1054#1044#1045#1083'-'#1080
            end
            object btnBaseGroups: TToolButton
              Left = 507
              Top = 0
              Action = actBaseGroups
              Caption = #1041#1072#1079'. '#1043#1088#1091#1087#1080
            end
            object btnDeptDetailFlow: TToolButton
              Left = 576
              Top = 0
              Action = actDeptDetailFlow
              Caption = #1055#1086#1090#1086#1094#1080' '#1059#1054#1073
            end
          end
        end
        object pnlToolbar4: TPanel
          Tag = 4
          Left = 0
          Top = 184
          Width = 904
          Height = 46
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 3
          Visible = False
          object bvlToolbar4: TBevel
            Left = 0
            Top = 44
            Width = 904
            Height = 2
            Align = alBottom
            Shape = bsBottomLine
          end
          object lblToolbar4: TJvLabel
            Left = 0
            Top = 0
            Width = 19
            Height = 44
            Align = alLeft
            Alignment = taCenter
            AutoSize = False
            Caption = #1054#1073
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 12615680
            Font.Height = -13
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
            Angle = 90
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -13
            HotTrackFont.Name = 'Microsoft Sans Serif'
            HotTrackFont.Style = []
          end
          object tlb4: TToolBar
            Tag = 4
            Left = 19
            Top = 0
            Width = 885
            Height = 44
            Align = alClient
            AutoSize = True
            ButtonHeight = 44
            ButtonWidth = 75
            Images = ilLargeImages
            ShowCaptions = True
            TabOrder = 0
            Wrapable = False
            object sepToolbarCaption4: TToolButton
              Left = 0
              Top = 0
              Width = 8
              Caption = 'ToolButton4'
              ImageIndex = 2
              Style = tbsSeparator
            end
            object btnNewStoreDealIn: TToolButton
              Left = 8
              Top = 0
              Action = actNewStoreDealIn
              Caption = #1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1077
            end
            object btnNewStoreDealOut: TToolButton
              Left = 83
              Top = 0
              Action = actNewStoreDealOut
              Caption = #1058#1077#1075#1083#1077#1085#1077
            end
            object btnStoreDeals: TToolButton
              Left = 158
              Top = 0
              Action = actStoreDeals
              Caption = #1054#1090#1095#1077#1090' '#1055' '#1080' '#1058
            end
            object sepPlannedStoreDeals: TToolButton
              Left = 233
              Top = 0
              Width = 8
              Caption = 'sepPlannedStoreDeals'
              ImageIndex = 3
              Style = tbsSeparator
            end
            object btnPlannedStoreDeals: TToolButton
              Left = 241
              Top = 0
              Action = actPlannedStoreDeals
              Caption = #1055#1083#1072#1085' '#1055' '#1080' '#1058
            end
            object btnUncoveredPSD: TToolButton
              Left = 316
              Top = 0
              Action = actUncoveredPSD
              Caption = #1053#1077#1086#1073'. '#1055#1083'. '#1058
            end
            object btnUncoveredModels: TToolButton
              Left = 391
              Top = 0
              Action = actUncoveredModels
              Caption = #1053#1077#1086#1073'. '#1056'-'#1052
            end
            object sepNewStoreRequestIn: TToolButton
              Left = 466
              Top = 0
              Width = 8
              Caption = 'sepNewStoreRequestIn'
              ImageIndex = 6
              Style = tbsSeparator
            end
            object btnNewStoreRequestIn: TToolButton
              Left = 474
              Top = 0
              Action = actNewStoreRequestIn
              Caption = #1047#1072#1103#1074#1082#1072' '#1055#1086#1089#1090'.'
            end
            object btnNewStoreRequestOut: TToolButton
              Left = 549
              Top = 0
              Action = actNewStoreRequestOut
              Caption = #1047#1072#1103#1074#1082#1072' '#1058#1077#1075#1083'.'
            end
            object btnStoreRequests: TToolButton
              Left = 624
              Top = 0
              Action = actStoreRequests
              Caption = #1047#1072#1103#1074#1082#1080
            end
          end
        end
        object pnlToolbar5: TPanel
          Tag = 5
          Left = 0
          Top = 230
          Width = 904
          Height = 46
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 4
          Visible = False
          object bvlToolbar5: TBevel
            Left = 0
            Top = 44
            Width = 904
            Height = 2
            Align = alBottom
            Shape = bsBottomLine
          end
          object lblToolbar5: TJvLabel
            Left = 0
            Top = 0
            Width = 19
            Height = 44
            Align = alLeft
            Alignment = taCenter
            AutoSize = False
            Caption = #1054#1073
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 12615680
            Font.Height = -13
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
            Angle = 90
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -13
            HotTrackFont.Name = 'Microsoft Sans Serif'
            HotTrackFont.Style = []
          end
          object tlb5: TToolBar
            Tag = 5
            Left = 19
            Top = 0
            Width = 885
            Height = 44
            Align = alClient
            AutoSize = True
            ButtonHeight = 44
            ButtonWidth = 85
            Images = ilLargeImages
            ShowCaptions = True
            TabOrder = 0
            Wrapable = False
            object sepToolbarCaption5: TToolButton
              Left = 0
              Top = 0
              Width = 8
              Caption = 'ToolButton4'
              ImageIndex = 2
              Style = tbsSeparator
            end
            object btnEstQuantitiesGraph: TToolButton
              Left = 8
              Top = 0
              Action = actEstQuantitiesGraph
              Caption = #1042#1048#1052' '#1055#1089'. '#1059#1054#1073
            end
            object btnEstQuantitiesTable: TToolButton
              Left = 93
              Top = 0
              Action = actEstQuantitiesTable
              Caption = #1042#1048#1052' '#1055#1089'. '#1059#1054#1073
            end
            object sepVIMQuantity: TToolButton
              Left = 178
              Top = 0
              Width = 8
              Caption = 'sepVIMQuantity'
              ImageIndex = 2
              Style = tbsSeparator
            end
            object btnVIMQuantity: TToolButton
              Left = 186
              Top = 0
              Action = actVIMQuantity
              Caption = #1042#1048#1052' '#1056#1083'. '#1059#1054#1073
            end
            object btnQuantityDeficit: TToolButton
              Left = 271
              Top = 0
              Action = actQuantityDeficit
              Caption = #1042#1048#1052' '#1056#1083'. '#1059#1054#1073
            end
            object btnStoreQuantities: TToolButton
              Left = 356
              Top = 0
              Action = actStoreQuantities
              Caption = #1059#1054#1073' '#1053'-'#1089#1090#1080
            end
            object btnProductQuantitiesTree: TToolButton
              Left = 441
              Top = 0
              Action = actProductQuantitiesTree
              Caption = #1059#1054#1073' '#1053'-'#1089#1090#1080
            end
            object sepUnfinishedMfg: TToolButton
              Left = 526
              Top = 0
              Width = 8
              Caption = 'sepUnfinishedMfg'
              ImageIndex = 6
              Style = tbsSeparator
            end
            object btnUnfinishedMfg: TToolButton
              Left = 534
              Top = 0
              Action = actUnfinishedMfg
              Caption = #1056#1083'. '#1053'-'#1089#1090#1080' '#1074' '#1056'-'#1052
            end
          end
        end
        object pnlToolbar6: TPanel
          Tag = 6
          Left = 0
          Top = 276
          Width = 904
          Height = 46
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 5
          Visible = False
          object bvlToolbar6: TBevel
            Left = 0
            Top = 44
            Width = 904
            Height = 2
            Align = alBottom
            Shape = bsBottomLine
          end
          object lblToolbar6: TJvLabel
            Left = 0
            Top = 0
            Width = 19
            Height = 44
            Align = alLeft
            Alignment = taCenter
            AutoSize = False
            Caption = #1054#1073
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 12615680
            Font.Height = -13
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
            Angle = 90
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -13
            HotTrackFont.Name = 'Microsoft Sans Serif'
            HotTrackFont.Style = []
          end
          object tlb6: TToolBar
            Tag = 6
            Left = 19
            Top = 0
            Width = 885
            Height = 44
            Align = alClient
            AutoSize = True
            ButtonHeight = 44
            ButtonWidth = 81
            Images = ilLargeImages
            ShowCaptions = True
            TabOrder = 0
            Wrapable = False
            object sepToolbarCaption6: TToolButton
              Left = 0
              Top = 0
              Width = 8
              Caption = 'ToolButton4'
              ImageIndex = 2
              Style = tbsSeparator
            end
            object btnProductionProductsTree: TToolButton
              Left = 8
              Top = 0
              Action = actProductionProductsTree
              Caption = #1058#1080#1083'. '#1054#1073'. '#1059#1054#1073
            end
            object sepResultProductEstNeeds: TToolButton
              Left = 89
              Top = 0
              Width = 8
              Caption = 'sepResultProductEstNeeds'
              ImageIndex = 1
              Style = tbsSeparator
            end
            object btnResultProductEstNeeds: TToolButton
              Left = 97
              Top = 0
              Action = actResultProductEstNeeds
              Caption = #1055#1089'. '#1055#1086#1090#1088'. '#1059#1054#1073
            end
            object btnDetailEstNeeds: TToolButton
              Left = 178
              Top = 0
              Action = actDetailEstNeeds
              Caption = #1055#1089'. '#1055#1086#1090#1088'. '#1050#1057#1063
            end
            object btnMaterialEstNeeds: TToolButton
              Left = 259
              Top = 0
              Action = actMaterialEstNeeds
              Caption = #1055#1089'. '#1055#1086#1090#1088'. '#1053#1057#1063
            end
            object sepResultProductRealNeeds: TToolButton
              Left = 340
              Top = 0
              Width = 8
              Caption = 'sepResultProductRealNeeds'
              ImageIndex = 4
              Style = tbsSeparator
            end
            object btnResultProductRealNeeds: TToolButton
              Left = 348
              Top = 0
              Action = actResultProductRealNeeds
              Caption = #1056#1083'. '#1055#1086#1090#1088'. '#1059#1054#1073
            end
            object btnDetailRealNeeds: TToolButton
              Left = 429
              Top = 0
              Action = actDetailRealNeeds
              Caption = #1056#1083'. '#1055#1086#1090#1088'. '#1050#1057#1063
            end
            object btnMaterialRealNeeds: TToolButton
              Left = 510
              Top = 0
              Action = actMaterialRealNeeds
              Caption = #1056#1083'. '#1055#1086#1090#1088'. '#1053#1057#1063
            end
          end
        end
        object pnlToolbar8: TPanel
          Tag = 8
          Left = 0
          Top = 322
          Width = 904
          Height = 46
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 6
          Visible = False
          object bvlToolbar8: TBevel
            Left = 0
            Top = 44
            Width = 904
            Height = 2
            Align = alBottom
            Shape = bsBottomLine
          end
          object lblToolbar8: TJvLabel
            Left = 0
            Top = 0
            Width = 19
            Height = 44
            Align = alLeft
            Alignment = taCenter
            AutoSize = False
            Caption = #1054#1058#1057
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 12615680
            Font.Height = -13
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
            Angle = 90
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -13
            HotTrackFont.Name = 'Microsoft Sans Serif'
            HotTrackFont.Style = []
          end
          object tlb8: TToolBar
            Tag = 8
            Left = 19
            Top = 0
            Width = 885
            Height = 44
            Align = alClient
            AutoSize = True
            ButtonHeight = 44
            ButtonWidth = 81
            Images = ilLargeImages
            ShowCaptions = True
            TabOrder = 0
            Wrapable = False
            object sepToolbarCaption8: TToolButton
              Left = 0
              Top = 0
              Width = 8
              Caption = 'ToolButton4'
              ImageIndex = 2
              Style = tbsSeparator
            end
            object btnDepts: TToolButton
              Left = 8
              Top = 0
              Action = actDepts
              Caption = #1057#1090#1088#1058#1057
            end
            object btnDeptsPrcData: TToolButton
              Left = 89
              Top = 0
              Action = actDeptsPrcData
              Caption = #1055#1088#1094'. '#1057#1090#1088#1058#1057
            end
            object btnOccupationsAndEmployees: TToolButton
              Left = 170
              Top = 0
              Action = actOccupationsAndEmployees
              Caption = #1044#1083#1098#1078#1085#1086#1089#1090#1080
            end
            object btnOrgPrcDataDistribution: TToolButton
              Left = 251
              Top = 0
              Action = actOrgPrcDataDistribution
              Caption = #1054#1088#1075'. '#1054#1090#1075'. '#1055#1088#1094'.'
            end
            object sepEstCapacityGraph: TToolButton
              Left = 332
              Top = 0
              Width = 8
              Caption = 'sepEstCapacityGraph'
              ImageIndex = 4
              Style = tbsSeparator
            end
            object btnEstCapacityGraph: TToolButton
              Left = 340
              Top = 0
              Action = actEstCapacityGraph
              Caption = #1042#1048#1052' '#1055#1088#1075'. '#1050#1087#1094'.'
            end
            object btnEstCapacityTable: TToolButton
              Left = 421
              Top = 0
              Action = actEstCapacityTable
              Caption = #1042#1048#1052' '#1055#1088#1075'. '#1050#1087#1094'.'
            end
            object sepRealCapacityGraph: TToolButton
              Left = 502
              Top = 0
              Width = 8
              Caption = 'sepRealCapacityGraph'
              ImageIndex = 6
              Style = tbsSeparator
            end
            object btnRealCapacityGraph: TToolButton
              Left = 510
              Top = 0
              Action = actRealCapacityGraph
              Caption = #1042#1048#1052' '#1054#1087'. '#1050#1087#1094'.'
            end
            object btnRealCapacityTable: TToolButton
              Left = 591
              Top = 0
              Action = actRealCapacityTable
              Caption = #1042#1048#1052' '#1054#1087'. '#1050#1087#1094'.'
            end
            object sepExceptEventsEnv: TToolButton
              Left = 672
              Top = 0
              Width = 8
              Caption = 'sepExceptEventsEnv'
              ImageIndex = 6
              Style = tbsSeparator
            end
            object btnExceptEventsEnv: TToolButton
              Left = 680
              Top = 0
              Action = actExceptEventsEnv
              Caption = #1053#1054
            end
          end
        end
        object pnlToolbar9: TPanel
          Tag = 9
          Left = 0
          Top = 368
          Width = 904
          Height = 46
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 7
          Visible = False
          object bvlToolbar9: TBevel
            Left = 0
            Top = 44
            Width = 904
            Height = 2
            Align = alBottom
            Shape = bsBottomLine
          end
          object lblToolbar9: TJvLabel
            Left = 0
            Top = 0
            Width = 19
            Height = 44
            Align = alLeft
            Alignment = taCenter
            AutoSize = False
            Caption = #1057#1054#1057
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 12615680
            Font.Height = -13
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
            Angle = 90
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -13
            HotTrackFont.Name = 'Microsoft Sans Serif'
            HotTrackFont.Style = []
          end
          object tlb9: TToolBar
            Tag = 9
            Left = 19
            Top = 0
            Width = 885
            Height = 44
            Align = alClient
            AutoSize = True
            ButtonHeight = 44
            ButtonWidth = 51
            Images = ilLargeImages
            ShowCaptions = True
            TabOrder = 0
            Wrapable = False
            object sepToolbarCaption9: TToolButton
              Left = 0
              Top = 0
              Width = 8
              Caption = 'ToolButton4'
              ImageIndex = 2
              Style = tbsSeparator
            end
            object btnOrganisationPrcData: TToolButton
              Left = 8
              Top = 0
              Action = actOrganisationPrcData
              Caption = #1042#1048#1055#1057
            end
            object sepToolbarProcessFunctions: TToolButton
              Left = 59
              Top = 0
              Width = 8
              ImageIndex = 5
              Style = tbsSeparator
            end
            object btnProcessFunctionsTree: TToolButton
              Left = 67
              Top = 0
              Action = actProcessFunctionsTree
              Caption = #1060#1059#1044#1057'...'
            end
            object btnProcessKnowlsTree: TToolButton
              Left = 118
              Top = 0
              Action = actProcessKnowlsTree
              Caption = #1055#1059#1044#1057'...'
            end
            object btnProcessBaseOperations: TToolButton
              Left = 169
              Top = 0
              Action = actProcessBaseOperations
              Caption = #1055#1054#1087
            end
            object btnProcessConcreteOperations: TToolButton
              Left = 220
              Top = 0
              Action = actProcessConcreteOperations
              Caption = #1055#1054#1085#1090
            end
            object btnProcessActions: TToolButton
              Left = 271
              Top = 0
              Action = actProcessActions
              Caption = #1055#1060
              ImageIndex = 5
            end
          end
        end
        object pnlToolbar11: TPanel
          Tag = 11
          Left = 0
          Top = 460
          Width = 904
          Height = 46
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 8
          Visible = False
          object bvlToolbar11: TBevel
            Left = 0
            Top = 44
            Width = 904
            Height = 2
            Align = alBottom
            Shape = bsBottomLine
          end
          object lblToolbar11: TJvLabel
            Left = 0
            Top = 0
            Width = 19
            Height = 44
            Align = alLeft
            Alignment = taCenter
            AutoSize = False
            Caption = #1054#1058#1057
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 12615680
            Font.Height = -13
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
            Angle = 90
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -13
            HotTrackFont.Name = 'Microsoft Sans Serif'
            HotTrackFont.Style = []
          end
          object tlb11: TToolBar
            Tag = 11
            Left = 19
            Top = 0
            Width = 885
            Height = 44
            Align = alClient
            AutoSize = True
            ButtonHeight = 44
            ButtonWidth = 88
            Images = ilLargeImages
            ShowCaptions = True
            TabOrder = 0
            Wrapable = False
            object sepToolbarCaption11: TToolButton
              Left = 0
              Top = 0
              Width = 8
              Caption = 'ToolButton4'
              ImageIndex = 2
              Style = tbsSeparator
            end
            object btnBudgetClassesTree1: TToolButton
              Left = 8
              Top = 0
              Action = actBudgetClassesTree
              Caption = #1050#1083#1072#1089'. '#1056#1079#1093'&&'#1048#1085#1074'.'
            end
            object sepBudgetInvest: TToolButton
              Left = 96
              Top = 0
              Width = 8
              Caption = 'sepBudgetInvest'
              ImageIndex = 5
              Style = tbsSeparator
            end
            object btnBudgetInvest: TToolButton
              Left = 104
              Top = 0
              Action = actBudgetInvest
              Caption = #1048#1085#1074'. '#1057#1088#1077#1076#1072
            end
            object btnBudgetOrdersInvest: TToolButton
              Left = 192
              Top = 0
              Action = actBudgetOrdersInvest
              Caption = #1048#1085#1074'. '#1041#1086#1088#1076'.'
            end
            object btnBOIProductOrdersInvest: TToolButton
              Left = 280
              Top = 0
              Action = actBOIProductOrdersInvest
              Caption = #1048#1085#1074'. '#1054#1088'. '#1055#1088#1076'.'
            end
            object btnBOICompanyOrdersInvest: TToolButton
              Left = 368
              Top = 0
              Action = actBOICompanyOrdersInvest
              Caption = #1048#1085#1074'. '#1054#1088'. '#1054#1073#1089#1083'.'
            end
            object btnBOIWasteOrdersInvest: TToolButton
              Left = 456
              Top = 0
              Action = actBOIWasteOrdersInvest
              Caption = #1048#1085#1074'. '#1054#1088'. '#1055#1088#1077#1086#1094'.'
            end
            object btnBOIMarkingOrdersInvest: TToolButton
              Left = 544
              Top = 0
              Action = actBOIMarkingOrdersInvest
              Caption = #1048#1085#1074'. '#1054#1088'. '#1052#1072#1088#1082'.'
            end
          end
        end
        object pnlToolbar14: TPanel
          Tag = 14
          Left = 0
          Top = 644
          Width = 904
          Height = 46
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 9
          Visible = False
          object bvlToolbar14: TBevel
            Left = 0
            Top = 44
            Width = 904
            Height = 2
            Align = alBottom
            Shape = bsBottomLine
          end
          object lblToolbar14: TJvLabel
            Left = 0
            Top = 0
            Width = 19
            Height = 44
            Align = alLeft
            Alignment = taCenter
            AutoSize = False
            Caption = #1055#1088#1076
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 12615680
            Font.Height = -13
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
            Angle = 90
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -13
            HotTrackFont.Name = 'Microsoft Sans Serif'
            HotTrackFont.Style = []
          end
          object tlb14: TToolBar
            Tag = 14
            Left = 19
            Top = 0
            Width = 885
            Height = 44
            Align = alClient
            AutoSize = True
            ButtonHeight = 44
            ButtonWidth = 77
            Images = ilLargeImages
            ShowCaptions = True
            TabOrder = 0
            Wrapable = False
            object sepToolbarCaption14: TToolButton
              Left = 0
              Top = 0
              Width = 8
              Caption = 'ToolButton4'
              ImageIndex = 2
              Style = tbsSeparator
            end
            object btnEstPricesCompareGraphSales: TToolButton
              Left = 8
              Top = 0
              Action = actEstPricesCompareGraphSales
              Caption = #1042#1048#1052' '#1048#1056
            end
            object sepNewGroupSale: TToolButton
              Left = 85
              Top = 0
              Width = 8
              Caption = 'sepNewGroupSale'
              ImageIndex = 1
              Style = tbsSeparator
            end
            object btnNewGroupSale: TToolButton
              Left = 93
              Top = 0
              Action = actNewGroupSale
              Caption = #1055#1044#1050' '#1053#1072#1083#1080#1095'.'
            end
            object btnSaleOrdersGroupSaleOrders: TToolButton
              Left = 170
              Top = 0
              Action = actSaleOrdersGroupSaleOrders
              Caption = #1055#1044#1050' '#1053#1072#1083#1080#1095'.'
            end
            object sepNewSaleRequestGroup: TToolButton
              Left = 247
              Top = 0
              Width = 8
              Caption = 'sepNewSaleRequestGroup'
              ImageIndex = 3
              Style = tbsSeparator
            end
            object btnNewSaleRequestGroup: TToolButton
              Left = 255
              Top = 0
              Action = actNewSaleRequestGroup
              Caption = #1055#1044#1050' '#1047#1072#1076#1072#1085#1080#1077
            end
            object btnSaleRequestGroups: TToolButton
              Left = 332
              Top = 0
              Action = actSaleRequestGroups
              Caption = #1055#1044#1050' '#1047#1072#1076#1072#1085#1080#1077
            end
            object btnSaleOrders: TToolButton
              Left = 409
              Top = 0
              Action = actSaleOrders
              Caption = #1054#1044#1050' '#1047#1072#1076#1072#1085#1080#1077
            end
            object sepSalesOverviewShp: TToolButton
              Left = 486
              Top = 0
              Width = 8
              Caption = 'sepSalesOverviewShp'
              ImageIndex = 9
              Style = tbsSeparator
            end
            object btnSalesOverviewShp: TToolButton
              Left = 494
              Top = 0
              Action = actSalesOverviewShp
              Caption = #1054#1055#1055
            end
            object tlbParRelProductsSalesByPartner: TToolButton
              Left = 571
              Top = 0
              Width = 8
              Caption = 'tlbParRelProductsSalesByPartner'
              ImageIndex = 7
              Style = tbsSeparator
            end
            object btnParRelProductsSalesByPartner: TToolButton
              Left = 579
              Top = 0
              Action = actParRelProductsSalesByPartner
              Caption = #1052#1048#1048#1056' '#1057#1091#1073'.'
            end
            object btnParRelProductsSalesByProduct: TToolButton
              Left = 656
              Top = 0
              Action = actParRelProductsSalesByProduct
              Caption = #1052#1048#1048#1056' '#1054#1073'.'
            end
            object sepExceptEventsSales: TToolButton
              Left = 733
              Top = 0
              Width = 8
              Caption = 'sepExceptEventsSales'
              ImageIndex = 6
              Style = tbsSeparator
            end
            object btnExceptEventsSales: TToolButton
              Left = 741
              Top = 0
              Action = actExceptEventsSales
              Caption = #1053#1054
            end
          end
        end
        object pnlToolbar13: TPanel
          Tag = 13
          Left = 0
          Top = 598
          Width = 904
          Height = 46
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 10
          Visible = False
          object bvlToolbar13: TBevel
            Left = 0
            Top = 44
            Width = 904
            Height = 2
            Align = alBottom
            Shape = bsBottomLine
          end
          object lblToolbar13: TJvLabel
            Left = 0
            Top = 0
            Width = 19
            Height = 44
            Align = alLeft
            Alignment = taCenter
            AutoSize = False
            Caption = #1054#1058#1057
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 12615680
            Font.Height = -13
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
            Angle = 90
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -13
            HotTrackFont.Name = 'Microsoft Sans Serif'
            HotTrackFont.Style = []
          end
          object tlb13: TToolBar
            Tag = 13
            Left = 19
            Top = 0
            Width = 885
            Height = 44
            Align = alClient
            AutoSize = True
            ButtonHeight = 44
            ButtonWidth = 92
            Images = ilLargeImages
            ShowCaptions = True
            TabOrder = 0
            Wrapable = False
            object sepToolbarCaption13: TToolButton
              Left = 0
              Top = 0
              Width = 8
              Caption = 'ToolButton4'
              ImageIndex = 2
              Style = tbsSeparator
            end
            object btnBudgetClassesTree2: TToolButton
              Left = 8
              Top = 0
              Action = actBudgetClassesTree
              Caption = #1050#1083#1072#1089'. '#1056#1079#1093'&&'#1048#1085#1074'.'
            end
            object septBudgetExpense: TToolButton
              Left = 100
              Top = 0
              Width = 8
              Caption = 'sepBudgetInvest'
              ImageIndex = 5
              Style = tbsSeparator
            end
            object btnBudgetExpense: TToolButton
              Left = 108
              Top = 0
              Action = actBudgetExpense
              Caption = #1056#1072#1079#1093'. '#1057#1088#1077#1076#1072
            end
            object btnBudgetOrdersExpense: TToolButton
              Left = 200
              Top = 0
              Action = actBudgetOrdersExpense
              Caption = #1056#1072#1079#1093'. '#1041#1086#1088#1076'.'
            end
            object btnBOIProductOrdersExpense: TToolButton
              Left = 292
              Top = 0
              Action = actBOIProductOrdersExpense
              Caption = #1056#1072#1079#1093'. '#1054#1088'. '#1055#1088#1076'.'
            end
            object btnBOICompanyOrdersExpense: TToolButton
              Left = 384
              Top = 0
              Action = actBOICompanyOrdersExpense
              Caption = #1056#1072#1079#1093'. '#1054#1088'. '#1054#1073#1089#1083'.'
            end
            object btnBOIWasteOrdersExpense: TToolButton
              Left = 476
              Top = 0
              Action = actBOIWasteOrdersExpense
              Caption = #1056#1072#1079#1093'. '#1054#1088'. '#1055#1088#1077#1086#1094'.'
            end
          end
        end
        object pnlToolbar15: TPanel
          Tag = 15
          Left = 0
          Top = 690
          Width = 904
          Height = 46
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 11
          Visible = False
          object bvlToolbar15: TBevel
            Left = 0
            Top = 44
            Width = 904
            Height = 2
            Align = alBottom
            Shape = bsBottomLine
          end
          object lblToolbar15: TJvLabel
            Left = 0
            Top = 0
            Width = 19
            Height = 44
            Align = alLeft
            Alignment = taCenter
            AutoSize = False
            Caption = #1055#1088#1076
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 12615680
            Font.Height = -13
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
            Angle = 90
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -13
            HotTrackFont.Name = 'Microsoft Sans Serif'
            HotTrackFont.Style = []
          end
          object tlb15: TToolBar
            Tag = 15
            Left = 19
            Top = 0
            Width = 885
            Height = 44
            Align = alClient
            AutoSize = True
            ButtonHeight = 44
            ButtonWidth = 72
            Images = ilLargeImages
            ShowCaptions = True
            TabOrder = 0
            Wrapable = False
            object sepToolbarCaption15: TToolButton
              Left = 0
              Top = 0
              Width = 8
              Caption = 'ToolButton4'
              ImageIndex = 2
              Style = tbsSeparator
            end
            object btnOutFaktura: TToolButton
              Left = 8
              Top = 0
              Action = actOutFaktura
              Caption = #1060#1072#1082#1090#1091#1088#1072
            end
            object btnOutDebitnoIzvestie: TToolButton
              Left = 80
              Top = 0
              Action = actOutDebitnoIzvestie
              Caption = #1044#1073#1090'. '#1048#1079#1074'.'
            end
            object btnOutKreditnoIzvestie: TToolButton
              Left = 152
              Top = 0
              Action = actOutKreditnoIzvestie
              Caption = '  '#1050#1088#1076#1090'. '#1048#1079#1074'.  '
            end
            object sepOutProtokolIliDrugDokument: TToolButton
              Left = 224
              Top = 0
              Width = 8
              Caption = 'sepOutProtokolIliDrugDokument'
              ImageIndex = 6
              Style = tbsSeparator
              Visible = False
            end
            object btnOutProtokolIliDrugDokument: TToolButton
              Left = 232
              Top = 0
              Action = actOutProtokol
              Caption = #1055#1088#1086#1090#1086#1082#1086#1083
            end
            object btnOutKoregirashtProtokol: TToolButton
              Left = 304
              Top = 0
              Action = actOutKoregirashtProtokol
              Caption = #1050#1086#1088#1077#1075'. '#1087#1088#1086#1090'.'
            end
            object ToolButton12: TToolButton
              Left = 376
              Top = 0
              Width = 8
              Caption = 'ToolButton12'
              ImageIndex = 6
              Style = tbsSeparator
            end
            object btnOutOtchetZaProdajbite: TToolButton
              Left = 384
              Top = 0
              Action = actOutOtchetZaProdajbite
              Caption = #1054#1090#1095'. '#1055#1088#1076#1078'.'
            end
            object ToolButton15: TToolButton
              Left = 456
              Top = 0
              Width = 8
              Caption = 'ToolButton15'
              ImageIndex = 8
              Style = tbsSeparator
            end
            object btnInvoices1: TToolButton
              Left = 464
              Top = 0
              Action = actInvoicesOut
              Caption = #1060#1072#1082#1090#1091#1088#1080
            end
          end
        end
        object pnlToolbar17: TPanel
          Tag = 17
          Left = 0
          Top = 782
          Width = 904
          Height = 46
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 12
          Visible = False
          object bvlToolbar17: TBevel
            Left = 0
            Top = 44
            Width = 904
            Height = 2
            Align = alBottom
            Shape = bsBottomLine
          end
          object lblToolbar17: TJvLabel
            Left = 0
            Top = 0
            Width = 19
            Height = 44
            Align = alLeft
            Alignment = taCenter
            AutoSize = False
            Caption = #1044#1089#1090
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 12615680
            Font.Height = -13
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
            Angle = 90
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -13
            HotTrackFont.Name = 'Microsoft Sans Serif'
            HotTrackFont.Style = []
          end
          object tlb17: TToolBar
            Tag = 17
            Left = 19
            Top = 0
            Width = 885
            Height = 44
            Align = alClient
            AutoSize = True
            ButtonHeight = 44
            ButtonWidth = 83
            Images = ilLargeImages
            ShowCaptions = True
            TabOrder = 0
            Wrapable = False
            object sepToolbarCaption17: TToolButton
              Left = 0
              Top = 0
              Width = 8
              Caption = 'ToolButton4'
              ImageIndex = 2
              Style = tbsSeparator
            end
            object btnEstPricesCompareGraphDeliveriesCoveringSales: TToolButton
              Left = 8
              Top = 0
              Action = actEstPricesCompareGraphDeliveriesCoveringSales
              Caption = #1042#1048#1052' '#1044#1089#1090'. '#1045#1083#1055
            end
            object sepNewDeficitCoverDecision1: TToolButton
              Left = 91
              Top = 0
              Width = 8
              Caption = 'sepNewDeficitCoverDecision1'
              ImageIndex = 1
              Style = tbsSeparator
            end
            object btnNewDeficitCoverDecision: TToolButton
              Left = 99
              Top = 0
              Action = actNewDeficitCoverDecision
              Caption = #1055#1044#1044' '#1045#1083#1055
            end
            object btnDeficitCoverDecisions: TToolButton
              Left = 182
              Top = 0
              Action = actDeficitCoverDecisions
              Caption = #1055#1044#1044' '#1045#1083#1055
            end
            object btnDeliveryDialogs: TToolButton
              Left = 265
              Top = 0
              Action = actDeliveryDialogs
              Caption = #1054#1044#1044' '#1045#1083#1055
            end
            object sepDeliveries: TToolButton
              Left = 348
              Top = 0
              Width = 8
              Caption = 'sepDeliveries'
              ImageIndex = 7
              Style = tbsSeparator
            end
            object btnDeliveries: TToolButton
              Left = 356
              Top = 0
              Action = actDeliveries
              Caption = #1054#1055#1044' '#1045#1083#1055
            end
            object sepParRelProductsDeliveriesCoveringSalesByPartner: TToolButton
              Left = 439
              Top = 0
              Width = 8
              Caption = 'sepParRelProductsDeliveriesCoveringSalesByPartner'
              ImageIndex = 5
              Style = tbsSeparator
            end
            object btnParRelProductsDeliveriesCoveringSalesByPartner: TToolButton
              Left = 447
              Top = 0
              Action = actParRelProductsDeliveriesCoveringSalesByPartner
              Caption = #1052#1048#1044' '#1055#1088#1076'.-'#1057#1091#1073'.'
            end
            object btnParRelProductsDeliveriesCoveringSalesByProduct: TToolButton
              Left = 530
              Top = 0
              Action = actParRelProductsDeliveriesCoveringSalesByProduct
              Caption = #1052#1048#1044' '#1055#1088#1076'.-'#1054#1073'.'
            end
            object sepExceptEventsDeliveries: TToolButton
              Left = 613
              Top = 0
              Width = 8
              ImageIndex = 6
              Style = tbsSeparator
            end
            object btnExceptEventsDeliveries: TToolButton
              Left = 621
              Top = 0
              Action = actExceptEventsDeliveries
              Caption = #1053#1054
            end
          end
        end
        object pnlToolbar18: TPanel
          Tag = 18
          Left = 0
          Top = 828
          Width = 904
          Height = 46
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 13
          Visible = False
          object bvlToolbar18: TBevel
            Left = 0
            Top = 44
            Width = 904
            Height = 2
            Align = alBottom
            Shape = bsBottomLine
          end
          object lblToolbar18: TJvLabel
            Left = 0
            Top = 0
            Width = 19
            Height = 44
            Align = alLeft
            Alignment = taCenter
            AutoSize = False
            Caption = #1044#1089#1090
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 12615680
            Font.Height = -13
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
            Angle = 90
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -13
            HotTrackFont.Name = 'Microsoft Sans Serif'
            HotTrackFont.Style = []
          end
          object tlb18: TToolBar
            Tag = 18
            Left = 19
            Top = 0
            Width = 885
            Height = 44
            Align = alClient
            AutoSize = True
            ButtonHeight = 44
            ButtonWidth = 83
            Images = ilLargeImages
            ShowCaptions = True
            TabOrder = 0
            Wrapable = False
            object sepToolbarCaption18: TToolButton
              Left = 0
              Top = 0
              Width = 8
              Caption = 'ToolButton4'
              ImageIndex = 2
              Style = tbsSeparator
            end
            object btnEstPricesCompareGraphDeliveriesCoveringEnv: TToolButton
              Left = 8
              Top = 0
              Action = actEstPricesCompareGraphDeliveriesCoveringEnv
              Caption = #1042#1048#1052' '#1044#1089#1090'. '#1045#1083#1057' '
            end
            object sepNewDeficitCoverDecision2: TToolButton
              Left = 91
              Top = 0
              Width = 8
              Caption = 'sepNewDeficitCoverDecision2'
              ImageIndex = 8
              Style = tbsSeparator
            end
            object btnNewDeficitCoverDecision2: TToolButton
              Left = 99
              Top = 0
              Action = actNewDeficitCoverDecision
              Caption = #1055#1044#1044' '#1045#1083#1057
            end
            object btnDeficitCoverDecisions2: TToolButton
              Left = 182
              Top = 0
              Action = actDeficitCoverDecisions2
              Caption = #1055#1044#1044' '#1045#1083#1057
            end
            object btnDeliveryDialogs2: TToolButton
              Left = 265
              Top = 0
              Action = actDeliveryDialogs2
              Caption = #1054#1044#1044' '#1045#1083#1057
            end
            object sepDeliveries2: TToolButton
              Left = 348
              Top = 0
              Width = 8
              Caption = 'sepDeliveries2'
              ImageIndex = 10
              Style = tbsSeparator
            end
            object btnDeliveries2: TToolButton
              Left = 356
              Top = 0
              Action = actDeliveries2
              Caption = #1054#1055#1044' '#1045#1083#1057
            end
            object sepParRelProductsDeliveriesCoveringEnvByPartner: TToolButton
              Left = 439
              Top = 0
              Width = 8
              Caption = 'sepParRelProductsDeliveriesCoveringEnvByPartner'
              ImageIndex = 12
              Style = tbsSeparator
            end
            object btnParRelProductsDeliveriesCoveringEnvByPartner: TToolButton
              Left = 447
              Top = 0
              Action = actParRelProductsDeliveriesCoveringEnvByPartner
              Caption = #1052#1048#1044' '#1045#1083#1057'-'#1057#1091#1073'.'
            end
            object btnParRelProductsDeliveriesCoveringEnvByProduct: TToolButton
              Left = 530
              Top = 0
              Action = actParRelProductsDeliveriesCoveringEnvByProduct
              Caption = #1052#1048#1044' '#1045#1083#1057'-'#1054#1073'.'
            end
            object sepExceptEventsDeliveriesEnv: TToolButton
              Left = 613
              Top = 0
              Width = 8
              Caption = 'sepExceptEventsDeliveriesEnv'
              ImageIndex = 6
              Style = tbsSeparator
            end
            object btnExceptEventsDeliveriesEnv: TToolButton
              Left = 621
              Top = 0
              Action = actExceptEventsDeliveries
              Caption = #1053#1054
            end
          end
        end
        object pnlToolbar10: TPanel
          Tag = 10
          Left = 0
          Top = 414
          Width = 904
          Height = 46
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 14
          Visible = False
          object bvlToolbar10: TBevel
            Left = 0
            Top = 44
            Width = 904
            Height = 2
            Align = alBottom
            Shape = bsBottomLine
          end
          object lblToolbar10: TJvLabel
            Left = 0
            Top = 0
            Width = 19
            Height = 44
            Align = alLeft
            Alignment = taCenter
            AutoSize = False
            Caption = #1055#1088#1082#1090
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 12615680
            Font.Height = -13
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
            Angle = 90
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -13
            HotTrackFont.Name = 'Microsoft Sans Serif'
            HotTrackFont.Style = []
          end
          object tlb10: TToolBar
            Tag = 10
            Left = 19
            Top = 0
            Width = 885
            Height = 44
            Align = alClient
            AutoSize = True
            ButtonHeight = 44
            ButtonWidth = 80
            Images = ilLargeImages
            ShowCaptions = True
            TabOrder = 0
            Wrapable = False
            object sepOrganisationTaskProposals: TToolButton
              Left = 0
              Top = 0
              Width = 8
              ImageIndex = 6
              Style = tbsSeparator
            end
            object btnOrganisationTaskProposals: TToolButton
              Left = 8
              Top = 0
              Action = actOrganisationTaskProposals
              Caption = #1056#1077#1075'. '#1055#1088#1086#1077#1082#1090#1080
            end
            object sepNewProductionOrder5: TToolButton
              Left = 88
              Top = 0
              Width = 8
              Caption = 'sepNewProductionOrder5'
              ImageIndex = 2
              Style = tbsSeparator
            end
            object btnNewProductionOrder5: TToolButton
              Left = 96
              Top = 0
              Action = actNewProductionOrder
              Caption = #1054#1055#1042
            end
            object btnProductionOrders5: TToolButton
              Left = 176
              Top = 0
              Action = actProductionOrders
              Caption = #1054#1055#1042
            end
            object sepXModels5: TToolButton
              Left = 256
              Top = 0
              Width = 8
              Caption = 'sepXModels5'
              ImageIndex = 2
              Style = tbsSeparator
            end
            object btnXModels5: TToolButton
              Left = 264
              Top = 0
              Action = actXModels
              Caption = #1048#1056
            end
            object btnModelsInvestedValues5: TToolButton
              Left = 344
              Top = 0
              Action = actModelsInvestedValues
              Caption = #1048#1085#1078#1054#1088#1057#1040#1085
            end
            object sepStageLevelTasks5: TToolButton
              Left = 424
              Top = 0
              Width = 8
              Caption = 'sepStageLevelTasks5'
              ImageIndex = 4
              Style = tbsSeparator
            end
            object btnStageLevelTasks5: TToolButton
              Left = 432
              Top = 0
              Action = actStageLevelTasks
              Caption = #1045#1090'. '#1047#1072#1076#1072#1085#1080#1103
            end
            object btnOperationalTasks5: TToolButton
              Left = 512
              Top = 0
              Action = actOperationalTasks
              Caption = #1054#1087'. '#1047#1072#1076#1072#1085#1080#1103
            end
            object btnSpecialControlTasks5: TToolButton
              Left = 592
              Top = 0
              Action = actSpecialControlTasks
              Caption = #1047#1072#1076'. '#1057#1087#1094'. '#1050#1085'.'
            end
            object sepModelMovementsOverview5: TToolButton
              Left = 672
              Top = 0
              Width = 8
              Caption = 'sepModelMovementsOverview5'
              ImageIndex = 7
              Style = tbsSeparator
            end
            object btnModelMovementsOverview5: TToolButton
              Left = 680
              Top = 0
              Action = actModelMovementsOverview
              Caption = #1045#1090'. '#1044#1074#1080#1078#1077#1085#1080#1103
            end
            object btnOperationMovements5: TToolButton
              Left = 760
              Top = 0
              Action = actOperationMovements
              Caption = #1054#1087'. '#1044#1074#1080#1078#1077#1085#1080#1103
            end
          end
        end
        object pnlToolbar12: TPanel
          Tag = 12
          Left = 0
          Top = 552
          Width = 904
          Height = 46
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 15
          Visible = False
          object bvlToolbar12: TBevel
            Left = 0
            Top = 44
            Width = 904
            Height = 2
            Align = alBottom
            Shape = bsBottomLine
          end
          object lblToolbar12: TJvLabel
            Left = 0
            Top = 0
            Width = 19
            Height = 44
            Align = alLeft
            Alignment = taCenter
            AutoSize = False
            Caption = #1045#1083#1057
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 12615680
            Font.Height = -13
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
            Angle = 90
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -13
            HotTrackFont.Name = 'Microsoft Sans Serif'
            HotTrackFont.Style = []
          end
          object tlb12: TToolBar
            Tag = 12
            Left = 19
            Top = 0
            Width = 885
            Height = 44
            Align = alClient
            AutoSize = True
            ButtonHeight = 44
            ButtonWidth = 80
            Images = ilLargeImages
            ShowCaptions = True
            TabOrder = 0
            Wrapable = False
            object sepNewProductionOrder2: TToolButton
              Left = 0
              Top = 0
              Width = 8
              Caption = 'ToolButton4'
              ImageIndex = 2
              Style = tbsSeparator
            end
            object btnNewProductionOrder2: TToolButton
              Left = 8
              Top = 0
              Action = actNewProductionOrder
              Caption = #1054#1055#1042
            end
            object btnProductionOrders2: TToolButton
              Left = 88
              Top = 0
              Action = actProductionOrders
              Caption = #1054#1055#1042
            end
            object sepXModels2: TToolButton
              Left = 168
              Top = 0
              Width = 8
              Caption = 'sepXModels2'
              ImageIndex = 2
              Style = tbsSeparator
            end
            object btnXModels2: TToolButton
              Left = 176
              Top = 0
              Action = actXModels
              Caption = #1048#1056
            end
            object btnModelsInvestedValues2: TToolButton
              Left = 256
              Top = 0
              Action = actModelsInvestedValues
              Caption = #1048#1085#1078#1054#1088#1057#1040#1085
            end
            object sepStageLevelTasks2: TToolButton
              Left = 336
              Top = 0
              Width = 8
              Caption = 'sepStageLevelTasks2'
              ImageIndex = 4
              Style = tbsSeparator
            end
            object btnStageLevelTasks2: TToolButton
              Left = 344
              Top = 0
              Action = actStageLevelTasks
              Caption = #1045#1090'. '#1047#1072#1076#1072#1085#1080#1103
            end
            object btnOperationalTasks2: TToolButton
              Left = 424
              Top = 0
              Action = actOperationalTasks
              Caption = #1054#1087'. '#1047#1072#1076#1072#1085#1080#1103
            end
            object btnSpecialControlTasks2: TToolButton
              Left = 504
              Top = 0
              Action = actSpecialControlTasks
              Caption = #1047#1072#1076'. '#1057#1087#1094'. '#1050#1085'.'
            end
            object sepModelMovementsOverview2: TToolButton
              Left = 584
              Top = 0
              Width = 8
              Caption = 'sepModelMovementsOverview2'
              ImageIndex = 7
              Style = tbsSeparator
            end
            object btnModelMovementsOverview2: TToolButton
              Left = 592
              Top = 0
              Action = actModelMovementsOverview
              Caption = #1045#1090'. '#1044#1074#1080#1078#1077#1085#1080#1103
            end
            object btnOperationMovements2: TToolButton
              Left = 672
              Top = 0
              Action = actOperationMovements
              Caption = #1054#1087'. '#1044#1074#1080#1078#1077#1085#1080#1103
            end
          end
        end
        object pnlToolbar16: TPanel
          Tag = 16
          Left = 0
          Top = 736
          Width = 904
          Height = 46
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 16
          Visible = False
          object bvlToolbar16: TBevel
            Left = 0
            Top = 44
            Width = 904
            Height = 2
            Align = alBottom
            Shape = bsBottomLine
          end
          object lblToolbar16: TJvLabel
            Left = 0
            Top = 0
            Width = 19
            Height = 44
            Align = alLeft
            Alignment = taCenter
            AutoSize = False
            Caption = #1045#1083#1055
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 12615680
            Font.Height = -13
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
            Angle = 90
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -13
            HotTrackFont.Name = 'Microsoft Sans Serif'
            HotTrackFont.Style = []
          end
          object tlb16: TToolBar
            Tag = 16
            Left = 19
            Top = 0
            Width = 885
            Height = 44
            Align = alClient
            AutoSize = True
            ButtonHeight = 44
            ButtonWidth = 80
            Images = ilLargeImages
            ShowCaptions = True
            TabOrder = 0
            Wrapable = False
            object sepNewProductionOrder4: TToolButton
              Left = 0
              Top = 0
              Width = 8
              Caption = 'ToolButton4'
              ImageIndex = 2
              Style = tbsSeparator
            end
            object btnNewProductionOrder4: TToolButton
              Left = 8
              Top = 0
              Action = actNewProductionOrder
              Caption = #1054#1055#1042
            end
            object btnProductionOrders4: TToolButton
              Left = 88
              Top = 0
              Action = actProductionOrders
              Caption = #1054#1055#1042
            end
            object sepXModels4: TToolButton
              Left = 168
              Top = 0
              Width = 8
              Caption = 'sepXModels4'
              ImageIndex = 2
              Style = tbsSeparator
            end
            object btnXModels4: TToolButton
              Left = 176
              Top = 0
              Action = actXModels
              Caption = #1048#1056
            end
            object btnModelsInvestedValues4: TToolButton
              Left = 256
              Top = 0
              Action = actModelsInvestedValues
              Caption = #1048#1085#1078#1054#1088#1057#1040#1085
            end
            object sepStageLevelTasks4: TToolButton
              Left = 336
              Top = 0
              Width = 8
              Caption = 'sepStageLevelTasks4'
              ImageIndex = 4
              Style = tbsSeparator
            end
            object btnStageLevelTasks4: TToolButton
              Left = 344
              Top = 0
              Action = actStageLevelTasks
              Caption = #1045#1090'. '#1047#1072#1076#1072#1085#1080#1103
            end
            object btnOperationalTasks4: TToolButton
              Left = 424
              Top = 0
              Action = actOperationalTasks
              Caption = #1054#1087'. '#1047#1072#1076#1072#1085#1080#1103
            end
            object btnSpecialControlTasks4: TToolButton
              Left = 504
              Top = 0
              Action = actSpecialControlTasks
              Caption = #1047#1072#1076'. '#1057#1087#1094'. '#1050#1085'.'
            end
            object sepModelMovementsOverview4: TToolButton
              Left = 584
              Top = 0
              Width = 8
              Caption = 'sepModelMovementsOverview4'
              ImageIndex = 7
              Style = tbsSeparator
            end
            object btnModelMovementsOverview4: TToolButton
              Left = 592
              Top = 0
              Action = actModelMovementsOverview
              Caption = #1045#1090'. '#1044#1074#1080#1078#1077#1085#1080#1103
            end
            object btnOperationMovements4: TToolButton
              Left = 672
              Top = 0
              Action = actOperationMovements
              Caption = #1054#1087'. '#1044#1074#1080#1078#1077#1085#1080#1103
            end
            object sepExceptEventsProduction: TToolButton
              Left = 752
              Top = 0
              Width = 8
              Caption = 'sepExceptEventsProduction'
              ImageIndex = 6
              Style = tbsSeparator
            end
            object ToolButton8: TToolButton
              Left = 760
              Top = 0
              Action = actExceptEventsProduction
              Caption = #1053#1054
            end
          end
        end
        object pnlToolbar19: TPanel
          Tag = 19
          Left = 0
          Top = 874
          Width = 904
          Height = 46
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 17
          Visible = False
          object bvlToolbar19: TBevel
            Left = 0
            Top = 44
            Width = 904
            Height = 2
            Align = alBottom
            Shape = bsBottomLine
          end
          object lblToolbar19: TJvLabel
            Left = 0
            Top = 0
            Width = 19
            Height = 44
            Align = alLeft
            Alignment = taCenter
            AutoSize = False
            Caption = #1044#1089#1090
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 12615680
            Font.Height = -13
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
            Angle = 90
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -13
            HotTrackFont.Name = 'Microsoft Sans Serif'
            HotTrackFont.Style = []
          end
          object tlb19: TToolBar
            Tag = 19
            Left = 19
            Top = 0
            Width = 885
            Height = 44
            Align = alClient
            AutoSize = True
            ButtonHeight = 44
            ButtonWidth = 80
            Images = ilLargeImages
            ShowCaptions = True
            TabOrder = 0
            Wrapable = False
            object sepNewProductionOrder1: TToolButton
              Left = 0
              Top = 0
              Width = 8
              Caption = 'ToolButton4'
              ImageIndex = 2
              Style = tbsSeparator
            end
            object btnNewProductionOrder1: TToolButton
              Left = 8
              Top = 0
              Action = actNewProductionOrder
              Caption = #1054#1055#1042
            end
            object btnProductionOrders1: TToolButton
              Left = 88
              Top = 0
              Action = actProductionOrders
              Caption = #1054#1055#1042
            end
            object sepXModels1: TToolButton
              Left = 168
              Top = 0
              Width = 8
              Caption = 'sepXModels1'
              ImageIndex = 2
              Style = tbsSeparator
            end
            object btnXModels1: TToolButton
              Left = 176
              Top = 0
              Action = actXModels
              Caption = #1048#1056
            end
            object btnModelsInvestedValues1: TToolButton
              Left = 256
              Top = 0
              Action = actModelsInvestedValues
              Caption = #1048#1085#1078#1054#1088#1057#1040#1085
            end
            object sepStageLevelTasks1: TToolButton
              Left = 336
              Top = 0
              Width = 8
              Caption = 'sepStageLevelTasks1'
              ImageIndex = 4
              Style = tbsSeparator
            end
            object btnStageLevelTasks1: TToolButton
              Left = 344
              Top = 0
              Action = actStageLevelTasks
              Caption = #1045#1090'. '#1047#1072#1076#1072#1085#1080#1103
            end
            object btnOperationalTasks1: TToolButton
              Left = 424
              Top = 0
              Action = actOperationalTasks
              Caption = #1054#1087'. '#1047#1072#1076#1072#1085#1080#1103
            end
            object btnSpecialControlTasks1: TToolButton
              Left = 504
              Top = 0
              Action = actSpecialControlTasks
              Caption = #1047#1072#1076'. '#1057#1087#1094'. '#1050#1085'.'
            end
            object sepModelMovementsOverview1: TToolButton
              Left = 584
              Top = 0
              Width = 8
              Caption = 'sepModelMovementsOverview1'
              ImageIndex = 7
              Style = tbsSeparator
            end
            object btnModelMovementsOverview1: TToolButton
              Left = 592
              Top = 0
              Action = actModelMovementsOverview
              Caption = #1045#1090'. '#1044#1074#1080#1078#1077#1085#1080#1103
            end
            object btnOperationMovements1: TToolButton
              Left = 672
              Top = 0
              Action = actOperationMovements
              Caption = #1054#1087'. '#1044#1074#1080#1078#1077#1085#1080#1103
            end
          end
        end
        object pnlToolbar21: TPanel
          Tag = 21
          Left = 0
          Top = 920
          Width = 904
          Height = 46
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 18
          Visible = False
          object bvlToolbar21: TBevel
            Left = 0
            Top = 44
            Width = 904
            Height = 2
            Align = alBottom
            Shape = bsBottomLine
          end
          object lblToolbar21: TJvLabel
            Left = 0
            Top = 0
            Width = 19
            Height = 44
            Align = alLeft
            Alignment = taCenter
            AutoSize = False
            Caption = #1060#1085#1089
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 12615680
            Font.Height = -13
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
            Angle = 90
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -13
            HotTrackFont.Name = 'Microsoft Sans Serif'
            HotTrackFont.Style = []
          end
          object tlb21: TToolBar
            Tag = 21
            Left = 19
            Top = 0
            Width = 885
            Height = 44
            Align = alClient
            AutoSize = True
            ButtonHeight = 44
            ButtonWidth = 87
            Images = ilLargeImages
            ShowCaptions = True
            TabOrder = 0
            Wrapable = False
            object ToolButton2: TToolButton
              Left = 0
              Top = 0
              Width = 8
              Caption = 'ToolButton4'
              ImageIndex = 2
              Style = tbsSeparator
            end
            object btnFinancialProducts: TToolButton
              Left = 8
              Top = 0
              Action = actFinancialProducts
              Caption = #1060#1054#1073
            end
            object btnFinancialCommonGroups: TToolButton
              Left = 95
              Top = 0
              Action = actFinancialCommonGroups
              Caption = #1058#1049#1057' '#1060#1054#1073
            end
            object btnCurrencies: TToolButton
              Left = 182
              Top = 0
              Action = actCurrencies
              Caption = #1042#1072#1083#1091#1090#1080
            end
            object btnCurrencyRates: TToolButton
              Left = 269
              Top = 0
              Action = actCurrencyRates
              Caption = #1050#1091#1088#1089#1086#1074#1077
            end
            object sepNewFinancialOrder: TToolButton
              Left = 356
              Top = 0
              Width = 8
              Caption = 'btnNewFinancialOrder'
              ImageIndex = 2
              Style = tbsSeparator
            end
            object btnNewFinancialOrder: TToolButton
              Left = 364
              Top = 0
              Action = actNewFinancialOrder
              Caption = #1054#1055#1060
            end
            object btnFinancialOrders: TToolButton
              Left = 451
              Top = 0
              Action = actFinancialOrders
              Caption = #1054#1055#1060
            end
            object btnRealFinModelLines: TToolButton
              Left = 538
              Top = 0
              Action = actRealFinModelLines
              Caption = #1056#1077#1076#1086#1074#1077' '#1054#1055#1060
            end
            object btnRealFinModelLineGroups: TToolButton
              Left = 625
              Top = 0
              Action = actRealFinModelLineGroups
              Caption = #1043#1088'. '#1056#1077#1076'. '#1054#1055#1060
            end
            object sepFinancialRelationsGraph: TToolButton
              Left = 712
              Top = 0
              Width = 8
              Caption = 'sepFinancialRelationsGraph'
              ImageIndex = 7
              Style = tbsSeparator
            end
            object btnFinancialRelationsGraph: TToolButton
              Left = 720
              Top = 0
              Action = actFinancialRelationsGraph
              Caption = #1042#1048#1052' '#1060#1080#1085#1072#1085#1089#1086#1074
            end
            object btnFinancialRelationsTable: TToolButton
              Left = 807
              Top = 0
              Action = actFinancialRelationsTable
              Caption = #1042#1048#1052' '#1060#1080#1085#1072#1085#1089#1086#1074
            end
            object sepExceptEventsFin: TToolButton
              Left = 894
              Top = 0
              Width = 8
              ImageIndex = 6
              Style = tbsSeparator
            end
            object btnExceptEventsFin: TToolButton
              Left = 902
              Top = 0
              Action = actExceptEventsFinancial
              Caption = #1053#1054
            end
          end
        end
        object pnlToolbar22: TPanel
          Tag = 22
          Left = 0
          Top = 966
          Width = 904
          Height = 46
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 19
          Visible = False
          object bvlToolbar22: TBevel
            Left = 0
            Top = 44
            Width = 904
            Height = 2
            Align = alBottom
            Shape = bsBottomLine
          end
          object lblToolbar22: TJvLabel
            Left = 0
            Top = 0
            Width = 19
            Height = 44
            Align = alLeft
            Alignment = taCenter
            AutoSize = False
            Caption = #1060#1085#1089
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 12615680
            Font.Height = -13
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
            Angle = 90
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -13
            HotTrackFont.Name = 'Microsoft Sans Serif'
            HotTrackFont.Style = []
          end
          object tlb22: TToolBar
            Tag = 22
            Left = 19
            Top = 0
            Width = 885
            Height = 44
            Align = alClient
            AutoSize = True
            ButtonHeight = 44
            ButtonWidth = 79
            Images = ilLargeImages
            ShowCaptions = True
            TabOrder = 0
            Wrapable = False
            object ToolButton3: TToolButton
              Left = 0
              Top = 0
              Width = 8
              Caption = 'ToolButton4'
              ImageIndex = 2
              Style = tbsSeparator
            end
            object btnNewFinancialStoreDealIn: TToolButton
              Left = 8
              Top = 0
              Action = actNewFinancialStoreDealIn
              Caption = #1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1077
            end
            object btnNewFinancialStoreDealOut: TToolButton
              Left = 87
              Top = 0
              Action = actNewFinancialStoreDealOut
              Caption = #1058#1077#1075#1083#1077#1085#1077
            end
            object btnFinancialStoreDeals: TToolButton
              Left = 166
              Top = 0
              Action = actFinancialStoreDeals
              Caption = #1054#1090#1095#1077#1090'. '#1055' '#1080' '#1058
            end
            object sepPlannedFinancialStoreDeals: TToolButton
              Left = 245
              Top = 0
              Width = 8
              Caption = 'sepPlannedFinancialStoreDeals'
              ImageIndex = 2
              Style = tbsSeparator
            end
            object btnPlannedFinancialStoreDeals: TToolButton
              Left = 253
              Top = 0
              Action = actPlannedFinancialStoreDeals
              Caption = #1055#1083#1072#1085'. '#1055' '#1080' '#1058
            end
            object btnUncoveredPlannedFinancialStoreDeals: TToolButton
              Left = 332
              Top = 0
              Action = actUncoveredPlannedFinancialStoreDeals
              Caption = #1053#1077#1086#1073'. '#1055#1083'. '#1058
            end
            object sepNewFinancialStoreRequest: TToolButton
              Left = 411
              Top = 0
              Width = 8
              Caption = 'sepNewFinancialStoreRequest'
              ImageIndex = 7
              Style = tbsSeparator
            end
            object btnNewFinancialStoreRequest: TToolButton
              Left = 419
              Top = 0
              Action = actNewFinancialStoreRequest
              Caption = #1047#1072#1103#1074#1082#1072' '#1044#1074#1080#1078'.'
            end
            object btnFinancialStoreRequests: TToolButton
              Left = 498
              Top = 0
              Action = actFinancialStoreRequests
              Caption = #1047#1072#1103#1074#1082#1080
            end
          end
        end
        object pnlToolbar23: TPanel
          Tag = 23
          Left = 0
          Top = 1012
          Width = 904
          Height = 46
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 20
          Visible = False
          object bvlToolbar23: TBevel
            Left = 0
            Top = 44
            Width = 904
            Height = 2
            Align = alBottom
            Shape = bsBottomLine
          end
          object lblToolbar23: TJvLabel
            Left = 0
            Top = 0
            Width = 19
            Height = 44
            Align = alLeft
            Alignment = taCenter
            AutoSize = False
            Caption = #1060#1085#1089
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 12615680
            Font.Height = -13
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
            Angle = 90
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -13
            HotTrackFont.Name = 'Microsoft Sans Serif'
            HotTrackFont.Style = []
          end
          object tlb23: TToolBar
            Tag = 23
            Left = 19
            Top = 0
            Width = 885
            Height = 44
            Align = alClient
            AutoSize = True
            ButtonHeight = 44
            ButtonWidth = 78
            Images = ilLargeImages
            ShowCaptions = True
            TabOrder = 0
            Wrapable = False
            object ToolButton4: TToolButton
              Left = 0
              Top = 0
              Width = 8
              Caption = 'ToolButton4'
              ImageIndex = 2
              Style = tbsSeparator
            end
            object btnFinancialVIMQuantity: TToolButton
              Left = 8
              Top = 0
              Action = actFinancialVIMQuantity
              Caption = #1042#1048#1052' '#1056#1083'. '#1060#1054#1073
            end
            object btnFinancialQuantityDeficit: TToolButton
              Left = 86
              Top = 0
              Action = actFinancialQuantityDeficit
              Caption = #1042#1048#1052' '#1056#1083'. '#1060#1054#1073
            end
            object btnFinancialStoreQuantities: TToolButton
              Left = 164
              Top = 0
              Action = actFinancialStoreQuantities
              Caption = #1060#1054#1073' '#1053'-'#1089#1090#1080
            end
            object btnFinancialProductQuantitiesTree: TToolButton
              Left = 242
              Top = 0
              Action = actFinancialProductQuantitiesTree
              Caption = #1060#1054#1073' '#1053'-'#1089#1090#1080
            end
          end
        end
        object pnlToolbar24: TPanel
          Tag = 24
          Left = 0
          Top = 1058
          Width = 904
          Height = 46
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 21
          Visible = False
          object bvlToolbar24: TBevel
            Left = 0
            Top = 44
            Width = 904
            Height = 2
            Align = alBottom
            Shape = bsBottomLine
          end
          object lblToolbar24: TJvLabel
            Left = 0
            Top = 0
            Width = 19
            Height = 44
            Align = alLeft
            Alignment = taCenter
            AutoSize = False
            Caption = #1060#1085#1089
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 12615680
            Font.Height = -13
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
            Angle = 90
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -13
            HotTrackFont.Name = 'Microsoft Sans Serif'
            HotTrackFont.Style = []
          end
          object tlb24: TToolBar
            Tag = 24
            Left = 19
            Top = 0
            Width = 885
            Height = 44
            Align = alClient
            AutoSize = True
            ButtonHeight = 44
            ButtonWidth = 79
            Images = ilLargeImages
            ShowCaptions = True
            TabOrder = 0
            Wrapable = False
            object ToolButton5: TToolButton
              Left = 0
              Top = 0
              Width = 8
              Caption = 'ToolButton4'
              ImageIndex = 2
              Style = tbsSeparator
            end
            object btnFinancialEstPricesCompareGraphSales: TToolButton
              Left = 8
              Top = 0
              Action = actFinancialEstPricesCompareGraphSales
              Caption = '     '#1042#1048#1052' '#1048#1056'     '
            end
            object sepNewFinancialSaleRequestGroup: TToolButton
              Left = 87
              Top = 0
              Width = 8
              Caption = 'sepNewFinancialSaleRequestGroup'
              ImageIndex = 4
              Style = tbsSeparator
            end
            object btnNewFinancialSaleRequestGroup: TToolButton
              Left = 95
              Top = 0
              Action = actNewFinancialSaleRequestGroup
              Caption = #1055#1044#1050
            end
            object btnFinancialSaleRequestGroups: TToolButton
              Left = 174
              Top = 0
              Action = actFinancialSaleRequestGroups
              Caption = #1055#1044#1050
            end
            object sepFinancialSaleOrders: TToolButton
              Left = 253
              Top = 0
              Width = 8
              Caption = 'sepFinancialSaleOrders'
              ImageIndex = 4
              Style = tbsSeparator
            end
            object btnFinancialSaleOrders: TToolButton
              Left = 261
              Top = 0
              Action = actFinancialSaleOrders
              Caption = #1054#1044#1050
            end
            object sepFinancialSalesOverviewShp: TToolButton
              Left = 340
              Top = 0
              Width = 8
              Caption = 'sepFinancialSalesOverviewShp'
              ImageIndex = 6
              Style = tbsSeparator
            end
            object btnFinancialSalesOverviewShp: TToolButton
              Left = 348
              Top = 0
              Action = actFinancialSalesOverviewShp
              Caption = #1054#1055#1055
            end
            object sepFinancialParRelProductsSalesByPartner: TToolButton
              Left = 427
              Top = 0
              Width = 8
              Caption = 'sepFinancialParRelProductsSalesByPartner'
              ImageIndex = 6
              Style = tbsSeparator
            end
            object btnFinancialParRelProductsSalesByPartner: TToolButton
              Left = 435
              Top = 0
              Action = actFinancialParRelProductsSalesByPartner
              Caption = #1052#1048#1048#1056' '#1057#1091#1073'.'
            end
            object btnFinancialParRelProductsSalesByProduct: TToolButton
              Left = 514
              Top = 0
              Action = actFinancialParRelProductsSalesByProduct
              Caption = #1052#1048#1048#1056' '#1054#1073'.'
            end
          end
        end
        object pnlToolbar25: TPanel
          Tag = 25
          Left = 0
          Top = 1104
          Width = 904
          Height = 46
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 22
          Visible = False
          object bvlToolbar25: TBevel
            Left = 0
            Top = 44
            Width = 904
            Height = 2
            Align = alBottom
            Shape = bsBottomLine
          end
          object lblToolbar25: TJvLabel
            Left = 0
            Top = 0
            Width = 19
            Height = 44
            Align = alLeft
            Alignment = taCenter
            AutoSize = False
            Caption = #1060#1085#1089
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 12615680
            Font.Height = -13
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
            Angle = 90
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -13
            HotTrackFont.Name = 'Microsoft Sans Serif'
            HotTrackFont.Style = []
          end
          object tlb25: TToolBar
            Tag = 25
            Left = 19
            Top = 0
            Width = 885
            Height = 44
            Align = alClient
            AutoSize = True
            ButtonHeight = 44
            ButtonWidth = 75
            Images = ilLargeImages
            ShowCaptions = True
            TabOrder = 0
            Wrapable = False
            object ToolButton6: TToolButton
              Left = 0
              Top = 0
              Width = 8
              Caption = 'ToolButton4'
              ImageIndex = 2
              Style = tbsSeparator
            end
            object btnFinancialEstPricesCompareGraphDeliveries: TToolButton
              Left = 8
              Top = 0
              Action = actFinancialEstPricesCompareGraphDeliveries
              Caption = '   '#1042#1048#1052' '#1044#1089#1090'.   '
            end
            object sepNewFinancialDeficitCoverDecision: TToolButton
              Left = 83
              Top = 0
              Width = 8
              Caption = 'sepNewFinancialDeficitCoverDecision'
              ImageIndex = 4
              Style = tbsSeparator
            end
            object btnNewFinancialDeficitCoverDecision: TToolButton
              Left = 91
              Top = 0
              Action = actNewFinancialSaleRequestGroup
              Caption = #1055#1044#1044
            end
            object btnFinancialDeficitCoverDecisions: TToolButton
              Left = 166
              Top = 0
              Action = actFinancialDeficitCoverDecisions
              Caption = #1055#1044#1044
            end
            object sepFinancialDeliveryDialogs: TToolButton
              Left = 241
              Top = 0
              Width = 8
              Caption = 'sepFinancialDeliveryDialogs'
              ImageIndex = 4
              Style = tbsSeparator
            end
            object btnFinancialDeliveryDialogs: TToolButton
              Left = 249
              Top = 0
              Action = actFinancialDeliveryDialogs
              Caption = #1054#1044#1044
            end
            object sepFinancialDeliveries: TToolButton
              Left = 324
              Top = 0
              Width = 8
              Caption = 'sepFinancialDeliveries'
              ImageIndex = 6
              Style = tbsSeparator
            end
            object btnFinancialDeliveries: TToolButton
              Left = 332
              Top = 0
              Action = actFinancialDeliveries
              Caption = #1054#1055#1044
            end
            object sepFinancialParRelProductsDeliveriesByPartner: TToolButton
              Left = 407
              Top = 0
              Width = 8
              Caption = 'btnFinancialParRelProductsDeliveriesByPartner'
              ImageIndex = 6
              Style = tbsSeparator
            end
            object btnFinancialParRelProductsDeliveriesByPartner: TToolButton
              Left = 415
              Top = 0
              Action = actFinancialParRelProductsDeliveriesByPartner
              Caption = #1052#1048#1044' '#1057#1091#1073'.'
            end
            object btnFinancialParRelProductsDeliveriesByProduct: TToolButton
              Left = 490
              Top = 0
              Action = actFinancialParRelProductsDeliveriesByProduct
              Caption = #1052#1048#1044' '#1054#1073'.'
            end
          end
        end
        object pnlToolbar26: TPanel
          Tag = 26
          Left = 0
          Top = 46
          Width = 904
          Height = 46
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 23
          Visible = False
          object bvlToolbar26: TBevel
            Left = 0
            Top = 44
            Width = 904
            Height = 2
            Align = alBottom
            Shape = bsBottomLine
          end
          object lblToolbar26: TJvLabel
            Left = 0
            Top = 0
            Width = 19
            Height = 44
            Align = alLeft
            Alignment = taCenter
            AutoSize = False
            Caption = #1057#1091#1073
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 12615680
            Font.Height = -13
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
            Angle = 90
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -13
            HotTrackFont.Name = 'Microsoft Sans Serif'
            HotTrackFont.Style = []
          end
          object tlb26: TToolBar
            Tag = 26
            Left = 19
            Top = 0
            Width = 885
            Height = 44
            Align = alClient
            AutoSize = True
            ButtonHeight = 44
            ButtonWidth = 78
            Color = clBtnFace
            Images = ilLargeImages
            ParentColor = False
            ShowCaptions = True
            TabOrder = 0
            Wrapable = False
            object sepToolbarCaption26: TToolButton
              Left = 0
              Top = 0
              Width = 8
              Caption = 'ToolButton4'
              ImageIndex = 2
              Style = tbsSeparator
            end
            object btnNewDeficitCoverDecision3: TToolButton
              Left = 8
              Top = 0
              Action = actNewDeficitCoverDecision3
              Caption = '  '#1055#1044#1044' '#1044#1056#1054#1088'  '
            end
            object btnDeficitCoverDecisions3: TToolButton
              Left = 86
              Top = 0
              Action = actDeficitCoverDecisions3
              Caption = #1055#1044#1044' '#1044#1056#1054#1088
            end
            object btnDeliveryDialogs3: TToolButton
              Left = 164
              Top = 0
              Action = actDeliveryDialogs3
              Caption = #1054#1044#1044' '#1044#1056#1054#1088
            end
            object sepDeliveries3: TToolButton
              Left = 242
              Top = 0
              Width = 8
              Caption = 'sepDisciplineEventTypes'
              ImageIndex = 3
              Style = tbsSeparator
            end
            object btnDeliveries3: TToolButton
              Left = 250
              Top = 0
              Action = actDeliveries3
              Caption = #1054#1055#1044' '#1044#1056#1054#1088
            end
          end
        end
        object pnlToolbar27: TPanel
          Tag = 27
          Left = 0
          Top = 506
          Width = 904
          Height = 46
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 24
          Visible = False
          object bvlToolbar27: TBevel
            Left = 0
            Top = 44
            Width = 904
            Height = 2
            Align = alBottom
            Shape = bsBottomLine
          end
          object lblToolbar27: TJvLabel
            Left = 0
            Top = 0
            Width = 19
            Height = 44
            Align = alLeft
            Alignment = taCenter
            AutoSize = False
            Caption = #1044#1056#1054#1088
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 12615680
            Font.Height = -13
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
            Angle = 90
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -13
            HotTrackFont.Name = 'Microsoft Sans Serif'
            HotTrackFont.Style = []
          end
          object tlb27: TToolBar
            Tag = 27
            Left = 19
            Top = 0
            Width = 885
            Height = 44
            Align = alClient
            AutoSize = True
            ButtonHeight = 44
            ButtonWidth = 80
            Images = ilLargeImages
            ShowCaptions = True
            TabOrder = 0
            Wrapable = False
            object ToolButton7: TToolButton
              Left = 0
              Top = 0
              Width = 8
              Caption = 'ToolButton4'
              ImageIndex = 2
              Style = tbsSeparator
            end
            object btnNewProductionOrder6: TToolButton
              Left = 8
              Top = 0
              Action = actNewProductionOrder
              Caption = #1054#1055#1042
            end
            object btnProductionOrders6: TToolButton
              Left = 88
              Top = 0
              Action = actProductionOrders
              Caption = #1054#1055#1042
            end
            object sepXModels6: TToolButton
              Left = 168
              Top = 0
              Width = 8
              Caption = 'sepXModels6'
              ImageIndex = 2
              Style = tbsSeparator
            end
            object btnXModels6: TToolButton
              Left = 176
              Top = 0
              Action = actXModels
              Caption = #1048#1056
            end
            object btnModelsInvestedValues6: TToolButton
              Left = 256
              Top = 0
              Action = actModelsInvestedValues
              Caption = #1048#1085#1078#1054#1088#1057#1040#1085
            end
            object sepStageLevelTasks6: TToolButton
              Left = 336
              Top = 0
              Width = 8
              Caption = 'btnStageLevelTasks6'
              ImageIndex = 4
              Style = tbsSeparator
            end
            object btnStageLevelTasks6: TToolButton
              Left = 344
              Top = 0
              Action = actStageLevelTasks
              Caption = #1045#1090'. '#1047#1072#1076#1072#1085#1080#1103
            end
            object btnOperationalTasks6: TToolButton
              Left = 424
              Top = 0
              Action = actOperationalTasks
              Caption = #1054#1087'. '#1047#1072#1076#1072#1085#1080#1103
            end
            object btnSpecialControlTasks6: TToolButton
              Left = 504
              Top = 0
              Action = actSpecialControlTasks
              Caption = #1047#1072#1076'. '#1057#1087#1094'. '#1050#1085'.'
            end
            object sepModelMovementsOverview6: TToolButton
              Left = 584
              Top = 0
              Width = 8
              Caption = 'sepModelMovementsOverview6'
              ImageIndex = 7
              Style = tbsSeparator
            end
            object btnModelMovementsOverview6: TToolButton
              Left = 592
              Top = 0
              Action = actModelMovementsOverview
              Caption = #1045#1090'. '#1044#1074#1080#1078#1077#1085#1080#1103
            end
            object btnOperationMovements6: TToolButton
              Left = 672
              Top = 0
              Action = actOperationMovements
              Caption = #1054#1087'. '#1044#1074#1080#1078#1077#1085#1080#1103
            end
          end
        end
      end
      object pnlMainMenuAndExceptEventIndicators: TPanel
        Left = 0
        Top = 24
        Width = 904
        Height = 21
        Align = alTop
        BevelOuter = bvNone
        Padding.Right = 108
        PopupMenu = pmToolbars
        TabOrder = 1
        object tlbMainMenu: TToolBar
          Left = 0
          Top = 0
          Width = 504
          Height = 21
          Align = alLeft
          AutoSize = True
          ButtonHeight = 21
          ButtonWidth = 78
          Caption = 'tlbMainMenu'
          ShowCaptions = True
          TabOrder = 0
          object btnProgramMenu: TToolButton
            Left = 0
            Top = 0
            AutoSize = True
            Caption = '&'#1053#1072#1089#1090#1088#1086#1081#1082#1080
            Grouped = True
            MenuItem = miProgramMenu
            Style = tbsCheck
          end
          object sepSubjectsMenu: TToolButton
            Left = 66
            Top = 0
            Width = 8
            Caption = 'sepSubjectsMenu'
            ImageIndex = 0
            Style = tbsSeparator
          end
          object btnSubjectsMenu: TToolButton
            Left = 74
            Top = 0
            AutoSize = True
            Caption = '&'#1057#1091#1073#1077#1082#1090#1080
            Grouped = True
            MenuItem = miSubjectsMenu
            Style = tbsCheck
          end
          object btnObjectsMenu: TToolButton
            Left = 126
            Top = 0
            AutoSize = True
            Caption = '&'#1054#1073#1077#1082#1090#1080
            Grouped = True
            MenuItem = miObjectsMenu
            Style = tbsCheck
          end
          object sepEnvironmentMenu: TToolButton
            Left = 174
            Top = 0
            Width = 8
            Caption = 'sepEnvironmentMenu'
            ImageIndex = 0
            Style = tbsSeparator
          end
          object btnEnvironmentMenu: TToolButton
            Left = 182
            Top = 0
            AutoSize = True
            Caption = #1054'&'#1058#1057
            Grouped = True
            MenuItem = miEnvironmentMenu
            Style = tbsCheck
          end
          object btnSalesMenu: TToolButton
            Left = 215
            Top = 0
            AutoSize = True
            Caption = '&'#1055#1088#1086#1076#1072#1078#1073#1080
            Grouped = True
            MenuItem = miSalesMenu
            Style = tbsCheck
          end
          object btnProductionMenu: TToolButton
            Left = 278
            Top = 0
            AutoSize = True
            Caption = '&'#1042#1054#1055#1088#1076
            Grouped = True
            MenuItem = miProductionMenu
            Style = tbsCheck
          end
          object btnDeliveriesMenu: TToolButton
            Left = 324
            Top = 0
            AutoSize = True
            Caption = '&'#1044#1086#1089#1090#1072#1074#1082#1080
            Grouped = True
            MenuItem = miDeliveriesMenu
            Style = tbsCheck
          end
          object btnFinancesMenu: TToolButton
            Left = 385
            Top = 0
            AutoSize = True
            Caption = '&'#1060#1080#1085#1072#1085#1089#1080#1088#1072#1085#1077
            Grouped = True
            MenuItem = miFinanceMenu
            Style = tbsCheck
          end
          object btnWorkMenu: TToolButton
            Left = 467
            Top = 0
            AutoSize = True
            Caption = '&Work'
            Grouped = True
            MenuItem = miWorkMenu
            Style = tbsCheck
          end
        end
        object tlbExceptEventTaskRealIndicators: TToolBar
          Left = 558
          Top = 0
          Width = 100
          Height = 21
          Align = alRight
          AutoSize = True
          Images = ilSmallImages
          PopupMenu = pmExceptEventTaskRealIndicators
          TabOrder = 1
          Transparent = True
          Visible = False
          object btnExceptEventTaskRealUserNotActivated: TToolButton
            Left = 0
            Top = 0
            Action = actExceptEventTaskRealUserNotActivated
          end
          object btnExceptEventTaskRealUserActivated: TToolButton
            Left = 23
            Top = 0
            Action = actExceptEventTaskRealUserActivated
          end
          object btnExceptEventTaskRealDeptNotActivated: TToolButton
            Left = 46
            Top = 0
            Action = actExceptEventTaskRealDeptNotActivated
          end
          object btnExceptEventTaskRealDeptActivated: TToolButton
            Left = 69
            Top = 0
            Action = actExceptEventTaskRealDeptActivated
          end
          object sepExceptEventTaskRealButtons: TToolButton
            Left = 92
            Top = 0
            Width = 8
            Caption = 'sepExceptEventTaskRealButtons'
            ImageIndex = 29
            Style = tbsSeparator
          end
        end
        object tlbPendingMllChanges: TToolBar
          Left = 658
          Top = 0
          Width = 138
          Height = 21
          Align = alRight
          AutoSize = True
          Caption = 'tlbPendingMllChanges'
          Images = ilSmallImages
          PopupMenu = pmPendingMLLChanges
          TabOrder = 2
          Transparent = True
          Visible = False
          object btnRequestedMyChange: TToolButton
            Left = 0
            Top = 0
            Action = actMllcRequestedMyChanges
          end
          object btnRejectedMyChange: TToolButton
            Left = 23
            Top = 0
            Action = actMllcRejectedMyChanges
          end
          object btnMyMlRequestedChange: TToolButton
            Left = 46
            Top = 0
            Action = actMllcMyMlRequestedChanges
          end
          object btnMyMlRejectedChange: TToolButton
            Left = 69
            Top = 0
            Action = actMllcMyMlRejectedChanges
          end
          object btnRequestedChange: TToolButton
            Left = 92
            Top = 0
            Action = actMllcRequestedChanges
          end
          object btnRejectedChange: TToolButton
            Left = 115
            Top = 0
            Action = actMllcRejectedChanges
          end
        end
      end
      object pnlTimeInfo: TPanel
        Left = 0
        Top = 0
        Width = 904
        Height = 22
        Align = alTop
        BevelOuter = bvNone
        Color = 14474460
        Padding.Right = 108
        ParentBackground = False
        PopupMenu = pmToolbars
        TabOrder = 2
        object lblTodayDate: TLabel
          Left = 63
          Top = 0
          Width = 63
          Height = 22
          Align = alLeft
          Caption = '20.20.2000 g'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
          Layout = tlCenter
          OnDblClick = lblTodayDateDblClick
        end
        object pnlTodayDateWeekFormatSep: TPanel
          Left = 38
          Top = 0
          Width = 25
          Height = 22
          Align = alLeft
          BevelOuter = bvNone
          Color = 14474460
          TabOrder = 0
          object bvlTodayDateWeekFormatSep: TBevel
            Left = 10
            Top = 3
            Width = 3
            Height = 17
            Shape = bsRightLine
          end
        end
        object pnlTodayDateSep: TPanel
          Left = 126
          Top = 0
          Width = 24
          Height = 22
          Align = alLeft
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 1
          object bvlTodayDateSep: TBevel
            Left = 10
            Top = 3
            Width = 3
            Height = 17
            Shape = bsRightLine
          end
        end
        object pnlDateMargin: TPanel
          Left = 0
          Top = 0
          Width = 11
          Height = 22
          Align = alLeft
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 2
        end
        object tlbExceptEventIndicators: TToolBar
          Left = 704
          Top = 0
          Width = 92
          Height = 22
          Align = alRight
          AutoSize = True
          Images = ilSmallImages
          PopupMenu = pmExceptEventIndicators
          TabOrder = 3
          Transparent = True
          Visible = False
          object btnExceptEventNotActivated: TToolButton
            Left = 0
            Top = 0
            Action = actExceptEventNotActivated
          end
          object btnExceptEventActivated: TToolButton
            Left = 23
            Top = 0
            Action = actExceptEventActivated
          end
          object btnExceptEventTaskCtrlNotActivated: TToolButton
            Left = 46
            Top = 0
            Action = actExceptEventTaskCtrlNotActivated
          end
          object btnExceptEventTaskCtrlActivated: TToolButton
            Left = 69
            Top = 0
            Action = actExceptEventTaskCtrlActivated
          end
        end
        object tlbExceptEventDeptIndicators: TToolBar
          Left = 604
          Top = 0
          Width = 100
          Height = 22
          Align = alRight
          AutoSize = True
          Caption = 'tlbExceptEventDeptIndicators'
          Images = ilSmallImages
          PopupMenu = pmExceptEventIndicators
          TabOrder = 4
          Transparent = True
          Visible = False
          object btnExceptEventDeptNotActivated: TToolButton
            Left = 0
            Top = 0
            Action = actExceptEventDeptNotActivated
          end
          object btnExceptEventDeptActivated: TToolButton
            Left = 23
            Top = 0
            Action = actExceptEventDeptActivated
          end
          object btnExceptEventTaskCtrlDeptNotActivated: TToolButton
            Left = 46
            Top = 0
            Action = actExceptEventTaskCtrlDeptNotActivated
          end
          object btnExceptEventTaskCtrlDeptActivated: TToolButton
            Left = 69
            Top = 0
            Action = actExceptEventTaskCtrlDeptActivated
          end
          object sepExceptEventDeptIndicators: TToolButton
            Left = 92
            Top = 0
            Width = 8
            Caption = 'sepExceptEventDeptIndicators'
            ImageIndex = 26
            Style = tbsSeparator
          end
        end
        object tlbExceptEventUserIndicators: TToolBar
          Left = 504
          Top = 0
          Width = 100
          Height = 22
          Align = alRight
          AutoSize = True
          Caption = 'tlbExceptEventUserIndicators'
          Images = ilSmallImages
          PopupMenu = pmExceptEventIndicators
          TabOrder = 5
          Transparent = True
          Visible = False
          object btnExceptEventUserNotActivated: TToolButton
            Left = 0
            Top = 0
            Action = actExceptEventUserNotActivated
          end
          object btnExceptEventUserActivated: TToolButton
            Left = 23
            Top = 0
            Action = actExceptEventUserActivated
          end
          object btnExceptEventTaskCtrlUserNotActivated: TToolButton
            Left = 46
            Top = 0
            Action = actExceptEventTaskCtrlUserNotActivated
          end
          object btnExceptEventTaskCtrlUserActivated: TToolButton
            Left = 69
            Top = 0
            Action = actExceptEventTaskCtrlUserActivated
          end
          object sepExceptEventUserIndicators: TToolButton
            Left = 92
            Top = 0
            Width = 8
            Caption = 'sepExceptEventUserIndicators'
            ImageIndex = 26
            Style = tbsSeparator
          end
        end
        object pnlTodayDateWeekFormat: TPanel
          Left = 11
          Top = 0
          Width = 27
          Height = 22
          Align = alLeft
          AutoSize = True
          BevelOuter = bvNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentColor = True
          ParentFont = False
          TabOrder = 6
          object lblTodayDateWeekFormat: TLabel
            Left = 0
            Top = 0
            Width = 27
            Height = 22
            Align = alLeft
            Alignment = taCenter
            Caption = '40\7'
            Layout = tlCenter
            OnDblClick = lblTodayDateWeekFormatDblClick
          end
        end
        object pnlTimeSep: TPanel
          Left = 180
          Top = 0
          Width = 24
          Height = 22
          Align = alLeft
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 7
          object bvlTimeSep: TBevel
            Left = 10
            Top = 3
            Width = 3
            Height = 17
            Shape = bsRightLine
          end
        end
        object pnlTime: TPanel
          Left = 150
          Top = 0
          Width = 30
          Height = 22
          Align = alLeft
          BevelOuter = bvNone
          ParentBackground = False
          ParentColor = True
          TabOrder = 8
          object lblTime: TLabel
            Left = 0
            Top = 0
            Width = 27
            Height = 22
            Align = alLeft
            Alignment = taCenter
            Caption = '12:34'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
            OnDblClick = lblTodayDateWeekFormatDblClick
          end
        end
        object pnlTimeLine: TPanel
          Left = 204
          Top = 0
          Width = 300
          Height = 22
          Align = alClient
          BevelOuter = bvNone
          Color = 14474460
          ParentBackground = False
          TabOrder = 9
          inline frTimeline: TfrTimeline
            Left = 0
            Top = 2
            Width = 297
            Height = 20
            HorzScrollBar.Visible = False
            VertScrollBar.Visible = False
            Color = 14474460
            ParentBackground = False
            ParentColor = False
            TabOrder = 0
            TabStop = True
          end
        end
      end
    end
  end
  object stbMain: TStatusBar
    Left = 0
    Top = 722
    Width = 904
    Height = 19
    Action = actStatusBar
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBtnText
    Font.Height = -11
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = []
    Panels = <
      item
        Width = 300
      end
      item
        Width = 50
      end>
    ParentShowHint = False
    ShowHint = True
    UseSystemFont = False
    OnDblClick = stbMainDblClick
    OnMouseMove = stbMainMouseMove
  end
  object pnlMain: TPanel
    Left = 0
    Top = 265
    Width = 904
    Height = 457
    Align = alClient
    BevelOuter = bvNone
    Constraints.MinHeight = 5
    Constraints.MinWidth = 760
    TabOrder = 1
    OnResize = pnlMainResize
    object imgDefaultUserPicture: TImage
      Left = 728
      Top = 200
      Width = 105
      Height = 105
      Picture.Data = {
        0A544A504547496D6167653B2C0000FFD8FFE1001845786966000049492A0008
        0000000000000000000000FFEC00114475636B7900010004000000640000FFE1
        032D687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F003C
        3F787061636B657420626567696E3D22EFBBBF222069643D2257354D304D7043
        656869487A7265537A4E54637A6B633964223F3E203C783A786D706D65746120
        786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A786D70746B
        3D2241646F626520584D5020436F726520352E332D633031312036362E313435
        3636312C20323031322F30322F30362D31343A35363A32372020202020202020
        223E203C7264663A52444620786D6C6E733A7264663D22687474703A2F2F7777
        772E77332E6F72672F313939392F30322F32322D7264662D73796E7461782D6E
        7323223E203C7264663A4465736372697074696F6E207264663A61626F75743D
        222220786D6C6E733A786D703D22687474703A2F2F6E732E61646F62652E636F
        6D2F7861702F312E302F2220786D6C6E733A786D704D4D3D22687474703A2F2F
        6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F2220786D6C6E733A
        73745265663D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F31
        2E302F73547970652F5265736F75726365526566232220786D703A4372656174
        6F72546F6F6C3D2241646F62652050686F746F73686F702043533620284D6163
        696E746F7368292220786D704D4D3A496E7374616E636549443D22786D702E69
        69643A3534313236363230344441373131453238433139384435383631463531
        4136302220786D704D4D3A446F63756D656E7449443D22786D702E6469643A35
        3431323636323134444137313145323843313938443538363146353141363022
        3E203C786D704D4D3A4465726976656446726F6D2073745265663A696E737461
        6E636549443D22786D702E6969643A3534313236363145344441373131453238
        433139384435383631463531413630222073745265663A646F63756D656E7449
        443D22786D702E6469643A353431323636314634444137313145323843313938
        4435383631463531413630222F3E203C2F7264663A4465736372697074696F6E
        3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78706163
        6B657420656E643D2272223F3EFFEE000E41646F62650064C000000001FFDB00
        8400010101010101010101010101010101010101010101010101010101010101
        0101010101010101010101010102020202020202020202020303030303030303
        0303010101010101010201010202020102020303030303030303030303030303
        0303030303030303030303030303030303030303030303030303030303030303
        030303FFC00011080190019003011100021101031101FFC400A0000100020301
        0003010000000000000000000809050607020103040A01010003010101000000
        0000000000000000040506030201100001040201020405030205030500000000
        01020304050611120721311308415122141561326271168191425223532425C1
        7282923411010002010105040A02020202030000000001020304112151120531
        4161D1718191A1B1C1E1223213F0234262F1335282921415FFDA000C03010002
        110311003F00FE804D4316000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000001BC603B67D
        C1DA7A1D80D3363C943271D36E1C55B650FABCBAB213C7151673FAC89E073B66
        C54FCAD113E976A69F3E4FC29698F46EF6BB7607DA0F76B2C8C7E4D9AFEB51AF
        0AE6E4F2C96ECA357FD90E161C9C2AFF00D1D2B3FA91ADAFC15FC76DBD11E7B1
        2E9D2F536FCB96BE99F2DAEBD88F64351A8C7E7B7FB132AF1EA57C460A2AE8D5
        F8A32E5CC85AEBFEAB037FA1C2DD4A7FC69ED94AAF488FF3BFB23EAE8747D9BF
        69EB353EE6E6DF91771F52D9CB5085AABFC5B4B11555A9F24555FEA719EA19E7
        B3963D5F5778E95A68ED9B4FAE3C9984F695D9946F4AE2B34E5FF7AE7EFF0057
        C7E0D7233E3F23CFFF007B51C63D8F5FFE669384FB6582C9FB35ED6DB63BEC32
        3B6E265FF42C592A36E06AFC9F15CC64B2BDBFD256AFEA7A8EA19E3B62B3FCF4
        BC5BA569E7F19B44FA7E8E1BB87B30DBB1914D6B4ED831DB3C6C473DB8EBF0FE
        0F26F4F845048F9ED636C489F3925AE8BF2F812B1F51C76DD9226BEF44CBD2B2
        D77E2B45BC2774F97C11173781CCEB592B187CFE2EEE1F2755DC4F4AFD792B4E
        C45E7A5E8D9113D48A444E58F6F2C7B7C5AAA9E24EADAB78E6ACC4D5577A5F1D
        B96F13168E2C49E9E40000000000000000000000000000000000000000000000
        000000000000000000007DB5EBCF6E786AD5825B366CCB1C15EBD78DF34F3CF3
        3D238A18628D1D24B2CB2391AD6B5155CABC2099888DB3D8FB11333B237CA7A7
        69FDA047357AB9CEE9CD3B1D2B5B345A8E3E7F45F1B1C88AD6E6F270BBD46C8E
        45FAA0ACAD733C39979EA6255E7D7EFE5C3EDF25CE9BA5ED88BEA7FF008C7CE7
        CBDA99BAFF006F746D5638E3D7752D7F12B1222367AB8BA8DB8E56F823A5BEF8
        DF76793C3F73E473BF52BEF972DFF3B4CFAD6B4C1871EEA56B1EA6E273750000
        0000001CC7BA1DA8D5BBAB8393199CACC872304527E1B3D044CFC9622C39396B
        A393E959E9BDFC7AB5DEBE9C89E3F4BD1AF6F6C39EF82DB6BF8F7C774A3EA34D
        8F534E5BFE5DD3DF1FCE0AA3EE4768F75ED6DF4ADB2E3B9A13C8E8F1F9DA2AFB
        187C871CAA362B3D0C74163A51556199B1CA889CF4AB7872DE61CF8F346DA4EF
        E1DECDE7D2E6D3CECC91F6F74F74B991D91C0000000000000000000000000000
        00000000000000000000000000000000001F7D5AB66ED9829D3AF35AB76A68EB
        D6AD5E27CD62C5899E91C30C10C68E92596591C8D6B5A8AAAABC2099888DB3D8
        FB11333B237CCACDFDBCFB748B424ADB96E5145677296155A18EE59356D6629D
        9C3955E9D4CB1997C6E56BE46AAB214556B15CAAAF5A6D5EAFF6FF005E3FFAFE
        3F468343A1FD3FDB97FEDEE8E1F54B9202CC00000000000000031B98C362B60C
        6DBC3E6F1F53298BBD12C36E8DD8593D7998BE29D4C7A2A23D8E44735C9C398E
        4456AA2A229F6B6B5279AB3B2D0F37A56F59A5E226B2ACEEFC7B6ABFA0A5ADAF
        4C6D9CAE9A8E74D769395D3E4B5A6AAF2AB33BC5F7710CE7C27F19224F097944
        F55D73A5D6465FB326EC9F1FAA8359A09C3B7262DF8BDF1F4FE4A25939580000
        0000000000000000000000000000000000000000000000000000000088AAA888
        8AAAABC22278AAAAF92227CC0B3DF6DBD828749A15777DB69B64DC7235D25C75
        2B0C45FED9A3619F4B7D37A7D19AB513BFE677EE818BE9270BEA75536B355FB2
        7F5E39FEB8F7FD1A1D068A30C466CB1FDB3D9E1F5FF84BA202CC000000000000
        0000000F2F632563E2958D92391AE6491BDA8F63D8F456BD8F63915AE6B9ABC2
        A2F82A03B5591EE57B02DD1ECCBBC69F51C9A85FB08994C742DE5BAD5EB12236
        3744D4F16E1AECAFE98FE104AA91F28D74685CE8F55FB23F564FFB23B3C7EACF
        EBF45FA67F7628FEA9ED8E13E48824F558000000000000000000000000000000
        0000000000000000000000000004A8F6C3D9FC9EE5B6E3774C9528DBA76B17FE
        E5F25C63BA33197AB1BA4A54A946A9D33B295C58A69DCBCC688D462F2AEE1216
        B3515C78E71C4FF64C7B2163D3F4B6CB9632DA3FAAB3ED95A7948D1800000000
        000000000000007E2C96368E631F771594AB0DEC7646ACD4EF53B0DEB86CD5B1
        1BA29A191BF16BD8E54F9A7C3C4FB133598B5774C3E5AB17ACD6D1B6B30A6CEF
        3F6CADF6AF77BFAFB9659B11653F25AF5E91395B589B123D2264AF4446BADD19
        18E866F04E5CCEB4446BDA6834F9A33E38BFF977FA595D5E9E74D9A69FE33BE3
        D0E5077460000000000000000000000000000000000000000000000000000003
        79EDAE936FB89BB60351A8F742994B7FF7B69ADEA5A58CACC7DAC95B445456AB
        E1A70BFD347708F915ADF89CF3648C58E724F747BDDB4F8673E6AE28EF9F777A
        E9F0182C56B186C6E03094E3A38AC5558E9D2AB127D31C51A78B9EEFDD2CD2BD
        55F23DDCBA491CAE72AAAAA99DB5AD7B4DEDBED2D65295C748A52365621973CB
        D00000000000000000000000008D5EE8FB73FDEFDBAB196A307A99DD2FD7CDD2
        56379967C6246DFCE516F08AE547D489B3B511155D2576B53F729334597F5E6E
        59FC6DBBC903A8E0FDD839A3F3A6FF00577F9FA953A5E3340000000000000000
        000000000000000000000000000000000000004F3F655A6452CFB56FD663573E
        A7A5AC625CBCF43249990E4730FF0097AAD856AB5ABF06C8E4F8959D4726EAE2
        8F4CFCBE6B9E938A36DB34FA23E33F2582154BB0000000000000000000000000
        03CBD8C918E8E46B5EC7B5CC7B1ED4731EC722A39AE6AA2A39AE45E1517C1500
        A42EE66BB06A5DC0DC35CA8A9F6789D83235A8A22F2ACA2B61D2D28DCBF1922A
        B231AEFE48A6930DE7262ADE7B66191D4638C59ED8E3B22D2D1CE8E200000000
        000000000000000000000000000000000000000000002DB3DAAE21317D97D7A6
        56A325CD5DCDE5E64E385557E4EC5081CE5F8ABEA63E354FD150A2D6DB9B513E
        1110D374DAF2E92B3DF3333EFD9F248B22270000000000000000000000000000
        2A13DCCEB7735DEF0ED12588DE9573F257D831B3B9386D8AD7E06367562F97FD
        BE4609E25FFD9CFC50BED1DE2FA7AECED8DCCC750C734D55B6F65B7C7AFEAE06
        4A4200000000000000000000000000000000000000000000000000001753D96A
        6947B4BDBA8113A7AF50C1DB54E38FAB21462BEE5E3E6AEB2AA677533B73DE7F
        DA5ACD2472E9B1C7FAC7BF7BA71C52000000000000000000000000000015F7EF
        8A2852E76DA76B5BF71256DAE295DC2752C30CBAF3EBB5579E55AD7CF271FD54
        B5E9BB765E3BB77CD49D5F66DC73DFBFE481859A980000000000000000000000
        0000000000000000000000000000005E5E850255D1B4BAC89D295F53D76044F9
        24387A71A27F87499ACB3B725A7FDA7E2D8618D98691FEB1F06D878740000000
        00000000000000000000056AFBD5CB36CEF5AB6198E477E2B5875D911179E89B
        2D92B2C562FC9FE8E36377F472171D3ABB315ADC6DF050756B6DCD5A70AFC67E
        8864582A800000000000000000000000000000000000000000000000000005EE
        EB6CF4F5DC047FF4F0B8B67FF4A3037FF43337FCE7D32D8E3FFAEBE88668F2F6
        0000000000000000000000000000A6FF00709B17F72F78777B8D775414329F81
        AC89FB5ACC0431E265E85F8B65B7564939F2557F8781A0D253934F58EF98DBED
        DECB6BAFFB35579EE89D9ECDCE30484400000000000000000000000000000000
        0000000000000000000017C581E3F0786E3C13F158EE117C578FB38783336FCA
        7D2D953F08F4432A797A000000000000000000000000003E1551115555111115
        5557C11113C55557E088050DE6AFBB2B98CB651CAAAEC964EFDF72AF9ABAE5A9
        6C2AAF3E3CAAC869EB1CB588E10C6DEDCD79B71999634FAF2000000000000000
        00000000000000000000000000000000000002E6BB19BD45DC1EDA6BB9A5F4DB
        90A95D30999863F06C594C5471C12BBA53C18DB95D62B0D6A73D2C9913E067B5
        38BF5669AF776C7A25AAD1E6FDFA7ADFFCA374FA63F9B5D74E09400000000000
        00000000000000062F39723C76172F9099C8C868E2F217257AF088C8EB549677
        B9557C386B58AA7AAC6DB4471979BCF2D26DC2254386998D0000000000000000
        0000000000000000000000000000000000001EA38DF2BD9144C7C9248E6B238E
        36ABDEF7B951AD6318D45739CE72F0889E2AA0ED4FFF006577B234ACF70356BF
        05AAC91B707998AB598A581F5E77FDED3B6E7432B5AE6BACC4907C13C23F8957
        D462262978F185DF499B44DF1DB6C764A7B156B9000000000000000000000000
        0023C7B9EDDA2D3FB5399A91CA8DCA6DA8BACE3E3477D6B05E63973132B53EAF
        4A3C536562B93C1249588BE64BD163FD99E27FC6BBFCBDE83D433462D34C7F95
        B747CFDCA8F2F599000000000000000000000000000000000000000000000000
        0000130BD99EB94729BF6773B7208EC4BAE609AB8E495AD77DB5ECA5A6D7FBC8
        F945E99A3A704D1A2FC1255F8F040EA179AE28AC77CFC169D2B1C5B35AF3FE31
        BBD6B31F461F596C7A51FAEB1A42B3F437D65891CAF48964E3AD6347AAAA379E
        395E4A6F0EE683646DDBDEFB0000000000000000000000000000456EF5FB7FD9
        BBBFB045967EEB47138CC4D14A781C23F1366DC71BA5E896F5BB76DB7E04659B
        D61111CAC85C891451B7C55AAAB3B4DAAA69E9CBCB33333BE76AB757A2C9AABF
        373C45623746C570EF9A3E77B75B35FD57628A16DFA3E948D9AB3DD2D3BB52C3
        124AD769CAF646F7D79D8BFEA6B5CD722B5C88E6AA25B62CB5CD48BD3B25459B
        0DF0649C77FCA1A79D1C80000000000000000000000000000000000000000000
        000000026BFB25B8D66E1B9E3D553AED6B556E353E2ADA3948A07AA7E88B916F
        F995DD463FAEB3E3F25B7499FEDBD78D7E13F5590150BE000000000000000000
        000000000000AB6F78F6639FBB5562674F552D3F0D5A6E3CFD47DFCC5C4EAFE5
        E95B6FF8705D74F8FE8FFDA7E4CEF559DBA988E158F8CA289395A00000000000
        000000000000000000000000000000000000000124BDA7E69313DE5C35673FA2
        3CF62F35857B95786AAAD35CAC2C77CFD4B38A6353F92A1135D5E6D3CCF0989F
        97CD3FA6DF975511FF00944C7CFE4B65289A5000000000000000000000000000
        000A73F71599FCDF79B7AB08EEA8E9E4E1C3469CF28CFC250A98B99ADF9736AA
        48E5FE4AA683495E5D3D638C6DF6EF65B5D7E7D5DE784ECF66E7142422000000
        0000000000000000000000000000000000000000000006DBA0EC1FDABBBEA7B1
        B9CAC8B0DB0E26FD956F3CBA9C176175D8FC3C7896A75B57F453C65AF3E3B538
        C4BAE1BFEBCD5C9DD16895E3C72325632589ED923918D923918E4731EC7A2398
        F639AAAD735CD5E5153C150CD35FDAF60000000000000000000000000000051D
        F722DC17FB87BEDEAB2A4F56EEE7B45BAD322A2A4D5EC672F4D0CA8A9E0A9246
        F45FF13498626315627B7963E0C86798B67BDA3B26F3F1698747200000000000
        000000000000000000000000000000000000000001651ED77BE74B3D89C7F6DF
        68B8CAFB16260654D76DD97A35B9CC5C0CE2BD0491CA88B94C742DE86B7CE681
        AD54E5CD7AAD46B74D35B4E6A7E13DBE13E4BFE9DAC8BD630649FEC8ECF18F38
        4CF2B96A00000000000000000000000000704F70DDD483B69A2DC6D3B4D66D5B
        1433E2F5E858E4F5E0748C465DCC71CF2C8B1704BD4C770A8B61D1B78E157895
        A4C1FBB2EFFC237CF97AD0B5DA98D3E19D93FD96DD1E7EAF8AA0CBE660000000
        000000000000000000000000000000000000000000000000F714B24324734323
        E29A27B258A589EE8E48A48DC8E6491BDAA8E63D8E4454545454541DBBA7B0EC
        DF1DAB27F6B3DE9DAF7DB393D376B961C9CF84C2B7254739275372966BC572AD
        17D7C8AA7FC571F1FDD31526E1B2BB8FAD5EE5EA29F5BA6A6288C94DD133B367
        72FF00A76AF2E699C5937CC46DDBDFEB4CD2BD6A000000000000000000000FC9
        7AFD2C5D2B591C95BAF42851825B572EDB9A3AF56AD6858AF967B13CAE6C7145
        1B1155CE72A22221F6226D3B237CCBE5AD158E6B4ECAC23AEFDEE9BB67A9529D
        B83C947B9E6D58E4AB430AE73B1E922A2F43EEE65635A51D7EA4F1F456797F87
        0BCA4BC5A2CD927EE8E5AF8F920E6EA3A7C51F64F3DF8479AB377ADEB62EE2EC
        56F66D96DFDC5EB3C450C31A3994F1D4A373960C7E3E0739FE85483AD784E55C
        E72B9EF573DCE72DC62C54C54E4A7633F9B364CF9272649DFF000F0869E74720
        00000000000000000000000000000000000000000000000000000004A7F67D92
        4A3DDEFB55771F98D5F358E6A2FF00A9D14B432DC27EA8CC62AFF445216BE36E
        0DBC2D1E5F358F4BB6CD56CE359F94FC96A052346000000000000000000000E2
        7EE2F26DC5765F7B9D5DD2EB18DAD8C627C5EECB64E8E39CD6A7C788ECB957F4
        4524E92BCDA8AC78EDF64226BADCBA4BCF86CF6CEC53A17ECB00000000000000
        0000000000000000000000000000000000000000000000EB3D8ACDA6BDDDED07
        22E7FA71BF3F5F172BD5786B62CEC72E12473D7C918D66415557C9110E1A9AF3
        E9EF1E1F0DE93A3BF26AA96FF6D9EDDDF35CF19E6AC000000000000000000001
        0E7DE86C2DA1A06035D649D36361D85B65ECE7C5F8FC255925B09C79F85EBB55
        79F2F02C3A7536E59BF08F8FF2557D56FCB82B4EFB5BDD1FC8567170CF800000
        000000000000000000000000000000000000000000000000000000FB609E6AB3
        C366BC8E8A7AF2C73C12B1787C5344F492391ABF0731ED454FD504C6D8D93D8F
        B13313B63B5777DB9DD2877074CC0ED542589FF91A30ADF863722AD1CAC51B59
        92A12B79EA63EB5B472273C7533A5C9F4B9157379B1CE2C9349EE9F735B832D7
        3E2AE4AF7C7BFBDBB9CDD80000000000000000000A99F749BF43BAF732D52C7C
        E93E1F50AEBAFD5923775433DF8E57CB99B51AA2AA2F371DE87522F4BDB5DAE4
        F052F7458BF5E1DB3F95B7F9335D473FEED472D7F0AEEF5F7F97A91B89680000
        00000000000000000000000000000000000000000000000000000000004F2F64
        598B49777CC03A47BA93AAE23310C2AE5F4E1B51CB6A959918DF247D98A4891E
        BF1489BF22B3A9563656FDFBE173D22D3B6F4EEDD2B052A97600000000000000
        00030DB1E49F86D7B3D978D11D262B0D94C931AA9CA39F468CF69A8A8BE68AE8
        8F548E6BC578CC3C5EDC949B708995124923E591F2CAF74924AF74923DEAAE73
        DEF72B9EF72AF8AB9CE5E554D331DDBBE7B5E000000000000000000000000000
        0000000000000000000000000000000000004E8F641555F99EE0DDE3E9AF8CC0
        5555F92DCB59395A9CFEA9457FC8ADEA53F6D23C67E4B8E911F7DE7C23E6B0F2
        A57800000000000000000309B2D35C8EB9B063DA9CBAF6132B4DA89E2AAB6A84
        F02227F5579EA93B2F13C261E3247363B578C4A88CD331C00000000000000000
        0000000000000000000000000000000000000000000000B10F643591984EE05C
        E3EA9F2B82ACAEF9A54A99195139FE2B757FCCAAEA53F7523C2579D223ECBCF8
        C7CD39CAC5C0000000000000000000143FB051FC667F398D46F4A63F2F92A28D
        E38E9FB4BB341D3C7C38F4CD35276D6278C31D78E5BCD784CB107A7800000000
        0000000000000000000000000000000000000000000000000001FA2A54B590B5
        5A8D1AD3DCBB7278AB54AB5A27CD62CD89DE91C30410C68E7CB2CB23911AD445
        5555133111B67B1F6226D3B237CCAE0BB03DB29BB5DDBFAB89C8F42E7F2D6A4C
        DE79237364657B96618218B1F1C8D556BDB42A40C6395155AE9BADCD556AA141
        AACD19B2F347E31BA1A8D169E74F822B6FCE676CF97A9DB48C96000000000000
        000000056B7B9FEC5E4F099BCA772359A92DDD77313C990D86B568D649B05939
        DCAFB97A48D88AE5C5DF99565749E290CAE723BA5AACE6E345A9ADAB186FBAF1
        D9E3F550750D1DA979CF8E36E39DF3E13E4862582A8000000000000000000000
        00000000000000000000000000000000000037DD0FB67B9F7272298FD530F3DC
        6B1ED6DCC9CC8EAF88C723B85EBBD907B56189518BD491B7AE67A27D0C72F81C
        B2E6C78636DE767C5DB0E9F2E7B72E38DBE3DD1E99599F667DBC6B3DAB64596B
        6E8F60DC9F12B65CCCD0F4D6C6FAAD56CB5F0759FD4B5DAE63958E9DFCCF2379
        FD8C72C653EA3577CFF6C6EC7C3CDA0D26871E9BEE9FBB2F1E1E8F3487222700
        00000000000000000003CBD8D91AE63DAD7B1ED563D8F44735ED722A39AE6AA2
        A39AE45E1517CC085BDE1F6978ACF7DD6C1DB44AD83CC3BAE7B1AD4AE4870991
        7AF2F77E364F2C3D97AF3C46BFF6AE55444F453972D8E9F5D6AFD99B7D78F7FA
        F8FC7D2A9D574DADF6DF4FBAFC3BA7D1C3E1E8578E6F0798D6F276B0D9EC6DBC
        4E52948B1D9A37617413C6EF36BBA5C9C3E291BF531ED5563DAA8E6AAA2A296D
        5B56F1CD59DB5951DE97C769A5E262D0C51F5E40000000000000000000000000
        000000000000000000000001FA2A54B77EC45528D5B172D4EEE886B54864B162
        67AF93628616BE491CBF24455133111B67B1F6226D3B2236CBBDEA3ED87BBBB5
        FA53498166B1464E17EF3689D71AF46AF8AFFE3191D9CC23BA7CBAABB5AABE1C
        A78F11726B705376DDB3E1E7D89B8BA7EAB276D7963C777BBB7DC959A3FB37D3
        70D2417773CBDDDB2D46AD7AE3ABB1D87C2F5278F44CD8A6972571AC54F05F5A
        16B93F731517820E4EA192DBB1C4563DB2B1C3D2B1537E599B4F0EC8F34B8C56
        271783A15F1786C752C563AAB3A2B51C7D686A5585BE6A91C103191B55CBE2AB
        C72ABE2BE240B5AD69E6B4CCCACEB5AD2BCB4888AC70640F8F40000000000000
        000000000000072EEE7F68B51EEB62BECB3F57D0C9568DE98ACFD36C6CCA631E
        EE5DD2C91C9C59A4F7AF32579398DDE69D2FE1E9DB0E7C982DB6BD9DF1DC8FA8
        D2E2D4D765FF002EE9EF8FE70566773BDBEEFF00DB37D8B7668BB3DADC6AE747
        B1E1E2966AD1428BE0ECA544EBB3897A378EA593AA0EA5E1B2BCB9C3AAC59B74
        4ECBF09F97167F51A2CFA7DF31CD8F8C7CF87F37B861250C0000000000000000
        00000000000000000000000001FB2863B2195B5151C5D1B992BD3AF4C14E8559
        EE5A99DFED8ABD7649348BFA2229F2662B1B6D3B21F6B5B5A796B1333E0915A7
        FB52EEBECE9158C951A7A8507F4B966D82C2B6F3A35F358F1349B66E3254FF00
        658FB7FEA44C9AEC14DD13369F0F34FC5D3753937DA22B5F1F2F3D894BA8FB38
        EDEE1BD29F69C8E5B6FB4DE15F075AE0F10E54F1FF00F2D195F915E17E76F854
        F3690B2750CB6FC222B1ED9FE7A9638BA560A6FC93369F6479FBD2635DD3B54D
        46BFDAEB1AEE1F0512B51B27E36857AB2CE89C70B66C471A58B4FF000FDD239C
        E5F990EF932649DB79994FC78B1E28D98EB11E886C8787400000000000000000
        00000000000000003E1511C8AD7222B55151515394545F054545F054540238F7
        1BDB076E77AF5EF63EAFF6767A5EA7FE4705046DA33CCEFF005DFC2731539915
        CAAE73A15AF2BDCBCB9EA4BC3ADCD8B74FDD4F1F340CFD3F066DF5FB2FC63B3D
        71FF000829DC1F6DBDCDD0BD7B7F8BFEE6C245D4FF00CBEB8D9AEFA51278F5DE
        C6F426469F433C5EEF4DF0B3FEA2F99678B59872EEDBCB6E12A7CFA0D461DFB3
        9A9C63CBB5C0BCBC14948400000000000000000000000000000000000EA9A176
        5BB8DDC77472EBBAFCEDC63DDC3B3B9455C6E1589CF0E732E4EDEABBD0BFB9B5
        993489F169C32EA30E1FCE7EEE11DA9387499F3EFC75FB78CEE8FE7A134346F6
        67AB63121B7BDE6ADEC96D3A5CFC5E2D64C4E19ABE1D514B6517F2B75A8A9E0F
        63EA2FCDA57E4EA179DD8A364719DF3E5F15AE1E958EBBF34CDA7846E8F3F825
        7EB7A7EADA7D4FB2D5F5FC560EBAB5AD9131D4E18259FA7C9D6AC35BF716E4FE
        52BDEE5F9906F92F9276DE6665658F163C51B31D6223C1B21E1D000000000000
        0000000000000000000000000000000038EEFBD88EDA7713D6B199C0C5472F37
        52AE7B06ACC665564779CB61F146EAB907FEB6629B84F2E0918B559B16EACEDA
        F09DF08B9B47A7CFBED5D96E31BA7EBEB42ADEFD9E6F182F5AE6997EA6E18F6F
        53DB49FE9E2B3B1B3F774A416255C7DCF4DBF164EC91EBFB62F1E0B1C5D431DB
        7648E59F6C2A7374BCD4DF8A62F5F64F97F3B114B2F85CBE02F4B8CCE62F2187
        C840BFF2D2C9549E95A6272A88E586C471C9D0EE3C178E17E04EADAB78DB5989
        856DA96A4F2DE262DE2C61F5E400000000000000000000000000DFFB7DDB2DC3
        B9B95FC5EAB8C7586C4AC5BF93B2AEAF89C5C522AF4CB7EEAB1ED62B91155B1B
        11F34888BD0C770BC72CB9B1E1AF35E7D5DF2EF834F97516E5C71EBEE8F4AC63
        B69ED5F42D29B5B21B144CDD3618FA2459B25022612A4C9C2F14B0EE74914FD0
        EF292CACCAAA88E6B635F02A736B72E4DD4FB69EFF006AF34FD3B0E2FBB27DF7
        F1ECF679A4F318C8D8D8E36B58C635AC6318D46B18C6A2235AD6A22235AD44E1
        113C11084B17A000000000000000000000000000000000000000000000000000
        06BFB1EA7AD6DD4971DB3E0B199CA7F574C591A90D8585CE4E164AD2BDBEB559
        B8F27C6E63D3E0A7BA5EF8E76D26625E3262C7963972444C78A266EFECCB56C9
        ACD6F45CE5CD6ACBBA9CCC5E4D1F97C42BBFD314365CF66529B3E6E7BED2FC90
        9D8FA85E37658E68E31BA7CBE0ACCDD2B1DB7E199ACF09DF1E7F143EDE7B09DC
        FEDFB67B598D765BD8983A9CFCDE09CB95C63636FEE9A75858DB94614FF75986
        1427E2D561CBBAB3B2DC2772AF368B51837DABB6BC637C7D3D6E384845000000
        00000000000000076FEC9F65333DDCCDB93AA5C6EAB8B963FCEE6D188AEE5DC3
        D3198C47B5639B27623F1F1E590317ADE8BCB19246D4EA6B82BC6F3D91F39F04
        CD2692FA9BF0C71DB3F28F15B36ABA9EBFA5612A6BDACE360C5E2E9B7E886145
        57CD2B91124B56E777335AB732B515F248AE7BBE7C222251DF25F25B9EF3B6CD
        263C74C348A638D9586C47874000000000000000000000000000000000000000
        000000000000000000079F828117BBB5ED7F50DF23B396D663ABA8ED6AD7C893
        548123C265265E5DD394C7C0DE982595FE76206A3F972B9EC9578426E0D6E4C5
        F6DFEEA7BE3D0AED4F4FC59B6DB1FDB97DD3E98F9C7BD5A1B7E9BB1E899BB3AF
        ED18C9B1992AFF0052324E1F05AAEE739B1DBA5658AB0DBA9374AF4BD8AA9CA2
        B578722A25C63C94CB5E7A4ED85065C5930DF93246CB3583DB98000000000000
        0006F5DB8D072FDCADBB19AA61D3A1F6DEB35FBAE62BE1C5E2E056ADDC8CE88A
        D456C0C72231AAA9EA4AE631179721CF365AE1C737B7FCCBB60C36D4658C75EF
        F74715CC69FA961346D7719AC6BF552AE331902451A2F0B35999DF558BB6E446
        B7D6B76E6557C8EE13972F0888888899EC992D96F37BF6CB558B1530D231D236
        561B29E1D0000000000000000000000000000000000000000000000000000000
        000000001CE7B99DAFD63BA580930BB05646D889B24989CCC0C67E470F6DCD44
        49EAC8EE3AE17AB512585CBE9CAD4F1E1C8D737B61CD7C16E6A7677C7170D469
        F1EA69C97EDEE9EF8545F71BB75B176C764B3AE6C3070E6F3363B230B5FF0063
        97A0AE56C5769C8E4F16BB8E1EC5FAE27A2B5DE29E37B873533539E9FF000CC6
        7C17D3E4FD77F54F186847571000000000000005AC7B5AED83348D162D8B235D
        19B26E7141919D64671352C2AA2C988A09D49D51ACD13FEE654F05574AD6B939
        8D0A4D6E6FD997923F0AFC7BDA4E9DA7FD387F65BFECBEFF0057747CD27C84B0
        0000000000000000000000000000000000000000000000000000000000000000
        001CCFBADDB0C1F75756B380CAB5B5EF448FB383CC36347D9C464919C3266793
        A4A93F08CB117289247E5C3DAC737B60CD6C17E6AF677C7147D4E9E9A9C7C96E
        DEE9E13FCED539ED3ACE634DCFE4F5ACFD5753CAE26CBAB59897958DFE08F86C
        579151126AB6A1736489E89C3E3722FC4D052F5C958BD7F1965B263BE2BCE3BC
        6CB43007A7800000000001D4FB2DA3A770BB93AD6BB346B26356DFE4735E0BD3
        F87C637EEEE44F54F1625D48DB5DABF07CC871D464FD586D7EFEEF4CA4E930FE
        FCF5C73F8EDDB3E88FE6C5D135AD635AC635AC631A8D6B5A88D6B5AD4E1AD6B5
        38446A2278219D6ADE8000000000000000000000000000000000000000000000
        00000000000000000000000044DF751DA266E7AC3B75C2D5EAD9F54AAF92CB21
        6732E5B5E8D5F35AACAD6A754B6319D4E9E1F8AB3D56222B9CDE2768B3FEBBFE
        BB7E16F74FD55BD474BFB71FEDA47F657DF1F4ED55D174CE800000000009E5EC
        8B050BEEEF9B348CE6C56AD87C1D3938FDB15D96DDFC8B79FE4EA15BCBE45675
        2B6EAD3BB7CAE7A45236DF277EE8F9CFC2160A552EC000000000000000000000
        0000000000000000000000000000000000000000000000001F0A88A8A8A88A8A
        8A8A8A9CA2A2F9A2A7C5140A76F703DBB6F6E3B9196C75283D1C1661133D8046
        B788A2A37A493D6A31F1F4B5B8DBCC9616B7957244D6397F717FA5CBFBB0C4CF
        E51BA7F9E2CBEBB07E8CF358FC277C797A9C489286000000001671ECBF1DF6FD
        B5CEE41CDE1F92DC2E35ABC7EEAF4B15888E35E7F4B12CA8537519DB9A23857E
        72D074AAECD3CDB8DBE5097E405A000000000000000000000000000000000000
        00000000000000000000000000000000000043AF799AA4793D0F0DB5C51A2DCD
        5F32CAD34889C7FE2B38D6D7991CA9E2EE9C957ABD3CF8275BB8F3F1B0E9F939
        72CE3EEB47BE3E9B557D57173618CBDF59F74FD762B34B867C000000002DCFDA
        D63BF1FD93D51EE6F4C9919F3991913E7EAE7321042EFD7AAAD68D7FC4A2D6CE
        DD4DBC367C1A6E9D5E5D257C76CFBE5210889C00000000000000000000000000
        0000000000000000000000000000000000000000000001C5FDC3D34BDD97DFA1
        56F57A78982E2271CF0B8EC9D0C823BFF8AD6E7FC091A49D9A8AFA5135D1CDA4
        BC787C254E068196000000000BAEECEE3BF15DAAEDE5356F4B9350C15991BE4A
        D9AF5086F4ED5FE49359722FEA677513CD9EF3FED2D6696BCBA6A47FAC3A49C5
        2000000000000000000000000000000000000000000000000000000000000000
        000000000341EEAD2FC876CBB834D13A9D3697B32469C73FF3370F72487C3F49
        58D3AE09D99A93FED1F171D4C6DD3DE3FD27E0A46346C880000003D318E91EC8
        D8D573DEE6B18D4F3739CA8D6B53F555502F971345B8BC56371ACE3A31D8FA74
        59C7974D4AD1D76F1FA711998B4F35A678CB6558E5AC57843207C7A000000000
        000000000000000000000000000000000000000000000000000000000000000C
        7E5E926471593C7AA22A5FC7DDA4A8BE4A96AB4B02A2FE8BD67DACECB44F0979
        BC73566BC61430A8A8AA8A8A8A8BC2A2F82A2A79A2A7CCD3B1A0000000DB740C
        77E5F7BD2F15D3D4991DAF5EA4E4F8745ACB5485EABFC518F555FD0F19679715
        ADC2B3F075C15E6CD4AF1B47C5794669AF000000000000000000000000000000
        00000000000000000000000000000000000000000000028A36CA3F8CDAB66C6F
        4F4FE3F60CCD1E9F2E9FB4C8D9AFD3C7C38F4CD3639E6A5678C431D9639725AB
        C2D3F16BE7A7800FFFD9}
      Stretch = True
      Visible = False
    end
    object pnlDisconnected: TPanel
      Left = 8
      Top = 392
      Width = 104
      Height = 104
      BevelOuter = bvNone
      TabOrder = 0
      Visible = False
      object imgDisconnected: TImage
        Left = 0
        Top = 0
        Width = 104
        Height = 104
        Align = alClient
        Picture.Data = {
          07544269746D6170F67E0000424DF67E00000000000036000000280000006800
          0000680000000100180000000000C07E0000EB0A0000EB0A0000000000000000
          0000D1D1D1CFCFCFD3D3D3D1D1D1D2D2D2D2D2D2D2D2D2D2D2D2D3D3D3D5D5D5
          D1D1D1D1D1D1D4D4D4D7D7D7D4D4D4D5D5D5D4D4D4D2D2D2D2D2D2D2D2D2D3D3
          D3D2D2D2D3D3D3D3D3D3D2D2D2D2D2D2D6D6D6D6D6D6D6D6D6D5D5D5D2D2D2D2
          D2D2D4D4D4D6D6D6D6D6D6D7D7D7DADADADADADAD9D9D9D8D8D8D9D9D9DBDBDB
          DCDCDCDBDBDBD9D9D9D8D8D8D9D9D9D8D8D8D9D9D9DBDBDBDADADADBDBDBD8D8
          D8D6D6D6D7D7D7D5D5D5D4D4D4D7D7D7DADADAD9D9D9D7D7D7D3D3D3D2D2D2D1
          D1D1D4D4D4D5D5D5D4D4D4D4D4D4D5D5D5D3D3D3D2D2D2D2D2D2D2D2D2D1D1D1
          D2D2D2D3D3D3D2D2D2D2D2D2D3D3D3D2D2D2D5D5D5D2D2D2D4D4D4D3D3D3D2D2
          D2D1D1D1D3D3D3D3D3D3D1D1D1D1D1D1D4D4D4D5D5D5D3D3D3D4D4D4D2D2D2D1
          D1D1D1D1D1D2D2D2D2D2D2D3D3D3D4D4D4D6D6D6D3D3D3CFCFCFD5D5D5E3E3E3
          EDEDEDEBEBEBEBEBEBEBEBEBECECECEBEBEBEDEDEDECECECEBEBEBEDEDEDEDED
          EDEDEDEDEDEDEDEDEDEDECECECECECECECECECECECECECECECECECECECECECED
          EDEDEDEDEDECECECECECECEDEDEDECECECEDEDEDECECECEDEDEDEDEDEDEDEDED
          EDEDEDEEEEEEF0F0F0EFEFEFEFEFEFEEEEEEF0F0F0F0F0F0EFEFEFEFEFEFEFEF
          EFEFEFEFEFEFEFF0F0F0F0F0F0F0F0F0EFEFEFEEEEEEEFEFEFEEEEEEEFEFEFEE
          EEEEEDEDEDF0F0F0EFEFEFEEEEEEEEEEEEEDEDEDECECECECECECEDEDEDEDEDED
          EDEDEDECECECECECECEBEBEBECECECECECECEDEDEDEDEDEDEBEBEBECECECECEC
          ECEDEDEDECECECECECECEDEDEDEBEBEBEBEBEBECECECECECECEBEBEBECECECEB
          EBEBEBEBEBECECECECECECECECECECECECEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
          EBEBEBEBEBEBEBEBEBEEEEEEE5E5E5CFCFCFD3D3D3EDEDEDF6F6F6F5F5F5F5F5
          F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5
          F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5
          F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5
          F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5
          F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5
          F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5
          F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5
          F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5
          F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5
          F5F6F6F6ECECECD1D1D1D4D4D4EBEBEBF5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F5F5F5EBEBEBD0
          D0D0D5D5D5EBEBEBF5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F5F5F5EBEBEBD1D1D1D3D3D3EBEBEB
          F5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F3F3F3E5E5E5D8D8D8EFEFEFF4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F5F5F5ECECECD2D2D2D1D1D1EBEBEBF5F5F5F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4EDED
          EDDADADAC1C1C1A5A5A5A2A2A2C3C3C3E9E9E9F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F5F5F5EDEDEDD5D5D5D1D1D1EBEBEBF5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F3F3F3E8E8E8D5D5D5BEBEBEA9A9A99E9E9E9595958E
          8E8E868686959595B2B2B2CFCFCFF2F2F2F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4ECF2F4A7DCF792D7F993D8F893D8F893D8F893D9F893D9
          F893D9F893D9F893D9F893D9F893D9F893D9F893D9F893D9F893D9F893D9F893
          D9F893D9F893D9F893D9F893D9F893D9F893D9F893D9F893D9F893D9F893D9F8
          93D9F893D9F893D9F893D9F893D8F893D8F893D8F893D8F893D8F893D8F893D8
          F892D8F892D6F8B6E1F6E9F0F4F4F4F4F4F4F4F4F4F4F4F4F4F5F5F5EEEEEED9
          D9D9D3D3D3ECECECF5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F1F1F1E4E4E4CF
          CFCFB8B8B8A7A7A7A1A1A19C9C9C9797979292928C8C8C878787848484818181
          878787A1A1A1BABABADFDFDFF4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4BBE2F637C0FB2DC2FE2DBEF92EBCF82EBCF82EBDF82EBDF82EBDF82FBDF82E
          BEF82FBEF82FBEF830BEF830BEF830BEF830BFF830BFF830BFF830BFF830BFF8
          30BFF830BFF830BEF830BEF830BEF82FBEF82FBEF82EBEF82FBDF82EBDF82EBD
          F82EBDF82EBCF82EBCF82DBCF82DBBF82CBBF82CBBF82CBBF82ABEFC2BBFFD46
          C1FAB9E2F6F4F4F4F4F4F4F4F4F4F4F4F4F5F5F5EFEFEFDBDBDBD4D4D4EBEBEB
          F5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4EDEDEDDBDBDBC5C5C5AFAFAFA2A2A29E9E9E999999979797
          9595959292928D8D8D8989898484848383838787878787878484848282829292
          92ABABABC4C4C4E9E9E9F4F4F4F4F4F4F4F4F4F4F4F4F4F4F482D2F82AC8FE25
          90C3366E9A3B6A963B6A963B6A963B6A963B6A963B6A963B6A963B6A963B6A96
          3B6A963B6A963B6A963B6A963B6A963B6A963B6A963B6A963B6A963B6A963B6A
          963B6A963B6A963B6A963B6A963B6A963B6A963B6A963B6A963B6A963B6A963B
          6A963B6A963B6A963B6A963B6A963B6A952872A321B2EB36C5FE9BD8F7F4F4F4
          F4F4F4F4F4F4F4F4F4F5F5F5F0F0F0DEDEDED1D1D1EBEBEBF5F5F5F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F3F3F3F3F3F3F4F4F4F4F4F4F4F4F4F4F4F4EFEFEFCECECEB6B6B6
          A0A0A09595959090908E8E8E8E8E8E8E8E8E8E8E8E8C8C8C8989898787878787
          878A8A8A909090909090A4A4A49898987F7F7F8383838181818484849C9C9CB5
          B5B5EFEFEFF4F4F4F4F4F4F4F4F4F4F4F4C3E5F653D1FF287FB02775A625C4F9
          25BEF526BFF527BFF527C0F527C0F528C1F528C1F529C1F529C1F529C2F529C2
          F52AC2F52AC2F52AC2F52AC2F52AC2F52AC2F52AC2F52AC2F529C2F529C1F529
          C1F528C1F528C1F528C0F527C0F527BFF526BFF526BEF525BEF524BDF524BDF5
          23BCF422C1F824A2D82459893FBAEA78D2FBE0EEF5F4F4F4F4F4F4F4F4F4F4F4
          F4F5F5F5F0F0F0DCDCDCD2D2D2ECECECF5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4EAEAEAD2D2D2C3C3C3
          C8C8C8DEDEDEE9E9E9F0F0F0F4F4F4E6E6E69D9D9D8989898585858383838484
          848585858585858484848686868B8B8B9393939999999E9E9E9F9F9F9D9D9D90
          9090A8A8A89090907C7C7C7F7F7F838383939393A8A8A8CCCCCCF3F3F3F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F486D4F94CC2EE2B689727B1E627CEFF28C9FE28CA
          FF29CAFF29CBFF2ACBFF2ACBFF2ACCFF2BCCFF2BCCFF2BCDFF2BCDFF2CCDFF2C
          CDFF2CCDFE2CCEFF2CD3FF2CD0FF2BCCFF2BCCFF2BCCFF2ACCFF2ACBFF2ACBFF
          29CBFF29CAFF28CAFF28C9FF27C9FF26C8FF25C8FF25C7FF24C7FF23CAFF2679
          AB2D8CBD5BD2FED7EBF5F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F5F5F5F0F0F0D8
          D8D8D4D4D4ECECECF5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F3F3F3EEEEEED9D9D9B5B5B5929292B1B1B1C1C1C1A0A0A09D9D9DABAB
          ABBCBCBCCDCDCDDEDEDEE5E5E5C2C2C29B9B9B87878785858584848487878799
          99999F9F9FA2A2A2A1A1A19D9D9D9B9B9B969696949494888888ACACAC8A8A8A
          8A8A8A919191999999B3B3B3D2D2D2D9D9D9E0E0E0EFEFEFE9E9E9F4F4F4F4F4
          F4F4F4F4E7F0F466D5FD369BC82E72A229CBFE29CAFE2ACAFD2BCAFD2BCBFD2C
          CBFD2CCBFD2CCCFD2DCCFD2DCCFD2DCCFD2DCDFD2ECDFD2ECDFD2ECEFE2EC9F9
          31719E2DBDED2DCFFF2DCCFD2DCCFD2CCCFD2CCBFD2CCBFD2BCBFD2BCAFD2ACA
          FD29C9FD29C9FD28C8FD27C8FD27C7FD26CCFF27A0D523679851CCF89DDAF8F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F5F5F5EFEFEFDADADAD4D4D4ECECEC
          F5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F1F1F1D9D9D9AAAA
          AA878787858585A9A9A9E1E1E1E3E3E3C1C1C1C1C1C1AFAFAF9E9E9E9797979D
          9D9DABABABC1C1C1CDCDCDBFBFBF9C9C9C8585858C8C8CA2A2A29D9D9D9B9B9B
          9999999797979393938C8C8C8181817B7B7BA4A4A49B9B9BA0A0A0B1B1B1C4C4
          C4D6D6D6E4E4E4EAEAEAE8E8E8E9E9E9DBDBDBF3F3F3F4F4F4F4F4F4F4F4F4B4
          E0F759D3FD2E729F2A9BCD2BD1FF2CCBFD2DCCFD2DCCFD2ECDFD2ECDFD2ECDFD
          2FCEFD2FCEFD2FCEFD2FCEFD30CEFD30CFFD30D3FF3466932951802F618E65DE
          FA2FD0FF2FCEFD2ECEFD2ECDFD2ECDFD2DCCFD2DCCFD2CCBFD2CCBFD2BCAFD2A
          CAFD29C9FD29CAFE28C3F82567983EAAD871D3FCF1F3F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F1F1F1DFDFDFD2D2D2EBEBEBF5F5F5F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4DFDFDFCFCFCFB2B2B2A0A0A0949494BA
          BABADEDEDEE0E0E0B8B8B8BDBDBDC1C1C1C2C2C2BABABAABABAB9A9A9A929292
          989898A6A6A6B3B3B3ABABAB9595959B9B9B9494949090908C8C8C8A8A8A8A8A
          8A909090A3A3A3B8B8B8D4D4D4D6D6D6E1E1E1DFDFDFDDDDDDDCDCDCDDDDDDE0
          E0E0E2E2E2E8E8E8D8D8D8F1F1F1F4F4F4F4F4F4F4F4F4F4F4F47FD5FB4CBAE3
          2B69972DC3F32ED0FF2ECDFD2FCEFD2FCEFD30CFFD30CFFD30CFFD30CFFD30CF
          FD31D0FD31D0FD32D0FD32D5FF346692284D7C2F649266DDF831D2FF30CFFD30
          CFFD30CFFD2FCEFD2FCEFD2ECEFD2ECDFD2DCCFD2CCCFD2CCBFD2BCBFD2AD1FF
          288BBC2C7EAD5FD5FFCBE7F6F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F1F1F1DBDBDBD2D2D2EBEBEBF5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4CDCDCDF7F7F7E7E7E7B6B6B6939393B8B8B8DFDFDFE0E0E0
          B8B8B8BCBCBCBBBBBBBBBBBBBDBDBDC2C2C2C4C4C4BBBBBBA6A6A69595959191
          919E9E9E8E8E8E8C8C8C929292A0A0A0B1B1B1C3C3C3D3D3D3DDDDDDDEDEDED8
          D8D8CECECEDBDBDBE5E5E5DBDBDBDDDDDDDEDEDEDADADACFCFCFD6D6D6E9E9E9
          D8D8D8E2E2E2E6E6E6E6E6E6E6E6E6E6E6E6D2E0E866D6FD3886B22985B530D5
          FF30CFFD30CFFD2FCFFD2FD0FD31D0FD34D1FD37D2FD39D3FD39D3FD37D2FD34
          D2FD34D4FE33C8F32B75A467D5F034D4FF33D1FD33D1FD33D0FD32D0FD31D0FD
          31CFFD30CFFD2FCEFD2FCEFD2ECDFD2DCCFD2DD1FF2BB6E724649553C6EE90D8
          F9F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F5F5F5F0F0F0DA
          DADAD2D2D2ECECECF5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          D0D0D0F1F1F1E1E1E1B3B3B3939393B8B8B8E0E0E0E0E0E0B8B8B8BCBCBCBCBC
          BCBCBCBCBCBCBCBCBCBCBBBBBBBFBFBFC4C4C4C5C5C5B9B9B9ADADADB7B7B7CB
          CBCBD9D9D9DFDFDFE0E0E0DDDDDDD7D7D7D4D4D4D4D4D4D7D7D7D8D8D8D9D9D9
          D3D3D3C9C9C9BFBFBFB5B5B5AEAEAEA8A8A8C4C4C4EBEBEBDBDBDBC4C3C2C7C6
          C5C7C6C5C7C6C5C7C6C5C7C6C588BFDA5FD1F62C6C9A2CB0DE2FD5FF34D1FD3E
          D4FD48D6FD4FD8FD51D8FD4FD9FD4BD8FD46D7FD41D6FD3BD5FD37D3FD37D8FF
          37DEFF37DBFF36D3FD36D3FD35D2FD35D2FD35D2FD34D1FD34D1FD33D0FD32D0
          FD31CFFD30CFFD2FCFFD2FD1FF2776A63D9DC86FD7FDECF1F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F1F1F1D9D9D9D4D4D4ECECEC
          F5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4D0D0D0F1F1F1E1E1
          E1B3B3B3929292B8B8B8E0E0E0E0E0E0B7B7B7BABABAB8B8B8BABABABBBBBBBF
          BFBFC5C5C5CDCDCDD5D5D5DADADAE1E1E1E3E3E3E0E0E0DDDDDDDCDCDCDCDCDC
          DEDEDEDEDEDEDCDCDCD5D5D5CDCDCDC2C2C2B7B7B7AEAEAEA9A9A9A8A8A8A9A9
          A9ACACACAEAEAEADADADC0C0C0EBEBEBDDDCDCE2E2E29D9A989D9A989D9A989D
          9A989D9A989D9A985FBCE14CAFD43B7CA657DBFD64DEFE68DEFE67DEFD62DDFD
          5CDCFD58DBFD53DBFD4DD9FD48D8FD42D7FD3CD9FF3F6F993D719A3E709969E1
          FA38D6FE37D4FD37D4FD36D3FD36D3FD36D3FD35D2FD34D1FD34D1FD33D0FD32
          D7FF2DA1D02973A163D7FCBCE2F6F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F5F5F5EFEFEFD9D9D9D3D3D3EBEBEBF5F5F5F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4D0D0D0F1F1F1E1E1E1B3B3B3929292B8
          B8B8E3E3E3E0E0E0B7B7B7C0C0C0C8C8C8CFCFCFD6D6D6DCDCDCDDDDDDDDDDDD
          DCDCDCDBDBDBDCDCDCDEDEDEDFDFDFDCDCDCD8D8D8D0D0D0C4C4C4B8B8B8AEAE
          AEA7A7A7A5A5A5A5A5A5A7A7A7A9A9A9ACACACACACACADADADAEAEAEAFAFAFAE
          AEAEBCBCBCEAEAEAE0E0E0DFDFDFA6A3A1A6A3A1A6A3A1A6A3A1A6A3A1A6A3A1
          8EA4AF7CDBFA71A0BE76BDDB75E6FF70E0FE6CE0FE67DFFD63DEFD5EDEFD5ADD
          FD54DCFD4FDBFD49DAFD44DDFF295B8A284F7D3D6D976ADFF73AD9FF39D5FD39
          D5FD38D5FD38D4FD37D4FD37D3FD36D3FD35D2FD35D4FE33C9F5256A9953BCE1
          86D7FAF4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F5F5F5EFEFEFDCDCDCD1D1D1EBEBEBF5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4D0D0D0F1F1F1E2E2E2B2B2B2929292B7B7B7E5E5E5E3E3E3
          BABABAE1E1E1E0E0E0DCDCDCDCDCDCDCDCDCDDDDDDDEDEDEDDDDDDD8D8D8D0D0
          D0C5C5C5B9B9B9ADADADA6A6A6A2A2A2A1A1A1A4A4A4A6A6A6A8A8A8A9A9A9AA
          AAAAAAAAAAACACACADADADAEAEAEAFAFAFB0B0B0B1B1B1B0B0B0B9B9B9E8E8E8
          E4E4E4E0E0E0EEEDEDEEEDEDEEEDEDEEEDEDEEEDEDEEEDEDEEEDED98D8F596DD
          F26D97B77BDAF578E5FF74E2FE6FE2FE6AE1FD66E0FD61DFFD5BDEFD56DDFD50
          DDFD4ADFFF2B5D8C2B56853D6E986BE0F83CDBFF3BD7FD3BD7FD3AD6FD3AD6FD
          39D6FD39D5FD38D4FD37D4FD37DAFF2D8BB8398FB76FDAFEE2EEF5F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F5F5F5F0F0F0E3
          E3E3D3D3D3EBEBEBF5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          D0D0D0F1F1F1E1E1E1B3B3B3929292B7B7B7E5E5E5E5E5E5BABABADADADADDDD
          DDDFDFDFD8D8D8D1D1D1C5C5C5BABABAAEAEAEA5A5A59F9F9F9E9E9E9F9F9FA0
          A0A0A4A4A4A5A5A5A6A6A6A8A8A8A8A8A8A9A9A9AAAAAAABABABACACACADADAD
          AEAEAEAFAFAFB0B0B0B1B1B1B2B2B2B2B2B2B7B7B7E5E5E5E8E8E8DBDBDBE8E7
          E7E8E7E7E8E7E7E8E7E7E8E7E7E8E7E7E8E7E7E3E6E784DCFA92C5DA71A6C580
          EAFF7BE4FE76E4FE71E3FE6DE2FE67E2FD62E1FD5CE0FD57DFFD51E1FF2C5E8C
          2F5A873E6E986CE1F83EDCFF3DD9FD3DD9FD3CD8FD3CD8FD3BD7FD3AD7FD39D6
          FD3ADBFF35BAE3286D9B66D3F5ADDFF7F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F1F1F1E0E0E0D4D4D4ECECEC
          F5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4D0D0D0F1F1F1E1E1
          E1B4B4B4929292B7B7B7E6E6E6E6E6E6BABABADADADAD2D2D2ACACACA2A2A29D
          9D9D9B9B9B9B9B9B9D9D9DA0A0A0A2A2A2A3A3A3A4A4A4A4A4A4A5A5A5A6A6A6
          A7A7A7A8A8A8A9A9A9AAAAAAABABABACACACADADADAEAEAEAEAEAEB0B0B0B0B0
          B0B1B1B1B2B2B2B2B2B2B5B5B5E0E0E0EBEBEBD7D7D7C6C5C4C6C5C4C6C5C4C6
          C5C4C6C5C4C6C5C4C6C5C4C6C5C4A1C3D096E4FB7AA2BE83D1E983EBFF7DE6FE
          78E5FE73E4FE6EE4FD67E3FD62E2FD5CE1FD57E3FF2D5F8D345D8A3E6F986CE2
          F83FDDFF3FDAFD3EDAFD3ED9FD3DD9FD3DD8FD3CD8FD3BD8FE3BD9FD2977A551
          B0D283DAFBF4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F1F1F1DFDFDFD3D3D3EBEBEBF5F5F5F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4D0D0D0F1F1F1E1E1E1B5B5B5939393B6
          B6B6E5E5E5E7E7E7BCBCBCD8D8D8D6D6D69999999B9B9B9E9E9E9F9F9FA0A0A0
          A1A1A1A2A2A2A3A3A3A4A4A4A5A5A5A5A5A5A6A6A6A7A7A7A8A8A8A9A9A9AAAA
          AAABABABACACACADADADAEAEAEAEAEAEB0B0B0B0B0B0B2B2B2B3B3B3B4B4B4B5
          B5B5B2B2B2DDDDDDEDEDEDD7D7D7D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6
          D6D6D6D6D6D6D6D6D68BD3ECA2DAEB77A2BE89E8FC84E9FF7EE7FE79E7FE74E6
          FE6EE4FD68E4FD62E3FD5DE5FF2F608D37618D3F6F996EE2F841DFFF41DCFD40
          DCFD40DBFD3FDBFD3FDAFD3ED9FD3EE0FF33A4CD3481AA77DFFED8ECF5F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F5F5F5F0F0F0DCDCDCD2D2D2EBEBEBF5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4D0D0D0F1F1F1E1E1E1B7B7B7949494B6B6B6E3E3E3E8E8E8
          C1C1C1D4D4D4DDDDDDA4A4A49D9D9D9F9F9FA0A0A0A1A1A1A2A2A2A3A3A3A4A4
          A4A5A5A5A6A6A6A6A6A6A8A8A8A9A9A9AAAAAAAAAAAAABABABADADADAEAEAEAF
          AFAFAFAFAFB0B0B0B1B1B1B2B2B2B3B3B3B4B4B4B5B5B5B6B6B6B4B4B4D7D7D7
          F0F0F0D8D8D8F1F1F1F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4E9F1F495E7FD87B1C987C6DD8BEFFF84E9FE7FE9FE7AE8FE74E7FE6EE6FD68
          E5FD62E8FF30608D3B648F3F709970E4F843E1FF43DDFD42DDFD42DDFD41DCFD
          41DBFD40DEFF3DCFF228709D68CDEAA6E0F8F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F5F5F5F0F0F0DE
          DEDED3D3D3EBEBEBF5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          D0D0D0F1F1F1E1E1E1B8B8B8959595B6B6B6E3E3E3E8E8E8C4C4C4D2D2D2DFDF
          DFAAAAAA9D9D9DA0A0A0A1A1A1A2A2A2A4A4A4A4A4A4A5A5A5A6A6A6A7A7A7A8
          A8A8A9A9A9AAAAAAAAAAAAACACACADADADAEAEAEAFAFAFAFAFAFB0B0B0B1B1B1
          B2B2B2B3B3B3B4B4B4B5B5B5B6B6B6B7B7B7B5B5B5D2D2D2F2F2F2D8D8D8EEEE
          EEF4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4BEE9F7A5
          E7F87EA4BF8EE1F48BEDFF85EAFE7FE9FE79E9FE73E8FE6CE7FD67E9FF31618E
          3F669140709972E5F846E2FF44DFFD44DEFD43DEFD43DDFD42DDFD43E3FF2F8B
          B54A9EC289E2FCF3F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F5F5F5F0F0F0DFDFDFD2D2D2ECECEC
          F5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4D0D0D0F1F1F1E1E1
          E1B8B8B8959595B6B6B6E3E3E3E9E9E9C8C8C8D1D1D1E2E2E2B1B1B19D9D9DA1
          A1A1A2A2A2A4A4A4A4A4A4A5A5A5A6A6A6A7A7A7A8A8A8A9A9A9AAAAAAAAAAAA
          ACACACADADADAEAEAEAFAFAFB0B0B0B1B1B1B1B1B1B3B3B3B5B5B5B5B5B5B7B7
          B7B8B8B8B8B8B8B9B9B9B7B7B7CDCDCDF3F3F3DADADAEBEBEBF4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F49EE8FBA6D3E47CACC6
          91F0FF8AECFE85EBFE7EEBFE79EAFE73E9FD6DEBFF32618E42699340709974E6
          F84AE4FF46E0FD46E0FD45E0FD44DFFD45E5FF3CBDE03078A27BE1FBD0EBF6F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F5F5F5F0F0F0DBDBDBD2D2D2EBEBEBF5F5F5F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4D0D0D0F1F1F1E1E1E1BABABA969696B6
          B6B6E3E3E3EAEAEACBCBCBD1D1D1E0E0E0B8B8B89F9F9FA2A2A2A4A4A4A4A4A4
          A6A6A6A6A6A6A7A7A7A8A8A8A9A9A9AAAAAAAAAAAAACACACADADADAEAEAEAFAF
          AFB0B0B0B1B1B1B1B1B1B3B3B3B7B7B7B8B8B8B9B9B9BABABABBBBBBBCBCBCBD
          BDBDBBBBBBC9C9C9F3F3F3DEDEDEE7E7E7F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4E1F1F5A3EFFE87ADC690D5E992F2FF8CED
          FE86ECFE81ECFE7BEBFE76EDFF33628E456B9541719A79E7F852E7FF4BE2FD49
          E2FD48E1FD46E2FE45E0FB2A79A466C1DDA4E6F9F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F5F5F5F0F0F0DCDCDCD1D1D1EBEBEBF5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4D0D0D0F1F1F1E1E1E1BCBCBC979797B6B6B6E1E1E1EBEBEB
          CDCDCDD2D2D2DEDEDEC1C1C19F9F9FA4A4A4A5A5A5A6A6A6A6A6A6A7A7A7A8A8
          A8A9A9A9AAAAAAAAAAAAACACACADADADAEAEAEAFAFAFB0B0B0B1B1B1B1B1B1B3
          B3B3B9B9B9BCBCBCBCBCBCBDBDBDBFBFBFBFBFBFC0C0C0C1C1C1C0C0C0C6C6C6
          F2F2F2E2E2E2E3E3E3F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4B8EDF8AEE4F27EA6C298ECFB94F0FF8DEEFE88EDFE82
          EDFE7EEFFF34628E476D9642729A7CE8F85AE9FF53E4FD50E4FD4EE3FD4DEBFF
          38A4C94290B48EE9FDEDF2F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F5F5F5F0F0F0DF
          DFDFD1D1D1EBEBEBF5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          D0D0D0F1F1F1E1E1E1BDBDBD989898B5B5B5E1E1E1EBEBEBD1D1D1D4D4D4DEDE
          DEC8C8C8A1A1A1A5A5A5A6A6A6A6A6A6A7A7A7A8A8A8A9A9A9AAAAAAABABABAC
          ACACADADADAFAFAFAFAFAFB0B0B0B1B1B1B2B2B2B2B2B2BABABABFBFBFBFBFBF
          C0C0C0C1C1C1C2C2C2C3C3C3C4C4C4C5C5C5C5C5C5C3C3C3F1F1F1E6E6E6DFDF
          DFF4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F3F4F4A5F0FCA4CADB81B6CE9CF5FF94EFFE8FEFFE89EFFE85F1FF35638F
          496F9842729A80E9F863EBFF5AE6FD56E6FD56E9FF4DD5EF2E77A17FDCF2C8EC
          F7F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F5F5F5F0F0F0E1E1E1D2D2D2EBEBEB
          F5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4D0D0D0F1F1F1E1E1
          E1BFBFBF999999B6B6B6E0E0E0ECECECD3D3D3D6D6D6DDDDDDCECECEA5A5A5A5
          A5A5A6A6A6A8A8A8A8A8A8A9A9A9AAAAAAABABABADADADAEAEAEAFAFAFAFAFAF
          B0B0B0B1B1B1B2B2B2B3B3B3BCBCBCC2C2C2C2C2C2C3C3C3C4C4C4C4C4C4C5C5
          C5C6C6C6C8C8C8C9C9C9C9C9C9C2C2C2EEEEEEEAEAEADBDBDBF4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4DBF2F6
          B2F0FC83A7C29AE2F29CF4FF95F0FE90F0FE8CF3FF36638F4B709943729A83EA
          F96AEDFF61E8FD5DE8FE5DEEFF358CB262B1CDA5ECFAF4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F5F5F5EFEFEFDBDBDBD1D1D1ECECECF5F5F5F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4D0D0D0F1F1F1E0E0E0C0C0C09C9C9CB6
          B6B6DFDFDFEDEDEDD6D6D6D7D7D7DBDBDBD4D4D4A8A8A8A6A6A6A8A8A8A8A8A8
          AAAAAAAAAAAAABABABADADADAEAEAEAFAFAFAFAFAFB0B0B0B1B1B1B2B2B2B2B2
          B2B7B7B7C4C4C4C6C6C6C6C6C6C6C6C6C8C8C8C8C8C8C9C9C9CACACACBCBCBCD
          CDCDCECECEC4C4C4E8E8E8EFEFEFD9D9D9F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4BFF3F9B1DCE97DAA
          C5A1F5FF9BF2FE95F1FE91F4FF37648F4C729A44729B86EBF971EEFF68EAFE65
          F0FF4FBFDC4084AA97EDFDE6F2F5F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F5F5F5EEEEEED6D6D6D1D1D1EBEBEBF5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4D0D0D0F1F1F1E0E0E0C1C1C19D9D9DB6B6B6E0E0E0EEEEEE
          D7D7D7DADADADADADAD8D8D8AAAAAAA6A6A6A9A9A9AAAAAAAAAAAAABABABADAD
          ADAEAEAEAFAFAFAFAFAFB0B0B0B1B1B1B2B2B2B2B2B2B8B8B8B8B8B8B7B7B7BD
          BDBDC5C5C5CBCBCBCCCCCCCCCCCCCDCDCDCECECECFCFCFD0D0D0D2D2D2C6C6C6
          E4E4E4F3F3F3D6D6D6F3F3F3F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F1F4F4BDF8FD88AEC694D3E5A2F8FF9B
          F3FE97F5FF37648F4C709944729A89EBF977F0FF6FEEFF67E9FA357FA785D3E7
          C2EFF8F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F5F5F5EEEEEED4
          D4D4D1D1D1ECECECF5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          D0D0D0F1F1F1E0E0E0C2C2C29E9E9EB5B5B5DFDFDFEFEFEFDADADADDDDDDDCDC
          DCDADADAB1B1B1A7A7A7AAAAAAAAAAAAABABABADADADAEAEAEAFAFAFAFAFAFB0
          B0B0B1B1B1B2B2B2B2B2B2BABABACACACACBCBCBC5C5C5BFBFBFBABABABDBDBD
          C6C6C6CECECED2D2D2D3D3D3D3D3D3D4D4D4D6D6D6C9C9C9DFDFDFF7F7F7D6D6
          D6F1F1F1F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4DDF4F6BCEDF579A2BEA1EEF9A0F7FF9BF7FF396590
          527AA144749C8CEDF97DF1FF78F7FF49A5C55EA0BFA9F3FBF4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F5F5F5EDEDEDD4D4D4D2D2D2ECECEC
          F5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4D0D0D0F1F1F1E0E0
          E0C3C3C39E9E9EB5B5B5DFDFDFF0F0F0DCDCDCDFDFDFDEDEDEDDDDDDB8B8B8A8
          A8A8AAAAAAACACACADADADAEAEAEAFAFAFB0B0B0B1B1B1B1B1B1B2B2B2B2B2B2
          B8B8B8CCCCCCCECECECECECECFCFCFD1D1D1CECECEC8C8C8C1C1C1C0C0C0C8C8
          C8D1D1D1D6D6D6D8D8D8DADADACECECEDADADAF8F8F8D8D8D8EEEEEEF4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4CEF9FAA6CDDE7CB1CAA6FAFF9EF5FE93EAF68AE3F185E3F286F0
          FD84F5FF6EDAED3E80A7A0EBF7E1F2F5F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F5F5F5EDEDEDD4D4D4D4D4D4EBEBEBF5F5F5F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4D0D0D0F1F1F1E0E0E0C4C4C4A0A0A0B4
          B4B4DEDEDEF1F1F1DDDDDDE1E1E1E1E1E1DDDDDDBDBDBDA8A8A8ACACACADADAD
          AEAEAEAFAFAFB0B0B0B1B1B1B1B1B1B3B3B3B2B2B2B7B7B7CDCDCDD2D2D2D1D1
          D1D2D2D2D2D2D2D3D3D3D4D4D4D6D6D6D5D5D5D1D1D1C9C9C9C5C5C5C9C9C9D2
          D2D2DADADAD4D4D4D6D6D6FAFAFADADADAEAEAEAF4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4EFF4
          F5C8F8FC7BA3BF98DFEDA4F9FF9EF7FF99F8FF93F7FF8CF4FF89F8FF4792B583
          C4D9C2F3F8F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F5F5F5EEEEEED5D5D5D7D7D7ECECECF5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4D0D0D0F1F1F1E0E0E0C4C4C49C9C9CB5B5B5E8E8E8F2F2F2
          E9E9E9E6E6E6E3E3E3DDDDDDC3C3C3AAAAAAADADADAEAEAEAFAFAFB0B0B0B1B1
          B1B2B2B2B3B3B3B3B3B3B6B6B6CDCDCDD5D5D5D4D4D4D4D4D4D5D5D5D6D6D6D6
          D6D6D7D7D7D8D8D8D9D9D9DADADADBDBDBDADADAD3D3D3CCCCCCCCCCCCCDCDCD
          D2D2D2FAFAFADDDDDDE7E7E7F3F3F3F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4DDF7F7B6E1EC72
          A2BEA6F8FEA1F7FF9BF5FE95F5FE95FCFF6CC4DA5C97B7B4F6FCF3F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F5F5F5EEEEEED3
          D3D3D5D5D5ECECECF5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          D0D0D0F1F1F1E1E1E1D1D1D1C8C8C8E3E3E3F7F7F7F3F3F3F5F5F5F3F3F3F2F2
          F2DFDFDFC8C8C8AAAAAAAEAEAEAFAFAFB0B0B0B1B1B1B2B2B2B3B3B3B3B3B3B4
          B4B4CCCCCCD8D8D8D6D6D6D7D7D7D7D7D7D8D8D8D9D9D9DADADADADADADBDBDB
          DCDCDCDDDDDDDEDEDEDFDFDFE0E0E0E0E0E0DCDCDCD2D2D2CFCFCFFAFAFAE3E3
          E3E3E3E3F0F0F0F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4D0FBFB94BCD07DBAD0A8FEFF
          9FF6FE9AF8FF90F0F94E8DB0A3E3EEDCF3F6F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F5F5F5EDEDEDD2D2D2D3D3D3EBEBEB
          F5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4DBDBDBF4F4F4F3F3
          F3F4F4F4F8F8F8F5F5F5F1F1F1F1F1F1F0F0F0F0F0F0F2F2F2E1E1E1CECECEAD
          ADADAFAFAFB0B0B0B1B1B1B2B2B2B3B3B3B3B3B3B3B3B3CACACADADADADADADA
          DADADADADADADADADADBDBDBDDDDDDDDDDDDDEDEDEDEDEDEDFDFDFE0E0E0E1E1
          E1E1E1E1E3E3E3E3E3E3E6E6E6E5E5E5D1D1D1F7F7F7E7E7E7DFDFDFEDEDEDF4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4EAF5F5C2F0F56E9AB99EEDF5A3FAFFA2FFFF66AF
          C983B7CEB8EBEFF4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F5F5F5EDEDEDD4D4D4D2D2D2EBEBEBF5F5F5F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4E6E6E6E6E6E6E6E6E6F3F3F3F3
          F3F3F2F2F2F0F0F0EFEFEFEFEFEFEFEFEFE2E2E2D2D2D2B1B1B1AFAFAFB1B1B1
          B2B2B2B3B3B3B3B3B3B3B3B3C9C9C9DEDEDEDDDDDDDDDDDDDDDDDDDEDEDEDEDE
          DEDFDFDFE0E0E0E1E1E1E2E2E2E3E3E3E5E5E5E5E5E5E5E5E5E5E5E5E3E3E3E1
          E1E1DEDEDEDADADAC7C7C7F3F3F3ECECECDADADAEAEAEAF4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4C8EBEBA6CFDF6EA6C1AFFFFF8EE0ED6397B6AEEBF1DBDFE0F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F5F5F5EDEDEDD5D5D5D2D2D2EBEBEBF5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4E6E6E6E6E6E6E6E6E6E5E5E5
          E5E5E5F1F1F1F0F0F0E4E4E4D5D5D5B4B4B4B0B0B0B2B2B2B3B3B3B4B4B4B2B2
          B2C5C5C5E0E0E0DFDFDFE0E0E0E1E1E1E3E3E3E3E3E3E4E4E4E5E5E5E3E3E3E1
          E1E1DEDEDEDADADAD5D5D5D1D1D1CECECECCCCCCCBCBCBCECECED2D2D2D7D7D7
          DEDEDEF8F8F8F5F5F5D8D8D8E6E6E6F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4E0
          E0DFBAEEF175A0BC74B4CB5C96B5A2D9E5B0CED1DFDFDFF4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F5F5F5EDEDEDD4
          D4D4D2D2D2EBEBEBF5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4E6E6E6E6E6
          E6DFDFDFD9D9D9B8B8B8B1B1B1B3B3B3B4B4B4B3B3B3C4C4C4E5E5E5E3E3E3E2
          E2E2DEDEDEDADADAD6D6D6D1D1D1CCCCCCC8C8C8C7C7C7C9C9C9CBCBCBD2D2D2
          DADADAE3E3E3EAEAEAF3F3F3F8F8F8F9F9F9FAFAFAFAFAFAF9F9F9F6F6F6E9E9
          E9D9D9D9E4E4E4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4E0E0DFC2D4D5B6E8F0
          5888AA8BBBCF9ED8DDC4C2C1DFDFDFF4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F5F5F5EEEEEED3D3D3D2D2D2EBEBEB
          F5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4EDEDEDDCDCDCBB
          BBBBB0B0B0B1B1B1B1B1B1B3B3B3CBCBCBC9C9C9C4C4C4C1C1C1C3C3C3C8C8C8
          CECECED6D6D6DFDFDFECECECF5F5F5F8F8F8FAFAFAFAFAFAF9F9F9F9F9F9F7F7
          F7F1F1F1EBEBEBE6E6E6E4E4E4E6E6E6E8E8E8EBEBEBEFEFEFF1F1F1F3F3F3F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4E0E0DFD0CFCEA5D8DFD4FFFFB7F7FDAAB2
          B2C4C2C1DFDFDFF4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F5F5F5EDEDEDD2D2D2D1D1D1EBEBEBF5F5F5F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F1F1F1DCDCDCC1C1C1B6B6B6BFBFBF
          C4C4C4CECECED4D4D4DADADAE4E4E4EDEDEDF2F2F2F3F3F3F6F6F6F7F7F7F6F6
          F6F2F2F2EEEEEEE8E8E8E5E5E5E5E5E5E7E7E7EAEAEAEEEEEEF1F1F1F3F3F3F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4E0E0DFD0CFCEC3C6C5B9EBF5D0EEF4B1AFADC4C2C1DFDFDFF4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F5F5F5ECECECD3D3D3D1D1D1EBEBEBF5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F3F3F3E0E0E0E1E1E1E5E5E5EAEAEAEBEBEBEDEDEDEBEB
          EBEBEBEBE8E8E8E5E5E5E4E4E4E4E4E4E6E6E6E9E9E9ECECECF0F0F0F3F3F3F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4E0
          E0DFD0CFCEC6C5C4EFEFEFF2F2F2B1AFADC4C2C1DFDFDFF4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F5F5F5ECECECD7
          D7D7D2D2D2EBEBEBF5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4E5E5E5DFDFDFE0E0E0E2E2E2E5E5E5E7E7E7EBEBEBEFEFEFF1F1F1F3
          F3F3F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4E0E0DFD0CFCEC6C5C4
          EFEFEFF2F2F2B1AFADC4C2C1DFDFDFF4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F5F5F5ECECECD4D4D4D2D2D2EBEBEB
          F5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4E0E0DFD0CFCEC6C5C4EFEFEFF2F2F2B1AF
          ADC4C2C1DFDFDFF3F3F3E5E5E5D8D8D8EFEFEFF4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F5F5F5ECECECD1D1D1D3D3D3EBEBEBF5F5F5F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4E0E0DFD0CFCEC6C5C4EFEFEFF2F2F2B1AFADC0BEBDC9C9C9C1
          C1C1A5A5A5A2A2A2C3C3C3E9E9E9F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F5F5F5ECECECD3D3D3D2D2D2EBEBEBF5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4E0
          E0DFD0CFCEC6C5C4E4E4E4D4D4D49A99999493939595959595958E8E8E868686
          959595B2B2B2CFCFCFF2F2F2F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F5F5F5EDEDEDD7
          D7D7D3D3D3EBEBEBF5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F1F1F1D2D2D1B8B8B7AAA9A9
          A6A6A6A1A1A19A9A9A9696969191918C8C8C878787848484818181878787A1A1
          A1BABABADFDFDFF4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F5F5F5EDEDEDD7D7D7D5D5D5ECECEC
          F5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4EDEDEDDBDBDBC5C5C5AFAFAF9E9E9E9797969999999797979595959292
          928D8D8D898989848484838383878787878787848484828282929292ABABABC4
          C4C4E9E9E9F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F5F5F5ECECECD3D3D3D6D6D6ECECECF5F5F5F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F3F3F3F3F3F3F4F4F4F4F4F4F4F4F4F4F4F4EFEFEFCECECEB6B6B6A0A0A09595
          959090908E8E8E8D8D8D8E8E8E8E8E8E8C8C8C8989898686868686868A8A8A90
          9090909090A4A4A49898987F7F7F8383838181818484849C9C9CB5B5B5EFEFEF
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F5F5F5ECECECD3D3D3D6D6D6ECECECF5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4EAEAEAD2D2D2C3C3C3C8C8C8DEDE
          DEE9E9E9F0F0F0F4F4F4E6E6E69D9D9D89898985858583838384848485858585
          85858383838585858B8B8B9393939999999D9D9D9E9E9E9D9D9D909090A8A8A8
          9090907C7C7C7F7F7F838383939393A8A8A8CCCCCCF3F3F3F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F5F5F5EDEDEDD4
          D4D4D4D4D4EBEBEBF5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F3F3
          F3EEEEEED9D9D9B5B5B5929292B1B1B1C1C1C1A0A0A09D9D9DABABABBCBCBCCD
          CDCDDEDEDEE5E5E5C2C2C29B9B9B8787878585858484848686869999999F9F9F
          A2A2A2A1A1A19D9D9D9A9A9A969696949494888888ACACAC8A8A8A8A8A8A9191
          91999999B3B3B3D2D2D2D9D9D9E0E0E0EFEFEFE9E9E9F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F5F5F5EDEDEDD3D3D3D3D3D3EBEBEB
          F5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F1F1F1D9D9D9AAAAAA87878785
          8585A9A9A9E1E1E1E3E3E3C1C1C1C1C1C1AFAFAF9E9E9E9797979D9D9DABABAB
          C1C1C1CDCDCDBFBFBF9C9C9C8585858C8C8CA1A1A19D9D9D9B9B9B9999999696
          969292928C8C8C8181817B7B7BA4A4A49B9B9BA0A0A0B1B1B1C4C4C4D6D6D6E4
          E4E4EAEAEAE8E8E8E9E9E9DBDBDBF3F3F3F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F5F5F5EDEDEDD4D4D4D3D3D3EBEBEBF5F5F5F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F3F3F3F3F3F3F3F3F3F3F3F3F2F2F2
          F1F1F1F1F1F1F0F0F0F0F0F0EFEFEFEEEEEEEEEEEEEDEDEDEDEDEDEDEDEDEDED
          EDEDEDEDEDEDEDEDEDEDEDEDEDEEEEEEEEEEEEEFEFEFF0F0F0F0F0F0F1F1F1F1
          F1F1F2F2F2F3F3F3F3F3F3DEDEDECECECEB2B2B2A0A0A0949494BABABADEDEDE
          E0E0E0B8B8B8BDBDBDC1C1C1C2C2C2BABABAABABAB9A9A9A929292989898A6A6
          A6B3B3B3ABABAB9595959B9B9A9494949090908C8C8C8A8A8A8A8A8A909090A3
          A3A3B8B8B8D4D4D4D6D6D6E1E1E1DFDFDFDDDDDDDCDCDCDDDDDDE0E0E0E2E2E2
          E8E8E8D8D8D8F1F1F1F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F5F5F5ECECECD3D3D3D2D2D2ECECECF5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F3F3F3F3F3F3F2F2F2F2F2F2F1F1F1F0F0F0EFEFEFEDEDEDECECECEBEBEBE9E9
          E9E9E9E9E9E9E9E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
          E8E8E8E8E8E8E8E8E8E8E8E9E9E9E9E9E9E9E9E9EBEBEBECECECEDEDEDEFEFEF
          F0F0F0CBCBCBF6F6F6E6E6E6B5B5B5929292B8B8B8DFDFDFE0E0E0B8B8B8BCBC
          BCBBBBBBBBBBBBBDBDBDC2C2C2C4C4C4BBBBBBA6A6A69595959191919E9E9E8D
          8D8D8C8C8C929292A0A0A0B1B1B1C3C3C3D3D3D3DDDDDDDEDEDED8D8D8CECECE
          DCDCDCE5E5E5DCDCDCDDDDDDDEDEDEDADADACFCFCFD6D6D6EAEAEAD9D9D9EFEF
          EFF4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F5F5F5ECECECD3
          D3D3D2D2D2ECECECF5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F3F3F3F2F2F2F0F0F0EEEE
          EEECECECEAEAEAE8E8E8E6E6E6E5E5E5E4E4E4E2E2E2E1E1E1DEDEDEDADADAD4
          D4D4CFCFCFCCCCCCCACACAC8C8C8C8C8C8C8C8C8C8C8C8CACACACCCCCCCFCFCF
          D4D4D4DADADADEDEDEE1E1E1E2E2E2E4E4E4E5E5E5E6E6E6E8E8E8C9C9C9EEEE
          EEDFDFDFB1B1B1929292B7B7B7E0E0E0E0E0E0B8B8B8BCBCBCBCBCBCBCBCBCBC
          BCBCBCBCBCBBBBBBBFBFBFC4C4C4C5C5C5B9B9B9ADADADB7B7B7CCCCCCD9D9D9
          DFDFDFE1E1E1DDDDDDD8D8D8D5D5D5D5D5D5D7D7D7D8D8D8DADADAD4D4D4C9C9
          C9BFBFBFB5B5B5AFAFAFA8A8A8C5C5C5EBEBEBDCDCDCEBEBEBF4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F5F5F5EDEDEDD2D2D2D4D4D4EBEBEB
          F5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F3F3F3F2F2F2F0F0F0EDEDEDE9E9E9E6E6E6E3E3E3E0E0E0DC
          DCDCD4D4D4CCCCCCC3C3C3BFBFBFBCBCBCBDBDBDC2C2C2C6C6C6CBCBCBCFCFCF
          D3D3D3D8D8D8DBDBDBDEDEDEE1E1E1E1E1E1E1E1E1DDDDDDD6D6D6CECECEC6C6
          C6C3C3C3C2C2C2C4C4C4CCCCCCD5D5D5DCDCDCC3C3C3E9E9E9DBDBDBAEAEAE8F
          8F8FB6B6B6DFDFDFDFDFDFB7B7B7BABABAB8B8B8BABABABBBBBBBFBFBFC5C5C5
          CDCDCDD5D5D5DADADAE1E1E1E3E3E3E0E0E0DEDEDEDCDCDCDDDDDDDEDEDEDFDF
          DFDCDCDCD6D6D6CECECEC3C3C3B8B8B8AFAFAFA9A9A9A8A8A8A9A9A9ACACACAE
          AEAEADADADC1C1C1EBEBEBDEDEDEE7E7E7F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F5F5F5ECECECD2D2D2D3D3D3EBEBEBF5F5F5F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F3F3F3F2
          F2F2EFEFEFEAEAEAE4E4E4DFDFDFDADADACDCDCDBFBFBFB8B8B8BBBBBBC3C3C3
          CBCBCBD2D2D2D7D7D7D9D9D9DBDBDBDCDCDCDDDDDDDEDEDEE1E1E1E5E5E5EAEA
          EAEEEEEEF2F2F2F8F8F8FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF9F9F9EF
          EFEFDCDCDCCACACABFBFBFAEAEAEDEDEDED5D5D5A9A9A98B8B8BB3B3B3E0E0E0
          DFDFDFB6B6B6C0C0C0C8C8C8CFCFCFD6D6D6DCDCDCDDDDDDDDDDDDDCDCDCDBDB
          DBDCDCDCDEDEDEDFDFDFDDDDDDD8D8D8D0D0D0C4C4C4B8B8B8AFAFAFA8A8A8A5
          A5A5A6A6A6A8A8A8AAAAAAACACACADADADAEAEAEAFAFAFB0B0B0AFAFAFBDBDBD
          EAEAEAE0E0E0E3E3E3F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F5F5F5ECECECD2D2D2D3D3D3EBEBEBF5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F2F2F2EFEFEFE9E9E9E1E1E1
          D9D9D9C8C8C8B7B7B7B8B8B8C0C0C0C6C6C6C9C9C9CBCBCBCECECED1D1D1D3D3
          D3D4D4D4D6D6D6D7D7D7D9D9D9DBDBDBDFDFDFE3E3E3E7E7E7EBEBEBEFEFEFF3
          F3F3F8F8F8FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF9F9F9F4F4F4EFEFEF
          E9E9E9C1C1C1DCDCDCC7C7C79E9E9E858585AEAEAEE0E0E0E0E0E0B9B9B9E1E1
          E1E0E0E0DCDCDCDCDCDCDCDCDCDDDDDDDEDEDEDDDDDDD8D8D8D0D0D0C5C5C5B9
          B9B9AEAEAEA6A6A6A2A2A2A1A1A1A4A4A4A6A6A6A8A8A8A9A9A9AAAAAAAAAAAA
          ACACACADADADAEAEAEAFAFAFB0B0B0B1B1B1B0B0B0B9B9B9E8E8E8E4E4E4E0E0
          E0F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F5F5F5ECECECD4
          D4D4D4D4D4ECECECF5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F3F3F3F1F1F1ECECECE4E4E4D9D9D9BEBEBEB5B5B5BBBB
          BBBCBCBCBFBFBFC2C2C2C6C6C6C9C9C9CDCDCDD0D0D0D3D3D3D4D4D4D6D6D6D7
          D7D7D9D9D9DBDBDBDFDFDFE3E3E3E7E7E7EBEBEBEFEFEFF3F3F3F8F8F8FAFAFA
          FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF7F7F7F0F0F0E9E9E9E4E4E4C2C2C2E6E6
          E6D2D2D29A9A9A7A7A7AA9A9A9DEDEDEE1E1E1B9B9B9DADADADDDDDDDFDFDFD8
          D8D8D1D1D1C5C5C5BABABAAEAEAEA5A5A59F9F9F9E9E9E9F9F9FA1A1A1A4A4A4
          A5A5A5A6A6A6A8A8A8A8A8A8A9A9A9AAAAAAABABABACACACADADADAEAEAEAFAF
          AFB0B0B0B1B1B1B2B2B2B2B2B2B7B7B7E5E5E5E8E8E8DCDCDCF4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F5F5F5EDEDEDD4D4D4D3D3D3ECECEC
          F5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F3F3F3F0F0F0EAEAEAE0E0E0CECECEB2B2B2B6B6B6B7B7B7BBBBBBBEBEBEC2
          C2C2C6C6C6C9C9C9CDCDCDD0D0D0D3D3D3D4D4D4D6D6D6D7D7D7D9D9D9DBDBDB
          DFDFDFE3E3E3E7E7E7EBEBEBEFEFEFF3F3F3F8F8F8FAFAFAFAFAFAFAFAFAFAFA
          FAFAFAFAFAFAFAF7F7F7F0F0F0E9E9E9E4E4E4C2C2C2E3E3E3D1D1D1A3A3A377
          7777A4A4A4DDDDDDE1E1E1B8B8B8D9D9D9D2D2D2ACACACA2A2A29D9D9D9B9B9B
          9B9B9B9D9D9DA0A0A0A2A2A2A3A3A3A4A4A4A5A5A5A6A6A6A6A6A6A7A7A7A8A8
          A8AAAAAAAAAAAAABABABACACACAEAEAEAEAEAEAFAFAFB0B0B0B1B1B1B2B2B2B3
          B3B3B3B3B3B5B5B5E1E1E1EBEBEBD9D9D9F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F5F5F5EDEDEDD3D3D3D1D1D1EBEBEBF5F5F5F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F3F3F3F0F0F0EB
          EBEBE2E2E2CCCCCCB2B2B2B4B4B4B7B7B7BBBBBBBEBEBEC2C2C2C6C6C6C9C9C9
          CDCDCDD0D0D0D3D3D3D4D4D4D6D6D6D7D7D7D9D9D9DBDBDBDEDEDEE2E2E2E6E6
          E6EAEAEAEEEEEEF3F3F3F8F8F8FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF7
          F7F7F0F0F0E9E9E9E4E4E4C2C2C2E3E3E3D1D1D1A3A3A37B7B7BA2A2A2DCDCDC
          E3E3E3BBBBBBD8D8D8D6D6D69999999B9B9B9E9E9E9F9F9FA0A0A0A1A1A1A2A2
          A2A3A3A3A4A4A4A5A5A5A6A6A6A6A6A6A8A8A8A8A8A8AAAAAAAAAAAAABABABAD
          ADADAEAEAEAFAFAFAFAFAFB0B0B0B1B1B1B2B2B2B3B3B3B4B4B4B5B5B5B3B3B3
          DDDDDDEDEDEDD8D8D8F3F3F3F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F5F5F5ECECECD3D3D3D1D1D1EBEBEBF5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F3F3F3F2F2F2EDEDEDE7E7E7D3D3D3
          B3B3B3B4B4B4B7B7B7BBBBBBBEBEBEC2C2C2C5C5C5C8C8C8CACACACDCDCDD0D0
          D0D3D3D3D5D5D5D8D8D8DBDBDBDEDEDEE2E2E2E6E6E6EAEAEAEEEEEEF1F1F1F5
          F5F5F8F8F8FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF6F6F6EFEFEFE9E9E9
          E4E4E4C2C2C2E3E3E3D0D0D0A4A4A47C7C7CA5A5A5DDDDDDE5E5E5C0C0C0D4D4
          D4DDDDDDA4A4A49D9D9D9F9F9FA0A0A0A1A1A1A2A2A2A3A3A3A4A4A4A5A5A5A6
          A6A6A6A6A6A8A8A8A9A9A9AAAAAAAAAAAAABABABADADADAEAEAEAFAFAFAFAFAF
          B0B0B0B1B1B1B2B2B2B3B3B3B4B4B4B5B5B5B6B6B6B4B4B4D7D7D7F0F0F0D8D8
          D8F1F1F1F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F5F5F5ECECECD5
          D5D5D1D1D1EBEBEBF5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F3F3F3F0F0F0EDEDEDDCDCDCB4B4B4B4B4B4B7B7
          B7BABABABBBBBBBFBFBFC6C6C6D0D0D0D9D9D9E3E3E3EAEAEAEEEEEEF0F0F0F3
          F3F3F3F3F3F3F3F3F3F3F3F4F4F4F4F4F4F4F4F4F5F5F5F5F5F5F6F6F6F7F7F7
          F8F8F8F9F9F9FAFAFAFAFAFAFAFAFAF9F9F9F2F2F2EAEAEAE2E2E2C1C1C1E3E3
          E3D0D0D0A5A5A57D7D7DA8A8A8E0E0E0E6E6E6C4C4C4D2D2D2DFDFDFAAAAAA9D
          9D9DA0A0A0A1A1A1A2A2A2A4A4A4A4A4A4A5A5A5A6A6A6A7A7A7A8A8A8A9A9A9
          AAAAAAAAAAAAACACACADADADAEAEAEAFAFAFAFAFAFB0B0B0B1B1B1B2B2B2B3B3
          B3B4B4B4B5B5B5B6B6B6B7B7B7B5B5B5D2D2D2F2F2F2D8D8D8EEEEEEF4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F5F5F5EDEDEDD4D4D4D1D1D1ECECEC
          F5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F3F3F3F2F2F2F1F1F1D4D4D4ADADADB3B3B3B3B3B3BFBFBFD2D2D2E4
          E4E4EEEEEEF2F2F2F1F1F1EDEDEDEAEAEAE6E6E6E3E3E3E1E1E1DFDFDFDEDEDE
          DDDDDDDCDCDCDCDCDCDBDBDBDBDBDBDBDBDBDADADADBDBDBDCDCDCDEDEDEE0E0
          E0E4E4E4E8E8E8EEEEEEF3F3F3F6F6F6F2F2F2C8C8C8E4E4E4D0D0D0A5A5A57B
          7B7BA4A4A4E2E2E2E8E8E8C8C8C8D1D1D1E2E2E2B1B1B19D9D9DA1A1A1A2A2A2
          A4A4A4A4A4A4A5A5A5A6A6A6A7A7A7A8A8A8A9A9A9AAAAAAAAAAAAACACACADAD
          ADAEAEAEAFAFAFB0B0B0B1B1B1B1B1B1B3B3B3B5B5B5B5B5B5B7B7B7B8B8B8B8
          B8B8B9B9B9B7B7B7CDCDCDF3F3F3DADADAEBEBEBF4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F5F5F5ECECECD4D4D4D2D2D2EBEBEBF5F5F5F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4DBDBDBAAAAAAB9B9B9DCDCDCF0F0F0F1F1F1EAEAEAE3E3E3DEDEDE
          DBDBDBD8D8D8D6D6D6D5D5D5D4D4D4D2D2D2D1D1D1D1D1D1D1D1D1D0D0D0D0D0
          D0D0D0D0CFCFCFCECECECECECECDCDCDCDCDCDCDCDCDCECECECFCFCFCFCFCFD1
          D1D1D5D5D5DCDCDCE5E5E5CDCDCDF0F0F0DADADAA8A8A87B7B7BA6A6A6E3E3E3
          EAEAEACBCBCBD1D1D1E0E0E0B8B8B89F9F9FA2A2A2A4A4A4A4A4A4A6A6A6A6A6
          A6A7A7A7A8A8A8A9A9A9AAAAAAAAAAAAACACACADADADAEAEAEAFAFAFB0B0B0B1
          B1B1B1B1B1B3B3B3B7B7B7B8B8B8B9B9B9BABABABBBBBBBCBCBCBDBDBDBBBBBB
          C9C9C9F3F3F3DEDEDEE7E7E7F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F5F5F5EDEDEDD3D3D3D3D3D3ECECECF5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4DFDFDF
          B8B8B8F1F1F1F0F0F0E2E2E2DDDDDDD9D9D9D6D6D6D3D3D3D0D0D0CDCDCDCBCB
          CBC8C8C8C7C7C7C5C5C5C4C4C4C3C3C3C3C3C3C3C3C3C2C2C2C2C2C2C1C1C1C1
          C1C1C0C0C0BFBFBFBFBFBFC1C1C1C2C2C2C4C4C4C6C6C6C8C8C8CACACACCCCCC
          D0D0D0BBBBBBE6E6E6DFDFDFBBBBBB808080A8A8A8E1E1E1EBEBEBCDCDCDD2D2
          D2DEDEDEC1C1C19F9F9FA4A4A4A5A5A5A6A6A6A6A6A6A7A7A7A8A8A8A9A9A9AA
          AAAAAAAAAAACACACADADADAEAEAEAFAFAFB0B0B0B1B1B1B1B1B1B3B3B3B9B9B9
          BCBCBCBCBCBCBDBDBDBFBFBFBFBFBFC0C0C0C1C1C1C0C0C0C6C6C6F2F2F2E2E2
          E2E3E3E3F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F5F5F5EDEDEDD3
          D3D3D2D2D2EBEBEBF5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4E1E1E1E0E0E0EEEEEED6D6
          D6DBDBDBD4D4D4CECECEC9C9C9C4C4C4C1C1C1BEBEBEBCBCBCBABABAB8B8B8B7
          B7B7B6B6B6B5B5B5B5B5B5B4B4B4B3B3B3B3B3B3B2B2B2B2B2B2B2B2B2B2B2B2
          B2B2B2B3B3B3B4B4B4B6B6B6B8B8B8BABABABDBDBDC1C1C1C6C6C6B6B6B6E0E0
          E0D0D0D0BCBCBC909090A9A9A9E1E1E1EBEBEBD1D1D1D4D4D4DEDEDEC8C8C8A1
          A1A1A5A5A5A6A6A6A6A6A6A7A7A7A8A8A8A9A9A9AAAAAAABABABACACACADADAD
          AFAFAFAFAFAFB0B0B0B1B1B1B2B2B2B2B2B2BABABABFBFBFBFBFBFC0C0C0C1C1
          C1C2C2C2C3C3C3C4C4C4C5C5C5C5C5C5C3C3C3F1F1F1E6E6E6DFDFDFF4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F5F5F5EDEDEDD3D3D3D3D3D3ECECEC
          F5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4EDEDEDCDCDCDECECECC6C6C6CDCDCDC9C9C9C0
          C0C0BABABAB6B6B6B3B3B3B0B0B0B0B0B0AFAFAFB0B0B0B1B1B1B2B2B2B4B4B4
          B5B5B5B6B6B6B8B8B8B8B8B8B6B6B6B5B5B5B3B3B3B1B1B1AEAEAEABABABA9A9
          A9A8A8A8A9A9A9ABABABAFAFAFB4B4B4BABABAAFAFAFDADADACACACABDBDBD86
          8686B0B0B0E0E0E0ECECECD3D3D3D6D6D6DDDDDDCECECEA5A5A5A5A5A5A6A6A6
          A8A8A8A8A8A8A9A9A9AAAAAAABABABADADADAEAEAEAFAFAFAFAFAFB0B0B0B1B1
          B1B2B2B2B3B3B3BCBCBCC2C2C2C2C2C2C3C3C3C4C4C4C4C4C4C5C5C5C6C6C6C8
          C8C8C9C9C9C9C9C9C2C2C2EEEEEEEAEAEADBDBDBF4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F5F5F5EDEDEDD5D5D5D4D4D4EBEBEBF5F5F5F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4D3D3D3CCCCCCD7D7D7B8B8B8B0B0B0AFAFAFB0B0B0B2B2B2
          B7B7B7BDBDBDC4C4C4C9C9C9CECECED2D2D2D5D5D5D8D8D8DDDDDDE2E2E2E6E6
          E6EAEAEAEDEDEDF1F1F1F2F2F2F1F1F1EFEFEFE9E9E9E1E1E1D7D7D7CCCCCCBE
          BEBEB2B2B2ABABABA9A9A9A1A1A1D6D6D6D6D6D6ABABAB8E8E8EB6B6B6DFDFDF
          EDEDEDD6D6D6D7D7D7DBDBDBD4D4D4A8A8A8A6A6A6A8A8A8A8A8A8AAAAAAAAAA
          AAABABABADADADAEAEAEAFAFAFAFAFAFB0B0B0B1B1B1B2B2B2B2B2B2B7B7B7C4
          C4C4C6C6C6C6C6C6C6C6C6C8C8C8C8C8C8C9C9C9CACACACBCBCBCDCDCDCECECE
          C4C4C4E8E8E8EFEFEFD9D9D9F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F5F5F5EDEDEDD7D7D7D2D2D2ECECECF5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F0F0F0B8B8B8C4C4C4B5B5B5B4B4B4C1C1C1C8C8C8CECECED2D2D2D5D5
          D5D6D6D6D8D8D8D8D8D8DBDBDBDCDCDCDFDFDFE3E3E3E7E7E7EBEBEBEFEFEFF5
          F5F5F9F9F9FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF9F9F9EDEDEDDDDDDD
          C8C8C8B1B1B1DDDDDDC6C6C6C0C0C09D9D9DB6B6B6E0E0E0EEEEEED7D7D7DADA
          DADADADAD8D8D8AAAAAAA6A6A6A9A9A9AAAAAAAAAAAAABABABADADADAEAEAEAF
          AFAFAFAFAFB0B0B0B1B1B1B2B2B2B2B2B2B8B8B8B8B8B8B7B7B7BDBDBDC5C5C5
          CBCBCBCCCCCCCCCCCCCDCDCDCECECECFCFCFD0D0D0D2D2D2C6C6C6E4E4E4F3F3
          F3D6D6D6F3F3F3F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F5F5F5EDEDEDD4
          D4D4D2D2D2ECECECF5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4BDBDBDAAAA
          AAB7B7B7BFBFBFC4C4C4C7C7C7C9C9C9CDCDCDD0D0D0D3D3D3D4D4D4D6D6D6D7
          D7D7D9D9D9DBDBDBDFDFDFE3E3E3E7E7E7EBEBEBEFEFEFF3F3F3F8F8F8FAFAFA
          FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF7F7F7F1F1F1ECECECE8E8E8C4C4C4DFDF
          DFC3C3C3ABABAB9E9E9EB5B5B5DFDFDFEFEFEFDADADADDDDDDDCDCDCDADADAB1
          B1B1A7A7A7AAAAAAAAAAAAABABABADADADAEAEAEAFAFAFAFAFAFB0B0B0B1B1B1
          B2B2B2B2B2B2BABABACACACACBCBCBC5C5C5BFBFBFBABABABDBDBDC6C6C6CECE
          CED2D2D2D3D3D3D3D3D3D4D4D4D6D6D6C9C9C9DFDFDFF7F7F7D6D6D6F1F1F1F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F5F5F5EDEDEDD3D3D3D6D6D6EDEDED
          F5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F3F3F3B3B3B3B3B3B3B8B8B8BBBBBBBEBEBEC2
          C2C2C6C6C6C9C9C9CDCDCDD0D0D0D3D3D3D4D4D4D6D6D6D7D7D7D9D9D9DBDBDB
          DFDFDFE3E3E3E7E7E7EBEBEBEFEFEFF3F3F3F8F8F8FAFAFAFAFAFAFAFAFAFAFA
          FAFAFAFAFAFAFAF7F7F7F0F0F0E9E9E9E4E4E4C2C2C2E4E4E4D1D1D1AFAFAF81
          8181B5B5B5DFDFDFF0F0F0DCDCDCDFDFDFDEDEDEDDDDDDB8B8B8A8A8A8AAAAAA
          ACACACADADADAEAEAEAFAFAFB0B0B0B1B1B1B1B1B1B2B2B2B2B2B2B8B8B8CCCC
          CCCECECECECECECFCFCFD1D1D1CECECEC8C8C8C1C1C1C0C0C0C8C8C8D1D1D1D6
          D6D6D8D8D8DADADACECECEDADADAF8F8F8D8D8D8EEEEEEF4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F5F5F5ECECECD3D3D3D4D4D4ECECECF5F5F5F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4E6E6E6AEAEAEB4B4B4B7B7B7BBBBBBBEBEBEC2C2C2C6C6C6C9C9C9
          CDCDCDD0D0D0D3D3D3D4D4D4D6D6D6D7D7D7D9D9D9DBDBDBDFDFDFE3E3E3E7E7
          E7EBEBEBEFEFEFF3F3F3F8F8F8FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF7
          F7F7F0F0F0E9E9E9E4E4E4C2C2C2E3E3E3D0D0D0B2B2B2868686ACACACDEDEDE
          F1F1F1DDDDDDE1E1E1E1E1E1DDDDDDBDBDBDA8A8A8ACACACADADADAEAEAEAFAF
          AFB0B0B0B1B1B1B1B1B1B3B3B3B2B2B2B7B7B7CDCDCDD2D2D2D1D1D1D2D2D2D2
          D2D2D3D3D3D4D4D4D6D6D6D5D5D5D1D1D1C9C9C9C5C5C5C9C9C9D2D2D2DADADA
          D4D4D4D6D6D6FAFAFADADADAEAEAEAF4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F5F5F5ECECECD2D2D2D1D1D1ECECECF5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4E4E4E4
          ADADADB4B4B4B7B7B7BBBBBBBEBEBEC2C2C2C6C6C6C9C9C9CDCDCDD0D0D0D2D2
          D2D3D3D3D5D5D5D5D5D5D7D7D7D8D8D8DCDCDCE1E1E1E5E5E5E9E9E9EDEDEDF2
          F2F2F7F7F7FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF7F7F7F0F0F0E9E9E9
          E4E4E4C2C2C2E3E3E3CFCFCFB1B1B1828282ABABABE8E8E8F2F2F2E9E9E9E6E6
          E6E3E3E3DDDDDDC3C3C3AAAAAAADADADAEAEAEAFAFAFB0B0B0B1B1B1B2B2B2B3
          B3B3B3B3B3B6B6B6CDCDCDD5D5D5D4D4D4D4D4D4D5D5D5D6D6D6D6D6D6D7D7D7
          D8D8D8D9D9D9DADADADBDBDBDADADAD3D3D3CCCCCCCCCCCCCDCDCDD2D2D2FAFA
          FADDDDDDE7E7E7F3F3F3F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F5F5F5EDEDEDD3
          D3D3D4D4D4EDEDEDF5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4E5E5E5ADADADB4B4B4B7B7
          B7BBBBBBBEBEBEC1C1C1C3C3C3C6C6C6CACACACFCFCFD5D5D5D9D9D9DDDDDDE1
          E1E1E4E4E4E7E7E7EAEAEAEDEDEDF0F0F0F2F2F2F4F4F4F6F6F6F8F8F8FAFAFA
          FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF6F6F6EFEFEFE8E8E8E3E3E3C2C2C2E3E3
          E3D0D0D0BEBEBEAEAEAED9D9D9F7F7F7F3F3F3F5F5F5F3F3F3F2F2F2DFDFDFC8
          C8C8AAAAAAAEAEAEAFAFAFB0B0B0B1B1B1B2B2B2B3B3B3B3B3B3B4B4B4CCCCCC
          D8D8D8D6D6D6D7D7D7D7D7D7D8D8D8D9D9D9DADADADADADADBDBDBDCDCDCDDDD
          DDDEDEDEDFDFDFE0E0E0E0E0E0DCDCDCD2D2D2CFCFCFFAFAFAE3E3E3E3E3E3F0
          F0F0F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F5F5F5ECECECD2D2D2D5D5D5ECECEC
          F5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4E5E5E5ADADADB4B4B4B6B6B6B7B7B7BBBBBBC6
          C6C6D2D2D2DFDFDFE8E8E8EEEEEEF0F0F0F1F1F1F0F0F0EEEEEEECECECEBEBEB
          EAEAEAE9E9E9E8E8E8E8E8E8E8E8E8E8E8E8E9E9E9EAEAEAECECECEFEFEFF2F2
          F2F6F6F6F8F8F8F9F9F9F6F6F6EEEEEEE5E5E5C8C8C8DDDDDDDDDDDDDFDFDFDE
          DEDEEBEBEBF1F1F1F1F1F1F0F0F0F0F0F0F2F2F2E1E1E1CECECEADADADAFAFAF
          B0B0B0B1B1B1B2B2B2B3B3B3B3B3B3B3B3B3CACACADADADADADADADADADADADA
          DADADADADBDBDBDDDDDDDDDDDDDEDEDEDEDEDEDFDFDFE0E0E0E1E1E1E1E1E1E3
          E3E3E3E3E3E6E6E6E5E5E5D1D1D1F7F7F7E7E7E7DFDFDFEDEDEDF4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F5F5F5EDEDEDD2D2D2D6D6D6ECECECF5F5F5F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4E5E5E5ADADADB0B0B0B9B9B9D1D1D1E7E7E7F0F0F0EFEFEFEBEBEB
          E5E5E5E0E0E0DCDCDCD8D8D8D6D6D6D4D4D4D2D2D2D1D1D1D0D0D0D0D0D0CFCF
          CFCFCFCFCFCFCFCECECECECECECECECECFCFCFD0D0D0D2D2D2D5D5D5D9D9D9DF
          DFDFE7E7E7EEEEEEF3F3F3F1F1F1D7D7D7C8C8C8C1C1C1C4C4C4E3E3E3F2F2F2
          F0F0F0EFEFEFEFEFEFEFEFEFE2E2E2D2D2D2B1B1B1AFAFAFB1B1B1B2B2B2B3B3
          B3B3B3B3B3B3B3C9C9C9DEDEDEDDDDDDDDDDDDDDDDDDDEDEDEDEDEDEDFDFDFE0
          E0E0E1E1E1E2E2E2E3E3E3E5E5E5E5E5E5E5E5E5E5E5E5E3E3E3E1E1E1DEDEDE
          DADADAC7C7C7F3F3F3ECECECDADADAEAEAEAF4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F5F5F5ECECECD2D2D2D7D7D7EDEDEDF5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4E5E5E5
          AAAAAACCCCCCEFEFEFF1F1F1E7E7E7DEDEDED8D8D8D4D4D4D2D2D2CFCFCFCDCD
          CDCCCCCCCACACAC8C8C8C6C6C6C5C5C5C5C5C5C4C4C4C4C4C4C3C3C3C3C3C3C2
          C2C2C2C2C2C3C3C3C3C3C3C5C5C5C6C6C6C7C7C7C8C8C8CACACACCCCCCCFCFCF
          D6D6D6E2E2E2EFEFEFF2F2F2D9D9D9B2B2B2D3D3D3E6E6E6E5E5E5E5E5E5F1F1
          F1F0F0F0E4E4E4D5D5D5B4B4B4B0B0B0B2B2B2B3B3B3B4B4B4B2B2B2C5C5C5E0
          E0E0DFDFDFE0E0E0E1E1E1E3E3E3E3E3E3E4E4E4E5E5E5E3E3E3E1E1E1DEDEDE
          DADADAD5D5D5D1D1D1CECECECCCCCCCBCBCBCECECED2D2D2D7D7D7DEDEDEF8F8
          F8F5F5F5D8D8D8E6E6E6F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F5F5F5EDEDEDD3
          D3D3D4D4D4EEEEEEF5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4E5E5E5C9C9C9F9F9F9E3E3
          E3DBDBDBD6D6D6D2D2D2CDCDCDC8C8C8C5C5C5C2C2C2BFBFBFBDBDBDBCBCBCBA
          BABAB8B8B8B8B8B8B7B7B7B7B7B7B6B6B6B6B6B6B6B6B6B5B5B5B5B5B5B5B5B5
          B6B6B6B7B7B7B8B8B8BABABABCBCBCBEBEBEC2C2C2C5C5C5C8C8C8CCCCCCD1D1
          D1E1E1E1F9F9F9CDCDCDDFDFDFF4F4F4F4F4F4F4F4F4E6E6E6E6E6E6DFDFDFD9
          D9D9B8B8B8B1B1B1B3B3B3B4B4B4B3B3B3C4C4C4E5E5E5E3E3E3E2E2E2DEDEDE
          DADADAD6D6D6D1D1D1CCCCCCC8C8C8C7C7C7C9C9C9CBCBCBD2D2D2DADADAE3E3
          E3EAEAEAF3F3F3F8F8F8F9F9F9FAFAFAFAFAFAF9F9F9F6F6F6E9E9E9D9D9D9E4
          E4E4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F5F5F5ECECECD2D2D2D7D7D7EDEDED
          F5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4E5E5E5E4E4E4E7E7E7CFCFCFD7D7D7CCCCCCC4
          C4C4BEBEBEBABABAB7B7B7B5B5B5B3B3B3B1B1B1B0B0B0AFAFAFAEAEAEADADAD
          ADADADACACACABABABAAAAAAAAAAAAA9A9A9A9A9A9A9A9A9A9A9A9AAAAAAACAC
          ACADADADB0B0B0B2B2B2B4B4B4B8B8B8BCBCBCC3C3C3CCCCCCC9C9C9ECECECE5
          E5E5DFDFDFF4F4F4F4F4F4F4F4F4F4F4F4F4F4F4EDEDEDDCDCDCBBBBBBB0B0B0
          B1B1B1B1B1B1B3B3B3CBCBCBC9C9C9C4C4C4C1C1C1C3C3C3C8C8C8CECECED6D6
          D6DFDFDFECECECF5F5F5F8F8F8FAFAFAFAFAFAF9F9F9F9F9F9F7F7F7F1F1F1EB
          EBEBE6E6E6E4E4E4E6E6E6E8E8E8EBEBEBEFEFEFF1F1F1F3F3F3F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F5F5F5ECECECD2D2D2D7D7D7EDEDEDF5F5F5F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F2F2F2BCBCBCEEEEEEC7C7C7BFBFBFBFBFBFB8B8B8B2B2B2AEAEAE
          ADADADAEAEAEB0B0B0B3B3B3B6B6B6BABABABDBDBDC0C0C0C3C3C3C6C6C6CACA
          CACBCBCBCBCBCBCBCBCBC9C9C9C5C5C5C0C0C0BABABAB3B3B3ADADADA8A8A8A5
          A5A5A7A7A7ABABABB1B1B1B7B7B7B8B8B8C9C9C9EFEFEFB9B9B9F0F0F0F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F1F1F1DCDCDCC1C1C1B6B6B6BFBFBFC4C4C4CECE
          CED4D4D4DADADAE4E4E4EDEDEDF2F2F2F3F3F3F6F6F6F7F7F7F6F6F6F2F2F2EE
          EEEEE8E8E8E5E5E5E5E5E5E7E7E7EAEAEAEEEEEEF1F1F1F3F3F3F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F5F5F5ECECECD2D2D2D4D4D4EDEDEDF5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          ECECECBBBBBBCFCFCFC1C1C1ABABABABABABB3B3B3BABABAC1C1C1C9C9C9CFCF
          CFD3D3D3D6D6D6D9D9D9DCDCDCDEDEDEE2E2E2E6E6E6EAEAEAEFEFEFF3F3F3F8
          F8F8FAFAFAFAFAFAFAFAFAFAFAFAF7F7F7F0F0F0E8E8E8D9D9D9C8C8C8B7B7B7
          A9A9A9AAAAAAC4C4C4D0D0D0BCBCBCF2F2F2F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F3F3F3E0E0E0E1E1E1E5E5E5EAEAEAEBEBEBEDEDEDEBEBEBEBEBEBE8
          E8E8E5E5E5E4E4E4E4E4E4E6E6E6E9E9E9ECECECF0F0F0F3F3F3F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F5F5F5EDEDEDD4
          D4D4D3D3D3EDEDEDF5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4B5B5
          B5BEBEBEBEBEBEBEBEBEC6C6C6CBCBCBCFCFCFD2D2D2D4D4D4D5D5D5D7D7D7D7
          D7D7D9D9D9DBDBDBDFDFDFE3E3E3E7E7E7EBEBEBEFEFEFF3F3F3F8F8F8FAFAFA
          FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF5F5F5EBEBEBDCDCDCD6D6D6C9C9
          C9BCBCBCF4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4E5
          E5E5DFDFDFE0E0E0E2E2E2E5E5E5E7E7E7EBEBEBEFEFEFF1F1F1F3F3F3F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F5F5F5EDEDEDD3D3D3D3D3D3EDEDED
          F5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4DFDFDFACACACB5B5B5B9B9B9BEBEBEC3
          C3C3C6C6C6C9C9C9CDCDCDD0D0D0D3D3D3D4D4D4D6D6D6D7D7D7D9D9D9DBDBDB
          DFDFDFE3E3E3E7E7E7EBEBEBEFEFEFF3F3F3F8F8F8FAFAFAFAFAFAFAFAFAFAFA
          FAFAFAFAFAFAFAF7F7F7F0F0F0EAEAEAE5E5E5DFDFDFD7D7D7CACACAB2B2B2E8
          E8E8F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F5F5F5EDEDEDD5D5D5D7D7D7EEEEEEF5F5F5F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F0F0F0ABABABB4B4B4B8B8B8BBBBBBBEBEBEC2C2C2C6C6C6C9C9C9
          CDCDCDD0D0D0D3D3D3D4D4D4D6D6D6D7D7D7D9D9D9DBDBDBDFDFDFE3E3E3E7E7
          E7EBEBEBEFEFEFF3F3F3F8F8F8FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF7
          F7F7F0F0F0E9E9E9E4E4E4DEDEDED7D7D7D3D3D3CCCCCCB0B0B0EDEDEDF4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F5F5F5EDEDEDD4D4D4D6D6D6EDEDEDF5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4E4E4E4
          AEAEAEB4B4B4B7B7B7BBBBBBBEBEBEC2C2C2C6C6C6C9C9C9CDCDCDD0D0D0D3D3
          D3D4D4D4D6D6D6D7D7D7D9D9D9DBDBDBDFDFDFE3E3E3E7E7E7EBEBEBEFEFEFF3
          F3F3F8F8F8FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF7F7F7F0F0F0E9E9E9
          E4E4E4DEDEDED7D7D7D1D1D1CCCCCCBFBFBFDEDEDEF4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F5F5F5EDEDEDD6
          D6D6D4D4D4EDEDEDF5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4E5E5E5ADADADB4B4B4B7B7
          B7BBBBBBBEBEBEC2C2C2C6C6C6C9C9C9CCCCCCCFCFCFD1D1D1D2D2D2D4D4D4D5
          D5D5D8D8D8DADADADEDEDEE3E3E3E7E7E7EBEBEBEFEFEFF3F3F3F8F8F8FAFAFA
          FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF7F7F7F0F0F0E9E9E9E4E4E4DEDEDED7D7
          D7D1D1D1CCCCCCBDBDBDDFDFDFF4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F5F5F5EDEDEDD3D3D3D4D4D4EEEEEE
          F5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4E5E5E5ADADADB4B4B4B7B7B7BBBBBBBDBDBDBF
          BFBFC3C3C3C9C9C9D1D1D1D9D9D9E1E1E1E6E6E6EAEAEAEEEEEEF1F1F1F2F2F2
          F3F3F3F5F5F5F6F6F6F7F7F7F8F8F8F9F9F9FAFAFAFAFAFAFAFAFAFAFAFAFAFA
          FAFAFAFAFAFAFAF8F8F8F0F0F0E8E8E8E2E2E2DDDDDDD7D7D7D1D1D1CCCCCCBD
          BDBDDFDFDFF4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F5F5F5ECECECD0D0D0D9D9D9EEEEEEF5F5F5F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4E5E5E5ADADADB3B3B3B4B4B4B8B8B8C6C6C6D7D7D7E6E6E6EFEFEF
          F3F3F3F5F5F5F4F4F4F2F2F2F0F0F0EFEFEFEDEDEDECECECEBEBEBEAEAEAEAEA
          EAE9E9E9E9E9E9E8E8E8E9E9E9E9E9E9EAEAEAEBEBEBEDEDEDF0F0F0F3F3F3F6
          F6F6F8F8F8F5F5F5EDEDEDE1E1E1D6D6D6CFCFCFCCCCCCBDBDBDDFDFDFF4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F5F5F5ECECECD1D1D1D7D7D7EDEDEDF5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4E5E5E5
          ABABABB1B1B1CBCBCBE6E6E6F3F3F3F3F3F3EFEFEFEBEBEBE9E9E9E8E8E8E8E8
          E8E8E8E8E8E8E8E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E8E8E8E7E7E7E7E7E7E6
          E6E6E5E5E5E4E4E4E3E3E3E1E1E1E0E0E0DFDFDFDFDFDFDFDFDFE3E3E3E8E8E8
          F0F0F0F5F5F5EFEFEFDDDDDDCACACABCBCBCDFDFDFF4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F5F5F5EEEEEED5
          D5D5D4D4D4EDEDEDF5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4E5E5E5B0B0B0E4E4E4F6F6
          F6ECECECE7E7E7E7E7E7E8E8E8EAEAEAEBEBEBECECECEDEDEDEEEEEEEEEEEEEE
          EEEEEEEEEEEEEEEEEEEEEEEEEEEEEDEDEDEDEDEDECECECEBEBEBE9E9E9E9E9E9
          E7E7E7E6E6E6E5E5E5E3E3E3E2E2E2E0E0E0DEDEDEDCDCDCDCDCDCDFDFDFE8E8
          E8F6F6F6EAEAEABEBEBEDFDFDFF4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F5F5F5ECECECD2D2D2D4D4D4EDEDED
          F5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4E4E4E4D9D9D9F5F5F5E0E0E0E7E7E7E9E9E9EB
          EBEBECECECEEEEEEEFEFEFF0F0F0F1F1F1F2F2F2F3F3F3F3F3F3F3F3F3F3F3F3
          F3F3F3F2F2F2F1F1F1F0F0F0EFEFEFEEEEEEEDEDEDEBEBEBEAEAEAE9E9E9E7E7
          E7E5E5E5E4E4E4E3E3E3E1E1E1DFDFDFDEDEDEDDDDDDDCDCDCDCDCDCF7F7F7DB
          DBDBDEDEDEF4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F5F5F5EDEDEDD1D1D1D5D5D5EDEDEDF5F5F5F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4E8E8E8DADADAECECECD4D4D4EBEBEBEEEEEEEDEDEDEEEEEEF0F0F0
          F2F2F2F3F3F3F5F5F5F6F6F6F7F7F7F8F8F8F8F8F8F8F8F8F8F8F8F6F6F6F5F5
          F5F3F3F3F2F2F2F0F0F0EFEFEFEDEDEDECECECEAEAEAE9E9E9E7E7E7E5E5E5E4
          E4E4E2E2E2E0E0E0DFDFDFDFDFDFDDDDDDCECECEF1F1F1D4D4D4E7E7E7F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F5F5F5EDEDEDD1D1D1D5D5D5EDEDEDF5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          C7C7C7E3E3E3E0E0E0D2D2D2DEDEDEEBEBEBF1F1F1F5F5F5F5F5F5F6F6F6F7F7
          F7F8F8F8FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF8F8F8F7F7F7F5F5F5F3F3F3F1
          F1F1F0F0F0EEEEEEECECECEBEBEBEAEAEAE8E8E8E7E7E7E6E6E6E5E5E5E2E2E2
          DCDCDCD2D2D2CFCFCFE4E4E4DDDDDDCECECEF4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F5F5F5EBEBEBD0
          D0D0D2D2D2ECECECF5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4D8D8D8C0C0
          C0D9D9D9D8D8D8D2D2D2D2D2D2D9D9D9E2E2E2EAEAEAF1F1F1F6F6F6F9F9F9FA
          FAFAFAFAFAFAFAFAFAFAFAFAFAFAF9F9F9F7F7F7F6F6F6F4F4F4F2F2F2F0F0F0
          EEEEEEECECECE8E8E8E3E3E3DDDDDDD6D6D6D0D0D0CDCDCDD1D1D1DBDBDBD8D8
          D8BFBFBFDCDCDCF4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F5F5F5EBEBEBD3D3D3D1D1D1EBEBEB
          F5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4DFDFDFC4C4C4C2
          C2C2CDCDCDD3D3D3D3D3D3CFCFCFCDCDCDCDCDCDCECECED1D1D1D3D3D3D4D4D4
          D6D6D6D6D6D6D7D7D7D6D6D6D4D4D4D2D2D2D1D1D1CECECECCCCCCCBCBCBCBCB
          CBCCCCCCCFCFCFD5D5D5D4D4D4CDCDCDC1C1C1C5C5C5E3E3E3F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F5F5F5ECECECD6D6D6D1D1D1EBEBEBF5F5F5F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4ECECECD8D8D8
          C7C7C7C2C2C2C0C0C0C3C3C3C5C5C5CBCBCBD0D0D0D3D3D3D4D4D4D4D4D4D4D4
          D4D4D4D4D4D4D4D4D4D4D3D3D3D1D1D1CBCBCBC6C6C6C3C3C3C0C0C0C2C2C2C9
          C9C9DADADAEEEEEEF4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F5F5F5EDEDEDD4D4D4D1D1D1EBEBEBF5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F1F1
          F1EDEDEDE8E8E8E3E3E3E0E0E0E0E0E0E1E1E1E2E2E2E1E1E1E1E1E1E2E2E2E1
          E1E1E0E0E0E0E0E0E3E3E3E9E9E9EDEDEDF1F1F1F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F5F5F5ECECECD3
          D3D3D0D0D0EAEAEAF5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F5F5F5EBEBEBD1D1D1D0D0D0EBEBEB
          F6F6F6F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5
          F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5
          F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5
          F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5
          F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5
          F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5
          F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5
          F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5
          F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5
          F5F5F5F5F5F5F5F5F5F6F6F6ECECECD3D3D3CECECEE3E3E3ECECECEBEBEBEBEB
          EBEBEBEBEBEBEBECECECEBEBEBEBEBEBECECECECECECEBEBEBEBEBEBEBEBEBEB
          EBEBECECECECECECECECECECECECEBEBEBEBEBEBEBEBEBECECECECECECEBEBEB
          ECECECECECECECECECEBEBEBEBEBEBEBEBEBEBEBEBECECECEBEBEBEBEBEBEBEB
          EBECECECECECECECECECECECECECECECEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
          EBEBEBEBEBEBEBEBECECECEBEBEBEBEBEBECECECEBEBEBEBEBEBEBEBEBEBEBEB
          ECECECEDEDEDECECECEBEBEBEBEBEBEBEBEBEBEBEBECECECECECECECECECECEC
          ECECECECECECECECECECECECECEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDED
          EDEDEDEDEDEDEDEDECECECECECECEDEDEDEDEDEDEDEDEDEDEDEDEEEEEEEDEDED
          EDEDEDEDEDEDECECECECECECEFEFEFEEEEEEEEEEEEEEEEEEEDEDEDECECECEBEB
          EBEDEDEDE3E3E3D0D0D0C7C7C7CFCFCFD1D1D1D2D2D2D2D2D2D2D2D2D4D4D4D5
          D5D5D4D4D4D2D2D2D1D1D1D1D1D1D3D3D3D2D2D2D1D1D1D4D4D4D6D6D6D5D5D5
          D5D5D5D3D3D3D2D2D2D2D2D2D3D3D3D3D3D3D3D3D3D2D2D2D5D5D5D5D5D5D2D2
          D2D2D2D2D2D2D2D4D4D4D3D3D3D1D1D1D2D2D2D2D2D2D4D4D4D5D5D5D4D4D4D4
          D4D4D5D5D5D4D4D4D3D3D3D1D1D1D1D1D1D3D3D3D2D2D2D1D1D1D1D1D1D2D2D2
          D2D2D2D2D2D2D2D2D2D1D1D1D4D4D4D2D2D2D1D1D1D4D4D4D4D4D4D4D4D4D2D2
          D2D1D1D1D1D1D1D1D1D1D4D4D4D5D5D5D4D4D4D1D1D1D3D3D3D2D2D2D4D4D4D6
          D6D6D3D3D3D3D3D3D4D4D4D5D5D5D4D4D4D6D6D6D3D3D3D4D4D4D2D2D2D3D3D3
          D2D2D2D3D3D3D4D4D4D5D5D5D4D4D4D3D3D3D3D3D3D2D2D2D5D5D5D3D3D3D2D2
          D2D6D6D6D9D9D9D7D7D7D8D8D8D5D5D5D3D3D3D3D3D3D3D3D3D2D2D2CFCFCFC8
          C8C8}
        Stretch = True
      end
    end
    inline frMainProcessView: TfrMainProcessView
      Left = 0
      Top = 0
      Width = 904
      Height = 457
      Align = alClient
      TabOrder = 1
    end
  end
  object pnlUserInfo: TJvPanel
    Left = 812
    Top = 0
    Width = 92
    Height = 713
    Anchors = [akTop, akRight]
    BevelOuter = bvNone
    Color = clActiveCaption
    ParentBackground = False
    TabOrder = 3
    object grUserInfoBackground: TJvGradient
      Left = 0
      Top = 0
      Width = 92
      Height = 713
      Align = alNone
      Style = grVertical
      StartColor = 14474460
      EndColor = clBtnFace
    end
    object pnlUserPicture: TJvPanel
      Left = 0
      Top = 0
      Width = 92
      Height = 92
      Align = alTop
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 0
      object imgUserPicture: TJvImage
        Left = 0
        Top = 0
        Width = 92
        Height = 92
        Cursor = crHandPoint
        Align = alClient
        Center = True
        Proportional = True
        Stretch = True
        Transparent = True
        OnClick = imgUserPictureClick
      end
    end
    object pnlUserInfoClient: TPanel
      Left = 0
      Top = 92
      Width = 92
      Height = 621
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object lblUserFullName: TLabel
        AlignWithMargins = True
        Left = 0
        Top = 3
        Width = 92
        Height = 13
        Margins.Left = 0
        Margins.Right = 0
        Align = alTop
        Alignment = taCenter
        Caption = 'lblUserFullName'
        WordWrap = True
      end
      object pnlDatabaseInfo: TPanel
        Left = 0
        Top = 16
        Width = 92
        Height = 605
        Align = alClient
        BevelOuter = bvNone
        Padding.Top = 15
        TabOrder = 0
        object imgDatabase: TImage
          Left = 0
          Top = 15
          Width = 92
          Height = 48
          Margins.Left = 0
          Margins.Top = 0
          Margins.Bottom = 0
          Align = alTop
          Center = True
          Proportional = True
          Stretch = True
          Transparent = True
        end
        object pnlDatabaseInfoClient: TPanel
          Left = 0
          Top = 63
          Width = 92
          Height = 542
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object lblDatabaseName: TLabel
            AlignWithMargins = True
            Left = 0
            Top = 3
            Width = 92
            Height = 13
            Margins.Left = 0
            Margins.Right = 0
            Align = alTop
            Alignment = taCenter
            Caption = 'lblDatabaseName'
            WordWrap = True
            OnMouseMove = lblDatabaseNameMouseMove
          end
        end
      end
    end
  end
  object mmMainMenu: TMainMenu
    Images = ilSmallImages
    Top = 304
    object miProgramMenu: TMenuItem
      Tag = 1
      Caption = '&'#1053#1072#1089#1090#1088#1086#1081#1082#1080
      object miToolbarMenu: TMenuItem
        Caption = #1051#1077#1085#1090#1080' '#1089' '#1073#1091#1090#1086#1085#1080
        ImageIndex = 22
      end
      object mlAppAdministrationSubMenu: TMenuItem
        Caption = '-'
      end
      object miAppAdministrationSubMenu: TMenuItem
        Caption = '%AppName% '#1040#1076#1084#1080#1085#1080#1089#1090#1088#1080#1088#1072#1085#1077
        ImageIndex = 22
        object miConfig: TMenuItem
          Action = actConfig
        end
        object miDaysOff: TMenuItem
          Action = actDayOffs
        end
        object mlUsers: TMenuItem
          Caption = '-'
        end
        object miInviteUser: TMenuItem
          Action = actInviteUser
        end
        object miUsers: TMenuItem
          Action = actUsers
        end
        object miUserGroups: TMenuItem
          Action = actUserGroups
        end
        object mlAccessRules: TMenuItem
          Caption = '-'
        end
        object miAccessRules: TMenuItem
          Action = actAccessRules
        end
        object mlPriorities: TMenuItem
          Caption = '-'
        end
        object miPriorities: TMenuItem
          Action = actPriorities
        end
        object miWorkPriorities: TMenuItem
          Action = actWorkPriorities
        end
        object miSaleTypes: TMenuItem
          Action = actSaleTypes
        end
        object mlPoolManagers: TMenuItem
          Caption = '-'
        end
        object miActiveConnections: TMenuItem
          Action = actActiveConnections
        end
        object miPoolManagers: TMenuItem
          Action = actPoolManagers
        end
        object miMemoryManager: TMenuItem
          Action = actMemoryManager
        end
        object mlSql: TMenuItem
          Caption = '-'
        end
        object miSql: TMenuItem
          Action = actSql
        end
        object mlUserDefaultPrinters: TMenuItem
          Caption = '-'
        end
      end
      object miDocAdministrationSubMenu: TMenuItem
        Caption = #1052#1048#1048#1054' '#1040#1076#1084#1080#1085#1080#1089#1090#1088#1080#1088#1072#1085#1077
        ImageIndex = 22
        object miDocConfig: TMenuItem
          Action = actDocConfig
        end
        object mlDocItemTypes: TMenuItem
          Caption = '-'
        end
        object miDocItemTypes: TMenuItem
          Action = actDocItemTypes
        end
        object miDocItemStorageTypes: TMenuItem
          Action = actDocItemStorageTypes
        end
        object miFileExtensions: TMenuItem
          Action = actFileExtensions
        end
        object miDocItemViewGenerators: TMenuItem
          Action = actDocItemViewGenerators
        end
        object miExecuteServers: TMenuItem
          Action = actExecuteServers
        end
        object mlDocItemTemplates: TMenuItem
          Caption = '-'
        end
        object miDocItemTemplates: TMenuItem
          Action = actDocItemTemplates
        end
        object miDocProfiles: TMenuItem
          Action = actDocProfiles
        end
        object mlCustomMenuItems: TMenuItem
          Caption = '-'
        end
        object miCustomMenuItems: TMenuItem
          Action = actCustomMenuItems
        end
      end
      object miPrintAdministrationSubMenu: TMenuItem
        Caption = #1055#1088#1080#1085#1090#1077#1088' '#1040#1076#1084#1080#1085#1080#1089#1090#1088#1080#1088#1072#1085#1077
        ImageIndex = 22
        object miUserDefaultPrinters: TMenuItem
          Action = actUserDefaultPrinters
        end
        object miComputerDefaultPrinters: TMenuItem
          Action = actComputerDefaultPrinters
        end
      end
      object mlCurrentDept: TMenuItem
        Caption = '-'
      end
      object miCurrentDept: TMenuItem
        Action = actCurrentDept
      end
      object mlUserIdentityProfile: TMenuItem
        Caption = '-'
      end
      object miUserIdentityProfile: TMenuItem
        Action = actUserIdentityProfile
      end
      object miConfigUser: TMenuItem
        Action = actConfigUser
      end
      object mlAbout: TMenuItem
        Caption = '-'
      end
      object miAbout: TMenuItem
        Action = actAbout
      end
      object mlStartNewAppInstance: TMenuItem
        Caption = '-'
      end
      object miStartNewAppInstance: TMenuItem
        Action = actStartNewAppInstance
      end
      object mlExit: TMenuItem
        Caption = '-'
      end
      object miExit: TMenuItem
        Action = actExit
      end
    end
    object miSubjectsMenu: TMenuItem
      Break = mbBreak
      Caption = '&'#1057#1091#1073#1077#1082#1090#1080
      object miCompany: TMenuItem
        Action = actCompany
      end
      object miCompanies: TMenuItem
        Action = actCompanies
      end
      object mlEmployees: TMenuItem
        Caption = '-'
      end
      object miEmployeeDeliveriesSubMenu: TMenuItem
        Caption = #1055#1088#1080#1074#1083#1080#1095#1072#1085#1077' '#1085#1072' '#1057#1083#1091#1078#1080#1090#1077#1083#1080
        ImageIndex = 22
        object miNewDeficitCoverDecision3: TMenuItem
          Action = actNewDeficitCoverDecision3
        end
        object miDeficitCoverDecisions3: TMenuItem
          Action = actDeficitCoverDecisions3
        end
        object miDeliveryDialogs3: TMenuItem
          Action = actDeliveryDialogs3
        end
        object mlDeliveries3: TMenuItem
          Caption = '-'
        end
        object miDeliveries3: TMenuItem
          Action = actDeliveries3
        end
      end
      object miEmployees: TMenuItem
        Action = actEmployees
      end
      object miTeams: TMenuItem
        Action = actTeams
      end
      object mlEmployeesAvailability: TMenuItem
        Caption = '-'
      end
      object miEmployeesAvailability: TMenuItem
        Action = actEmployeesAvailability
      end
      object miEmployeesTotalAvailability: TMenuItem
        Action = actEmployeesTotalAvailability
      end
      object miEmployeesAvailabilityGraph: TMenuItem
        Action = actEmployeesAvailabilityGraph
      end
      object miFailedEmployeeMovements: TMenuItem
        Action = actFailedEmployeeMovements
      end
      object mlWorkHours: TMenuItem
        Caption = '-'
      end
      object miWorkHours: TMenuItem
        Action = actWorkHours
      end
      object miMonthTeams: TMenuItem
        Action = actMonthTeams
      end
      object miEmployeeEarnings: TMenuItem
        Action = actEmployeeEarnings
      end
      object mlDisciplineEventTypes: TMenuItem
        Caption = '-'
      end
      object miDisciplineEventTypes: TMenuItem
        Action = actDisciplineEventTypes
      end
      object miDisciplineEvents: TMenuItem
        Action = actDisciplineEvents
      end
      object mlSubjectsBaseDataSubMenu: TMenuItem
        Caption = '-'
      end
      object miSubjectsBaseDataSubMenu: TMenuItem
        Caption = #1041#1072#1079#1086#1074#1080' '#1076#1072#1085#1085#1080
        ImageIndex = 22
        object miCompanyTypes: TMenuItem
          Action = actCompanyTypes
        end
        object mlCompanyTypes: TMenuItem
          Caption = '-'
        end
        object miLanguages: TMenuItem
          Action = actLanguages
        end
        object miCountries: TMenuItem
          Action = actCountries
        end
        object mlContactTypes: TMenuItem
          Caption = '-'
        end
        object miContactTypes: TMenuItem
          Action = actContactTypes
        end
        object mlCustomhouses: TMenuItem
          Caption = '-'
        end
        object miCustomhouses: TMenuItem
          Action = actCustomhouses
        end
        object miShipmentTypes: TMenuItem
          Action = actShipmentTypes
        end
        object mlShifts: TMenuItem
          Caption = '-'
        end
        object miEducations: TMenuItem
          Action = actEducations
        end
        object miCraftTypes: TMenuItem
          Action = actCraftTypes
        end
        object miCrafts: TMenuItem
          Action = actCrafts
        end
        object mlEmployeeDayAbsenceReasons: TMenuItem
          Caption = '-'
        end
        object miEmployeeDayAbsenceReasons: TMenuItem
          Action = actEmployeeDayAbsenceReasons
        end
        object miEmployeeHourAvailabilityModifierReasons: TMenuItem
          Action = actEmployeeHourAvailabilityModifierReasons
        end
        object mlEarningModifiers: TMenuItem
          Caption = '-'
        end
        object miEarningModifiers: TMenuItem
          Action = actEarningModifiers
        end
      end
    end
    object miObjectsMenu: TMenuItem
      Caption = '&'#1054#1073#1077#1082#1090#1080
      object miProducts: TMenuItem
        Action = actProducts
      end
      object miCommonGroups: TMenuItem
        Action = actCommonGroups
      end
      object miVendorProductNames: TMenuItem
        Action = actVendorProductNames
      end
      object mlNewEngineeringOrder: TMenuItem
        Caption = '-'
      end
      object miNewEngineeringOrder: TMenuItem
        Tag = 1
        Action = actNewEngineeringOrder
      end
      object miEngineeringOrders: TMenuItem
        Action = actEngineeringOrders
      end
      object mlNewSpecification: TMenuItem
        Caption = '-'
      end
      object miNewSpecification: TMenuItem
        Tag = 1
        Action = actNewSpecification
      end
      object miSpecifications: TMenuItem
        Action = actSpecifications
      end
      object miDeptDetailFlow: TMenuItem
        Action = actDeptDetailFlow
      end
      object miBaseGroups: TMenuItem
        Action = actBaseGroups
      end
      object mlPlannedStoreDeals: TMenuItem
        Caption = '-'
      end
      object miPlannedStoreDeals: TMenuItem
        Action = actPlannedStoreDeals
      end
      object miUncoveredPSD: TMenuItem
        Action = actUncoveredPSD
      end
      object miUncoveredModels: TMenuItem
        Action = actUncoveredModels
      end
      object mlNewStoreRequestIn: TMenuItem
        Caption = '-'
      end
      object miNewStoreRequestIn: TMenuItem
        Tag = 1
        Action = actNewStoreRequestIn
      end
      object miNewStoreRequestOut: TMenuItem
        Tag = 1
        Action = actNewStoreRequestOut
      end
      object miStoreRequests: TMenuItem
        Action = actStoreRequests
      end
      object mlNewStoreDealIn: TMenuItem
        Caption = '-'
      end
      object miNewStoreDealIn: TMenuItem
        Tag = 1
        Action = actNewStoreDealIn
      end
      object miNewStoreDealOut: TMenuItem
        Tag = 1
        Action = actNewStoreDealOut
      end
      object miStoreDeals: TMenuItem
        Action = actStoreDeals
      end
      object miOutStoreDealsExport: TMenuItem
        Action = actOutStoreDealsExport
      end
      object mlObjectsNeedsSubMenu: TMenuItem
        Caption = '-'
      end
      object miObjectsNeedsSubMenu: TMenuItem
        Caption = #1055#1086#1090#1088#1077#1073#1085#1086#1089#1090#1080' '#1086#1090' '#1059#1054#1073
        ImageIndex = 22
        object miProductionProductsTree: TMenuItem
          Action = actProductionProductsTree
        end
        object mlEstNeeds: TMenuItem
          Caption = '-'
        end
        object miResultProductEstNeeds: TMenuItem
          Action = actResultProductEstNeeds
        end
        object miDetailEstNeeds: TMenuItem
          Action = actDetailEstNeeds
        end
        object miMaterialEstNeeds: TMenuItem
          Action = actMaterialEstNeeds
        end
        object mlRealNeeds: TMenuItem
          Caption = '-'
        end
        object miResultProductRealNeeds: TMenuItem
          Action = actResultProductRealNeeds
        end
        object miDetailRealNeeds: TMenuItem
          Action = actDetailRealNeeds
        end
        object miMaterialRealNeeds: TMenuItem
          Action = actMaterialRealNeeds
        end
      end
      object mlEstQuantitiesTable: TMenuItem
        Caption = '-'
      end
      object miObjectsQuantitiesSubMenu: TMenuItem
        Caption = #1053#1072#1083#1080#1095#1085#1086#1089#1090#1080' '#1086#1090' '#1059#1054#1073
        ImageIndex = 22
        object miEstQuantitiesGraph: TMenuItem
          Action = actEstQuantitiesGraph
        end
        object miEstQuantitiesTable: TMenuItem
          Action = actEstQuantitiesTable
        end
        object mlVIMQuantity: TMenuItem
          Caption = '-'
        end
        object miVIMQuantity: TMenuItem
          Action = actVIMQuantity
        end
        object miQuantityDeficit: TMenuItem
          Action = actQuantityDeficit
        end
        object miStoreQuantities: TMenuItem
          Action = actStoreQuantities
        end
        object miProductQuantitiesTree: TMenuItem
          Action = actProductQuantitiesTree
        end
        object mlUnfinishedMfg: TMenuItem
          Caption = '-'
        end
        object miUnfinishedMfg: TMenuItem
          Action = actUnfinishedMfg
        end
      end
      object mlObjectsBaseDataSubMenu: TMenuItem
        Caption = '-'
      end
      object miObjectsBaseDataSubMenu: TMenuItem
        Caption = #1041#1072#1079#1086#1074#1080' '#1076#1072#1085#1085#1080
        ImageIndex = 22
        object miNoms: TMenuItem
          Action = actNoms
        end
        object miMeasures: TMenuItem
          Action = actMeasures
        end
        object miPrecisionLevels: TMenuItem
          Action = actPrecisionLevels
        end
        object miProductSets: TMenuItem
          Action = actProductSets
        end
        object mlEngineeringOrderTypes: TMenuItem
          Caption = '-'
        end
        object miEngineeringOrderTypes: TMenuItem
          Action = actEngineeringOrderTypes
        end
        object mlExceptEventTypes: TMenuItem
          Caption = '-'
        end
        object miExceptEventTypes: TMenuItem
          Action = actExceptEventTypes
        end
      end
    end
    object miEnvironmentMenu: TMenuItem
      Caption = #1054'&'#1058#1057
      object miProcesses: TMenuItem
        Caption = #1057#1080#1089#1090#1077#1084#1072' '#1079#1072' '#1054#1089#1098#1097#1077#1089#1090#1074#1103#1074#1072#1085#1077' '#1085#1072' '#1057#1091#1073#1077#1082#1090#1085#1086#1089#1090#1090#1072' ('#1057#1054#1057')'
        ImageIndex = 22
        object miOrganisationPrcData: TMenuItem
          Action = actOrganisationPrcData
        end
        object mlOrganisationPrcData: TMenuItem
          Caption = '-'
        end
        object miProcessFunctions: TMenuItem
          Action = actProcessFunctionsTree
        end
        object miProcessKnowls: TMenuItem
          Action = actProcessKnowlsTree
        end
        object miProcessBaseOperations: TMenuItem
          Action = actProcessBaseOperations
        end
        object mlBeforeProcessActions: TMenuItem
          Caption = '-'
        end
        object miProcessActions: TMenuItem
          Action = actProcessActions
        end
        object mlBeforeProcessConcreteOperations: TMenuItem
          Caption = '-'
        end
        object miProcessConcreteOperations: TMenuItem
          Action = actProcessConcreteOperations
        end
      end
      object mlDepts: TMenuItem
        Caption = '-'
      end
      object miDepts: TMenuItem
        Action = actDepts
      end
      object miDeptsPrcData: TMenuItem
        Action = actDeptsPrcData
      end
      object miOccupationsAndEmployees: TMenuItem
        Action = actOccupationsAndEmployees
      end
      object miOrgPrcDataDistribution: TMenuItem
        Action = actOrgPrcDataDistribution
      end
      object mlEstCapacityGraph: TMenuItem
        Caption = '-'
      end
      object miEstCapacityGraph: TMenuItem
        Action = actEstCapacityGraph
      end
      object miEstCapacityTable: TMenuItem
        Action = actEstCapacityTable
      end
      object mlRealCapacityGraph: TMenuItem
        Caption = '-'
      end
      object miRealCapacityGraph: TMenuItem
        Action = actRealCapacityGraph
      end
      object miRealCapacityTable: TMenuItem
        Action = actRealCapacityTable
      end
      object mlOrganisationTaskProposals: TMenuItem
        Caption = '-'
      end
      object miOrganisationTaskProposals: TMenuItem
        Action = actOrganisationTaskProposals
      end
      object miEnvironmentProjectsSubMenu: TMenuItem
        Caption = #1059#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1085#1072' '#1055#1088#1086#1077#1082#1090#1080
        ImageIndex = 22
      end
      object miInvestBudgetItems: TMenuItem
        Caption = '-'
      end
      object miBudgetInvest: TMenuItem
        Action = actBudgetInvest
      end
      object miBudgetOrdersInvest: TMenuItem
        Action = actBudgetOrdersInvest
      end
      object miBOIProductOrdersInvest: TMenuItem
        Action = actBOIProductOrdersInvest
      end
      object miBOICompanyOrdersInvest: TMenuItem
        Action = actBOICompanyOrdersInvest
      end
      object miBOIWasteOrdersInvest: TMenuItem
        Action = actBOIWasteOrdersInvest
      end
      object miBOIMarkingOrdersInvest: TMenuItem
        Action = actBOIMarkingOrdersInvest
      end
      object miBeforeBudgetClassesTree: TMenuItem
        Caption = '-'
      end
      object miEmployeesInputSubMenu: TMenuItem
        Caption = #1059#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1085#1080' '#1056#1072#1073#1086#1090#1085#1080#1094#1080' '#1085#1072' '#1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103#1090#1072' ('#1044#1056#1054#1088')'
        ImageIndex = 22
      end
      object miEnvironmentElementsSubMenu: TMenuItem
        Caption = #1059#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1085#1072' '#1045#1083#1077#1084#1077#1085#1090#1080' '#1085#1072' '#1057#1088#1077#1076#1072#1090#1072' ('#1045#1083#1057')'
        ImageIndex = 22
      end
      object mlBudgetClassTree: TMenuItem
        Caption = '-'
      end
      object miBudget: TMenuItem
        Action = actBudgetExpense
      end
      object miBudgetOrders: TMenuItem
        Action = actBudgetOrdersExpense
      end
      object miBudgetProductOrders: TMenuItem
        Action = actBOIProductOrdersExpense
      end
      object miBudgetCompanyOrders: TMenuItem
        Action = actBOICompanyOrdersExpense
      end
      object miBOIWasteOrdersExpense: TMenuItem
        Action = actBOIWasteOrdersExpense
      end
      object mlExceptEventsEnv: TMenuItem
        Caption = '-'
      end
      object miExceptEventsEnv: TMenuItem
        Action = actExceptEventsEnv
      end
      object mlEnvironmentBaseDataSubMenu: TMenuItem
        Caption = '-'
      end
      object miEnvironmentBaseDataSubMenu: TMenuItem
        Caption = #1041#1072#1079#1086#1074#1080' '#1076#1072#1085#1085#1080
        ImageIndex = 22
        object miBudgetClassTree: TMenuItem
          Action = actBudgetClassesTree
        end
        object miBudgetNoms: TMenuItem
          Action = actBudgetNoms
        end
        object mlWorkDef: TMenuItem
          Caption = '-'
        end
        object miWorkDef: TMenuItem
          Action = actWorkDef
        end
        object miShifts: TMenuItem
          Action = actShifts
        end
        object miProfessions: TMenuItem
          Action = actProfessions
        end
        object miProfessionKinds: TMenuItem
          Action = actProfessionKinds
        end
        object miDeptTypes: TMenuItem
          Action = actDeptTypes
        end
        object mlOWDPriorities: TMenuItem
          Caption = '-'
        end
        object miOrgWorkActivities: TMenuItem
          Action = actOrgWorkActivities
        end
        object miOccupationWorkDeptPriorities: TMenuItem
          Action = actOccupationWorkDeptPriorities
        end
        object mlSysRoles: TMenuItem
          Caption = '-'
        end
        object miSysRoles: TMenuItem
          Action = actSysRoles
        end
      end
    end
    object miSalesMenu: TMenuItem
      Caption = '&'#1055#1088#1086#1076#1072#1078#1073#1080
      object miEstPricesCompareGraphSales: TMenuItem
        Action = actEstPricesCompareGraphSales
      end
      object mlParRelProductsSalesByPartner: TMenuItem
        Caption = '-'
      end
      object miParRelProductsSalesByPartner: TMenuItem
        Action = actParRelProductsSalesByPartner
      end
      object miParRelProductsSalesByProduct: TMenuItem
        Action = actParRelProductsSalesByProduct
      end
      object mlNewGroupSale: TMenuItem
        Caption = '-'
      end
      object miNewGroupSale: TMenuItem
        Tag = 1
        Action = actNewGroupSale
      end
      object miSaleOrdersGroupSaleOrders: TMenuItem
        Action = actSaleOrdersGroupSaleOrders
      end
      object mlNewSaleRequestGroup: TMenuItem
        Caption = '-'
      end
      object miNewSaleRequestGroup: TMenuItem
        Tag = 1
        Action = actNewSaleRequestGroup
      end
      object miSaleRequestGroups: TMenuItem
        Action = actSaleRequestGroups
      end
      object miSaleOrders: TMenuItem
        Action = actSaleOrders
      end
      object mlSalesOverviewShp: TMenuItem
        Caption = '-'
      end
      object miSalesOverviewShp: TMenuItem
        Action = actSalesOverviewShp
      end
      object mlSaleQuantities: TMenuItem
        Caption = '-'
      end
      object miSaleQuantities: TMenuItem
        Action = actSaleQuantities
      end
      object mlClientPriceList: TMenuItem
        Caption = '-'
      end
      object miClientPriceList: TMenuItem
        Action = actClientPriceList
      end
      object mlSalesInvoicesSubMenu: TMenuItem
        Caption = '-'
      end
      object miSalesInvoicesSubMenu: TMenuItem
        Caption = #1048#1079#1093#1086#1076#1103#1097#1080' '#1092#1072#1082#1090#1091#1088#1080
        ImageIndex = 22
        object miOutFaktura: TMenuItem
          Tag = 1
          Action = actOutFaktura
        end
        object miOutDebitnoIzvestie: TMenuItem
          Tag = 1
          Action = actOutDebitnoIzvestie
        end
        object miOutKreditnoIzvestie: TMenuItem
          Tag = 1
          Action = actOutKreditnoIzvestie
        end
        object mlOutProtokolIliDrugDokument: TMenuItem
          Caption = '-'
        end
        object miOutProtokolIliDrugDokument: TMenuItem
          Tag = 1
          Action = actOutProtokol
        end
        object miOutKoregirashtProtokol: TMenuItem
          Tag = 1
          Action = actOutKoregirashtProtokol
        end
        object mlOutOtchetZaProdajbite: TMenuItem
          Caption = '-'
        end
        object miOutOtchetZaProdajbite: TMenuItem
          Tag = 1
          Action = actOutOtchetZaProdajbite
        end
        object mlInvoicesOut: TMenuItem
          Caption = '-'
        end
        object miInvoicesOut: TMenuItem
          Action = actInvoicesOut
        end
      end
      object mlExceptEventsSales: TMenuItem
        Caption = '-'
      end
      object miExceptEventsSales: TMenuItem
        Action = actExceptEventsSales
      end
      object mlSalesBaseDataSubMenu: TMenuItem
        Caption = '-'
      end
      object miSalesBaseDataSubMenu: TMenuItem
        Caption = #1041#1072#1079#1086#1074#1080' '#1076#1072#1085#1085#1080
        ImageIndex = 22
        object miSaleDecisionTypes: TMenuItem
          Action = actSaleDecisionTypes
        end
      end
    end
    object miProductionMenu: TMenuItem
      Caption = '&'#1042#1054#1055#1088#1076
    end
    object miDeliveriesMenu: TMenuItem
      Caption = '&'#1044#1086#1089#1090#1072#1074#1082#1080
      object miEstPricesCompareGraphDeliveriesCoveringSales: TMenuItem
        Action = actEstPricesCompareGraphDeliveriesCoveringSales
      end
      object mlParRelProductsDeliveriesCoveringSalesByPartner: TMenuItem
        Caption = '-'
      end
      object miParRelProductsDeliveriesCoveringSalesByPartner: TMenuItem
        Action = actParRelProductsDeliveriesCoveringSalesByPartner
      end
      object miParRelProductsDeliveriesCoveringSalesByProduct: TMenuItem
        Action = actParRelProductsDeliveriesCoveringSalesByProduct
      end
      object mlNewDeficitCoverDecision1: TMenuItem
        Caption = '-'
      end
      object miNewDeficitCoverDecision1: TMenuItem
        Tag = 1
        Action = actNewDeficitCoverDecision
      end
      object miDeficitCoverDecisions: TMenuItem
        Action = actDeficitCoverDecisions
      end
      object miDeliveryDialogs: TMenuItem
        Action = actDeliveryDialogs
      end
      object mlDeliveries: TMenuItem
        Caption = '-'
      end
      object miDeliveries: TMenuItem
        Action = actDeliveries
      end
      object mlEstPricesCompareGraphDeliveriesCoveringEnv: TMenuItem
        Caption = '-'
      end
      object miEstPricesCompareGraphDeliveriesCoveringEnv: TMenuItem
        Action = actEstPricesCompareGraphDeliveriesCoveringEnv
      end
      object mlParRelProductsDeliveriesCoveringEnvByPartner: TMenuItem
        Caption = '-'
      end
      object miParRelProductsDeliveriesCoveringEnvByPartner: TMenuItem
        Action = actParRelProductsDeliveriesCoveringEnvByPartner
      end
      object miParRelProductsDeliveriesCoveringEnvByProduct: TMenuItem
        Action = actParRelProductsDeliveriesCoveringEnvByProduct
      end
      object mlNewDeficitCoverDecision2: TMenuItem
        Caption = '-'
      end
      object miNewDeficitCoverDecision2: TMenuItem
        Tag = 1
        Action = actNewDeficitCoverDecision2
      end
      object miDeficitCoverDecisions2: TMenuItem
        Action = actDeficitCoverDecisions2
      end
      object miDeliveryDialogs2: TMenuItem
        Action = actDeliveryDialogs2
      end
      object mlDeliveries2: TMenuItem
        Caption = '-'
      end
      object miDeliveries2: TMenuItem
        Action = actDeliveries2
      end
      object mlParRelProductsBudgetDeliveriesByPartner: TMenuItem
        Caption = '-'
        Visible = False
      end
      object miParRelProductsBudgetDeliveriesByPartner: TMenuItem
        Action = actParRelProductsBudgetDeliveriesByPartner
      end
      object miParRelProductsBudgetDeliveriesByProduct: TMenuItem
        Action = actParRelProductsBudgetDeliveriesByProduct
      end
      object mlDeliveriesInputSubMenu: TMenuItem
        Caption = '-'
      end
      object miDeliveriesInputSubMenu: TMenuItem
        Caption = #1059#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1085#1072' '#1042#1093#1086#1076' '#1086#1090' '#1044#1086#1089#1090#1072#1074#1082#1080
        ImageIndex = 22
      end
      object mlVendorPriceList: TMenuItem
        Caption = '-'
      end
      object miVendorPriceList: TMenuItem
        Action = actVendorPriceList
      end
      object mlDeliveriesInvoicesSubMenu: TMenuItem
        Caption = '-'
      end
      object miExceptEventsDeliveries: TMenuItem
        Action = actExceptEventsDeliveries
      end
      object mlDeliveriesBaseDataSubMenu: TMenuItem
        Caption = '-'
      end
      object miDeliveriesBaseDataSubMenu: TMenuItem
        Caption = #1041#1072#1079#1086#1074#1080' '#1076#1072#1085#1085#1080
        ImageIndex = 22
        object miDeliveryDecisionTypes: TMenuItem
          Action = actDeliveryDecisionTypes
        end
        object miDeliveryTypes: TMenuItem
          Action = actDeliveryTypes
        end
      end
    end
    object miFinanceMenu: TMenuItem
      Caption = '&'#1060#1080#1085#1072#1085#1089#1080#1088#1072#1085#1077
      object miFinancialProducts: TMenuItem
        Action = actFinancialProducts
      end
      object miFinancialCommonGroups: TMenuItem
        Action = actFinancialCommonGroups
      end
      object miCurrencies: TMenuItem
        Action = actCurrencies
      end
      object miCurrencyRates: TMenuItem
        Action = actCurrencyRates
      end
      object mlNewFinancialOrder: TMenuItem
        Caption = '-'
      end
      object miNewFinancialOrder: TMenuItem
        Tag = 1
        Action = actNewFinancialOrder
      end
      object miFinancialOrders: TMenuItem
        Action = actFinancialOrders
      end
      object miRealFinModelLines: TMenuItem
        Action = actRealFinModelLines
      end
      object miRealFinModelLineGroups: TMenuItem
        Action = actRealFinModelLineGroups
      end
      object mlPlannedFinancialStoreDeals: TMenuItem
        Caption = '-'
      end
      object miPlannedFinancialStoreDeals: TMenuItem
        Action = actPlannedFinancialStoreDeals
      end
      object miUncoveredPlannedFinancialStoreDeals: TMenuItem
        Action = actUncoveredPlannedFinancialStoreDeals
      end
      object mlNewFinancialStoreRequest: TMenuItem
        Caption = '-'
      end
      object miNewFinancialStoreRequest: TMenuItem
        Tag = 1
        Action = actNewFinancialStoreRequest
      end
      object miFinancialStoreRequests: TMenuItem
        Action = actFinancialStoreRequests
      end
      object mlNewFinancialStoreDealIn: TMenuItem
        Caption = '-'
      end
      object miNewFinancialStoreDealIn: TMenuItem
        Tag = 1
        Action = actNewFinancialStoreDealIn
      end
      object miNewFinancialStoreDealOut: TMenuItem
        Tag = 1
        Action = actNewFinancialStoreDealOut
      end
      object miFinancialStoreDeals: TMenuItem
        Action = actFinancialStoreDeals
      end
      object mlFinanceQuantitiesSubMenu: TMenuItem
        Caption = '-'
      end
      object miFinanceQuantitiesSubMenu: TMenuItem
        Caption = #1053#1072#1083#1080#1095#1085#1086#1089#1090#1080' '#1086#1090' '#1060#1054#1073
        ImageIndex = 22
        object miFinancialEstQuantitiesGraph: TMenuItem
          Action = actFinancialEstQuantitiesGraph
        end
        object miFinancialEstQuantitiesTable: TMenuItem
          Action = actFinancialEstQuantitiesTable
        end
        object mlFinancialVIMQuantity: TMenuItem
          Caption = '-'
          Visible = False
        end
        object miFinancialVIMQuantity: TMenuItem
          Action = actFinancialVIMQuantity
        end
        object miFinancialQuantityDeficit: TMenuItem
          Action = actFinancialQuantityDeficit
        end
        object miFinancialStoreQuantities: TMenuItem
          Action = actFinancialStoreQuantities
        end
        object miFinancialProductQuantitiesTree: TMenuItem
          Action = actFinancialProductQuantitiesTree
        end
      end
      object mlFinanceSalesSubMenu: TMenuItem
        Caption = '-'
      end
      object miFinanceSalesSubMenu: TMenuItem
        Caption = #1055#1088#1086#1076#1072#1078#1073#1080' '#1085#1072' '#1060#1054#1073
        ImageIndex = 22
        object miFinancialEstPricesCompareGraphSales: TMenuItem
          Action = actFinancialEstPricesCompareGraphSales
        end
        object mlFinancialParRelProductsSalesByPartner: TMenuItem
          Caption = '-'
        end
        object miFinancialParRelProductsSalesByPartner: TMenuItem
          Action = actFinancialParRelProductsSalesByPartner
        end
        object miFinancialParRelProductsSalesByProduct: TMenuItem
          Action = actFinancialParRelProductsSalesByProduct
        end
        object mlNewFinancialSaleRequestGroup: TMenuItem
          Caption = '-'
        end
        object miNewFinancialSaleRequestGroup: TMenuItem
          Tag = 1
          Action = actNewFinancialSaleRequestGroup
        end
        object miFinancialSaleRequestGroups: TMenuItem
          Action = actFinancialSaleRequestGroups
        end
        object miFinancialSaleOrders: TMenuItem
          Action = actFinancialSaleOrders
        end
        object mlFinancialSalesOverviewShp: TMenuItem
          Caption = '-'
        end
        object miFinancialSalesOverviewShp: TMenuItem
          Action = actFinancialSalesOverviewShp
        end
      end
      object mlFinanceDeliveriesSubMenu: TMenuItem
        Caption = '-'
      end
      object miFinanceDeliveriesSubMenu: TMenuItem
        Caption = #1044#1086#1089#1090#1072#1074#1082#1080' '#1085#1072' '#1060#1054#1073
        ImageIndex = 22
        object miFinancialEstPricesCompareGraphDeliveries: TMenuItem
          Action = actFinancialEstPricesCompareGraphDeliveries
        end
        object mlFinancialParRelProductsDeliveriesByPartner: TMenuItem
          Caption = '-'
        end
        object miFinancialParRelProductsDeliveriesByPartner: TMenuItem
          Action = actFinancialParRelProductsDeliveriesByPartner
        end
        object miFinancialParRelProductsDeliveriesByProduct: TMenuItem
          Action = actFinancialParRelProductsDeliveriesByProduct
        end
        object mlNewFinancialDeficitCoverDecision: TMenuItem
          Caption = '-'
        end
        object miNewFinancialDeficitCoverDecision: TMenuItem
          Tag = 1
          Action = actNewFinancialDeficitCoverDecision
        end
        object miFinancialDeficitCoverDecisions: TMenuItem
          Action = actFinancialDeficitCoverDecisions
        end
        object miFinancialDeliveryDialogs: TMenuItem
          Action = actFinancialDeliveryDialogs
        end
        object mlFinancialDeliveries: TMenuItem
          Caption = '-'
        end
        object miFinancialDeliveries: TMenuItem
          Action = actFinancialDeliveries
        end
      end
      object mlFinancialRelationsGraph: TMenuItem
        Caption = '-'
      end
      object miFinancialRelationsGraph: TMenuItem
        Action = actFinancialRelationsGraph
      end
      object miFinancialRelationsTable: TMenuItem
        Action = actFinancialRelationsTable
      end
      object mlExceptEventsFinancial: TMenuItem
        Caption = '-'
      end
      object miExceptEventsFinancial: TMenuItem
        Action = actExceptEventsFinancial
      end
      object mlFinanceBaseDataSubMenu: TMenuItem
        Caption = '-'
      end
      object miFinanceBaseDataSubMenu: TMenuItem
        Caption = #1041#1072#1079#1086#1074#1080' '#1076#1072#1085#1085#1080
        ImageIndex = 22
        object miFinancialClasses: TMenuItem
          Action = actFinancialClasses
        end
        object miFinancialNoms: TMenuItem
          Action = actFinancialNoms
        end
        object miFinancialMeasures: TMenuItem
          Action = actFinancialMeasures
        end
        object miFinModelLineReasons: TMenuItem
          Action = actFinModelLineReasons
        end
        object miVatPeriods: TMenuItem
          Action = actVatPeriods
        end
        object miVatReasons: TMenuItem
          Action = actVatReasons
        end
        object miInvoiceNoGenerators: TMenuItem
          Action = actInvoiceNoGenerators
        end
      end
    end
    object miWorkMenu: TMenuItem
      Tag = 1
      Caption = '&Work'
      object miSpecInvestedValueLevelsGraph: TMenuItem
        Action = actSpecInvestedValueLevelsGraph
      end
      object miBudgetProducts: TMenuItem
        Action = actBudgetProducts
      end
      object miTestQueries: TMenuItem
        Action = actTestQueries
      end
    end
  end
  object alActions: TActionList
    Images = ilSmallImages
    Top = 208
    object actNewFinancialStoreDealInInternal: TAction
      Category = 'Finance'
      Caption = 'actNewFinancialStoreDealInInternal'
      OnExecute = actNewFinancialStoreDealInInternalExecute
    end
    object actNewDeficitCoverDecision: TAction
      Tag = 1
      Category = 'Deliveries'
      Caption = #1053#1086#1074' '#1055#1072#1082#1077#1090' '#1044#1080#1072#1083#1086#1079#1080' '#1089' '#1044#1086#1089#1090#1072#1074#1095#1080#1094#1080' ('#1055#1044#1044') '#1079#1072' '#1059#1054#1073'-'#1045#1083#1055'...'
      Hint = #1053#1086#1074' '#1055#1072#1082#1077#1090' '#1044#1080#1072#1083#1086#1079#1080' '#1089' '#1044#1086#1089#1090#1072#1074#1095#1080#1094#1080' ('#1055#1044#1044') '#1079#1072' '#1059#1054#1073'-'#1045#1083#1055
      ImageIndex = 4
      OnExecute = actNewDeficitCoverDecisionExecute
    end
    object actNewDeficitCoverDecision2: TAction
      Tag = 1
      Category = 'Deliveries'
      Caption = #1053#1086#1074' '#1055#1072#1082#1077#1090' '#1044#1080#1072#1083#1086#1079#1080' '#1089' '#1044#1086#1089#1090#1072#1074#1095#1080#1094#1080' ('#1055#1044#1044') '#1079#1072' '#1059#1054#1073'-'#1045#1083#1057'...'
      Hint = #1053#1086#1074' '#1055#1072#1082#1077#1090' '#1044#1080#1072#1083#1086#1079#1080' '#1089' '#1044#1086#1089#1090#1072#1074#1095#1080#1094#1080' ('#1055#1044#1044') '#1079#1072' '#1059#1054#1073'-'#1045#1083#1057
      ImageIndex = 4
      OnExecute = actNewDeficitCoverDecision2Execute
    end
    object actNewDeficitCoverDecision3: TAction
      Category = 'Deliveries'
      Caption = 
        #1053#1086#1074' '#1055#1072#1082#1077#1090' '#1044#1080#1072#1083#1086#1079#1080' '#1089' '#1044#1086#1089#1090#1072#1074#1095#1080#1094#1080' ('#1055#1044#1044') '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1085#1080' '#1056#1072#1073#1086#1090#1085#1080#1094#1080' ('#1044#1056 +
        #1054#1088')...'
      Hint = 
        #1053#1086#1074' '#1055#1072#1082#1077#1090' '#1044#1080#1072#1083#1086#1079#1080' '#1089' '#1044#1086#1089#1090#1072#1074#1095#1080#1094#1080' ('#1055#1044#1044') '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1085#1080' '#1056#1072#1073#1086#1090#1085#1080#1094#1080' ('#1044#1056 +
        #1054#1088')'
      ImageIndex = 4
      OnExecute = actNewDeficitCoverDecision3Execute
    end
    object actDeficitCoverDecisions: TAction
      Category = 'Deliveries'
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1055#1044#1044' '#1079#1072' '#1059#1054#1073'-'#1045#1083#1055'...'
      Hint = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1055#1044#1044' '#1079#1072' '#1059#1054#1073'-'#1045#1083#1055
      ImageIndex = 5
      OnExecute = actDeficitCoverDecisionsExecute
    end
    object actDeficitCoverDecisions2: TAction
      Category = 'Deliveries'
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1055#1044#1044' '#1079#1072' '#1059#1054#1073'-'#1045#1083#1057'...'
      Hint = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1055#1044#1044' '#1079#1072' '#1059#1054#1073'-'#1045#1083#1057
      ImageIndex = 5
      OnExecute = actDeficitCoverDecisions2Execute
    end
    object actDeficitCoverDecisions3: TAction
      Category = 'Deliveries'
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1055#1044#1044' '#1079#1072' '#1044#1056#1054#1088'...'
      Hint = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1055#1044#1044' '#1079#1072' '#1044#1056#1054#1088
      ImageIndex = 5
      OnExecute = actDeficitCoverDecisions3Execute
    end
    object actDeliveryDialogs: TAction
      Category = 'Deliveries'
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1073#1086#1089#1086#1073#1077#1085#1080' '#1044#1080#1072#1083#1086#1079#1080' '#1089' '#1044#1086#1089#1090#1072#1074#1095#1080#1094#1080' ('#1054#1044#1044') '#1079#1072' '#1059#1054#1073'-'#1045#1083#1055'...'
      Hint = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1073#1086#1089#1086#1073#1077#1085#1080' '#1044#1080#1072#1083#1086#1079#1080' '#1089' '#1044#1086#1089#1090#1072#1074#1095#1080#1094#1080' ('#1054#1044#1044') '#1079#1072' '#1059#1054#1073'-'#1045#1083#1055
      ImageIndex = 5
      OnExecute = actDeliveryDialogsExecute
    end
    object actDeliveryDialogs2: TAction
      Category = 'Deliveries'
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1073#1086#1089#1086#1073#1077#1085#1080' '#1044#1080#1072#1083#1086#1079#1080' '#1089' '#1044#1086#1089#1090#1072#1074#1095#1080#1094#1080' ('#1054#1044#1044') '#1079#1072' '#1059#1054#1073'-'#1045#1083#1057'...'
      Hint = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1073#1086#1089#1086#1073#1077#1085#1080' '#1044#1080#1072#1083#1086#1079#1080' '#1089' '#1044#1086#1089#1090#1072#1074#1095#1080#1094#1080' ('#1054#1044#1044') '#1079#1072' '#1059#1054#1073'-'#1045#1083#1057
      ImageIndex = 5
      OnExecute = actDeliveryDialogs2Execute
    end
    object actDeliveryDialogs3: TAction
      Category = 'Deliveries'
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1073#1086#1089#1086#1073#1077#1085#1080' '#1044#1080#1072#1083#1086#1079#1080' '#1089' '#1044#1086#1089#1090#1072#1074#1095#1080#1094#1080' ('#1054#1044#1044') '#1079#1072' '#1044#1056#1054#1088'...'
      Hint = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1073#1086#1089#1086#1073#1077#1085#1080' '#1044#1080#1072#1083#1086#1079#1080' '#1089' '#1044#1086#1089#1090#1072#1074#1095#1080#1094#1080' ('#1054#1044#1044') '#1079#1072' '#1044#1056#1054#1088
      ImageIndex = 5
      OnExecute = actDeliveryDialogs3Execute
    end
    object actDeliveries: TAction
      Category = 'Deliveries'
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1088#1076#1077#1088#1080' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1044#1086#1089#1090#1072#1074#1082#1080' ('#1054#1055#1044') '#1079#1072' '#1059#1054#1073'-'#1045#1083#1055'...'
      Hint = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1088#1076#1077#1088#1080' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1044#1086#1089#1090#1072#1074#1082#1080' ('#1054#1055#1044') '#1079#1072' '#1059#1054#1073'-'#1045#1083#1055
      ImageIndex = 5
      OnExecute = actDeliveriesExecute
    end
    object actDeliveries2: TAction
      Category = 'Deliveries'
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1088#1076#1077#1088#1080' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1044#1086#1089#1090#1072#1074#1082#1080' ('#1054#1055#1044') '#1079#1072' '#1059#1054#1073'-'#1045#1083#1057'...'
      Hint = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1088#1076#1077#1088#1080' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1044#1086#1089#1090#1072#1074#1082#1080' ('#1054#1055#1044') '#1079#1072' '#1059#1054#1073'-'#1045#1083#1057
      ImageIndex = 5
      OnExecute = actDeliveries2Execute
    end
    object actNewFinancialStoreDealOutInternal: TAction
      Category = 'Finance'
      Caption = 'actNewFinancialStoreDealOutInternal'
      OnExecute = actNewFinancialStoreDealOutInternalExecute
    end
    object actDeliveries3: TAction
      Category = 'Deliveries'
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1088#1076#1077#1088#1080' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1044#1086#1089#1090#1072#1074#1082#1080' ('#1054#1055#1044') '#1079#1072' '#1044#1056#1054#1088'...'
      Hint = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1088#1076#1077#1088#1080' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1044#1086#1089#1090#1072#1074#1082#1080' ('#1054#1055#1044') '#1079#1072' '#1044#1056#1054#1088
      ImageIndex = 5
      OnExecute = actDeliveries3Execute
    end
    object actInvoicesOut: TAction
      Category = 'Invoices'
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1048#1079#1093#1086#1076#1103#1097#1080' '#1092#1072#1082#1090#1091#1088#1080'...'
      Hint = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1048#1079#1093#1086#1076#1103#1097#1080' '#1092#1072#1082#1090#1091#1088#1080
      ImageIndex = 5
      OnExecute = actInvoicesOutExecute
    end
    object actExceptEventDeptNotActivated: TAction
      Category = 'ExceptEventIndication'
      Caption = 'actExceptEventDeptNotActivated'
      ImageIndex = 25
      OnExecute = actExceptEventDeptNotActivatedExecute
      OnUpdate = actExceptEventDeptNotActivatedUpdate
    end
    object actExceptEventDeptActivated: TAction
      Category = 'ExceptEventIndication'
      Caption = 'actExceptEventDeptActivated'
      ImageIndex = 25
      OnExecute = actExceptEventDeptActivatedExecute
      OnUpdate = actExceptEventDeptActivatedUpdate
    end
    object actResultProductEstNeeds: TAction
      Category = 'Needs'
      Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1087#1086#1090#1088#1077#1073#1085#1086#1089#1090#1080' '#1086#1090' '#1059#1054#1073' '#1087#1088#1086#1076#1072#1074#1072#1085#1080'...'
      Hint = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1087#1086#1090#1088#1077#1073#1085#1086#1089#1090#1080' '#1086#1090' '#1059#1054#1073' '#1087#1088#1086#1076#1072#1074#1072#1085#1080
      ImageIndex = 5
      OnExecute = actResultProductEstNeedsExecute
    end
    object actResultProductRealNeeds: TAction
      Category = 'Needs'
      Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1087#1086#1090#1088#1077#1073#1085#1086#1089#1090#1080' '#1086#1090' '#1059#1054#1073' '#1087#1088#1086#1076#1072#1074#1072#1085#1080'...'
      Hint = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1087#1086#1090#1088#1077#1073#1085#1086#1089#1090#1080' '#1086#1090' '#1059#1054#1073' '#1087#1088#1086#1076#1072#1074#1072#1085#1080
      ImageIndex = 5
      OnExecute = actResultProductRealNeedsExecute
    end
    object actDetailEstNeeds: TAction
      Category = 'Needs'
      Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1087#1086#1090#1088#1077#1073#1085#1086#1089#1090#1080' '#1086#1090' '#1050#1057#1063' '#1079#1072' '#1059#1054#1073' '#1087#1088#1086#1076#1072#1074#1072#1085#1080'...'
      Hint = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1087#1086#1090#1088#1077#1073#1085#1086#1089#1090#1080' '#1086#1090' '#1050#1057#1063' '#1079#1072' '#1059#1054#1073' '#1087#1088#1086#1076#1072#1074#1072#1085#1080
      ImageIndex = 5
      OnExecute = actDetailEstNeedsExecute
    end
    object actDetailRealNeeds: TAction
      Category = 'Needs'
      Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1087#1086#1090#1088#1077#1073#1085#1086#1089#1090#1080' '#1086#1090' '#1050#1057#1063' '#1079#1072' '#1059#1054#1073' '#1087#1088#1086#1076#1072#1074#1072#1085#1080'...'
      Hint = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1087#1086#1090#1088#1077#1073#1085#1086#1089#1090#1080' '#1086#1090' '#1050#1057#1063' '#1079#1072' '#1059#1054#1073' '#1087#1088#1086#1076#1072#1074#1072#1085#1080
      ImageIndex = 5
      OnExecute = actDetailRealNeedsExecute
    end
    object actMllChangesDetail: TAction
      Category = 'MllChanges'
      Caption = 'actMllChangesDetail'
      ImageIndex = 13
      OnExecute = actMllChangesDetailExecute
      OnUpdate = actMllChangesDetailUpdate
    end
    object actMaterialEstNeeds: TAction
      Category = 'Needs'
      Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1087#1086#1090#1088#1077#1073#1085#1086#1089#1090#1080' '#1086#1090' '#1053#1057#1063' '#1079#1072' '#1059#1054#1073' '#1087#1088#1086#1076#1072#1074#1072#1085#1080'...'
      Hint = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1087#1086#1090#1088#1077#1073#1085#1086#1089#1090#1080' '#1086#1090' '#1053#1057#1063' '#1079#1072' '#1059#1054#1073' '#1087#1088#1086#1076#1072#1074#1072#1085#1080
      ImageIndex = 5
      OnExecute = actMaterialEstNeedsExecute
    end
    object actProductionOrders: TAction
      Category = 'Production'
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1088#1076#1077#1088#1080' '#1079#1072' '#1055#1088#1086#1094#1077#1089'...'
      Hint = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1088#1076#1077#1088#1080' '#1079#1072' '#1055#1088#1086#1094#1077#1089
      ImageIndex = 5
      OnExecute = actProductionOrdersExecute
      OnUpdate = actProductionOrdersUpdate
    end
    object actMllcRequestedChanges: TAction
      Category = 'MllChanges'
      Caption = 'actMllcRequestedChanges'
      ImageIndex = 13
      OnExecute = actMllcRequestedChangesExecute
      OnUpdate = actMllcRequestedChangesUpdate
    end
    object actMllcRejectedChanges: TAction
      Category = 'MllChanges'
      Caption = 'actMllcRejectedChanges'
      ImageIndex = 13
      OnExecute = actMllcRejectedChangesExecute
      OnUpdate = actMllcRejectedChangesUpdate
    end
    object actMllcRequestedMyChanges: TAction
      Category = 'MllChanges'
      Caption = 'actMllcRequestedMyChanges'
      ImageIndex = 13
      OnExecute = actMllcRequestedMyChangesExecute
      OnUpdate = actMllcRequestedMyChangesUpdate
    end
    object actMllcRejectedMyChanges: TAction
      Category = 'MllChanges'
      Caption = 'actMllcRejectedMyChanges'
      ImageIndex = 13
      OnExecute = actMllcRejectedMyChangesExecute
      OnUpdate = actMllcRejectedMyChangesUpdate
    end
    object actOutKoregirashtProtokol: TAction
      Category = 'Invoices'
      Caption = #1050#1086#1088#1080#1075#1080#1088#1072#1097' '#1087#1088#1086#1090#1086#1082#1086#1083'...'
      Hint = #1050#1086#1088#1080#1075#1080#1088#1072#1097' '#1087#1088#1086#1090#1086#1082#1086#1083
      ImageIndex = 4
      Visible = False
      OnExecute = actOutKoregirashtProtokolExecute
    end
    object actSalesOverviewShp: TAction
      Category = 'Sales'
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1088#1076#1077#1088#1080' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1055#1088#1086#1076#1072#1078#1073#1080' ('#1054#1055#1055') '#1079#1072' '#1059#1054#1073'...'
      Hint = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1088#1076#1077#1088#1080' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1055#1088#1086#1076#1072#1078#1073#1080' ('#1054#1055#1055') '#1079#1072' '#1059#1054#1073
      ImageIndex = 5
      OnExecute = actSalesOverviewShpExecute
    end
    object actUsers: TAction
      Category = 'Program'
      Caption = #1055#1086#1090#1088#1077#1073#1080#1090#1077#1083#1080'...'
      Hint = #1055#1086#1090#1088#1077#1073#1080#1090#1077#1083#1080
      OnExecute = actUsersExecute
    end
    object actConfig: TAction
      Category = 'Program'
      Caption = '%AppName% '#1050#1086#1085#1092#1080#1075#1091#1088#1080#1088#1072#1085#1077'...'
      Hint = #1050#1086#1085#1092#1080#1075#1091#1088#1080#1088#1072#1085#1077' '#1085#1072' '#1089#1080#1089#1090#1077#1084#1072#1090#1072
      OnExecute = actConfigExecute
    end
    object actExit: TAction
      Category = 'Program'
      Caption = #1048#1079#1093#1086#1076
      Hint = #1048#1079#1093#1086#1076' '#1086#1090' '#1089#1080#1089#1090#1077#1084#1072#1090#1072
      ImageIndex = 0
      OnExecute = actExitExecute
    end
    object actLanguages: TAction
      Category = 'Nomenclatures'
      Caption = #1045#1079#1080#1094#1080'...'
      Hint = #1045#1079#1080#1094#1080
      OnExecute = actLanguagesExecute
    end
    object actMeasures: TAction
      Category = 'Nomenclatures'
      Caption = #1052#1077#1088#1085#1080' '#1077#1076#1080#1085#1080#1094#1080' '#1085#1072' '#1059#1054#1073'...'
      Hint = #1052#1077#1088#1085#1080' '#1077#1076#1080#1085#1080#1094#1080' '#1085#1072' '#1059#1054#1073
      OnExecute = actMeasuresExecute
    end
    object actNoms: TAction
      Category = 'Nomenclatures'
      Caption = #1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1085#1080' '#1043#1088#1091#1087#1080' '#1051#1086#1075#1080#1095#1077#1089#1082#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1059#1054#1073'...'
      Hint = #1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1085#1080' '#1043#1088#1091#1087#1080' '#1051#1086#1075#1080#1095#1077#1089#1082#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1059#1054#1073
      OnExecute = actNomsExecute
    end
    object actNewStoreDealIn: TAction
      Tag = 1
      Category = 'Store'
      Caption = #1053#1086#1074#1086' '#1054#1090#1095#1077#1090#1085#1086' '#1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1077' '#1085#1072' '#1059#1054#1073'...'
      Hint = #1053#1086#1074#1086' '#1054#1090#1095#1077#1090#1085#1086' '#1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1077' '#1085#1072' '#1059#1054#1073
      ImageIndex = 4
      OnExecute = actNewStoreDealInExecute
    end
    object actNewStoreDealOut: TAction
      Tag = 1
      Category = 'Store'
      Caption = #1053#1086#1074#1086' '#1054#1090#1095#1077#1090#1085#1086' '#1058#1077#1075#1083#1077#1085#1077' '#1085#1072' '#1059#1054#1073'...'
      Hint = #1053#1086#1074#1086' '#1054#1090#1095#1077#1090#1085#1086' '#1058#1077#1075#1083#1077#1085#1077' '#1085#1072' '#1059#1054#1073
      ImageIndex = 4
      OnExecute = actNewStoreDealOutExecute
    end
    object actAbout: TAction
      Category = 'Program'
      Caption = #1047#1072' %AppName%...'
      ImageIndex = 36
      OnExecute = actAboutExecute
    end
    object actCurrencyRates: TAction
      Category = 'Finance'
      Caption = #1050#1091#1088#1089#1086#1074#1077' '#1085#1072' '#1042#1072#1083#1091#1090#1080' '#1079#1072' '#1057#1090#1086#1081#1085#1086#1089#1090#1080'...'
      Hint = #1050#1091#1088#1089#1086#1074#1077' '#1085#1072' '#1042#1072#1083#1091#1090#1080' '#1079#1072' '#1057#1090#1086#1081#1085#1086#1089#1090#1080
      ImageIndex = 6
      OnExecute = actCurrencyRatesExecute
    end
    object actShipmentTypes: TAction
      Category = 'Nomenclatures'
      Caption = #1058#1098#1088#1075#1086#1074#1089#1082#1080' '#1050#1086#1076#1086#1074#1077'...'
      Hint = #1058#1098#1088#1075#1086#1074#1089#1082#1080' '#1050#1086#1076#1086#1074#1077
      OnExecute = actShipmentTypesExecute
    end
    object actCountries: TAction
      Category = 'Nomenclatures'
      Caption = #1044#1098#1088#1078#1072#1074#1080'...'
      Hint = #1044#1098#1088#1078#1072#1074#1080
      OnExecute = actCountriesExecute
    end
    object actCustomhouses: TAction
      Category = 'Nomenclatures'
      Caption = #1052#1080#1090#1085#1080#1094#1080'...'
      Hint = #1052#1080#1090#1085#1080#1094#1080
      OnExecute = actCustomhousesExecute
    end
    object actProducts: TAction
      Category = 'Nomenclatures'
      Caption = #1059#1087#1088#1072#1074#1083#1103#1077#1084#1080' '#1054#1073#1077#1082#1090#1080' ('#1059#1054#1073')...'
      Hint = #1059#1087#1088#1072#1074#1083#1103#1077#1084#1080' '#1054#1073#1077#1082#1090#1080
      ImageIndex = 2
      OnExecute = actProductsExecute
    end
    object actVendorProductNames: TAction
      Category = 'Nomenclatures'
      Caption = #1054#1079#1085#1072#1095#1077#1085#1080#1103' '#1085#1072' '#1059#1054#1073' '#1086#1090' '#1055#1072#1088#1090#1085#1100#1086#1088#1080'...'
      Hint = #1054#1079#1085#1072#1095#1077#1085#1080#1103' '#1085#1072' '#1059#1054#1073' '#1086#1090' '#1055#1072#1088#1090#1085#1100#1086#1088#1080
      ImageIndex = 5
      OnExecute = actVendorProductNamesExecute
    end
    object actDepts: TAction
      Category = 'Nomenclatures'
      Caption = #1057#1090#1088#1091#1082#1090#1091#1088#1072' '#1085#1072' '#1058#1077#1093#1085#1086#1083#1086#1075#1080#1095#1085#1072#1090#1072' '#1057#1088#1077#1076#1072' ('#1057#1090#1088#1058#1057')...'
      Hint = #1057#1090#1088#1091#1082#1090#1091#1088#1072' '#1085#1072' '#1058#1077#1093#1085#1086#1083#1086#1075#1080#1095#1085#1072#1090#1072' '#1057#1088#1077#1076#1072' ('#1057#1090#1088#1058#1057')'
      ImageIndex = 2
      OnExecute = actDeptsExecute
    end
    object actEmployees: TAction
      Category = 'HumanResource'
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1057#1083#1091#1078#1080#1090#1077#1083#1080'...'
      Hint = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1057#1083#1091#1078#1080#1090#1077#1083#1080
      ImageIndex = 5
      OnExecute = actEmployeesExecute
    end
    object actCompanies: TAction
      Category = 'Companies'
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1055#1072#1088#1090#1085#1100#1086#1088#1080'...'
      Hint = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1055#1072#1088#1090#1085#1100#1086#1088#1080
      ImageIndex = 5
      OnExecute = actCompaniesExecute
    end
    object actPriorities: TAction
      Category = 'Nomenclatures'
      Caption = #1055#1088#1080#1086#1088#1080#1090#1077#1090#1080'...'
      Hint = #1055#1088#1080#1086#1088#1080#1090#1077#1090#1080
      OnExecute = actPrioritiesExecute
    end
    object actWorkPriorities: TAction
      Category = 'Nomenclatures'
      Caption = #1054#1087#1077#1088#1072#1090#1080#1074#1085#1080' '#1055#1088#1080#1086#1088#1080#1090#1077#1090#1080'...'
      Hint = #1054#1087#1077#1088#1072#1090#1080#1074#1085#1080' '#1055#1088#1080#1086#1088#1080#1090#1077#1090#1080
      OnExecute = actWorkPrioritiesExecute
    end
    object actNewStoreDealInInternal: TAction
      Category = 'Store'
      Caption = 'actNewStoreDealInInternal'
      OnExecute = actNewStoreDealInInternalExecute
    end
    object actNewStoreDealOutInternal: TAction
      Category = 'Store'
      Caption = 'actNewStoreDealOutInternal'
      OnExecute = actNewStoreDealOutInternalExecute
    end
    object actPlannedStoreDeals: TAction
      Category = 'Store'
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1055#1083#1072#1085#1086#1074#1080' '#1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103' '#1080' '#1058#1077#1075#1083#1077#1085#1080#1103' '#1085#1072' '#1059#1054#1073'...'
      Hint = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1055#1083#1072#1085#1086#1074#1080' '#1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103' '#1080' '#1058#1077#1075#1083#1077#1085#1080#1103' '#1085#1072' '#1059#1054#1073
      ImageIndex = 5
      OnExecute = actPlannedStoreDealsExecute
    end
    object actStoreQuantities: TAction
      Category = 'Store'
      Caption = #1053#1072#1083#1080#1095#1085#1086#1089#1090#1080' '#1086#1090' '#1059#1054#1073' '#1082#1098#1084' '#1076#1072#1090#1072'...'
      Hint = #1053#1072#1083#1080#1095#1085#1086#1089#1090#1080' '#1086#1090' '#1059#1054#1073' '#1082#1098#1084' '#1076#1072#1090#1072
      ImageIndex = 5
      OnExecute = actStoreQuantitiesExecute
    end
    object actStoreDeals: TAction
      Category = 'Store'
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1090#1095#1077#1090#1085#1080' '#1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103' '#1080' '#1058#1077#1075#1083#1077#1085#1080#1103' '#1085#1072' '#1059#1054#1073'...'
      Hint = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1090#1095#1077#1090#1085#1080' '#1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103' '#1080' '#1058#1077#1075#1083#1077#1085#1080#1103' '#1085#1072' '#1059#1054#1073
      ImageIndex = 5
      OnExecute = actStoreDealsExecute
    end
    object actNewStoreRequestIn: TAction
      Tag = 1
      Category = 'Store'
      Caption = #1053#1086#1074#1072' '#1043#1088#1091#1087#1086#1074#1072' '#1047#1072#1103#1074#1082#1072' '#1079#1072' '#1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103' '#1085#1072' '#1059#1054#1073'...'
      Hint = #1053#1086#1074#1072' '#1043#1088#1091#1087#1086#1074#1072' '#1047#1072#1103#1074#1082#1072' '#1079#1072' '#1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103' '#1085#1072' '#1059#1054#1073
      ImageIndex = 4
      OnExecute = actNewStoreRequestInExecute
    end
    object actNewStoreRequestOut: TAction
      Tag = 1
      Category = 'Store'
      Caption = #1053#1086#1074#1072' '#1043#1088#1091#1087#1086#1074#1072' '#1047#1072#1103#1074#1082#1072' '#1079#1072' '#1058#1077#1075#1083#1077#1085#1080#1103' '#1085#1072' '#1059#1054#1073'...'
      Hint = #1053#1086#1074#1072' '#1043#1088#1091#1087#1086#1074#1072' '#1047#1072#1103#1074#1082#1072' '#1079#1072' '#1058#1077#1075#1083#1077#1085#1080#1103' '#1085#1072' '#1059#1054#1073
      ImageIndex = 4
      OnExecute = actNewStoreRequestOutExecute
    end
    object actStoreRequests: TAction
      Category = 'Store'
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1043#1088#1091#1087#1086#1074#1080' '#1047#1072#1103#1074#1082#1080' '#1079#1072' '#1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103' '#1080' '#1058#1077#1075#1083#1077#1085#1080#1103' '#1085#1072' '#1059#1054#1073'...'
      Hint = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1043#1088#1091#1087#1086#1074#1080' '#1047#1072#1103#1074#1082#1080' '#1079#1072' '#1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103' '#1080' '#1058#1077#1075#1083#1077#1085#1080#1103' '#1085#1072' '#1059#1054#1073
      ImageIndex = 5
      OnExecute = actStoreRequestsExecute
    end
    object actSaleOrders: TAction
      Category = 'Sales'
      Caption = 
        #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1073#1086#1089#1086#1073#1077#1085#1080' '#1044#1080#1072#1083#1086#1079#1080' '#1089' '#1050#1083#1080#1077#1085#1090#1080' ('#1054#1044#1050') '#1079#1072' '#1055#1088#1086#1076#1072#1078#1073#1072' '#1085#1072' '#1059#1054#1073 +
        ' '#1087#1086' '#1047#1072#1076#1072#1085#1080#1077'...'
      Hint = 
        #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1073#1086#1089#1086#1073#1077#1085#1080' '#1044#1080#1072#1083#1086#1079#1080' '#1089' '#1050#1083#1080#1077#1085#1090#1080' ('#1054#1044#1050') '#1079#1072' '#1055#1088#1086#1076#1072#1078#1073#1072' '#1085#1072' '#1059#1054#1073 +
        ' '#1087#1086' '#1047#1072#1076#1072#1085#1080#1077
      ImageIndex = 5
      OnExecute = actSaleOrdersExecute
    end
    object actNewProductionOrder: TAction
      Tag = 1
      Category = 'Production'
      Caption = #1053#1086#1074' '#1054#1088#1076#1077#1088' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1042#1098#1090#1088#1077#1096#1077#1085' ('#1054#1055#1042')...'
      Hint = #1053#1086#1074' '#1054#1088#1076#1077#1088' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1042#1098#1090#1088#1077#1096#1077#1085' ('#1054#1055#1042')'
      ImageIndex = 4
      OnExecute = actNewProductionOrderExecute
      OnUpdate = actNewProductionOrderUpdate
    end
    object actCurrencies: TAction
      Category = 'Finance'
      Caption = #1042#1072#1083#1091#1090#1080' '#1079#1072' '#1057#1090#1086#1081#1085#1086#1089#1090#1080'...'
      Hint = #1042#1072#1083#1091#1090#1080' '#1079#1072' '#1057#1090#1086#1081#1085#1086#1089#1090#1080
      ImageIndex = 5
      OnExecute = actCurrenciesExecute
    end
    object actProductQuantitiesTree: TAction
      Category = 'Store'
      Caption = #1059#1087#1088#1072#1074#1083#1103#1077#1084#1080' '#1054#1073#1077#1082#1090#1080' - '#1058#1077#1082#1091#1097#1080' '#1053#1072#1083#1080#1095#1085#1086#1089#1090#1080'...'
      Hint = #1059#1087#1088#1072#1074#1083#1103#1077#1084#1080' '#1054#1073#1077#1082#1090#1080' - '#1058#1077#1082#1091#1097#1080' '#1053#1072#1083#1080#1095#1085#1086#1089#1090#1080
      ImageIndex = 3
      OnExecute = actProductQuantitiesTreeExecute
    end
    object actStatusBar: TAction
      OnExecute = actStatusBarExecute
      OnUpdate = actStatusBarUpdate
    end
    object actForm: TAction
      Caption = '%AppName%'
      OnExecute = actFormExecute
      OnUpdate = actFormUpdate
    end
    object actCompany: TAction
      Category = 'Companies'
      Caption = #1048#1085#1076#1091#1089#1090#1088#1080#1072#1083#1085#1086' '#1055#1088#1077#1076#1087#1088#1080#1103#1090#1080#1077' ('#1048#1055')...'
      Hint = #1048#1085#1076#1091#1089#1090#1088#1080#1072#1083#1085#1086' '#1055#1088#1077#1076#1087#1088#1080#1103#1090#1080#1077
      ImageIndex = 35
      OnExecute = actCompanyExecute
    end
    object actVIMQuantity: TAction
      Category = 'Store'
      Caption = #1042#1048#1052' - '#1043#1088#1072#1092#1080#1095#1077#1085' '#1085#1072' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1053#1072#1083#1080#1095#1085#1086#1089#1090#1080' '#1086#1090' '#1059#1054#1073'...'
      Hint = #1042#1048#1052' - '#1043#1088#1072#1092#1080#1095#1077#1085' '#1085#1072' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1053#1072#1083#1080#1095#1085#1086#1089#1090#1080' '#1086#1090' '#1059#1087#1088#1072#1074#1083#1103#1077#1084#1080' '#1054#1073#1077#1082#1090#1080
      ImageIndex = 10
      OnExecute = actVIMQuantityExecute
    end
    object actNewGroupSale: TAction
      Tag = 1
      Category = 'Sales'
      Caption = 
        #1053#1086#1074' '#1055#1072#1082#1077#1090' '#1044#1080#1072#1083#1086#1079#1080' '#1089' '#1050#1083#1080#1077#1085#1090' ('#1055#1044#1050') '#1079#1072' '#1055#1088#1086#1076#1072#1078#1073#1072' '#1085#1072' '#1059#1054#1073' '#1087#1086' '#1053#1072#1083#1080#1095#1085#1086#1089#1090 +
        '...'
      Hint = #1053#1086#1074' '#1055#1072#1082#1077#1090' '#1044#1080#1072#1083#1086#1079#1080' '#1089' '#1050#1083#1080#1077#1085#1090' ('#1055#1044#1050') '#1079#1072' '#1055#1088#1086#1076#1072#1078#1073#1072' '#1085#1072' '#1059#1054#1073' '#1087#1086' '#1053#1072#1083#1080#1095#1085#1086#1089#1090
      ImageIndex = 4
      OnExecute = actNewGroupSaleExecute
    end
    object actQuantityDeficit: TAction
      Category = 'Store'
      Caption = #1042#1048#1052' - '#1058#1072#1073#1083#1080#1095#1077#1085' '#1085#1072' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1053#1072#1083#1080#1095#1085#1086#1089#1090#1080' '#1086#1090' '#1059#1054#1073'...'
      Hint = #1042#1048#1052' - '#1058#1072#1073#1083#1080#1095#1077#1085' '#1085#1072' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1053#1072#1083#1080#1095#1085#1086#1089#1090#1080' '#1086#1090' '#1059#1087#1088#1072#1074#1083#1103#1077#1084#1080' '#1054#1073#1077#1082#1090#1080
      ImageIndex = 5
      OnExecute = actQuantityDeficitExecute
    end
    object actSaleQuantities: TAction
      Category = 'Sales'
      Caption = #1048#1079#1090#1086#1095#1085#1080#1094#1080' '#1085#1072' '#1087#1088#1086#1076#1072#1078#1073#1080'...'
      Hint = #1048#1079#1090#1086#1095#1085#1080#1094#1080' '#1085#1072' '#1087#1088#1086#1076#1072#1078#1073#1080
      ImageIndex = 5
      OnExecute = actSaleQuantitiesExecute
    end
    object actNewSpecification: TAction
      Tag = 1
      Category = 'Engineering'
      Caption = #1053#1086#1074' '#1055#1088#1080#1085#1094#1080#1087#1077#1085' '#1052#1054#1044#1045#1083' ('#1055'-'#1052#1054#1044#1045#1083') '#1085#1072' '#1059#1054#1073'...'
      Hint = #1053#1086#1074' '#1055#1088#1080#1085#1094#1080#1087#1077#1085' '#1052#1054#1044#1045#1083' ('#1055'-'#1052#1054#1044#1045#1083') '#1085#1072' '#1059#1054#1073
      ImageIndex = 4
      OnExecute = actNewSpecificationExecute
    end
    object actSpecifications: TAction
      Category = 'Engineering'
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1055'-'#1052#1054#1044#1045#1083'-'#1080' '#1085#1072' '#1059#1054#1073'...'
      Hint = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1055'-'#1052#1054#1044#1045#1083'-'#1080' '#1085#1072' '#1059#1054#1073
      ImageIndex = 5
      OnExecute = actSpecificationsExecute
    end
    object actOutFaktura: TAction
      Tag = 1
      Category = 'Invoices'
      Caption = #1060#1072#1082#1090#1091#1088#1072'...'
      Hint = #1060#1072#1082#1090#1091#1088#1072
      ImageIndex = 4
      OnExecute = actOutFakturaExecute
    end
    object actOutDebitnoIzvestie: TAction
      Tag = 1
      Category = 'Invoices'
      Caption = #1044#1077#1073#1080#1090#1085#1086' '#1080#1079#1074#1077#1089#1090#1080#1077'...'
      Hint = #1044#1077#1073#1080#1090#1085#1086' '#1080#1079#1074#1077#1089#1090#1080#1077
      ImageIndex = 4
      OnExecute = actOutDebitnoIzvestieExecute
    end
    object actOutKreditnoIzvestie: TAction
      Tag = 1
      Category = 'Invoices'
      Caption = #1050#1088#1077#1076#1080#1090#1085#1086' '#1080#1079#1074#1077#1089#1090#1080#1077'...'
      Hint = #1050#1088#1077#1076#1080#1090#1085#1086' '#1080#1079#1074#1077#1089#1090#1080#1077
      ImageIndex = 4
      OnExecute = actOutKreditnoIzvestieExecute
    end
    object actOutOtchetZaProdajbite: TAction
      Tag = 1
      Category = 'Invoices'
      Caption = #1054#1090#1095#1077#1090' '#1079#1072' '#1087#1088#1086#1076#1072#1078#1073#1080#1090#1077'...'
      Hint = #1054#1090#1095#1077#1090' '#1079#1072' '#1087#1088#1086#1076#1072#1078#1073#1080#1090#1077
      ImageIndex = 4
      OnExecute = actOutOtchetZaProdajbiteExecute
    end
    object actOutProtokol: TAction
      Tag = 1
      Category = 'Invoices'
      Caption = #1055#1088#1086#1090#1086#1082#1086#1083'...'
      Hint = #1055#1088#1086#1090#1086#1082#1086#1083
      ImageIndex = 4
      Visible = False
      OnExecute = actOutProtokolExecute
    end
    object actDayOffs: TAction
      Category = 'Nomenclatures'
      Caption = #1056#1072#1073#1086#1090#1077#1085' '#1080' '#1054#1092#1080#1094#1080#1072#1083#1077#1085' '#1050#1072#1083#1077#1085#1076#1072#1088'...'
      Hint = #1056#1072#1073#1086#1090#1077#1085' '#1080' '#1054#1092#1080#1094#1080#1072#1083#1077#1085' '#1050#1072#1083#1077#1085#1076#1072#1088
      OnExecute = actDayOffsExecute
    end
    object actUncoveredPSD: TAction
      Category = 'Store'
      Caption = #1053#1077#1086#1073#1077#1079#1087#1077#1095#1077#1085#1080' '#1055#1083#1072#1085#1086#1074#1080' '#1058#1077#1075#1083#1077#1085#1080#1103' '#1085#1072' '#1059#1054#1073'...'
      Hint = #1053#1077#1086#1073#1077#1079#1087#1077#1095#1077#1085#1080' '#1055#1083#1072#1085#1086#1074#1080' '#1058#1077#1075#1083#1077#1085#1080#1103' '#1085#1072' '#1059#1054#1073
      ImageIndex = 5
      OnExecute = actUncoveredPSDExecute
    end
    object actUncoveredModels: TAction
      Category = 'Production'
      Caption = #1053#1077#1086#1073#1077#1079#1087#1077#1095#1077#1085#1080' '#1085#1072#1095#1072#1083#1072' '#1085#1072' '#1056'-'#1052#1054#1044#1045#1083'-'#1080'...'
      Hint = #1053#1077#1086#1073#1077#1079#1087#1077#1095#1077#1085#1080' '#1085#1072#1095#1072#1083#1072' '#1085#1072' '#1056'-'#1052#1054#1044#1045#1083'-'#1080
      ImageIndex = 5
      OnExecute = actUncoveredModelsExecute
    end
    object actMllcMyMlRequestedChanges: TAction
      Category = 'MllChanges'
      Caption = 'actMllcMyMlRequestedChanges'
      ImageIndex = 13
      OnExecute = actMllcMyMlRequestedChangesExecute
      OnUpdate = actMllcMyMlRequestedChangesUpdate
    end
    object actMllcMyMlRejectedChanges: TAction
      Category = 'MllChanges'
      Caption = 'actMllcMyMlRejectedChanges'
      ImageIndex = 13
      OnExecute = actMllcMyMlRejectedChangesExecute
      OnUpdate = actMllcMyMlRejectedChangesUpdate
    end
    object actModelMovementsOverview: TAction
      Category = 'Production'
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1045#1090#1072#1087#1085#1080' '#1044#1074#1080#1078#1077#1085#1080#1103' '#1087#1086' '#1056'-'#1052#1054#1044#1045#1083'-'#1080'...'
      Hint = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1045#1090#1072#1087#1085#1080' '#1044#1074#1080#1078#1077#1085#1080#1103' '#1087#1086' '#1056'-'#1052#1054#1044#1045#1083'-'#1080
      ImageIndex = 5
      OnExecute = actModelMovementsOverviewExecute
      OnUpdate = actModelMovementsOverviewUpdate
    end
    object actConfigUser: TAction
      Category = 'Program'
      Caption = #1050#1086#1085#1092#1080#1075#1091#1088#1080#1088#1072#1085#1077' '#1085#1072' '#1090#1077#1082#1091#1097' '#1087#1086#1090#1088#1077#1073#1080#1090#1077#1083'...'
      Hint = #1050#1086#1085#1092#1080#1075#1091#1088#1080#1088#1072#1085#1077' '#1085#1072' '#1090#1077#1082#1091#1097' '#1087#1086#1090#1088#1077#1073#1080#1090#1077#1083
      ImageIndex = 34
      OnExecute = actConfigUserExecute
    end
    object actUserIdentityProfile: TAction
      Category = 'Program'
      Caption = #1055#1088#1086#1092#1080#1083' '#1085#1072' '#1090#1077#1082#1091#1097' '#1087#1086#1090#1088#1077#1073#1080#1090#1077#1083'...'
      Hint = #1055#1088#1086#1092#1080#1083' '#1085#1072' '#1090#1077#1082#1091#1097' '#1087#1086#1090#1088#1077#1073#1080#1090#1077#1083
      ImageIndex = 1
      OnExecute = actUserIdentityProfileExecute
    end
    object actRefreshPendingMllChanges: TAction
      Category = 'MllChanges'
      Caption = #1054#1073#1085#1086#1074#1103#1074#1072#1085#1077
      Hint = #1054#1073#1085#1086#1074#1103#1074#1072#1085#1077
      ImageIndex = 16
      OnExecute = actRefreshPendingMllChangesExecute
      OnUpdate = actRefreshPendingMllChangesUpdate
    end
    object actUnfinishedMfg: TAction
      Category = 'Production'
      Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1053#1072#1083#1080#1095#1085#1086#1089#1090#1080' '#1087#1086' '#1056'-'#1052#1054#1044#1045#1083'-'#1080'...'
      Hint = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1053#1072#1083#1080#1095#1085#1086#1089#1090#1080' '#1087#1086' '#1056'-'#1052#1054#1044#1045#1083'-'#1080
      ImageIndex = 5
      OnExecute = actUnfinishedMfgExecute
    end
    object actDocItemTypes: TAction
      Category = 'DocNomenclatures'
      Caption = #1042#1080#1076#1086#1074#1077' '#1048#1048#1054'...'
      Hint = #1042#1080#1076#1086#1074#1077' '#1048#1079#1074#1077#1076#1077#1085#1080' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1073#1077#1082#1090#1080
      OnExecute = actDocItemTypesExecute
    end
    object actUserGroups: TAction
      Category = 'Program'
      Caption = #1043#1088#1091#1087#1080' '#1087#1086#1090#1088#1077#1073#1080#1090#1077#1083#1080'...'
      Hint = #1043#1088#1091#1087#1080' '#1087#1086#1090#1088#1077#1073#1080#1090#1077#1083#1080
      OnExecute = actUserGroupsExecute
      OnUpdate = actUserGroupsUpdate
    end
    object actProfessions: TAction
      Category = 'HumanResource'
      Caption = #1055#1088#1086#1094#1077#1089#1085#1080' '#1056#1086#1083#1080'...'
      Hint = #1055#1088#1086#1094#1077#1089#1085#1080' '#1056#1086#1083#1080
      ImageIndex = 2
      OnExecute = actProfessionsExecute
    end
    object actTeams: TAction
      Category = 'HumanResource'
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1045#1082#1080#1087#1080'...'
      Hint = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1045#1082#1080#1087#1080
      ImageIndex = 5
      OnExecute = actTeamsExecute
    end
    object actMonthTeams: TAction
      Category = 'HumanResource'
      Caption = #1045#1082#1080#1087#1085#1080' '#1056#1072#1079#1087#1088#1077#1076#1077#1083#1077#1085#1080#1103' '#1085#1072' '#1058#1088#1091#1076#1072'...'
      Hint = #1045#1082#1080#1087#1085#1080' '#1056#1072#1079#1087#1088#1077#1076#1077#1083#1077#1085#1080#1103' '#1085#1072' '#1058#1088#1091#1076#1072
      ImageIndex = 5
      OnExecute = actMonthTeamsExecute
    end
    object actSql: TAction
      Category = 'Program'
      Caption = 'SQL '#1055#1088#1086#1079#1086#1088#1077#1094'...'
      Hint = 'SQL '#1055#1088#1086#1079#1086#1088#1077#1094
      ImageIndex = 19
      OnExecute = actSqlExecute
      OnUpdate = actSqlUpdate
    end
    object actSaleTypes: TAction
      Category = 'Nomenclatures'
      Caption = #1042#1080#1076#1086#1074#1077' '#1054#1055#1055'/'#1054#1055#1042'...'
      Hint = #1042#1080#1076#1086#1074#1077' '#1054#1055#1055'/'#1054#1055#1042
      OnExecute = actSaleTypesExecute
    end
    object actOutStoreDealsExport: TAction
      Category = 'Store'
      Caption = #1045#1082#1089#1087#1086#1088#1090' '#1085#1072' '#1058#1077#1075#1083#1077#1085#1080#1103' '#1085#1072' '#1059#1054#1073'...'
      Hint = #1045#1082#1089#1087#1086#1088#1090' '#1085#1072' '#1058#1077#1075#1083#1077#1085#1080#1103' '#1085#1072' '#1059#1054#1073
      ImageIndex = 18
      OnExecute = actOutStoreDealsExportExecute
    end
    object actDeptTypes: TAction
      Category = 'Nomenclatures'
      Caption = #1042#1080#1076#1086#1074#1077' '#1058#1055'...'
      Hint = #1042#1080#1076#1086#1074#1077' '#1058#1077#1093#1085#1086#1083#1086#1075#1080#1095#1085#1080' '#1055#1086#1083#1077#1090#1072
      OnExecute = actDeptTypesExecute
    end
    object actMaterialRealNeeds: TAction
      Category = 'Needs'
      Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1087#1086#1090#1088#1077#1073#1085#1086#1089#1090#1080' '#1086#1090' '#1053#1057#1063' '#1079#1072' '#1059#1054#1073' '#1087#1088#1086#1076#1072#1074#1072#1085#1080'...'
      Hint = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1087#1086#1090#1088#1077#1073#1085#1086#1089#1090#1080' '#1086#1090' '#1053#1057#1063' '#1079#1072' '#1059#1054#1073' '#1087#1088#1086#1076#1072#1074#1072#1085#1080
      ImageIndex = 5
      OnExecute = actMaterialRealNeedsExecute
    end
    object actProductionProductsTree: TAction
      Category = 'Needs'
      Caption = #1059#1087#1088#1072#1074#1083#1103#1077#1084#1080' '#1054#1073#1077#1082#1090#1080' - '#1058#1080#1083#1086#1074#1086' '#1086#1073#1077#1079#1087#1077#1095#1072#1074#1072#1085#1080'...'
      Hint = #1059#1087#1088#1072#1074#1083#1103#1077#1084#1080' '#1054#1073#1077#1082#1090#1080' - '#1058#1080#1083#1086#1074#1086' '#1086#1073#1077#1079#1087#1077#1095#1072#1074#1072#1085#1080
      ImageIndex = 3
      OnExecute = actProductionProductsTreeExecute
    end
    object actOperationMovements: TAction
      Category = 'Production'
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1087#1077#1088#1072#1094#1080#1086#1085#1085#1080' '#1044#1074#1080#1078#1077#1085#1080#1103' '#1087#1086' '#1056'-'#1052#1054#1044#1045#1083'-'#1080'...'
      Hint = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1087#1077#1088#1072#1094#1080#1086#1085#1085#1080' '#1044#1074#1080#1078#1077#1085#1080#1103' '#1087#1086' '#1056'-'#1052#1054#1044#1045#1083'-'#1080
      ImageIndex = 5
      OnExecute = actOperationMovementsExecute
      OnUpdate = actOperationMovementsUpdate
    end
    object actOperationalTasks: TAction
      Category = 'Production'
      Caption = #1054#1087#1077#1088#1072#1094#1080#1086#1085#1085#1080' '#1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1047#1072#1076#1072#1085#1080#1103'...'
      Hint = #1054#1087#1077#1088#1072#1094#1080#1086#1085#1085#1080' '#1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1047#1072#1076#1072#1085#1080#1103
      ImageIndex = 5
      OnExecute = actOperationalTasksExecute
      OnUpdate = actOperationalTasksUpdate
    end
    object actCurrentDept: TAction
      Category = 'Program'
      Caption = #1057#1084#1103#1085#1072' '#1085#1072' '#1090#1077#1082#1091#1097#1086' '#1058#1055'...'
      Hint = #1058#1077#1082#1091#1097#1086' '#1058#1055
      ImageIndex = 33
      OnExecute = actCurrentDeptExecute
    end
    object actDeptDetailFlow: TAction
      Category = 'Engineering'
      Caption = #1055#1086#1090#1086#1094#1080' '#1086#1090' '#1059#1054#1073' '#1087#1088#1077#1079' '#1058#1055'...'
      Hint = #1055#1086#1090#1086#1094#1080' '#1086#1090' '#1059#1054#1073' '#1087#1088#1077#1079' '#1058#1055
      ImageIndex = 5
      OnExecute = actDeptDetailFlowExecute
    end
    object actBaseGroups: TAction
      Category = 'Engineering'
      Caption = #1041#1072#1079#1086#1074#1086' '#1043#1088#1091#1087#1080#1088#1072#1085#1077' '#1074' '#1055#1086#1090#1086#1094#1080' '#1086#1090' '#1059#1054#1073' '#1087#1088#1077#1079' '#1058#1055'...'
      Hint = #1041#1072#1079#1086#1074#1086' '#1043#1088#1091#1087#1080#1088#1072#1085#1077' '#1074' '#1055#1086#1090#1086#1094#1080' '#1086#1090' '#1059#1054#1073' '#1087#1088#1077#1079' '#1058#1055
      ImageIndex = 5
      OnExecute = actBaseGroupsExecute
    end
    object actSpecialControlTasks: TAction
      Category = 'Production'
      Caption = #1047#1072#1076#1072#1085#1080#1103' '#1079#1072' '#1057#1087#1077#1094#1080#1072#1083#1080#1079#1080#1088#1072#1085' '#1050#1086#1085#1090#1088#1086#1083'...'
      Hint = #1047#1072#1076#1072#1085#1080#1103' '#1079#1072' '#1057#1087#1077#1094#1080#1072#1083#1080#1079#1080#1088#1072#1085' '#1050#1086#1085#1090#1088#1086#1083
      ImageIndex = 5
      OnExecute = actSpecialControlTasksExecute
      OnUpdate = actSpecialControlTasksUpdate
    end
    object actEarningModifiers: TAction
      Category = 'HumanResource'
      Caption = #1050#1086#1088#1077#1082#1090#1080#1074#1080' '#1085#1072' '#1042#1057' '#1079#1072' '#1090#1088#1091#1076'...'
      Hint = #1050#1086#1088#1077#1082#1090#1080#1074#1080' '#1085#1072' '#1042#1057' '#1079#1072' '#1090#1088#1091#1076
      ImageIndex = 5
      OnExecute = actEarningModifiersExecute
    end
    object actEducations: TAction
      Category = 'HumanResource'
      Caption = #1054#1073#1088#1072#1079#1086#1074#1072#1085#1080#1103'...'
      Hint = #1054#1073#1088#1072#1079#1086#1074#1072#1085#1080#1103
      OnExecute = actEducationsExecute
    end
    object actShifts: TAction
      Category = 'HumanResource'
      Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1057#1084#1077#1085#1080'...'
      Hint = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1057#1084#1077#1085#1080
      OnExecute = actShiftsExecute
    end
    object actWorkHours: TAction
      Category = 'HumanResource'
      Caption = #1058#1088#1091#1076' '#1085#1072' '#1054#1087#1077#1088#1072#1090#1086#1088#1080'...'
      Hint = #1058#1088#1091#1076' '#1085#1072' '#1054#1087#1077#1088#1072#1090#1086#1088#1080
      ImageIndex = 5
      OnExecute = actWorkHoursExecute
    end
    object actDisciplineEventTypes: TAction
      Category = 'HumanResource'
      Caption = #1050#1083#1072#1089#1080#1092#1080#1082#1072#1090#1086#1088' '#1085#1072' '#1048#1079#1074#1098#1085#1088#1077#1076#1085#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103' '#1074' '#1056#1072#1073#1086#1090#1085#1086' '#1055#1086#1074#1077#1076#1077#1085#1080#1077'...'
      Hint = #1050#1083#1072#1089#1080#1092#1080#1082#1072#1090#1086#1088' '#1085#1072' '#1048#1079#1074#1098#1085#1088#1077#1076#1085#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103' '#1074' '#1056#1072#1073#1086#1090#1085#1086' '#1055#1086#1074#1077#1076#1077#1085#1080#1077
      ImageIndex = 2
      OnExecute = actDisciplineEventTypesExecute
    end
    object actOccupationsAndEmployees: TAction
      Category = 'HumanResource'
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1080'...'
      Hint = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1080
      ImageIndex = 5
      OnExecute = actOccupationsAndEmployeesExecute
    end
    object actRealCapacityGraph: TAction
      Category = 'Capacity'
      Caption = #1042#1048#1052' - '#1043#1088#1072#1092#1080#1095#1077#1085' '#1085#1072' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1077#1085' '#1050#1072#1087#1072#1094#1080#1090#1077#1090' '#1085#1072' '#1058#1055'...'
      Hint = #1042#1048#1052' - '#1043#1088#1072#1092#1080#1095#1077#1085' '#1085#1072' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1077#1085' '#1050#1072#1087#1072#1094#1080#1090#1077#1090' '#1085#1072' '#1058#1055
      ImageIndex = 7
      OnExecute = actRealCapacityGraphExecute
    end
    object actRealCapacityTable: TAction
      Category = 'Capacity'
      Caption = #1042#1048#1052' - '#1058#1072#1073#1083#1080#1095#1077#1085' '#1085#1072' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1077#1085' '#1050#1072#1087#1072#1094#1080#1090#1077#1090' '#1085#1072' '#1058#1055'...'
      Hint = #1042#1048#1052' - '#1058#1072#1073#1083#1080#1095#1077#1085' '#1085#1072' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1077#1085' '#1050#1072#1087#1072#1094#1080#1090#1077#1090' '#1085#1072' '#1058#1055
      ImageIndex = 5
      OnExecute = actRealCapacityTableExecute
    end
    object actProfessionKinds: TAction
      Category = 'HumanResource'
      Caption = #1042#1080#1076#1086#1074#1077' '#1055#1088#1086#1094#1077#1089#1085#1080' '#1056#1086#1083#1080'...'
      Hint = #1042#1080#1076#1086#1074#1077' '#1055#1088#1086#1094#1077#1089#1085#1080' '#1056#1086#1083#1080
      OnExecute = actProfessionKindsExecute
    end
    object actOccupationWorkDeptPriorities: TAction
      Category = 'HumanResource'
      Caption = #1056#1077#1078#1080#1084#1080' '#1085#1072' '#1054#1088#1075#1072#1085#1080#1079#1080#1088#1072#1085#1077' '#1085#1072' '#1058#1055'...'
      Hint = #1056#1077#1078#1080#1084#1080' '#1085#1072' '#1054#1088#1075#1072#1085#1080#1079#1080#1088#1072#1085#1077' '#1085#1072' '#1058#1055
      OnExecute = actOccupationWorkDeptPrioritiesExecute
    end
    object actBudgetOrdersExpense: TAction
      Category = 'Budget'
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1056#1072#1079#1093#1086#1076#1085#1080' '#1041#1086#1088#1076#1077#1088#1072' '#1079#1072' '#1057#1088#1077#1076#1072' ('#1056#1041#1057')...'
      Hint = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1056#1072#1079#1093#1086#1076#1085#1080' '#1041#1086#1088#1076#1077#1088#1072' '#1079#1072' '#1057#1088#1077#1076#1072' ('#1056#1041#1057')'
      ImageIndex = 5
      OnExecute = actBudgetOrdersExpenseExecute
    end
    object actBOIProductOrdersExpense: TAction
      Category = 'Budget'
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1088#1076#1077#1088#1080' - '#1055#1088#1077#1076#1084#1077#1090#1085#1080' '#1087#1086' '#1051#1080#1084#1080#1090#1080' '#1086#1090' '#1056#1041#1057'...'
      Hint = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1088#1076#1077#1088#1080' - '#1055#1088#1077#1076#1084#1077#1090#1085#1080' '#1087#1086' '#1051#1080#1084#1080#1090#1080' '#1086#1090' '#1056#1041#1057
      ImageIndex = 5
      OnExecute = actBOIProductOrdersExpenseExecute
    end
    object actBudgetClassesTree: TAction
      Category = 'Budget'
      Caption = #1050#1083#1072#1089#1080#1092#1080#1082#1072#1090#1086#1088' '#1085#1072' '#1056#1072#1079#1093#1086#1076#1080' '#1080' '#1048#1085#1074#1077#1089#1090#1080#1094#1080#1080' '#1074' '#1057#1088#1077#1076#1072'...'
      Hint = #1050#1083#1072#1089#1080#1092#1080#1082#1072#1090#1086#1088' '#1085#1072' '#1056#1072#1079#1093#1086#1076#1080' '#1080' '#1048#1085#1074#1077#1089#1090#1080#1094#1080#1080' '#1074' '#1057#1088#1077#1076#1072
      ImageIndex = 2
      OnExecute = actBudgetClassesTreeExecute
    end
    object actModelsInvestedValues: TAction
      Category = 'Engineering'
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1048#1085#1078#1054#1088#1057#1040#1085'...'
      Hint = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1048#1085#1078#1054#1088#1057#1040#1085
      ImageIndex = 5
      OnExecute = actModelsInvestedValuesExecute
      OnUpdate = actModelsInvestedValuesUpdate
    end
    object actDocItemTemplates: TAction
      Category = 'DocNomenclatures'
      Caption = #1048#1048#1054' '#1048#1079#1090#1086#1095#1085#1080#1094#1080'...'
      Hint = #1048#1048#1054' '#1048#1079#1090#1086#1095#1085#1080#1094#1080
      OnExecute = actDocItemTemplatesExecute
    end
    object actDocItemViewGenerators: TAction
      Category = 'DocNomenclatures'
      Caption = #1043#1077#1085#1077#1088#1072#1090#1086#1088#1080' '#1085#1072' '#1048#1048#1054' '#1048#1079#1075#1083#1077#1076#1080'...'
      Hint = #1043#1077#1085#1077#1088#1072#1090#1086#1088#1080' '#1085#1072' '#1048#1048#1054' '#1048#1079#1075#1083#1077#1076#1080
      OnExecute = actDocItemViewGeneratorsExecute
    end
    object actExecuteServers: TAction
      Category = 'DocNomenclatures'
      Caption = #1048#1079#1087#1098#1083#1085#1103#1074#1072#1097#1080' '#1089#1098#1088#1074#1098#1088#1080'...'
      Hint = #1048#1079#1087#1098#1083#1085#1103#1074#1072#1097#1080' '#1089#1098#1088#1074#1098#1088#1080
      OnExecute = actExecuteServersExecute
    end
    object actBudgetExpense: TAction
      Category = 'Budget'
      Caption = #1056#1072#1079#1093#1086#1076#1080' '#1074' '#1057#1088#1077#1076#1072'...'
      Hint = #1056#1072#1079#1093#1086#1076#1080' '#1074' '#1057#1088#1077#1076#1072
      ImageIndex = 5
      OnExecute = actBudgetExpenseExecute
    end
    object actFileExtensions: TAction
      Category = 'DocNomenclatures'
      Caption = #1042#1080#1076#1086#1074#1077' '#1092#1072#1081#1083#1086#1074#1077'...'
      Hint = #1042#1080#1076#1086#1074#1077' '#1092#1072#1081#1083#1086#1074#1077
      OnExecute = actFileExtensionsExecute
    end
    object actBOICompanyOrdersExpense: TAction
      Category = 'Budget'
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1088#1076#1077#1088#1080' - '#1054#1073#1089#1083#1091#1078#1074#1072#1097#1080' '#1087#1086' '#1051#1080#1084#1080#1090#1080' '#1086#1090' '#1056#1041#1057'...'
      Hint = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1088#1076#1077#1088#1080' - '#1054#1073#1089#1083#1091#1078#1074#1072#1097#1080' '#1087#1086' '#1051#1080#1084#1080#1090#1080' '#1086#1090' '#1056#1041#1057
      ImageIndex = 5
      OnExecute = actBOICompanyOrdersExpenseExecute
    end
    object actMonthDateFormat: TAction
      Category = 'DateFormat'
      AutoCheck = True
      Caption = #1052#1077#1089#1077#1095#1077#1085' '#1092#1086#1088#1084#1072#1090
      Checked = True
      GroupIndex = 30
      OnExecute = actMonthDateFormatExecute
      OnUpdate = actMonthDateFormatUpdate
    end
    object actWeekDateFormat: TAction
      Category = 'DateFormat'
      AutoCheck = True
      Caption = #1057#1077#1076#1084#1080#1095#1077#1085' '#1092#1086#1088#1084#1072#1090
      GroupIndex = 30
      OnExecute = actWeekDateFormatExecute
      OnUpdate = actWeekDateFormatUpdate
    end
    object actBeginEndDateIntervalFormat: TAction
      Category = 'DateFormat'
      AutoCheck = True
      Caption = #1053#1072#1095#1072#1083#1085#1072' '#1076#1072#1090#1072' - '#1050#1088#1072#1081#1085#1072' '#1076#1072#1090#1072
      GroupIndex = 31
      OnExecute = actBeginEndDateIntervalFormatExecute
      OnUpdate = actBeginEndDateIntervalFormatUpdate
    end
    object actBeginDaysDateIntervalFormat: TAction
      Category = 'DateFormat'
      AutoCheck = True
      Caption = #1053#1072#1095#1072#1083#1085#1072' '#1076#1072#1090#1072' - '#1076#1085#1080
      GroupIndex = 31
      OnExecute = actBeginDaysDateIntervalFormatExecute
      OnUpdate = actBeginDaysDateIntervalFormatUpdate
    end
    object actBeginWorkdaysDateIntervalFormat: TAction
      Category = 'DateFormat'
      AutoCheck = True
      Caption = #1053#1072#1095#1072#1083#1085#1072' '#1076#1072#1090#1072' - '#1088#1072#1073#1086#1090#1085#1080' '#1076#1085#1080
      Checked = True
      GroupIndex = 31
      OnExecute = actBeginWorkdaysDateIntervalFormatExecute
      OnUpdate = actBeginWorkdaysDateIntervalFormatUpdate
    end
    object actCustomMenuItems: TAction
      Category = 'Program'
      Caption = #1052#1048#1048#1054'-'#1090#1072' '#1074' '#1084#1077#1085#1102#1090#1086'...'
      Hint = #1052#1048#1048#1054'-'#1090#1072' '#1074' '#1084#1077#1085#1102#1090#1086
      OnExecute = actCustomMenuItemsExecute
    end
    object actEmployeeEarnings: TAction
      Category = 'HumanResource'
      Caption = #1058#1088#1091#1076' '#1085#1072' '#1057#1083#1091#1078#1080#1090#1077#1083#1080'...'
      Hint = #1058#1088#1091#1076' '#1085#1072' '#1057#1083#1091#1078#1080#1090#1077#1083#1080
      ImageIndex = 5
      OnExecute = actEmployeeEarningsExecute
    end
    object actXModels: TAction
      Category = 'Engineering'
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1048#1056'...'
      Hint = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1048#1056
      ImageIndex = 5
      OnExecute = actXModelsExecute
      OnUpdate = actXModelsUpdate
    end
    object actWorkDef: TAction
      Category = 'HumanResource'
      Caption = #1056#1077#1078#1080#1084#1080' '#1085#1072' '#1057#1084#1077#1085#1085#1086#1089#1090'...'
      Hint = #1056#1077#1078#1080#1084#1080' '#1085#1072' '#1057#1084#1077#1085#1085#1086#1089#1090
      ImageIndex = 5
      OnExecute = actWorkDefExecute
    end
    object actCraftTypes: TAction
      Category = 'HumanResource'
      Caption = #1050#1083#1072#1089#1080#1092#1080#1082#1072#1094#1080#1086#1085#1085#1080' '#1043#1088#1091#1087#1080' '#1055#1088#1086#1092#1077#1089#1080#1080'...'
      Hint = #1050#1083#1072#1089#1080#1092#1080#1082#1072#1094#1080#1086#1085#1085#1080' '#1043#1088#1091#1087#1080' '#1055#1088#1086#1092#1077#1089#1080#1080
      OnExecute = actCraftTypesExecute
    end
    object actCrafts: TAction
      Category = 'HumanResource'
      Caption = #1055#1088#1086#1092#1077#1089#1080#1080'...'
      Hint = #1055#1088#1086#1092#1077#1089#1080#1080
      OnExecute = actCraftsExecute
    end
    object actCommonGroups: TAction
      Category = 'Engineering'
      Caption = #1058#1080#1087#1080#1079#1080#1088#1072#1097#1080' '#1049#1077#1088#1072#1088#1093#1080#1095#1085#1080' '#1057#1090#1088#1091#1082#1090#1091#1088#1080' ('#1058#1049#1057') '#1085#1072' '#1059#1054#1073'...'
      Hint = #1058#1080#1087#1080#1079#1080#1088#1072#1097#1080' '#1049#1077#1088#1072#1088#1093#1080#1095#1085#1080' '#1057#1090#1088#1091#1082#1090#1091#1088#1080' ('#1058#1049#1057') '#1085#1072' '#1059#1054#1073
      ImageIndex = 5
      OnExecute = actCommonGroupsExecute
    end
    object actStageLevelTasks: TAction
      Category = 'Production'
      Caption = #1045#1090#1072#1087#1085#1080' '#1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1047#1072#1076#1072#1085#1080#1103'...'
      Hint = #1045#1090#1072#1087#1085#1080' '#1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1047#1072#1076#1072#1085#1080#1103
      ImageIndex = 5
      OnExecute = actStageLevelTasksExecute
      OnUpdate = actStageLevelTasksUpdate
    end
    object actEngineeringOrderTypes: TAction
      Category = 'Engineering'
      Caption = #1042#1080#1076#1086#1074#1077' '#1054#1055#1048#1056'...'
      Hint = #1042#1080#1076#1086#1074#1077' '#1054#1088#1076#1077#1088#1080' '#1079#1072' '#1055#1088#1080#1085#1094#1080#1087#1085#1072' '#1048#1085#1078#1077#1085#1077#1088#1085#1072' '#1056#1072#1079#1088#1072#1073#1086#1090#1082#1072
      OnExecute = actEngineeringOrderTypesExecute
    end
    object actNewEngineeringOrder: TAction
      Tag = 1
      Category = 'Engineering'
      Caption = #1053#1086#1074' '#1054#1088#1076#1077#1088' '#1079#1072' '#1055#1088#1080#1085#1094#1080#1087#1085#1072' '#1048#1085#1078#1077#1085#1077#1088#1085#1072' '#1056#1072#1079#1088#1072#1073#1086#1090#1082#1072' ('#1054#1055#1048#1056') '#1085#1072' '#1059#1054#1073'...'
      Hint = #1053#1086#1074' '#1054#1088#1076#1077#1088' '#1079#1072' '#1055#1088#1080#1085#1094#1080#1087#1085#1072' '#1048#1085#1078#1077#1085#1077#1088#1085#1072' '#1056#1072#1079#1088#1072#1073#1086#1090#1082#1072' ('#1054#1055#1048#1056') '#1085#1072' '#1059#1054#1073
      ImageIndex = 4
      OnExecute = actNewEngineeringOrderExecute
    end
    object actEngineeringOrders: TAction
      Category = 'Engineering'
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1055#1048#1056' '#1085#1072' '#1059#1054#1073'...'
      Hint = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1055#1048#1056' '#1085#1072' '#1059#1054#1073
      ImageIndex = 5
      OnExecute = actEngineeringOrdersExecute
    end
    object actBOIWasteOrdersExpense: TAction
      Category = 'Budget'
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1088#1076#1077#1088#1080' - '#1055#1088#1077#1086#1094#1077#1085#1103#1074#1072#1097#1080' '#1087#1086' '#1051#1080#1084#1080#1090#1080' '#1086#1090' '#1056#1041#1057'...'
      Hint = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1088#1076#1077#1088#1080' - '#1055#1088#1077#1086#1094#1077#1085#1103#1074#1072#1097#1080' '#1087#1086' '#1051#1080#1084#1080#1090#1080' '#1086#1090' '#1056#1041#1057
      ImageIndex = 5
      OnExecute = actBOIWasteOrdersExpenseExecute
    end
    object actBudgetOrdersInvest: TAction
      Category = 'Budget'
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1048#1085#1074#1077#1089#1090#1080#1094#1080#1086#1085#1085#1080' '#1041#1086#1088#1076#1077#1088#1072' '#1079#1072' '#1057#1088#1077#1076#1072' ('#1048#1041#1057')...'
      Hint = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1048#1085#1074#1077#1089#1090#1080#1094#1080#1086#1085#1085#1080' '#1041#1086#1088#1076#1077#1088#1072' '#1079#1072' '#1057#1088#1077#1076#1072' ('#1048#1041#1057')'
      ImageIndex = 5
      OnExecute = actBudgetOrdersInvestExecute
    end
    object actBOIProductOrdersInvest: TAction
      Category = 'Budget'
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1088#1076#1077#1088#1080' - '#1055#1088#1077#1076#1084#1077#1090#1085#1080' '#1087#1086' '#1051#1080#1084#1080#1090#1080' '#1086#1090' '#1048#1041#1057'...'
      Hint = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1088#1076#1077#1088#1080' - '#1055#1088#1077#1076#1084#1077#1090#1085#1080' '#1087#1086' '#1051#1080#1084#1080#1090#1080' '#1086#1090' '#1048#1041#1057
      ImageIndex = 5
      OnExecute = actBOIProductOrdersInvestExecute
    end
    object actBudgetInvest: TAction
      Category = 'Budget'
      Caption = #1048#1085#1074#1077#1089#1090#1080#1094#1080#1080' '#1074' '#1057#1088#1077#1076#1072'...'
      Hint = #1048#1085#1074#1077#1089#1090#1080#1094#1080#1080' '#1074' '#1057#1088#1077#1076#1072
      ImageIndex = 5
      OnExecute = actBudgetInvestExecute
    end
    object actBOICompanyOrdersInvest: TAction
      Category = 'Budget'
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1088#1076#1077#1088#1080' - '#1054#1073#1089#1083#1091#1078#1074#1072#1097#1080' '#1087#1086' '#1051#1080#1084#1080#1090#1080' '#1086#1090' '#1048#1041#1057'...'
      Hint = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1088#1076#1077#1088#1080' - '#1054#1073#1089#1083#1091#1078#1074#1072#1097#1080' '#1087#1086' '#1051#1080#1084#1080#1090#1080' '#1086#1090' '#1048#1041#1057
      ImageIndex = 5
      OnExecute = actBOICompanyOrdersInvestExecute
    end
    object actEmployeeDayAbsenceReasons: TAction
      Category = 'HumanResource'
      Caption = #1042#1080#1076#1086#1074#1077' '#1044#1086#1082#1091#1084#1077#1085#1090#1080' '#1079#1072' '#1062#1077#1083#1086#1076#1085#1077#1074#1085#1080' '#1054#1090#1089#1098#1089#1090#1074#1080#1103'...'
      Hint = #1042#1080#1076#1086#1074#1077' '#1044#1086#1082#1091#1084#1077#1085#1090#1080' '#1079#1072' '#1062#1077#1083#1086#1076#1085#1077#1074#1085#1080' '#1054#1090#1089#1098#1089#1090#1074#1080#1103
      OnExecute = actEmployeeDayAbsenceReasonsExecute
    end
    object actEmployeeHourAvailabilityModifierReasons: TAction
      Category = 'HumanResource'
      Caption = #1055#1088#1080#1095#1080#1085#1080' '#1079#1072' '#1052#1086#1076#1080#1092#1080#1094#1080#1088#1072#1085#1077' '#1085#1072' '#1055#1088#1080#1089#1098#1089#1090#1074#1080#1103'...'
      Hint = #1055#1088#1080#1095#1080#1085#1080' '#1079#1072' '#1052#1086#1076#1080#1092#1080#1094#1080#1088#1072#1085#1077' '#1085#1072' '#1055#1088#1080#1089#1098#1089#1090#1074#1080#1103
      OnExecute = actEmployeeHourAvailabilityModifierReasonsExecute
    end
    object actEmployeesAvailability: TAction
      Category = 'HumanResource'
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1055#1088#1080#1089#1098#1089#1090#1074#1080#1103' '#1080' '#1054#1090#1089#1098#1089#1090#1074#1080#1103' '#1085#1072' '#1057#1083#1091#1078#1080#1090#1077#1083#1080'...'
      Hint = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1055#1088#1080#1089#1098#1089#1090#1074#1080#1103' '#1080' '#1054#1090#1089#1098#1089#1090#1074#1080#1103' '#1085#1072' '#1057#1083#1091#1078#1080#1090#1077#1083#1080
      ImageIndex = 5
      OnExecute = actEmployeesAvailabilityExecute
    end
    object actEmployeesTotalAvailability: TAction
      Category = 'HumanResource'
      Caption = #1054#1073#1086#1073#1097#1077#1085#1080#1077' '#1085#1072' '#1055#1088#1080#1089#1098#1089#1090#1074#1080#1103' '#1080' '#1054#1090#1089#1098#1089#1090#1074#1080#1103' '#1085#1072' '#1057#1083#1091#1078#1080#1090#1077#1083#1080'...'
      Hint = #1054#1073#1086#1073#1097#1077#1085#1080#1077' '#1085#1072' '#1055#1088#1080#1089#1098#1089#1090#1074#1080#1103' '#1080' '#1054#1090#1089#1098#1089#1090#1074#1080#1103' '#1085#1072' '#1057#1083#1091#1078#1080#1090#1077#1083#1080
      ImageIndex = 5
      OnExecute = actEmployeesTotalAvailabilityExecute
    end
    object actEmployeesAvailabilityGraph: TAction
      Category = 'HumanResource'
      Caption = #1042#1048#1052' - '#1043#1088#1072#1092#1080#1095#1077#1085' '#1085#1072' '#1055#1088#1080#1089#1098#1089#1090#1074#1080#1103' '#1080' '#1054#1090#1089#1098#1089#1090#1074#1080#1103' '#1085#1072' '#1057#1083#1091#1078#1080#1090#1077#1083#1080'...'
      Hint = #1042#1048#1052' - '#1043#1088#1072#1092#1080#1095#1077#1085' '#1085#1072' '#1055#1088#1080#1089#1098#1089#1090#1074#1080#1103' '#1080' '#1054#1090#1089#1098#1089#1090#1074#1080#1103' '#1085#1072' '#1057#1083#1091#1078#1080#1090#1077#1083#1080
      ImageIndex = 7
      OnExecute = actEmployeesAvailabilityGraphExecute
    end
    object actPrecisionLevels: TAction
      Category = 'Nomenclatures'
      Caption = #1053#1080#1074#1072' '#1085#1072' '#1058#1086#1095#1085#1086#1089#1090'...'
      Hint = #1053#1080#1074#1072' '#1085#1072' '#1058#1086#1095#1085#1086#1089#1090
      OnExecute = actPrecisionLevelsExecute
    end
    object actSaleRequestGroups: TAction
      Category = 'Sales'
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1055#1044#1050' '#1079#1072' '#1055#1088#1086#1076#1072#1078#1073#1072' '#1085#1072' '#1059#1054#1073' '#1087#1086' '#1047#1072#1076#1072#1085#1080#1077'...'
      Hint = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1055#1044#1050' '#1079#1072' '#1055#1088#1086#1076#1072#1078#1073#1072' '#1085#1072' '#1059#1054#1073' '#1087#1086' '#1047#1072#1076#1072#1085#1080#1077
      ImageIndex = 5
      OnExecute = actSaleRequestGroupsExecute
    end
    object actFailedEmployeeMovements: TAction
      Category = 'HumanResource'
      Caption = #1053#1077#1087#1088#1077#1093#1074#1098#1088#1083#1077#1085#1080' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080' '#1085#1072' '#1044#1074#1080#1078#1077#1085#1080#1103' '#1085#1072' '#1057#1083#1091#1078#1080#1090#1077#1083#1080'...'
      Hint = #1053#1077#1087#1088#1077#1093#1074#1098#1088#1083#1077#1085#1080' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080' '#1085#1072' '#1044#1074#1080#1078#1077#1085#1080#1103' '#1085#1072' '#1057#1083#1091#1078#1080#1090#1077#1083#1080
      ImageIndex = 5
      OnExecute = actFailedEmployeeMovementsExecute
    end
    object actPoolManagers: TAction
      Category = 'Program'
      Caption = #1057#1098#1088#1074#1098#1088#1085#1080' '#1052#1086#1076#1091#1083#1080'...'
      Hint = #1057#1098#1088#1074#1098#1088#1085#1080' '#1052#1086#1076#1091#1083#1080
      OnExecute = actPoolManagersExecute
      OnUpdate = actPoolManagersUpdate
    end
    object actSaleOrdersGroupSaleOrders: TAction
      Category = 'Sales'
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1055#1044#1050' '#1079#1072' '#1055#1088#1086#1076#1072#1078#1073#1072' '#1085#1072' '#1059#1054#1073' '#1087#1086' '#1053#1072#1083#1080#1095#1085#1086#1089#1090'...'
      Hint = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1055#1044#1050' '#1079#1072' '#1055#1088#1086#1076#1072#1078#1073#1072' '#1085#1072' '#1059#1054#1073' '#1087#1086' '#1053#1072#1083#1080#1095#1085#1086#1089#1090
      ImageIndex = 5
      OnExecute = actSaleOrdersGroupSaleOrdersExecute
    end
    object actMemoryManager: TAction
      Category = 'Program'
      Caption = #1057#1098#1088#1074#1098#1088#1085#1072' '#1055#1072#1084#1077#1090'...'
      Hint = #1057#1098#1088#1074#1098#1088#1085#1072' '#1055#1072#1084#1077#1090
      OnExecute = actMemoryManagerExecute
      OnUpdate = actMemoryManagerUpdate
    end
    object actParRelProductsSalesByPartner: TAction
      Category = 'ParRelProducts'
      Caption = 
        #1052#1072#1090#1088#1080#1094#1072' '#1085#1072' '#1048#1079#1090#1086#1095#1085#1080#1094#1080' '#1085#1072' '#1048#1085#1076#1091#1089#1090#1088#1080#1072#1083#1077#1085' '#1056#1077#1079#1091#1083#1090#1072#1090' ('#1052#1048#1048#1056') - '#1057#1091#1073#1077#1082#1090#1086#1074' ' +
        #1056#1072#1079#1088#1077#1079'...'
      ImageIndex = 5
      OnExecute = actParRelProductsSalesByPartnerExecute
    end
    object actParRelProductsSalesByProduct: TAction
      Category = 'ParRelProducts'
      Caption = 
        #1052#1072#1090#1088#1080#1094#1072' '#1085#1072' '#1048#1079#1090#1086#1095#1085#1080#1094#1080' '#1085#1072' '#1048#1085#1076#1091#1089#1090#1088#1080#1072#1083#1077#1085' '#1056#1077#1079#1091#1083#1090#1072#1090' ('#1052#1048#1048#1056') - '#1054#1073#1077#1082#1090#1086#1074' '#1056 +
        #1072#1079#1088#1077#1079'...'
      ImageIndex = 5
      OnExecute = actParRelProductsSalesByProductExecute
    end
    object actParRelProductsDeliveriesCoveringSalesByPartner: TAction
      Category = 'ParRelProducts'
      Caption = 
        #1052#1072#1090#1088#1080#1094#1072' '#1085#1072' '#1048#1079#1090#1086#1095#1085#1080#1094#1080' '#1085#1072' '#1044#1086#1089#1090#1072#1074#1082#1080' ('#1052#1048#1044') '#1085#1072' '#1059#1054#1073'-'#1045#1083#1055' - '#1057#1091#1073#1077#1082#1090#1086#1074' '#1056#1072#1079 +
        #1088#1077#1079'...'
      Hint = 
        #1052#1072#1090#1088#1080#1094#1072' '#1085#1072' '#1048#1079#1090#1086#1095#1085#1080#1094#1080' '#1085#1072' '#1044#1086#1089#1090#1072#1074#1082#1080' ('#1052#1048#1044') '#1085#1072' '#1059#1054#1073'-'#1045#1083#1055' - '#1057#1091#1073#1077#1082#1090#1086#1074' '#1056#1072#1079 +
        #1088#1077#1079
      ImageIndex = 5
      OnExecute = actParRelProductsDeliveriesCoveringSalesByPartnerExecute
    end
    object actParRelProductsDeliveriesCoveringSalesByProduct: TAction
      Category = 'ParRelProducts'
      Caption = 
        #1052#1072#1090#1088#1080#1094#1072' '#1085#1072' '#1048#1079#1090#1086#1095#1085#1080#1094#1080' '#1085#1072' '#1044#1086#1089#1090#1072#1074#1082#1080' ('#1052#1048#1044') '#1085#1072' '#1059#1054#1073'-'#1045#1083#1055' - '#1054#1073#1077#1082#1090#1086#1074' '#1056#1072#1079#1088 +
        #1077#1079'...'
      Hint = 
        #1052#1072#1090#1088#1080#1094#1072' '#1085#1072' '#1048#1079#1090#1086#1095#1085#1080#1094#1080' '#1085#1072' '#1044#1086#1089#1090#1072#1074#1082#1080' ('#1052#1048#1044') '#1085#1072' '#1059#1054#1073'-'#1045#1083#1055' - '#1054#1073#1077#1082#1090#1086#1074' '#1056#1072#1079#1088 +
        #1077#1079
      ImageIndex = 5
      OnExecute = actParRelProductsDeliveriesCoveringSalesByProductExecute
    end
    object actParRelProductsDeliveriesCoveringEnvByPartner: TAction
      Category = 'ParRelProducts'
      Caption = 
        #1052#1072#1090#1088#1080#1094#1072' '#1085#1072' '#1048#1079#1090#1086#1095#1085#1080#1094#1080' '#1085#1072' '#1044#1086#1089#1090#1072#1074#1082#1080' ('#1052#1048#1044') '#1085#1072' '#1059#1054#1073'-'#1045#1083#1057' - '#1057#1091#1073#1077#1082#1090#1086#1074' '#1056#1072#1079 +
        #1088#1077#1079'...'
      Hint = 
        #1052#1072#1090#1088#1080#1094#1072' '#1085#1072' '#1048#1079#1090#1086#1095#1085#1080#1094#1080' '#1085#1072' '#1044#1086#1089#1090#1072#1074#1082#1080' ('#1052#1048#1044') '#1085#1072' '#1059#1054#1073'-'#1045#1083#1057' - '#1057#1091#1073#1077#1082#1090#1086#1074' '#1056#1072#1079 +
        #1088#1077#1079
      ImageIndex = 5
      OnExecute = actParRelProductsDeliveriesCoveringEnvByPartnerExecute
    end
    object actParRelProductsDeliveriesCoveringEnvByProduct: TAction
      Category = 'ParRelProducts'
      Caption = 
        #1052#1072#1090#1088#1080#1094#1072' '#1085#1072' '#1048#1079#1090#1086#1095#1085#1080#1094#1080' '#1085#1072' '#1044#1086#1089#1090#1072#1074#1082#1080' ('#1052#1048#1044') '#1085#1072' '#1059#1054#1073'-'#1045#1083#1057' - '#1054#1073#1077#1082#1090#1086#1074' '#1056#1072#1079#1088 +
        #1077#1079'...'
      Hint = 
        #1052#1072#1090#1088#1080#1094#1072' '#1085#1072' '#1048#1079#1090#1086#1095#1085#1080#1094#1080' '#1085#1072' '#1044#1086#1089#1090#1072#1074#1082#1080' ('#1052#1048#1044') '#1085#1072' '#1059#1054#1073'-'#1045#1083#1057' - '#1054#1073#1077#1082#1090#1086#1074' '#1056#1072#1079#1088 +
        #1077#1079
      ImageIndex = 5
      OnExecute = actParRelProductsDeliveriesCoveringEnvByProductExecute
    end
    object actNewSaleRequestGroup: TAction
      Category = 'Sales'
      Caption = 
        #1053#1086#1074' '#1055#1072#1082#1077#1090' '#1044#1080#1072#1083#1086#1079#1080' '#1089' '#1050#1083#1080#1077#1085#1090' ('#1055#1044#1050') '#1079#1072' '#1055#1088#1086#1076#1072#1078#1073#1072' '#1085#1072' '#1059#1054#1073' '#1087#1086' '#1047#1072#1076#1072#1085#1080#1077'..' +
        '.'
      Hint = #1053#1086#1074' '#1055#1072#1082#1077#1090' '#1044#1080#1072#1083#1086#1079#1080' '#1089' '#1050#1083#1080#1077#1085#1090' ('#1055#1044#1050') '#1079#1072' '#1055#1088#1086#1076#1072#1078#1073#1072' '#1085#1072' '#1059#1054#1073' '#1087#1086' '#1047#1072#1076#1072#1085#1080#1077
      ImageIndex = 4
      OnExecute = actNewSaleRequestGroupExecute
    end
    object actOrganisationTaskProposals: TAction
      Category = 'Environment'
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1055#1088#1086#1077#1082#1090#1080'...'
      Hint = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1055#1088#1086#1077#1082#1090#1080
      ImageIndex = 5
      OnExecute = actOrganisationTaskProposalsExecute
    end
    object actEstCapacityGraph: TAction
      Category = 'Capacity'
      Caption = #1042#1048#1052' - '#1043#1088#1072#1092#1080#1095#1077#1085' '#1085#1072' '#1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1077#1085' '#1050#1072#1087#1072#1094#1080#1090#1077#1090' '#1085#1072' '#1058#1055'...'
      Hint = #1042#1048#1052' - '#1043#1088#1072#1092#1080#1095#1077#1085' '#1085#1072' '#1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1077#1085' '#1050#1072#1087#1072#1094#1080#1090#1077#1090' '#1085#1072' '#1058#1055
      ImageIndex = 7
      OnExecute = actEstCapacityGraphExecute
    end
    object actEstCapacityTable: TAction
      Category = 'Capacity'
      Caption = #1042#1048#1052' - '#1058#1072#1073#1083#1080#1095#1077#1085' '#1085#1072' '#1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1077#1085' '#1050#1072#1087#1072#1094#1080#1090#1077#1090' '#1085#1072' '#1058#1055'...'
      Hint = #1042#1048#1052' - '#1058#1072#1073#1083#1080#1095#1077#1085' '#1085#1072' '#1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1077#1085' '#1050#1072#1087#1072#1094#1080#1090#1077#1090' '#1085#1072' '#1058#1055
      ImageIndex = 5
      OnExecute = actEstCapacityTableExecute
    end
    object actEstQuantitiesTable: TAction
      Category = 'ParRelProducts'
      Caption = #1042#1048#1052' - '#1058#1072#1073#1083#1080#1095#1077#1085' '#1085#1072' '#1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1053#1072#1083#1080#1095#1085#1086#1089#1090#1080' '#1086#1090' '#1059#1054#1073'...'
      Hint = #1042#1048#1052' - '#1058#1072#1073#1083#1080#1095#1077#1085' '#1085#1072' '#1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1053#1072#1083#1080#1095#1085#1086#1089#1090#1080' '#1086#1090' '#1059#1054#1073
      ImageIndex = 5
      OnExecute = actEstQuantitiesTableExecute
    end
    object actEstQuantitiesGraph: TAction
      Category = 'ParRelProducts'
      Caption = #1042#1048#1052' - '#1043#1088#1072#1092#1080#1095#1077#1085' '#1085#1072' '#1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1053#1072#1083#1080#1095#1085#1086#1089#1090#1080' '#1086#1090' '#1059#1054#1073'...'
      Hint = #1042#1048#1052' - '#1043#1088#1072#1092#1080#1095#1077#1085' '#1085#1072' '#1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1053#1072#1083#1080#1095#1085#1086#1089#1090#1080' '#1086#1090' '#1059#1054#1073
      ImageIndex = 10
      OnExecute = actEstQuantitiesGraphExecute
    end
    object actEstPricesCompareGraphSales: TAction
      Category = 'ParRelProducts'
      Caption = #1042#1048#1052' - '#1043#1088#1072#1092#1080#1095#1077#1085' '#1085#1072' '#1048#1085#1076#1091#1089#1090#1088#1080#1072#1083#1077#1085' '#1056#1077#1079#1091#1083#1090#1072#1090'...'
      Hint = #1042#1048#1052' - '#1043#1088#1072#1092#1080#1095#1077#1085' '#1085#1072' '#1048#1085#1076#1091#1089#1090#1088#1080#1072#1083#1077#1085' '#1056#1077#1079#1091#1083#1090#1072#1090
      ImageIndex = 7
      OnExecute = actEstPricesCompareGraphSalesExecute
    end
    object actEstPricesCompareGraphDeliveriesCoveringSales: TAction
      Category = 'ParRelProducts'
      Caption = 
        #1042#1048#1052' - '#1043#1088#1072#1092#1080#1095#1077#1085' '#1085#1072' '#1044#1086#1089#1090#1072#1074#1082#1080' '#1085#1072' '#1059#1087#1088#1072#1074#1083#1103#1077#1084#1080' '#1054#1073#1077#1082#1090#1080' - '#1045#1083#1077#1084#1077#1085#1090#1080' '#1085#1072' '#1055#1086 +
        #1090#1086#1082#1072' ('#1059#1054#1073'-'#1045#1083#1055')...'
      Hint = 
        #1042#1048#1052' - '#1043#1088#1072#1092#1080#1095#1077#1085' '#1085#1072' '#1044#1086#1089#1090#1072#1074#1082#1080' '#1085#1072' '#1059#1087#1088#1072#1074#1083#1103#1077#1084#1080' '#1054#1073#1077#1082#1090#1080' - '#1045#1083#1077#1084#1077#1085#1090#1080' '#1085#1072' '#1055#1086 +
        #1090#1086#1082#1072' ('#1059#1054#1073'-'#1045#1083#1055')'
      ImageIndex = 7
      OnExecute = actEstPricesCompareGraphDeliveriesCoveringSalesExecute
    end
    object actEstPricesCompareGraphDeliveriesCoveringEnv: TAction
      Category = 'ParRelProducts'
      Caption = 
        #1042#1048#1052' - '#1043#1088#1072#1092#1080#1095#1077#1085' '#1085#1072' '#1044#1086#1089#1090#1072#1074#1082#1080' '#1085#1072' '#1059#1087#1088#1072#1074#1083#1103#1077#1084#1080' '#1054#1073#1077#1082#1090#1080' - '#1045#1083#1077#1084#1077#1085#1090#1080' '#1085#1072' '#1057#1088 +
        #1077#1076#1072#1090#1072' ('#1059#1054#1073'-'#1045#1083#1057')...'
      Hint = 
        #1042#1048#1052' - '#1043#1088#1072#1092#1080#1095#1077#1085' '#1085#1072' '#1044#1086#1089#1090#1072#1074#1082#1080' '#1085#1072' '#1059#1087#1088#1072#1074#1083#1103#1077#1084#1080' '#1054#1073#1077#1082#1090#1080' - '#1045#1083#1077#1084#1077#1085#1090#1080' '#1085#1072' '#1057#1088 +
        #1077#1076#1072#1090#1072' ('#1059#1054#1073'-'#1045#1083#1057')'
      ImageIndex = 7
      OnExecute = actEstPricesCompareGraphDeliveriesCoveringEnvExecute
    end
    object actDeliveryTypes: TAction
      Category = 'Deliveries'
      Caption = #1042#1080#1076#1086#1074#1077' '#1054#1055#1044'...'
      Hint = #1042#1080#1076#1086#1074#1077' '#1054#1055#1044
      OnExecute = actDeliveryTypesExecute
    end
    object actDisciplineEvents: TAction
      Category = 'HumanResource'
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1048#1079#1074#1098#1085#1088#1077#1076#1085#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103' '#1074' '#1056#1072#1073#1086#1090#1085#1086' '#1055#1086#1074#1077#1076#1077#1085#1080#1077'...'
      Hint = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1048#1079#1074#1098#1085#1088#1077#1076#1085#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103' '#1074' '#1056#1072#1073#1086#1090#1085#1086' '#1055#1086#1074#1077#1076#1077#1085#1080#1077
      ImageIndex = 5
      OnExecute = actDisciplineEventsExecute
    end
    object actExceptEventTypes: TAction
      Category = 'Nomenclatures'
      Caption = #1042#1080#1076#1086#1074#1077' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103'...'
      Hint = #1042#1080#1076#1086#1074#1077' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103
      ImageIndex = 2
      OnExecute = actExceptEventTypesExecute
    end
    object actExceptEventsEnv: TAction
      Category = 'Environment'
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103' ('#1053#1054')...'
      Hint = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103' ('#1053#1054')'
      ImageIndex = 24
      OnExecute = actExceptEventsEnvExecute
    end
    object actSpecInvestedValueLevelsGraph: TAction
      Category = 'Engineering'
      Caption = #1042#1048#1052' - '#1043#1088#1072#1092#1080#1095#1077#1085' '#1085#1072' '#1042#1083#1086#1078#1077#1085#1080' '#1057#1090#1086#1081#1085#1086#1089#1090#1080' ('#1042#1057')...'
      Hint = #1042#1048#1052' - '#1043#1088#1072#1092#1080#1095#1077#1085' '#1085#1072' '#1042#1083#1086#1078#1077#1085#1080' '#1057#1090#1086#1081#1085#1086#1089#1090#1080
      ImageIndex = 7
      OnExecute = actSpecInvestedValueLevelsGraphExecute
    end
    object actFinancialProducts: TAction
      Category = 'Finance'
      Caption = #1060#1080#1085#1072#1085#1089#1086#1074#1080' '#1054#1073#1077#1082#1090#1080' ('#1060#1054#1073')...'
      Hint = #1060#1080#1085#1072#1085#1089#1086#1074#1080' '#1054#1073#1077#1082#1090#1080
      ImageIndex = 2
      OnExecute = actFinancialProductsExecute
    end
    object actFinancialCommonGroups: TAction
      Category = 'Finance'
      Caption = #1058#1080#1087#1080#1079#1080#1088#1072#1097#1080' '#1049#1077#1088#1072#1088#1093#1080#1095#1085#1080' '#1057#1090#1088#1091#1082#1090#1091#1088#1080' ('#1058#1049#1057') '#1085#1072' '#1060#1054#1073'...'
      Hint = #1058#1080#1087#1080#1079#1080#1088#1072#1097#1080' '#1049#1077#1088#1072#1088#1093#1080#1095#1085#1080' '#1057#1090#1088#1091#1082#1090#1091#1088#1080' ('#1058#1049#1057') '#1085#1072' '#1060#1054#1073
      ImageIndex = 5
      OnExecute = actFinancialCommonGroupsExecute
    end
    object actNewFinancialOrder: TAction
      Tag = 1
      Category = 'Finance'
      Caption = #1053#1086#1074' '#1054#1088#1076#1077#1088' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1060#1080#1085#1072#1085#1089#1086#1074' ('#1054#1055#1060')...'
      Hint = #1053#1086#1074' '#1054#1088#1076#1077#1088' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1060#1080#1085#1072#1085#1089#1086#1074' ('#1054#1055#1060')'
      ImageIndex = 4
      OnExecute = actNewFinancialOrderExecute
    end
    object actFinancialOrders: TAction
      Category = 'Finance'
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1055#1060'...'
      Hint = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1088#1076#1077#1088#1080' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1060#1080#1085#1072#1085#1089#1086#1074
      ImageIndex = 5
      OnExecute = actFinancialOrdersExecute
    end
    object actRealFinModelLines: TAction
      Category = 'Finance'
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1056#1077#1076#1086#1074#1077' '#1086#1090' '#1054#1055#1060'...'
      Hint = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1056#1077#1076#1086#1074#1077' '#1086#1090' '#1054#1088#1076#1077#1088#1080' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1060#1080#1085#1072#1085#1089#1086#1074
      ImageIndex = 5
      OnExecute = actRealFinModelLinesExecute
    end
    object actRealFinModelLineGroups: TAction
      Category = 'Finance'
      Caption = #1043#1088#1091#1087#1080' '#1056#1077#1076#1086#1074#1077' '#1086#1090' '#1054#1055#1060'...'
      Hint = #1043#1088#1091#1087#1080' '#1056#1077#1076#1086#1074#1077' '#1086#1090' '#1054#1088#1076#1077#1088#1080' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1060#1080#1085#1072#1085#1089#1086#1074
      ImageIndex = 5
      OnExecute = actRealFinModelLineGroupsExecute
    end
    object actPlannedFinancialStoreDeals: TAction
      Category = 'Finance'
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1055#1083#1072#1085#1086#1074#1080' '#1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103' '#1080' '#1058#1077#1075#1083#1077#1085#1080#1103' '#1085#1072' '#1060#1054#1073'...'
      Hint = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1055#1083#1072#1085#1086#1074#1080' '#1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103' '#1080' '#1058#1077#1075#1083#1077#1085#1080#1103' '#1085#1072' '#1060#1054#1073
      ImageIndex = 5
      OnExecute = actPlannedFinancialStoreDealsExecute
    end
    object actUncoveredPlannedFinancialStoreDeals: TAction
      Category = 'Finance'
      Caption = #1053#1077#1086#1073#1077#1079#1087#1077#1095#1077#1085#1080' '#1055#1083#1072#1085#1086#1074#1080' '#1058#1077#1075#1083#1077#1085#1080#1103' '#1085#1072' '#1060#1054#1073'...'
      Hint = #1053#1077#1086#1073#1077#1079#1087#1077#1095#1077#1085#1080' '#1055#1083#1072#1085#1086#1074#1080' '#1058#1077#1075#1083#1077#1085#1080#1103' '#1085#1072' '#1060#1054#1073
      ImageIndex = 5
      OnExecute = actUncoveredPlannedFinancialStoreDealsExecute
    end
    object actNewFinancialStoreRequest: TAction
      Tag = 1
      Category = 'Finance'
      Caption = #1053#1086#1074#1072' '#1043#1088#1091#1087#1086#1074#1072' '#1047#1072#1103#1074#1082#1072' '#1079#1072' '#1044#1074#1080#1078#1077#1085#1080#1077' '#1085#1072' '#1060#1054#1073'...'
      Hint = #1053#1086#1074#1072' '#1043#1088#1091#1087#1086#1074#1072' '#1047#1072#1103#1074#1082#1072' '#1079#1072' '#1044#1074#1080#1078#1077#1085#1080#1077' '#1085#1072' '#1060#1054#1073
      ImageIndex = 4
      OnExecute = actNewFinancialStoreRequestExecute
    end
    object actFinancialStoreRequests: TAction
      Category = 'Finance'
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1043#1088#1091#1087#1086#1074#1080' '#1047#1072#1103#1074#1082#1080' '#1079#1072' '#1044#1074#1080#1078#1077#1085#1080#1077' '#1085#1072' '#1060#1054#1073'...'
      Hint = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1043#1088#1091#1087#1086#1074#1080' '#1047#1072#1103#1074#1082#1080' '#1079#1072' '#1044#1074#1080#1078#1077#1085#1080#1077' '#1085#1072' '#1060#1054#1073
      ImageIndex = 5
      OnExecute = actFinancialStoreRequestsExecute
    end
    object actNewFinancialStoreDealIn: TAction
      Tag = 1
      Category = 'Finance'
      Caption = #1053#1086#1074#1086' '#1054#1090#1095#1077#1090#1085#1086' '#1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1077' '#1085#1072' '#1060#1054#1073'...'
      Hint = #1053#1086#1074#1086' '#1054#1090#1095#1077#1090#1085#1086' '#1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1077' '#1085#1072' '#1060#1054#1073
      ImageIndex = 4
      OnExecute = actNewFinancialStoreDealInExecute
    end
    object actNewFinancialStoreDealOut: TAction
      Tag = 1
      Category = 'Finance'
      Caption = #1053#1086#1074#1086' '#1054#1090#1095#1077#1090#1085#1086' '#1058#1077#1075#1083#1077#1085#1077' '#1085#1072' '#1060#1054#1073'...'
      Hint = #1053#1086#1074#1086' '#1054#1090#1095#1077#1090#1085#1086' '#1058#1077#1075#1083#1077#1085#1077' '#1085#1072' '#1060#1054#1073'...'
      ImageIndex = 4
      OnExecute = actNewFinancialStoreDealOutExecute
    end
    object actFinancialStoreDeals: TAction
      Category = 'Finance'
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1090#1095#1077#1090#1085#1080' '#1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103' '#1080' '#1058#1077#1075#1083#1077#1085#1080#1103' '#1085#1072' '#1060#1054#1073'...'
      Hint = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1090#1095#1077#1090#1085#1080' '#1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103' '#1080' '#1058#1077#1075#1083#1077#1085#1080#1103' '#1085#1072' '#1060#1054#1073
      ImageIndex = 5
      OnExecute = actFinancialStoreDealsExecute
    end
    object actFinancialRelationsGraph: TAction
      Category = 'Finance'
      Caption = #1042#1048#1052' - '#1043#1088#1072#1092#1080#1095#1077#1085' '#1085#1072' '#1060#1080#1085#1072#1085#1089#1086#1074#1080' '#1054#1090#1085#1086#1096#1077#1085#1080#1103' '#1089' '#1055#1072#1088#1090#1085#1100#1086#1088#1080'...'
      Hint = #1042#1048#1052' - '#1043#1088#1072#1092#1080#1095#1077#1085' '#1085#1072' '#1060#1080#1085#1072#1085#1089#1086#1074#1080' '#1054#1090#1085#1086#1096#1077#1085#1080#1103' '#1089' '#1055#1072#1088#1090#1085#1100#1086#1088#1080
      ImageIndex = 10
      OnExecute = actFinancialRelationsGraphExecute
    end
    object actFinancialRelationsTable: TAction
      Category = 'Finance'
      Caption = #1042#1048#1052' - '#1058#1072#1073#1083#1080#1095#1077#1085' '#1085#1072' '#1060#1080#1085#1072#1085#1089#1086#1074#1080' '#1054#1090#1085#1086#1096#1077#1085#1080#1103' '#1089' '#1055#1072#1088#1090#1085#1100#1086#1088#1080'...'
      Hint = #1042#1048#1052' - '#1058#1072#1073#1083#1080#1095#1077#1085' '#1085#1072' '#1060#1080#1085#1072#1085#1089#1086#1074#1080' '#1054#1090#1085#1086#1096#1077#1085#1080#1103' '#1089' '#1055#1072#1088#1090#1085#1100#1086#1088#1080
      ImageIndex = 5
      OnExecute = actFinancialRelationsTableExecute
    end
    object actFinancialEstQuantitiesGraph: TAction
      Category = 'Finance'
      Caption = #1042#1048#1052' - '#1043#1088#1072#1092#1080#1095#1077#1085' '#1085#1072' '#1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1053#1072#1083#1080#1095#1085#1086#1089#1090#1080' '#1086#1090' '#1060#1054#1073'...'
      Hint = #1042#1048#1052' - '#1043#1088#1072#1092#1080#1095#1077#1085' '#1085#1072' '#1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1053#1072#1083#1080#1095#1085#1086#1089#1090#1080' '#1086#1090' '#1060#1054#1073
      ImageIndex = 10
      Visible = False
      OnExecute = actFinancialEstQuantitiesGraphExecute
    end
    object actFinancialEstQuantitiesTable: TAction
      Category = 'Finance'
      Caption = #1042#1048#1052' - '#1058#1072#1073#1083#1080#1095#1077#1085' '#1085#1072' '#1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1053#1072#1083#1080#1095#1085#1086#1089#1090#1080' '#1086#1090' '#1060#1054#1073'...'
      Hint = #1042#1048#1052' - '#1058#1072#1073#1083#1080#1095#1077#1085' '#1085#1072' '#1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1053#1072#1083#1080#1095#1085#1086#1089#1090#1080' '#1086#1090' '#1060#1054#1073
      ImageIndex = 5
      Visible = False
      OnExecute = actFinancialEstQuantitiesTableExecute
    end
    object actFinancialVIMQuantity: TAction
      Category = 'Finance'
      Caption = #1042#1048#1052' - '#1043#1088#1072#1092#1080#1095#1077#1085' '#1085#1072' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1053#1072#1083#1080#1095#1085#1086#1089#1090#1080' '#1086#1090' '#1060#1054#1073'...'
      Hint = #1042#1048#1052' - '#1043#1088#1072#1092#1080#1095#1077#1085' '#1085#1072' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1053#1072#1083#1080#1095#1085#1086#1089#1090#1080' '#1086#1090' '#1060#1054#1073
      ImageIndex = 10
      OnExecute = actFinancialVIMQuantityExecute
    end
    object actFinancialQuantityDeficit: TAction
      Category = 'Finance'
      Caption = #1042#1048#1052' - '#1058#1072#1073#1083#1080#1095#1077#1085' '#1085#1072' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1053#1072#1083#1080#1095#1085#1086#1089#1090#1080' '#1086#1090' '#1060#1054#1073'...'
      Hint = #1042#1048#1052' - '#1058#1072#1073#1083#1080#1095#1077#1085' '#1085#1072' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1053#1072#1083#1080#1095#1085#1086#1089#1090#1080' '#1086#1090' '#1060#1054#1073
      ImageIndex = 5
      OnExecute = actFinancialQuantityDeficitExecute
    end
    object actFinancialStoreQuantities: TAction
      Category = 'Finance'
      Caption = #1053#1072#1083#1080#1095#1085#1086#1089#1090#1080' '#1086#1090' '#1060#1054#1073' '#1082#1098#1084' '#1076#1072#1090#1072'...'
      Hint = #1053#1072#1083#1080#1095#1085#1086#1089#1090#1080' '#1086#1090' '#1060#1054#1073' '#1082#1098#1084' '#1076#1072#1090#1072
      ImageIndex = 5
      OnExecute = actFinancialStoreQuantitiesExecute
    end
    object actFinancialProductQuantitiesTree: TAction
      Category = 'Finance'
      Caption = #1060#1080#1085#1072#1085#1089#1086#1074#1080' '#1054#1073#1077#1082#1090#1080' - '#1058#1077#1082#1091#1097#1080' '#1053#1072#1083#1080#1095#1085#1086#1089#1090#1080'...'
      Hint = #1060#1080#1085#1072#1085#1089#1086#1074#1080' '#1054#1073#1077#1082#1090#1080' - '#1058#1077#1082#1091#1097#1080' '#1053#1072#1083#1080#1095#1085#1086#1089#1090#1080
      ImageIndex = 3
      OnExecute = actFinancialProductQuantitiesTreeExecute
    end
    object actFinancialEstPricesCompareGraphSales: TAction
      Category = 'Financial Sales'
      Caption = #1042#1048#1052' - '#1043#1088#1072#1092#1080#1095#1077#1085' '#1085#1072' '#1048#1085#1076#1091#1089#1090#1088#1080#1072#1083#1077#1085' '#1056#1077#1079#1091#1083#1090#1072#1090' - '#1060#1080#1085#1072#1085#1089#1086#1074'...'
      Hint = #1042#1048#1052' - '#1043#1088#1072#1092#1080#1095#1077#1085' '#1085#1072' '#1048#1085#1076#1091#1089#1090#1088#1080#1072#1083#1077#1085' '#1056#1077#1079#1091#1083#1090#1072#1090' - '#1060#1080#1085#1072#1085#1089#1086#1074
      ImageIndex = 7
      OnExecute = actFinancialEstPricesCompareGraphSalesExecute
    end
    object actFinancialParRelProductsSalesByPartner: TAction
      Category = 'Financial Sales'
      Caption = 
        #1052#1072#1090#1088#1080#1094#1072' '#1085#1072' '#1048#1079#1090#1086#1095#1085#1080#1094#1080' '#1085#1072' '#1048#1085#1076#1091#1089#1090#1088#1080#1072#1083#1077#1085' '#1056#1077#1079#1091#1083#1090#1072#1090' - '#1060#1080#1085#1072#1085#1089#1086#1074' ('#1052#1048#1048#1056'-'#1060 +
        ') - '#1057#1091#1073#1077#1082#1090#1086#1074' '#1056#1072#1079#1088#1077#1079'...'
      Hint = 
        #1052#1072#1090#1088#1080#1094#1072' '#1085#1072' '#1048#1079#1090#1086#1095#1085#1080#1094#1080' '#1085#1072' '#1048#1085#1076#1091#1089#1090#1088#1080#1072#1083#1077#1085' '#1056#1077#1079#1091#1083#1090#1072#1090' - '#1060#1080#1085#1072#1085#1089#1086#1074' ('#1052#1048#1048#1056'-'#1060 +
        ') - '#1057#1091#1073#1077#1082#1090#1086#1074' '#1056#1072#1079#1088#1077#1079
      ImageIndex = 5
      OnExecute = actFinancialParRelProductsSalesByPartnerExecute
    end
    object actFinancialParRelProductsSalesByProduct: TAction
      Category = 'Financial Sales'
      Caption = 
        #1052#1072#1090#1088#1080#1094#1072' '#1085#1072' '#1048#1079#1090#1086#1095#1085#1080#1094#1080' '#1085#1072' '#1048#1085#1076#1091#1089#1090#1088#1080#1072#1083#1077#1085' '#1056#1077#1079#1091#1083#1090#1072#1090' - '#1060#1080#1085#1072#1085#1089#1086#1074' ('#1052#1048#1048#1056'-'#1060 +
        ') - '#1054#1073#1077#1082#1090#1086#1074' '#1056#1072#1079#1088#1077#1079'...'
      Hint = 
        #1052#1072#1090#1088#1080#1094#1072' '#1085#1072' '#1048#1079#1090#1086#1095#1085#1080#1094#1080' '#1085#1072' '#1048#1085#1076#1091#1089#1090#1088#1080#1072#1083#1077#1085' '#1056#1077#1079#1091#1083#1090#1072#1090' - '#1060#1080#1085#1072#1085#1089#1086#1074' ('#1052#1048#1048#1056'-'#1060 +
        ') - '#1054#1073#1077#1082#1090#1086#1074' '#1056#1072#1079#1088#1077#1079
      ImageIndex = 5
      OnExecute = actFinancialParRelProductsSalesByProductExecute
    end
    object actNewFinancialSaleRequestGroup: TAction
      Tag = 1
      Category = 'Financial Sales'
      Caption = 
        #1053#1086#1074' '#1055#1072#1082#1077#1090' '#1044#1080#1072#1083#1086#1079#1080' '#1089' '#1050#1083#1080#1077#1085#1090' ('#1055#1044#1050') '#1079#1072' '#1055#1088#1086#1076#1072#1078#1073#1072' '#1085#1072' '#1060#1054#1073' '#1087#1086' '#1047#1072#1076#1072#1085#1080#1077'..' +
        '.'
      Hint = #1053#1086#1074' '#1055#1072#1082#1077#1090' '#1044#1080#1072#1083#1086#1079#1080' '#1089' '#1050#1083#1080#1077#1085#1090' ('#1055#1044#1050') '#1079#1072' '#1055#1088#1086#1076#1072#1078#1073#1072' '#1085#1072' '#1060#1054#1073' '#1087#1086' '#1047#1072#1076#1072#1085#1080#1077
      ImageIndex = 4
      OnExecute = actNewFinancialSaleRequestGroupExecute
    end
    object actFinancialSaleRequestGroups: TAction
      Category = 'Financial Sales'
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1055#1044#1050' '#1079#1072' '#1055#1088#1086#1076#1072#1078#1073#1072' '#1085#1072' '#1060#1054#1073' '#1087#1086' '#1047#1072#1076#1072#1085#1080#1077'...'
      Hint = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1055#1044#1050' '#1079#1072' '#1055#1088#1086#1076#1072#1078#1073#1072' '#1085#1072' '#1060#1054#1073' '#1087#1086' '#1047#1072#1076#1072#1085#1080#1077
      ImageIndex = 5
      OnExecute = actFinancialSaleRequestGroupsExecute
    end
    object actFinancialSaleOrders: TAction
      Category = 'Financial Sales'
      Caption = 
        #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1073#1086#1089#1086#1073#1077#1085#1080' '#1044#1080#1072#1083#1086#1079#1080' '#1089' '#1050#1083#1080#1077#1085#1090#1080' ('#1054#1044#1050') '#1079#1072' '#1055#1088#1086#1076#1072#1078#1073#1072' '#1085#1072' '#1060#1054#1073 +
        ' '#1087#1086' '#1047#1072#1076#1072#1085#1080#1077'...'
      Hint = 
        #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1073#1086#1089#1086#1073#1077#1085#1080' '#1044#1080#1072#1083#1086#1079#1080' '#1089' '#1050#1083#1080#1077#1085#1090#1080' ('#1054#1044#1050') '#1079#1072' '#1055#1088#1086#1076#1072#1078#1073#1072' '#1085#1072' '#1060#1054#1073 +
        ' '#1087#1086' '#1047#1072#1076#1072#1085#1080#1077'...'
      ImageIndex = 5
      OnExecute = actFinancialSaleOrdersExecute
    end
    object actFinancialSalesOverviewShp: TAction
      Category = 'Financial Sales'
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1088#1076#1077#1088#1080' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1055#1088#1086#1076#1072#1078#1073#1080' ('#1054#1055#1055') '#1079#1072' '#1060#1054#1073'...'
      Hint = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1088#1076#1077#1088#1080' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1055#1088#1086#1076#1072#1078#1073#1080' ('#1054#1055#1055') '#1079#1072' '#1060#1054#1073
      ImageIndex = 5
      OnExecute = actFinancialSalesOverviewShpExecute
    end
    object actFinancialEstPricesCompareGraphDeliveries: TAction
      Category = 'Financial Deliveries'
      Caption = #1042#1048#1052' - '#1043#1088#1072#1092#1080#1095#1077#1085' '#1085#1072' '#1044#1086#1089#1090#1072#1074#1082#1080' '#1085#1072' '#1060#1054#1073'...'
      Hint = #1042#1048#1052' - '#1043#1088#1072#1092#1080#1095#1077#1085' '#1085#1072' '#1044#1086#1089#1090#1072#1074#1082#1080' '#1085#1072' '#1060#1054#1073
      ImageIndex = 7
      OnExecute = actFinancialEstPricesCompareGraphDeliveriesExecute
    end
    object actFinancialParRelProductsDeliveriesByPartner: TAction
      Category = 'Financial Deliveries'
      Caption = 
        #1052#1072#1090#1088#1080#1094#1072' '#1085#1072' '#1048#1079#1090#1086#1095#1085#1080#1094#1080' '#1085#1072' '#1044#1086#1089#1090#1072#1074#1082#1080' '#1085#1072' '#1060#1054#1073' ('#1052#1048#1044'-'#1060') - '#1057#1091#1073#1077#1082#1090#1086#1074' '#1056#1072#1079#1088#1077 +
        #1079'...'
      Hint = #1052#1072#1090#1088#1080#1094#1072' '#1085#1072' '#1048#1079#1090#1086#1095#1085#1080#1094#1080' '#1085#1072' '#1044#1086#1089#1090#1072#1074#1082#1080' ('#1052#1048#1044') '#1085#1072' '#1060#1054#1073' - '#1057#1091#1073#1077#1082#1090#1086#1074' '#1056#1072#1079#1088#1077#1079
      ImageIndex = 5
      OnExecute = actFinancialParRelProductsDeliveriesByPartnerExecute
    end
    object actFinancialParRelProductsDeliveriesByProduct: TAction
      Category = 'Financial Deliveries'
      Caption = 
        #1052#1072#1090#1088#1080#1094#1072' '#1085#1072' '#1048#1079#1090#1086#1095#1085#1080#1094#1080' '#1085#1072' '#1044#1086#1089#1090#1072#1074#1082#1080' '#1085#1072' '#1060#1054#1073' ('#1052#1048#1044'-'#1060') - '#1054#1073#1077#1082#1090#1086#1074' '#1056#1072#1079#1088#1077#1079 +
        '...'
      Hint = #1052#1072#1090#1088#1080#1094#1072' '#1085#1072' '#1048#1079#1090#1086#1095#1085#1080#1094#1080' '#1085#1072' '#1044#1086#1089#1090#1072#1074#1082#1080' ('#1052#1048#1044') '#1085#1072' '#1060#1054#1073' - '#1054#1073#1077#1082#1090#1086#1074' '#1056#1072#1079#1088#1077#1079
      ImageIndex = 5
      OnExecute = actFinancialParRelProductsDeliveriesByProductExecute
    end
    object actNewFinancialDeficitCoverDecision: TAction
      Tag = 1
      Category = 'Financial Deliveries'
      Caption = #1053#1086#1074' '#1055#1072#1082#1077#1090' '#1044#1080#1072#1083#1086#1079#1080' '#1089' '#1044#1086#1089#1090#1072#1074#1095#1080#1094#1080' ('#1055#1044#1044') '#1079#1072' '#1060#1054#1073'...'
      Hint = #1053#1086#1074' '#1055#1072#1082#1077#1090' '#1044#1080#1072#1083#1086#1079#1080' '#1089' '#1044#1086#1089#1090#1072#1074#1095#1080#1094#1080' ('#1055#1044#1044') '#1079#1072' '#1060#1054#1073
      ImageIndex = 4
      OnExecute = actNewFinancialDeficitCoverDecisionExecute
    end
    object actFinancialDeficitCoverDecisions: TAction
      Category = 'Financial Deliveries'
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1055#1044#1044' '#1079#1072' '#1060#1054#1073'...'
      Hint = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1055#1044#1044' '#1079#1072' '#1060#1054#1073
      ImageIndex = 5
      OnExecute = actFinancialDeficitCoverDecisionsExecute
    end
    object actFinancialDeliveryDialogs: TAction
      Category = 'Financial Deliveries'
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1073#1086#1089#1086#1073#1077#1085#1080' '#1044#1080#1072#1083#1086#1079#1080' '#1089' '#1044#1086#1089#1090#1072#1074#1095#1080#1094#1080' ('#1054#1044#1044') '#1079#1072' '#1060#1054#1073'...'
      Hint = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1073#1086#1089#1086#1073#1077#1085#1080' '#1044#1080#1072#1083#1086#1079#1080' '#1089' '#1044#1086#1089#1090#1072#1074#1095#1080#1094#1080' ('#1054#1044#1044') '#1079#1072' '#1060#1054#1073
      ImageIndex = 5
      OnExecute = actFinancialDeliveryDialogsExecute
    end
    object actFinancialDeliveries: TAction
      Category = 'Financial Deliveries'
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1088#1076#1077#1088#1080' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1044#1086#1089#1090#1072#1074#1082#1080' ('#1054#1055#1044') '#1079#1072' '#1060#1054#1073'...'
      Hint = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1088#1076#1077#1088#1080' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1044#1086#1089#1090#1072#1074#1082#1080' ('#1054#1055#1044') '#1079#1072' '#1060#1054#1073
      ImageIndex = 5
      OnExecute = actFinancialDeliveriesExecute
    end
    object actFinancialClasses: TAction
      Category = 'Finance'
      Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1050#1083#1072#1089#1080#1092#1080#1082#1072#1090#1086#1088'...'
      Hint = #1060#1080#1085#1072#1085#1089#1086#1074' '#1050#1083#1072#1089#1080#1092#1080#1082#1072#1090#1086#1088
      ImageIndex = 3
      OnExecute = actFinancialClassesExecute
    end
    object actFinancialMeasures: TAction
      Category = 'Finance'
      Caption = #1052#1077#1088#1085#1080' '#1077#1076#1080#1085#1080#1094#1080' '#1085#1072' '#1060#1054#1073'...'
      Hint = #1052#1077#1088#1085#1080' '#1077#1076#1080#1085#1080#1094#1080' '#1085#1072' '#1060#1054#1073
      OnExecute = actFinancialMeasuresExecute
    end
    object actFinancialNoms: TAction
      Category = 'Finance'
      Caption = #1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1085#1080' '#1043#1088#1091#1087#1080' '#1051#1086#1075#1080#1095#1077#1089#1082#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1060#1054#1073'...'
      Hint = #1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1085#1080' '#1043#1088#1091#1087#1080' '#1051#1086#1075#1080#1095#1077#1089#1082#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1060#1054#1073
      OnExecute = actFinancialNomsExecute
    end
    object actSaleDecisionTypes: TAction
      Category = 'Sales'
      Caption = #1042#1080#1076#1086#1074#1077' '#1056#1077#1096#1077#1085#1080#1103' '#1087#1086' '#1054#1044#1050'...'
      Hint = #1042#1080#1076#1086#1074#1077' '#1056#1077#1096#1077#1085#1080#1103' '#1087#1086' '#1054#1044#1050
      OnExecute = actSaleDecisionTypesExecute
    end
    object actDeliveryDecisionTypes: TAction
      Category = 'Deliveries'
      Caption = #1042#1080#1076#1086#1074#1077' '#1056#1077#1096#1077#1085#1080#1103' '#1087#1086' '#1054#1044#1044'...'
      Hint = #1042#1080#1076#1086#1074#1077' '#1056#1077#1096#1077#1085#1080#1103' '#1087#1086' '#1054#1044#1044
      OnExecute = actDeliveryDecisionTypesExecute
    end
    object actCompanyTypes: TAction
      Category = 'Companies'
      Caption = #1058#1080#1087#1086#1074#1077' '#1050#1086#1084#1087#1072#1085#1080#1080'...'
      OnExecute = actCompanyTypesExecute
    end
    object actBudgetProducts: TAction
      Category = 'Budget'
      Caption = #1050#1083#1072#1089#1080#1092#1080#1082#1072#1090#1086#1088' '#1085#1072' '#1056#1072#1079#1093#1086#1076#1080' '#1080' '#1048#1085#1074#1077#1089#1090#1080#1094#1080#1080' '#1074' '#1057#1088#1077#1076#1072'...'
      Hint = #1050#1083#1072#1089#1080#1092#1080#1082#1072#1090#1086#1088' '#1085#1072' '#1056#1072#1079#1093#1086#1076#1080' '#1080' '#1048#1085#1074#1077#1089#1090#1080#1094#1080#1080' '#1074' '#1057#1088#1077#1076#1072
      ImageIndex = 2
      OnExecute = actBudgetProductsExecute
    end
    object actBudgetNoms: TAction
      Category = 'Budget'
      Caption = #1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1085#1080' '#1043#1088#1091#1087#1080' '#1051#1086#1075#1080#1095#1077#1089#1082#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1056#1048#1057#1057'...'
      Hint = #1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1085#1080' '#1043#1088#1091#1087#1080' '#1051#1086#1075#1080#1095#1077#1089#1082#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1056#1048#1057#1057
      OnExecute = actBudgetNomsExecute
    end
    object actExceptEventNotActivated: TAction
      Category = 'ExceptEventIndication'
      Caption = 'actExceptEventNotActivated'
      ImageIndex = 25
      OnExecute = actExceptEventNotActivatedExecute
      OnUpdate = actExceptEventNotActivatedUpdate
    end
    object actExceptEventActivated: TAction
      Category = 'ExceptEventIndication'
      Caption = 'actExceptEventActivated'
      ImageIndex = 25
      OnExecute = actExceptEventActivatedExecute
      OnUpdate = actExceptEventActivatedUpdate
    end
    object actExceptEventUserNotActivated: TAction
      Category = 'ExceptEventIndication'
      Caption = 'actExceptEventUserNotActivated'
      ImageIndex = 25
      OnExecute = actExceptEventUserNotActivatedExecute
      OnUpdate = actExceptEventUserNotActivatedUpdate
    end
    object actExceptEventUserActivated: TAction
      Category = 'ExceptEventIndication'
      Caption = 'actExceptEventUserActivated'
      ImageIndex = 25
      OnExecute = actExceptEventUserActivatedExecute
      OnUpdate = actExceptEventUserActivatedUpdate
    end
    object actExceptEventTaskRealUserNotActivated: TAction
      Category = 'ExceptEventTaskIndication'
      Caption = 'actExceptEventTaskRealUserNotActivated'
      ImageIndex = 29
      OnExecute = actExceptEventTaskRealUserNotActivatedExecute
      OnUpdate = actExceptEventTaskRealUserNotActivatedUpdate
    end
    object actExceptEventTaskRealUserActivated: TAction
      Category = 'ExceptEventTaskIndication'
      Caption = 'actExceptEventTaskRealUserActivated'
      ImageIndex = 29
      OnExecute = actExceptEventTaskRealUserActivatedExecute
      OnUpdate = actExceptEventTaskRealUserActivatedUpdate
    end
    object actExceptEventTaskRealDeptNotActivated: TAction
      Category = 'ExceptEventTaskIndication'
      Caption = 'actExceptEventTaskRealDeptNotActivated'
      ImageIndex = 29
      OnExecute = actExceptEventTaskRealDeptNotActivatedExecute
      OnUpdate = actExceptEventTaskRealDeptNotActivatedUpdate
    end
    object actExceptEventTaskRealDeptActivated: TAction
      Category = 'ExceptEventTaskIndication'
      Caption = 'actExceptEventTaskRealDeptActivated'
      ImageIndex = 29
      OnExecute = actExceptEventTaskRealDeptActivatedExecute
      OnUpdate = actExceptEventTaskRealDeptActivatedUpdate
    end
    object actExceptEventTaskCtrlNotActivated: TAction
      Category = 'ExceptEventTaskIndication'
      Caption = 'actExceptEventTaskCtrlNotActivated'
      ImageIndex = 25
      OnExecute = actExceptEventTaskCtrlNotActivatedExecute
      OnUpdate = actExceptEventTaskCtrlNotActivatedUpdate
    end
    object actExceptEventTaskCtrlActivated: TAction
      Category = 'ExceptEventTaskIndication'
      Caption = 'actExceptEventTaskCtrlActivated'
      ImageIndex = 25
      OnExecute = actExceptEventTaskCtrlActivatedExecute
      OnUpdate = actExceptEventTaskCtrlActivatedUpdate
    end
    object actExceptEventTaskCtrlUserNotActivated: TAction
      Category = 'ExceptEventTaskIndication'
      Caption = 'actExceptEventTaskCtrlUserNotActivated'
      ImageIndex = 25
      OnExecute = actExceptEventTaskCtrlUserNotActivatedExecute
      OnUpdate = actExceptEventTaskCtrlUserNotActivatedUpdate
    end
    object actExceptEventTaskCtrlUserActivated: TAction
      Category = 'ExceptEventTaskIndication'
      Caption = 'actExceptEventTaskCtrlUserActivated'
      ImageIndex = 25
      OnExecute = actExceptEventTaskCtrlUserActivatedExecute
      OnUpdate = actExceptEventTaskCtrlUserActivatedUpdate
    end
    object actExceptEventTaskCtrlDeptNotActivated: TAction
      Category = 'ExceptEventTaskIndication'
      Caption = 'actExceptEventTaskCtrlDeptNotActivated'
      ImageIndex = 25
      OnExecute = actExceptEventTaskCtrlDeptNotActivatedExecute
      OnUpdate = actExceptEventTaskCtrlDeptNotActivatedUpdate
    end
    object actExceptEventTaskCtrlDeptActivated: TAction
      Category = 'ExceptEventTaskIndication'
      Caption = 'actExceptEventTaskCtrlDeptActivated'
      ImageIndex = 25
      OnExecute = actExceptEventTaskCtrlDeptActivatedExecute
      OnUpdate = actExceptEventTaskCtrlDeptActivatedUpdate
    end
    object actRefreshExceptEventCounts: TAction
      Category = 'ExceptEventIndication'
      Caption = #1054#1073#1085#1086#1074#1103#1074#1072#1085#1077
      Hint = #1054#1073#1085#1086#1074#1103#1074#1072#1085#1077
      ImageIndex = 16
      OnExecute = actRefreshExceptEventCountsExecute
      OnUpdate = actRefreshExceptEventCountsUpdate
    end
    object actParRelProductsBudgetDeliveriesByPartner: TAction
      Category = 'ParRelProducts'
      Caption = 
        #1052#1072#1090#1088#1080#1094#1072' '#1085#1072' '#1048#1079#1090#1086#1095#1085#1080#1094#1080' '#1085#1072' '#1044#1086#1089#1090#1072#1074#1082#1080' '#1085#1072' '#1055#1088#1086#1094#1077#1089#1080' ('#1052#1048#1044'-'#1055') - '#1057#1091#1073#1077#1082#1090#1086#1074' '#1056 +
        #1072#1079#1088#1077#1079'...'
      Hint = 
        #1052#1072#1090#1088#1080#1094#1072' '#1085#1072' '#1048#1079#1090#1086#1095#1085#1080#1094#1080' '#1085#1072' '#1044#1086#1089#1090#1072#1074#1082#1080' '#1085#1072' '#1055#1088#1086#1094#1077#1089#1080' ('#1052#1048#1044'-'#1055') - '#1057#1091#1073#1077#1082#1090#1086#1074' '#1056 +
        #1072#1079#1088#1077#1079
      ImageIndex = 5
      Visible = False
      OnExecute = actParRelProductsBudgetDeliveriesByPartnerExecute
    end
    object actParRelProductsBudgetDeliveriesByProduct: TAction
      Category = 'ParRelProducts'
      Caption = 
        #1052#1072#1090#1088#1080#1094#1072' '#1085#1072' '#1048#1079#1090#1086#1095#1085#1080#1094#1080' '#1085#1072' '#1044#1086#1089#1090#1072#1074#1082#1080' '#1085#1072' '#1055#1088#1086#1094#1077#1089#1080' ('#1052#1048#1044'-'#1055') - '#1054#1073#1077#1082#1090#1086#1074' '#1056#1072 +
        #1079#1088#1077#1079'...'
      Hint = 
        #1052#1072#1090#1088#1080#1094#1072' '#1085#1072' '#1048#1079#1090#1086#1095#1085#1080#1094#1080' '#1085#1072' '#1044#1086#1089#1090#1072#1074#1082#1080' '#1085#1072' '#1055#1088#1086#1094#1077#1089#1080' ('#1052#1048#1044'-'#1055') - '#1054#1073#1077#1082#1090#1086#1074' '#1056#1072 +
        #1079#1088#1077#1079
      ImageIndex = 5
      Visible = False
      OnExecute = actParRelProductsBudgetDeliveriesByProductExecute
    end
    object actFinModelLineReasons: TAction
      Category = 'Finance'
      Caption = #1054#1089#1085#1086#1074#1072#1085#1080#1103' '#1079#1072' '#1057#1098#1087#1098#1090#1089#1090#1074#1072#1097#1080' '#1060#1080#1085#1072#1085#1089#1086#1074#1080' '#1044#1074#1080#1078#1077#1085#1080#1103'...'
      Hint = #1054#1089#1085#1086#1074#1072#1085#1080#1103' '#1079#1072' '#1057#1098#1087#1098#1090#1089#1090#1074#1072#1097#1080' '#1060#1080#1085#1072#1085#1089#1086#1074#1080' '#1044#1074#1080#1078#1077#1085#1080#1103
      OnExecute = actFinModelLineReasonsExecute
    end
    object actSysRoles: TAction
      Category = 'Program'
      Caption = #1053#1072#1073#1086#1088#1080' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080'...'
      Hint = #1053#1072#1073#1086#1088#1080' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080
      ImageIndex = 5
      OnExecute = actSysRolesExecute
    end
    object actTestQueries: TAction
      Category = 'Program'
      Caption = 'Test Queries...'
      Hint = 'Test Queries'
      OnExecute = actTestQueriesExecute
    end
    object actExceptEventsSales: TAction
      Category = 'Sales'
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103' ('#1053#1054')...'
      Hint = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103' ('#1053#1054')'
      ImageIndex = 24
      OnExecute = actExceptEventsSalesExecute
    end
    object actExceptEventsDeliveries: TAction
      Category = 'Deliveries'
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103' ('#1053#1054')...'
      Hint = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103' ('#1053#1054')'
      ImageIndex = 24
      OnExecute = actExceptEventsDeliveriesExecute
    end
    object actExceptEventsFinancial: TAction
      Category = 'Finance'
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103' ('#1053#1054')...'
      Hint = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103' ('#1053#1054')'
      ImageIndex = 24
      OnExecute = actExceptEventsFinancialExecute
    end
    object actExceptEventsProduction: TAction
      Category = 'Production'
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103' ('#1053#1054')...'
      Hint = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103' ('#1053#1054')'
      ImageIndex = 24
      OnExecute = actExceptEventsProductionExecute
      OnUpdate = actExceptEventsProductionUpdate
    end
    object actActiveConnections: TAction
      Category = 'Program'
      Caption = #1040#1082#1090#1080#1074#1085#1080' '#1042#1088#1098#1079#1082#1080'...'
      OnExecute = actActiveConnectionsExecute
    end
    object actDocConfig: TAction
      Category = 'DocNomenclatures'
      Caption = #1052#1048#1048#1054' '#1050#1086#1085#1092#1080#1075#1091#1088#1080#1088#1072#1085#1077'...'
      Hint = #1052#1048#1048#1054' '#1050#1086#1085#1092#1080#1075#1091#1088#1080#1088#1072#1085#1077
      OnExecute = actDocConfigExecute
    end
    object actBOIWasteOrdersInvest: TAction
      Category = 'Budget'
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1088#1076#1077#1088#1080' - '#1055#1088#1077#1086#1094#1077#1085#1103#1074#1072#1097#1080' '#1087#1086' '#1051#1080#1084#1080#1090#1080' '#1086#1090' '#1048#1041#1057'...'
      Hint = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1088#1076#1077#1088#1080' - '#1055#1088#1077#1086#1094#1077#1085#1103#1074#1072#1097#1080' '#1087#1086' '#1051#1080#1084#1080#1090#1080' '#1086#1090' '#1048#1041#1057
      ImageIndex = 5
      OnExecute = actBOIWasteOrdersInvestExecute
    end
    object actProcessActions: TAction
      Category = 'Processes'
      Caption = #1055#1086#1079#1085#1072#1074#1072#1090#1077#1083#1085#1080' '#1060#1091#1085#1082#1094#1080#1080' ('#1055#1060')...'
      Hint = #1055#1086#1079#1085#1072#1074#1072#1090#1077#1083#1085#1080' '#1060#1091#1085#1082#1094#1080#1080' ('#1055#1060')'
      OnExecute = actProcessActionsExecute
    end
    object actProcessKnowlsTree: TAction
      Category = 'Processes'
      Caption = #1055#1086#1079#1085#1072#1085#1080#1103' '#1079#1072' '#1059#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1074' '#1044#1091#1093#1072' '#1085#1072' '#1057#1098#1079#1080#1076#1072#1085#1080#1077' ('#1055#1059#1044#1057')...'
      Hint = #1055#1086#1079#1085#1072#1085#1080#1103' '#1079#1072' '#1059#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1074' '#1044#1091#1093#1072' '#1085#1072' '#1057#1098#1079#1080#1076#1072#1085#1080#1077' ('#1055#1059#1044#1057')'
      ImageIndex = 2
      OnExecute = actProcessKnowlsTreeExecute
    end
    object actProcessFunctionsTree: TAction
      Category = 'Processes'
      Caption = #1060#1091#1085#1082#1094#1080#1080' '#1079#1072' '#1059#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1074' '#1044#1091#1093#1072' '#1085#1072' '#1057#1098#1079#1080#1076#1072#1085#1080#1077' ('#1060#1059#1044#1057')...'
      Hint = #1060#1091#1085#1082#1094#1080#1080' '#1079#1072' '#1059#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1074' '#1044#1091#1093#1072' '#1085#1072' '#1057#1098#1079#1080#1076#1072#1085#1080#1077' ('#1060#1059#1044#1057')'
      ImageIndex = 2
      OnExecute = actProcessFunctionsTreeExecute
    end
    object actProcessBaseOperations: TAction
      Category = 'Processes'
      Caption = #1055#1086#1079#1085#1072#1074#1072#1090#1077#1083#1085#1080' '#1054#1087#1077#1088#1072#1090#1086#1088#1080' ('#1055#1054#1087')...'
      Hint = #1055#1086#1079#1085#1072#1074#1072#1090#1077#1083#1085#1080' '#1054#1087#1077#1088#1072#1090#1086#1088#1080' ('#1055#1054#1087')'
      ImageIndex = 2
      OnExecute = actProcessBaseOperationsExecute
    end
    object actProcessConcreteOperations: TAction
      Category = 'Processes'
      Caption = #1055#1086#1079#1085#1072#1074#1072#1090#1077#1083#1085#1080' '#1054#1087#1077#1088#1072#1085#1090#1080' ('#1055#1054#1085#1090')...'
      Hint = #1055#1086#1079#1085#1072#1074#1072#1090#1077#1083#1085#1080' '#1054#1087#1077#1088#1072#1085#1090#1080' ('#1055#1054#1085#1090')'
      ImageIndex = 2
      OnExecute = actProcessConcreteOperationsExecute
    end
    object actBOIMarkingOrdersInvest: TAction
      Category = 'Budget'
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1088#1076#1077#1088#1080' - '#1052#1072#1088#1082#1080#1088#1072#1097#1080' '#1087#1086' '#1051#1080#1084#1080#1090#1080' '#1086#1090' '#1048#1041#1057'...'
      Hint = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1088#1076#1077#1088#1080' - '#1052#1072#1088#1082#1080#1088#1072#1097#1080' '#1087#1086' '#1051#1080#1084#1080#1090#1080' '#1086#1090' '#1048#1041#1057
      ImageIndex = 5
      OnExecute = actBOIMarkingOrdersInvestExecute
    end
    object actVatPeriods: TAction
      Category = 'Finance'
      Caption = #1044#1044#1057'...'
      Hint = #1044#1072#1085#1098#1082' '#1044#1086#1073#1072#1074#1077#1085#1072' '#1057#1090#1086#1081#1085#1086#1089#1090
      OnExecute = actVatPeriodsExecute
    end
    object actProductSets: TAction
      Category = 'Nomenclatures'
      Caption = #1054#1073#1077#1082#1090#1086#1074#1080' '#1085#1072#1073#1086#1088#1080'...'
      OnExecute = actProductSetsExecute
    end
    object actClientPriceList: TAction
      Category = 'Sales'
      Caption = #1062#1077#1085#1086#1074#1072' '#1083#1080#1089#1090#1072' '#1079#1072' '#1055#1088#1086#1076#1072#1078#1073#1080'...'
      Hint = #1062#1077#1085#1086#1074#1072' '#1083#1080#1089#1090#1072' '#1079#1072' '#1055#1088#1086#1076#1072#1078#1073#1080
      ImageIndex = 5
      OnExecute = actClientPriceListExecute
    end
    object actVendorPriceList: TAction
      Category = 'Deliveries'
      Caption = #1062#1077#1085#1086#1074#1072' '#1083#1080#1089#1090#1072' '#1079#1072' '#1044#1086#1089#1090#1072#1074#1082#1080'...'
      Hint = #1062#1077#1085#1086#1074#1072' '#1083#1080#1089#1090#1072' '#1079#1072' '#1044#1086#1089#1090#1072#1074#1082#1080
      ImageIndex = 5
      OnExecute = actVendorPriceListExecute
    end
    object actOrganisationPrcData: TAction
      Category = 'Processes'
      Caption = #1042#1086#1083#1077#1074#1086' '#1080' '#1048#1076#1077#1081#1085#1086' '#1055#1088#1086#1089#1090#1088#1072#1085#1089#1090#1074#1086' '#1085#1072' '#1057#1091#1073#1077#1082#1090#1085#1086#1089#1090#1090#1072' ('#1042#1048#1055#1057')...'
      Hint = #1042#1086#1083#1077#1074#1086' '#1080' '#1048#1076#1077#1081#1085#1086' '#1055#1088#1086#1089#1090#1088#1072#1085#1089#1090#1074#1086' '#1085#1072' '#1057#1091#1073#1077#1082#1090#1085#1086#1089#1090#1090#1072' ('#1042#1048#1055#1057')'
      ImageIndex = 2
      OnExecute = actOrganisationPrcDataExecute
    end
    object actOrgPrcDataDistribution: TAction
      Category = 'Processes'
      Caption = #1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080' '#1074' '#1057#1080#1089#1090#1077#1084#1072#1090#1072' '#1079#1072' '#1054#1089#1098#1097#1077#1089#1090#1074#1103#1074#1072#1085#1077' '#1085#1072' '#1057#1091#1073#1077#1082#1090#1085#1086#1089#1090#1090#1072'...'
      Hint = #1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080' '#1074' '#1057#1080#1089#1090#1077#1084#1072#1090#1072' '#1079#1072' '#1054#1089#1098#1097#1077#1089#1090#1074#1103#1074#1072#1085#1077' '#1085#1072' '#1057#1091#1073#1077#1082#1090#1085#1086#1089#1090#1090#1072
      ImageIndex = 5
      OnExecute = actOrgPrcDataDistributionExecute
    end
    object actDeptsPrcData: TAction
      Category = 'Processes'
      Caption = #1056#1072#1079#1087#1088#1077#1076#1077#1083#1077#1085#1080#1077' '#1085#1072' '#1054#1088#1075#1072#1085#1080#1079#1080#1088#1072#1097#1080#1103' '#1055#1086#1090#1077#1085#1094#1080#1072#1083' '#1074' '#1058#1057'...'
      Hint = #1056#1072#1079#1087#1088#1077#1076#1077#1083#1077#1085#1080#1077' '#1085#1072' '#1054#1088#1075#1072#1085#1080#1079#1080#1088#1072#1097#1080#1103' '#1055#1086#1090#1077#1085#1094#1080#1072#1083' '#1074' '#1058#1057
      ImageIndex = 5
      OnExecute = actDeptsPrcDataExecute
    end
    object actOrgWorkActivities: TAction
      Category = 'HumanResource'
      Caption = #1044#1077#1081#1085#1086#1089#1090#1080' '#1087#1086' '#1056#1077#1078#1080#1084#1080'...'
      Hint = #1044#1077#1081#1085#1086#1089#1090#1080' '#1087#1086' '#1056#1077#1078#1080#1084#1080
      OnExecute = actOrgWorkActivitiesExecute
    end
    object actContactTypes: TAction
      Category = 'Nomenclatures'
      Caption = #1042#1080#1076#1086#1074#1077' '#1089#1088#1077#1076#1089#1090#1074#1072' '#1079#1072' '#1082#1086#1084#1091#1085#1080#1082#1072#1094#1080#1103'...'
      Hint = #1042#1080#1076#1086#1074#1077' '#1089#1088#1077#1076#1089#1090#1074#1072' '#1079#1072' '#1082#1086#1084#1091#1085#1080#1082#1072#1094#1080#1103
      OnExecute = actContactTypesExecute
    end
    object actVatReasons: TAction
      Category = 'Finance'
      Caption = #1054#1089#1085#1086#1074#1072#1085#1080#1103' '#1079#1072' '#1087#1088#1080#1083#1072#1075#1072#1085#1077' '#1085#1072' '#1089#1090#1072#1074#1082#1072' '#1080#1083#1080' '#1085#1077#1085#1072#1095#1080#1089#1083#1103#1074#1072#1085#1077' '#1085#1072' '#1076#1072#1085#1098#1082'...'
      Hint = #1054#1089#1085#1086#1074#1072#1085#1080#1103' '#1079#1072' '#1087#1088#1080#1083#1072#1075#1072#1085#1077' '#1085#1072' '#1089#1090#1072#1074#1082#1072' '#1080#1083#1080' '#1085#1077#1085#1072#1095#1080#1089#1083#1103#1074#1072#1085#1077' '#1085#1072' '#1076#1072#1085#1098#1082
      OnExecute = actVatReasonsExecute
    end
    object actStartNewAppInstance: TAction
      Category = 'Program'
      Caption = #1053#1086#1074#1072' %AppName%'
      ShortCut = 16462
      OnExecute = actStartNewAppInstanceExecute
    end
    object actInvoiceNoGenerators: TAction
      Category = 'Finance'
      Caption = #1043#1077#1085#1077#1088#1072#1090#1086#1088#1080' '#1085#1072' '#1085#1086#1084#1077#1088#1072' '#1085#1072' '#1092#1072#1082#1090#1091#1088#1080'...'
      Hint = #1043#1077#1085#1077#1088#1072#1090#1086#1088#1080' '#1085#1072' '#1085#1086#1084#1077#1088#1072' '#1085#1072' '#1092#1072#1082#1090#1091#1088#1080
      OnExecute = actInvoiceNoGeneratorsExecute
    end
    object actDocProfiles: TAction
      Category = 'DocNomenclatures'
      Caption = #1052#1048#1048#1054' '#1055#1088#1086#1092#1080#1083#1080'...'
      Hint = #1052#1048#1048#1054' '#1055#1088#1086#1092#1080#1083#1080
      OnExecute = actDocProfilesExecute
    end
    object actUserDefaultPrinters: TAction
      Category = 'Program'
      Caption = #1050#1086#1085#1092#1080#1075#1091#1088#1080#1088#1072#1085#1077' '#1085#1072' '#1055#1077#1095#1072#1090' '#1079#1072' '#1050#1086#1084#1087#1102#1090#1098#1088#1077#1085' '#1055#1086#1090#1088#1077#1073#1080#1090#1077#1083'...'
      Hint = #1050#1086#1085#1092#1080#1075#1091#1088#1080#1088#1072#1085#1077' '#1085#1072' '#1055#1077#1095#1072#1090' '#1079#1072' '#1050#1086#1084#1087#1102#1090#1098#1088#1077#1085' '#1055#1086#1090#1088#1077#1073#1080#1090#1077#1083
      OnExecute = actUserDefaultPrintersExecute
    end
    object actComputerDefaultPrinters: TAction
      Category = 'Program'
      Caption = #1050#1086#1085#1092#1080#1075#1091#1088#1080#1088#1072#1085#1077' '#1085#1072' '#1055#1077#1095#1072#1090' '#1079#1072' '#1050#1086#1084#1087#1102#1090#1098#1088'...'
      Hint = #1050#1086#1085#1092#1080#1075#1091#1088#1080#1088#1072#1085#1077' '#1085#1072' '#1055#1077#1095#1072#1090' '#1079#1072' '#1050#1086#1084#1087#1102#1090#1098#1088
      OnExecute = actComputerDefaultPrintersExecute
    end
    object actDocItemStorageTypes: TAction
      Category = 'DocNomenclatures'
      Caption = #1042#1080#1076#1086#1074#1077' '#1057#1098#1093#1088#1072#1085#1077#1085#1080#1103' '#1085#1072' '#1048#1048#1054'...'
      Hint = #1042#1080#1076#1086#1074#1077' '#1057#1098#1093#1088#1072#1085#1077#1085#1080#1103' '#1085#1072' '#1048#1048#1054
      OnExecute = actDocItemStorageTypesExecute
    end
    object actAccessRules: TAction
      Category = 'Program'
      Caption = #1055#1088#1072#1074#1080#1083#1072' '#1079#1072' '#1089#1080#1089#1090#1077#1084#1077#1085' '#1076#1086#1089#1090#1098#1087'...'
      Hint = #1055#1088#1072#1074#1080#1083#1072' '#1079#1072' '#1089#1080#1089#1090#1077#1084#1077#1085' '#1076#1086#1089#1090#1098#1087
      OnExecute = actAccessRulesExecute
    end
    object actInviteUser: TAction
      Category = 'Program'
      Caption = #1055#1086#1082#1072#1085#1072' '#1079#1072' '#1088#1077#1075#1080#1089#1090#1088#1080#1088#1072#1085#1077' '#1085#1072' '#1085#1086#1074' '#1087#1086#1090#1088#1077#1073#1080#1090#1077#1083'...'
      Hint = #1048#1079#1087#1088#1072#1097#1072#1085#1077' '#1085#1072' '#1087#1086#1082#1072#1085#1072' '#1079#1072' '#1088#1077#1075#1080#1089#1090#1088#1080#1088#1072#1085#1077' '#1085#1072' '#1085#1086#1074' '#1087#1086#1090#1088#1077#1073#1080#1090#1077#1083
      OnExecute = actInviteUserExecute
    end
  end
  object ApplicationEvents: TApplicationEvents
    OnException = ApplicationEventsException
    OnHint = ApplicationEventsHint
    OnMessage = ApplicationEventsMessage
    Top = 272
  end
  object ilSmallImages: TImageList
    Top = 240
    Bitmap = {
      494C010126002900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000040000000A0000000010020000000000000A0
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000037638C0037638C0037638C0037638C0037638C0037638C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DCDCDC23F4F4F40B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003763
      8C0037638C0046B6FF003CC7FF003DCCFF003CC5FF0043BEFF0043BEFF002676
      9B0037638C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D1D1D1FF88888877000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000037638C0051B1
      FF002ECAFF0062F7FF0078FFFF0057E7F80045D0F40038D4FF0027D0FF0027CD
      FF006DBFED0037638C000000000000000000000000000000000000000000F4F4
      F40BB8B8B8477070708F7070708F88888877DCDCDC2300000000000000000000
      000000000000C0C1C1FF4C4C4CB3DCDCDC230000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000037638C0057B1FF0034CE
      FF009FFFFF0080B5C90010233200091420000E1E2F00132D41002E8FBE002BD2
      FF002AD3FF006DBFED0037638C0000000000000000000000000000000000E2E2
      E2FFBDBEBEFFBDBEBEFFBDBEBEFFADADADFF4C4C4CB3C4C4C43B000000000000
      000000000000B0B0B0FFD1D2D2FFD0D0D02F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000037638C0038BEFF0093FF
      FF007798A800091B2C00296697003BA9F30031B7FF0022A1E100143E5B002275
      A20037D6FF003BD7FF0026769B0000000000000000000000000000000000C7C7
      C8FFBCBDBDFFE0E2E2FFE0E0E0FFD7D8D8FFBFBFBFFF4C4C4CB3C4C4C43B0000
      0000DCDCDC23BABBBBFFCDCECEFFF4F4F40B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000037638C0056B0FD0053E6FF0097E3
      E800112C4100379EEA0033C7FF0035BAE500297DA1002CC4FD0024D1FF001643
      60002C99CF004BF5FF006DBFED004192D200000000000000000000000000BCBD
      BDFF7070708F000000000000000000000000D1D2D2FFBFBFBFFF4C4C4CB37070
      708FB2B2B2FFD6D7D7FFB8B8B847000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000037638C0041B5FF0075FFFF005285
      960025689D003BBAFF0038BADE0009141F0016384E001A3D56002EBEF0003CC2
      F0001D4B6C0046E4FF0050FFFF004192D200000000000000000000000000ABAC
      ACFF7070708F000000000000000000000000F8F9F9FFCDCECEFFD6D7D7FFD1D1
      D1FFD8D9D9FFCCCDCDFFF4F4F40B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003F5E91003BBAFF007EFFFF003359
      6B002A81C10037CDFF0009141F004098B80046FFFF00258FC1001E5A7F003FE4
      FF00275E7A0037A6D00056FFFF004192D200000000000000000000000000ABAD
      ADFF7070708F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003280B70037BAFF0072FFFF003665
      7B001D75AB002CD5FF0009141F003C96AE0057FFFF0042DEF8001B4E720036DB
      FF0031879B0026769B0057FFFF004192D200000000000000000000000000ABAD
      ADFF4C4C4CB37070708F7070708F88888877F4F4F40B00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003280B70037BAFF0057F4FF004DA2
      B700143955002DD3FF0045EEFF003FAFD2005EFFFF004BDEE800153D5E0038E1
      FF00348A9A002273980056FFFF004192D2000000000000000000F4F4F40BA085
      85FFEEC7C7FFF3E0E0FFECE2E2FFCDAAAAFF8888887700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004192D2004192D20037D3FF0064FF
      FF000F253400112C3E0044E3FF004EFFFF0059F2FD000F2632001C527B0046F7
      FF002C6E83002D9AC1005AFFFF004192D20000000000F4F4F40BAA8080FFEDB0
      B0FFF1C1C1FFEAC0C0FFF6D7D7FFDCC2C2FF7070708F00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004192D20037BAFF004BE0
      FF0040BBEA0009121B0000000400040F16000004090014273F0032C1FF0057FD
      FF001940580045EBFE004192D2000000000000000000B6B6B6FFD1A0A0FFDCA2
      A2FFD59A9AFFB78D8DFF8BC0C1FF8C7878FF7070708F00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004192D20037BAFF002DD2
      FF0046DDFF0032CAFF0018588000143B5800296A9B0031BBFF0049FAFF002961
      7400267D960060FFFF004192D20000000000000000008B8B8BFFD08282FFABC1
      C1FF7DBCC0FF6DCFE4FF53BCE5FF50A5C9FFB8B8B84700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004192D20037BA
      FF0035D0FF0035D0FF003BF4FF0038F1FF0038F1FF0044EAFC00265A71001C5A
      730056FFFF004192D200000000000000000000000000BBBBBBFF9B6969FF7185
      95FF46B0DDFF329CCFFF6EC9ECFF63BAE2FFDCDCDC2300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004192
      D200235069004192D2004192D2004192D2001C4F6300163E55004192D2004AFF
      FF004192D2000000000000000000000000000000000000000000A1A1A1FF5553
      53FF6BAFC5FF90A9ADFFDCDCDC23000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001C4F63001C4F63001C4F63004192D2004192D2004192D2004192
      D200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007E3525007E3525007E35250000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006565
      6500656565006565650000000000000000000000000000000000000000009292
      9200929292009292920000000000000000000000000000000000000000000000
      0000000000000000000034495700344957003449570034495700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000A9E80000A9E80000A9E80000A9E8000099D2000077AE000077AE000077
      AE00000000000000000000000000000000000000000000000000000000000000
      0000000000007E352500FD8679007E352500FCA997007E3525007E3525000000
      000000000000000000000000000000000000000000000000000065656500A1A1
      A100979797008585850065656500000000000000000000000000000000009292
      9200F2F1F2008D868E000000000000000000000000002A4251002A4251002940
      4E00283F4E002A41500076797A008A878300898682008282800034495700273E
      4D0029404E002B4453002A4251000000000000000000000000000000000000A9
      E8000099D20005CDFF0005CDFF0000C3F40001D2FF0005DFFF0005DFFF000077
      AE000077AE000000000000000000000000000000000000000000000000000000
      00007E352500FD867900FD8679007E352500FEB68E002F2F2F002F2F2F007E35
      25007E352500000000000000000000000000000000000000000065656500A1A1
      A10000000000737373006B656B00000000000000000000000000929292009292
      9200F1F0F10088888800929292000000000000000000A2ACB400A2ACB4009EA8
      B0009DA7AF00A1A8AE009CADC3007A9FD300789FD20097AECB00A4ABB0009DA7
      AF009DA7AF00A7B1B900A2ACB4000000000000000000000000000000000000A9
      E80029CAFF0061DFFF0041DDFF0011DBFF0005DFFF0005E5FF0005EAFF0005F6
      FF000077AE000000000000000000000000000000000000000000000000007E35
      2500FD867900FD837D00FF986F007E352500FF8C6A002F2F2F002F2F2F002F2F
      2F00FEC68F007E3525000000000000000000000000000000000086768800B9B2
      B900534E5300CACACA005353530000000000000000000000000063636300DDDC
      DD00E8E7E800CFCECF00656565000000000000000000E4E2E100E4E2E100DEDC
      DB00DDDBDA00E5E1DC00A2B8D6004F89D8004E88D8008AABD800E5E0DB00DDDB
      DA00DDDBDA00EAE8E700E4E2E1000000000000000000000000000000000000A9
      E8009DEBFF0065DDFF003FD9FF0005CDFF0005D3FF0005D9FF0005E5FF0005F0
      FF000077AE0000000000000000000000000000000000000000007E352500FD86
      7900FD837D00EA6B5300DE664F007E352500FE765D002F2F2F002F2F2F002F2F
      2F00FEC68F007E3525000000000000000000000000000000000068656800E5E3
      E500E3E1E300E5E3E50051515100000000000000000000000000000000006363
      6300D7D5D70065656500000000000000000000000000E9E9E900E9E9E900E2E2
      E200E2E2E200EBE7E300A4B9D6004F86D2005288D30098B0D200E9E6E300E2E2
      E200E1E1E100EFEFEF00E9E9E9000000000000000000000000000000000000A9
      E80037C9FF0069DDFF002DD0FF0000BCF20000CBFE0005D3FF0005DFFF0000B8
      E0000077AE0000000000000000000000000000000000000000007E352500FE8B
      7300DC5956007E352500DE6159007E352500FE765D002F2F2F002F2F2F002F2F
      2F00FFA477007E3525000000000000000000000000000000000065656500E0DF
      E000E0DEE000DFDEDF0051515100000000000000000000000000000000006363
      6300C4C3C40065656500000000000000000000000000F1F1F100F6F6F600EFEF
      EF00EEEEEE00F8F5F100A7BBD8004B81CD004E84CF0095AED200F6F3EF00EEEE
      EE00EEEEEE00FDFDFD00F6F6F600000000000000000000000000000000000000
      000000A9E8006DDBFF002FCCFF0000B3E60000BCF20001CCFF0005DFFF000079
      AC000000000000000000000000000000000000000000000000007E352500D860
      49007E352500FF8163007E3525007E352500E06950002F2F2F002F2F2F002F2F
      2F00FFAE82007E3525000000000000000000000000000000000063636300DAD9
      DA00DAD8DA00D9D8D9005D4B5E00000000000000000000000000000000006363
      6300BEBCBC0065656500000000000000000000000000BDBDBD00F1F1F100FDFD
      FD00FAFAFA00FFFFFD00A3B8D700346DBC00366FBF007F9FCC00FFFEFC00FAFA
      FA00FCFCFC00FCFCFC00D2D1D100000000000000000000000000000000000000
      000000A9E8002BC6FF003DCFFF0000A4DA0000B4E80000C8FA0000B1E4000077
      AE000000000000000000000000000000000000000000000000007E3525007E35
      2500FB7D6400FF8E7100FDC792007E352500AE4F3B00F3735A002F2F2F002F2F
      2F00FEAB8E007E3525000000000000000000000000000000000062626200D5D4
      D500D5D3D500D3D2D300534E53000000000000000000000000000365CB000365
      CB000365CB000365CB000365CB00000000003C3F44003C3F4400BDBDBD00F1F1
      F100FFFFFF00FFFFFF00C5D1E2007C9BC7007E9DC900AEBFD800FFFFFF00FFFF
      FF00F8F8F800D2D1D10047464A003B3F48000000000000000000000000000000
      00000000000000A9E80047D2FF0000A0D40000B1E40000C8FA00007EB2000000
      00000000000000000000000000000000000000000000000000007E352500E56D
      5500FF876A00FF9F7700FDC79200FDC792007E352500A1443000DA6C5600F377
      5D00FF7F62007E3525000000000000000000000000000000000065656500D0CF
      D000D0CFD000D0CFD000534E530000000000000000000365CB0047B3FB0060D4
      FB0061D5FB0060D2FB003A9AFB000365CB003C3F44003B3D4200535A6600BDBD
      BC00F1F1F000FFFFFF00FFFFFF00FFFDF900FFFDF900FFFFFF00FFFFFF00F8F8
      F800CECDCC00676C76003B3F48003B3F48000000000000000000000000000000
      0000000000000000000000A9E80000A8D80000B8E600007EB200000000000000
      000000000000000000000000000000000000000000007E352500E56D5500FB7D
      6400FF876A00FFAF8E00FDC79200FDCC9B00FFDFB2007E352500A14A3800BA57
      4200FF7F62007E35250000000000000000000000000065656500C8C7C800CFCE
      CF00D0CFD000D1D0D100C1C0C100534E5300000000000365CB0024B0FB002BBF
      FB002BBFFB002DBFFB001EA1FB000365CB00000000003A3C41003C404700575F
      6A00BDBDBC00F3F3F200F9F9F900BCBCBC00B5B5B500EAEAEA00FAFAFA00CECE
      CD006B7079003A414A0039404900000000000000000000000000000000000000
      0000000000000000000000A9E80005EAFF0005F0FF00007EB200000000000000
      0000000000000000000000000000000000007E352500E56D5500E56D5500FB7D
      6400FF876A00FFAF8E00FDC79200FDCC9B00FFDFB200FFDFB2007E3525007E35
      25007E3525007E3525007E3525007E35250065656500CDCCCD00E3E2E300E0E0
      E000DCDADC00D7D6D700CFCECF00B0AFB000534E53000365CB00049BFB0005A8
      FB0005A8FB0005A8FB00058DFB000365CB0000000000000000003B3F46004246
      4C005C646E00C0C0BF00E3E3E300B2B2B200ABABAB00D7D7D700D3D3D2006C72
      7A00464C5500464C550000000000000000000000000000000000000000000000
      00000000000000A9E80000C5F60001CCFF0003CDFF0001CCFF00007EB2000000
      000000000000000000000000000000000000000000007E352500E56D5500FB7D
      6400FB7D6400FFAF8E00FDC79200FFDFB200FFDFB200A14A3800FF9E7700FF9E
      7700FF9E7700FF9E7700A14A38000000000065656500E5E4E500E8E7E800A3A3
      A300929292009F9F9F00D5D4D500C8C7C800524053000365CB000690FB00089F
      FB000596FB000593FB00057BF6000365CB000000000000000000000000004144
      4A00484D530061697200B9B8B800D4D4D400D7D7D700C2C2C00071787E00484F
      5700484F570099B1D20000000000000000000000000000000000000000000000
      00000000000000A9E80000C1F8001BCCFF0021CDFF0007C8FF00007EB2000000
      00000000000000000000000000000000000000000000000000007E352500E579
      6200FB7D6400FFAF8E00FDC79200FFDFB200A14A3800FF9E7700FDC79200FDC7
      9200FDC38C00A14A380000000000000000006B5F6D00ECEBEC00ECEBEC009292
      92000000000092929200EDECED00EAE9EA005F4F61000365CB003BBBFB0038C4
      FB0034C0FB0018A2FB001487F8000365CB000000000000000000000000000000
      0000474C52004E535800666F7500C5C4C300D3D2D100777E830051585F005158
      5F00FFFFFF0099B1D20000000000000000000000000000000000000000000000
      00000000000000A9E80000B6FA0079DEFF0087E1FF002DC6FF00007EB2000000
      0000000000000000000000000000000000000000000000000000000000007E35
      2500FA886E00FF9E7700FDCC9B00A14A3800FF9E7700FDC79200FFDFB200FFDF
      B200A14A380000000000000000000000000065656500EFEEEF00EFEEEF006565
      65000000000065656500F2F1F200ECEBEC00534E53000365CB0068CEFB0066D7
      FB0066D7FB0066D7FB0063C3FB000365CB000000000000000000000000000000
      0000000000004D525600555A5F0070787E007A818600545C6100535B6000FFFF
      FF00FFFFFF0099B1D20000000000000000000000000000000000000000000000
      0000000000000000000000A9E80000A9E80000A9E800007EB200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007E352500FFA07C00A14A3800FF9E7700FF9E7700FDC38C00FFDFB200A14A
      380000000000000000000000000000000000000000007D5A8000F2F1F2006565
      6500000000006F607100F4F3F40077777700000000000365CB0089D6FB008EE6
      FB008EE6FB008EE6FB0075BEFB000365CB000000000000000000000000000000
      0000000000000000000054585D005E646700636C7000636C70000000000099B1
      D20099B1D20099B1D20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007E3525007E3525007E3525007E3525007E3525007E3525000000
      0000000000000000000000000000000000000000000065656500656565006565
      65000000000065656500656565006565650000000000000000000365CB000365
      CB000365CB000365CB000365CB00000000000000000000000000000000000000
      00000000000000000000000000005E646700636C70000000000000000000366F
      BF00366FBF00366FBF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000ACACAC00ACACAC00A7A7A700AAAAAA00AAAAAA00A8A8A800A9A9A900A9A9
      A900000000000000000000000000000000000000000000000000000000000000
      0000003CD600003CD6000033C4000035CE00003BD0000038C800003ECC00003E
      CC00000000000000000000000000000000000000000000000000000000000000
      00001300CE001300CE001600BE001700C6001300C8001200C2000E00C4000E00
      C400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B2B2
      B200ACACAC00C2C2C200C2C2C200BABABA00BDBDBD00BEBEBE00BFBFBF00B6B6
      B600A5A5A5000000000000000000000000000000000000000000000000000054
      EE00003CD6002993FF002993FF000B72FF001578FF001980FF001D8DFF000070
      FA000028BC000000000000000000000000000000000000000000000000000500
      E4001300CE001D38FF001D38FF00010DFF000B16FF000F20FF00132FFF000011
      F2001E00B6000000000000000000000000000000000000000000000000004848
      4800676767000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B2B2
      B200C5C5C500E3E3E300CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCB
      CB00A9A9A9000000000000000000000000000000000000000000000000000054
      EE00357CFF0067ABFF002993FF002993FF002596FF0029A2FF002DA9FF002DAD
      FF00003ECC000000000000000000000000000000000000000000000000000500
      E4002E29FF00898FFF00255DFF00255DFF00255DFF00255DFF00255DFF00255D
      FF000E00C4000000000000000000000000000000000000000000000000006767
      6700484848006767670000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B2B2
      B200E3E3E300E3E3E300CCCCCC00BEBEBE00BFBFBF00C0C0C000C2C2C200CBCB
      CB00A7A7A7000000000000000000000000000000000000000000000000000054
      EE0099C4FF006DA7FF004B97FF001980FF001B86FF00218FFF00279CFF0031B4
      FF000032C2000000000000000000000000000000000000000000000000000500
      E400898FFF00898FFF003F48FF00255DFF00255DFF00255DFF00255DFF00255D
      FF001600BC000000000000000000000000000000000000000000000000000000
      0000676767004F4F4F0067676700000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B2B2
      B200CDCDCD00E3E3E300C8C8C800BBBBBB00BDBDBD00BFBFBF00C0C0C000CBCB
      CB00A7A7A7000000000000000000000000000000000000000000000000000054
      EE005193FF006DA4FF003D8BFF000D68FF001578FF001B86FF002395FF0031B4
      FF000032C2000000000000000000000000000000000000000000000000000500
      E4004545FF00898FFF003338FF000303FF000B16FF001127FF001939FF00255D
      FF001600BC000000000000000000000000000000000000000000000000000000
      00000000000067676700484848007070700000A6DC0000A6DC0000A6DC0000A6
      DC00000000000000000000000000000000000000000000000000000000000000
      0000B2B2B200E3E3E300C7C7C700B8B8B800BBBBBB00BDBDBD00BFBFBF00A8A8
      A800000000000000000000000000000000000000000000000000000000000000
      00000054EE0071A0FF003B85FF000161FF000D6EFF001779FF001D8DFF000034
      C800000000000000000000000000000000000000000000000000000000000000
      00000500E400898FFF003131FF000000F8000309FF000D18FF00132FFF001700
      C200000000000000000000000000000000000000000000000000000000000000
      000000000000000000007070700003DEFF001FF7FF0023FFFC0023FCFF0017F7
      FF0000A6DC000000000000000000000000000000000000000000000000000000
      0000B2B2B200CACACA00CBCBCB00B5B5B500B8B8B800BCBCBC00B6B6B600A7A7
      A700000000000000000000000000000000000000000000000000000000000000
      00000054EE004587FF004784FF000057F6000569FF001377FF000064FA000032
      C200000000000000000000000000000000000000000000000000000000000000
      00000500E4003E39FF00443BFF000600EE000006FC000915FF000006F2001600
      BC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000ACEC0009F1FF000FF1FF0013F7FF0011F7FF000DF1
      FF0007F0FF0000A6DC0000000000000000000000000000000000000000000000
      000000000000B2B2B200CDCDCD00B2B2B200B7B7B700BCBCBC00A9A9A9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000054EE004F85FF00004FF0000060FE001377FF000035CC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000500E4005043FF000B00E6000000F6000915FF001700C4000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000ACEC0000E9FE0003EAFF0007EBFF0005EAFF0003EA
      FF0000E3FE0000B3E60000000000000000000000000000000000000000000000
      00000000000000000000B2B2B200B2B2B200B7B7B700B6B6B600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000054EE0035BAFF0035BAFF00005EFA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000500E4000B00E6000000F6000000F200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000ACEC0005DFFF001FE7FF0029E8FF0027E8FF0011E6
      FF0000D4F40000B1E40000000000000000000000000000000000000000000000
      00000000000000000000B2B2B200C5C5C500C6C6C600B6B6B600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000054EE0033B0FF0035BAFF00005EFA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000500E400275AFF002B67FF000000F200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000B9EE0057E5FF0071E6FF007FEBFF0077EAFF0061E7
      FF001DDCFF0000A9E80000000000000000000000000000000000000000000000
      000000000000BDBDBD00BEBEBE00C0C0C000C0C0C000BFBFBF00B6B6B6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001578FF001985FF002194FF002395FF001F93FF000059FC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000B16FF000F26FF001738FF001939FF001536FF000600F4000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000ACEC008DEBFF00BFF4FF00ADF4FF0055DD
      FF0000B7EC000000000000000000000000000000000000000000000000000000
      000000000000BDBDBD00BFBFBF00E3E3E300C4C4C400C3C3C300B6B6B6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001578FF001D77FF003B8EFF004196FF002F87FF000059FC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000B16FF001319FF00898FFF00255DFF00232DFF000600F4000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000A9E80000ACEC0000ACEC0000AC
      EC00000000000000000000000000000000000000000000000000000000000000
      000000000000BDBDBD00BFBFBF00DBDBDB00DEDEDE00C9C9C900B2B2B2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001578FF001D72FF007DABFF0089B3FF004184FF00004EEC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000B16FF001313FF00898FFF00898FFF003A35FF000B00E2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BDBDBD00BBBBBB00BBBBBB00B6B6B600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001578FF000F6FFF000F6FFF000058FA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000B16FF00050BFF00050BFF000600F200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000DE000000EF000000EF000000
      EF000000EF000000EF000000EF000000EF000000EF000000E7000000EF000000
      EF000000EF000000EF000000EF000000DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000EF008C8CF7000000EF00DEDE
      FF00DEDEFF00DEDEFF00DEDEFF001818E700DEDEFF00DEDEFF00DEDEFF00DEDE
      FF00DEDEFF00DEDEFF00DEDEFF000000EF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000EF007B7BFF000000EF00DEDE
      FF001010E7001010E700DEDEFF000000DE00DEDEFF000000DE000000EF000000
      EF000000DE006363EF00DEDEFF000000EF000000000000000000000000004848
      4800676767000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004D4D
      4D006B6B6B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004343
      4300636363000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000EF007B7BFF000000EF00DEDE
      FF00DEDEFF00DEDEFF00DEDEFF000000DE00DEDEFF00DEDEFF00DEDEFF00DEDE
      FF00DEDEFF00DEDEFF00DEDEFF000000EF000000000000000000000000006767
      6700484848006767670000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006B6B
      6B004D4D4D006B6B6B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006363
      6300434343006363630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000EF007B7BFF000000EF00DEDE
      FF001010E7001010E700DEDEFF000000DE00DEDEFF000000DE000000DE000000
      A5000000DE000000DE00DEDEFF000000EF000000000000000000000000000000
      0000676767004F4F4F0067676700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006B6B6B005D594B006B6B6B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000636363004D4F470063636300000000000000000000000000000000000000
      0000000000000000000000000000000000000000EF007B7BFF000000EF00DEDE
      FF00DEDEFF00DEDEFF00DEDEFF000000DE00DEDEFF00E7E7FF00DEDEFF00DEDE
      FF00DEDEFF00DEDEFF00DEDEFF000000EF000000000000000000000000000000
      00000000000067676700484848007070700096969600A2A2A200A2A2A2009696
      9600000000000000000000000000000000000000000000000000000000000000
      0000000000006B6B6B004D4D4D006B6B6B00005BF200005BF200005BF200005B
      F200000000000000000000000000000000000000000000000000000000000000
      0000000000006363630043434300636363002B1BC9002B1BC9002B1BC9002B1B
      C900000000000000000000000000000000000000EF007B7BFF000000EF00DEDE
      FF00DEDEFF00DEDEFF00DEDEFF000000DE00DEDEFF00DEDEFF00DEDEFF00DEDE
      FF00DEDEFF00DEDEFF00DEDEFF000000EF000000000000000000000000000000
      0000000000000000000070707000A2A2A200C1C1C100C4C4C400C4C4C400BEBE
      BE00A2A2A2000000000000000000000000000000000000000000000000000000
      000000000000000000006B6B6B00005BF20033BEFF003DA1FF00399BFF002DB7
      FF00005BF2000000000000000000000000000000000000000000000000000000
      00000000000000000000636363002B1BC9002F5AF900333DFF003136FD003054
      F0002B1BC9000000000000000000000000000000EF007B7BFF000000EF00DEDE
      FF001010E7001010E700DEDEFF000000DE00DEDEFF000000DE000000EF000000
      EF000000DE006363EF00DEDEFF000000EF000000000000000000000000000000
      0000000000000000000096969600B4B4B400B9B9B900BCBCBC00BCBCBC00B8B8
      B800B3B3B3009696960000000000000000000000000000000000000000000000
      00000000000000000000005BF200159FFF0021A9FF0029B1FF0029B1FF001FA8
      FF00139EFF00005BF20000000000000000000000000000000000000000000000
      000000000000000000002B1BC900273DE1002E48E600304FEC00304FEC002C47
      E600293EDD002B1BC90000000000000000000000EF007B7BFF000000EF00DEDE
      FF00DEDEFF00DEDEFF00DEDEFF000000DE00DEDEFF00DEDEFF00DEDEFF00DEDE
      FF00DEDEFF00DEDEFF00DEDEFF000000EF000000000000000000000000000000
      00000000000000000000A2A2A200ADADAD00B0B0B000B3B3B300B3B3B300B0B0
      B000ADADAD009D9D9D0000000000000000000000000000000000000000000000
      00000000000000000000005BF200078DFF000D96FF00119DFF00119DFF000D96
      FF00058CFF000073E80000000000000000000000000000000000000000000000
      000000000000000000002B1BC9001E2BDA001E30E000233AE100233AE1001F31
      DF001C29DA00181CC00000000000000000000000EF007B7BFF000000EF00DEDE
      FF001010E7001010E700DEDEFF000000DE00E7E7FF000000DE000000DE000000
      A5000000DE000000DE00E7E7FF000000EF000000000000000000000000000000
      00000000000000000000A2A2A200ADADAD00B9B9B900BEBEBE00BCBCBC00B3B3
      B300A5A5A5009D9D9D0000000000000000000000000000000000000000000000
      00000000000000000000005BF2000782FF002199FF002D9FFF00279CFF00138D
      FF000078F200006EEA0000000000000000000000000000000000000000000000
      000000000000000000002B1BC9002529D3003D48D7004651DA00414CD900323A
      D4001519CF001919C10000000000000000000000EF008C8CF7000000EF00DEDE
      FF00DEDEFF00DEDEFF00DEDEFF001818E700E7E7FF00DEDEFF00DEDEFF00DEDE
      FF00DEDEFF00DEDEFF00E7E7FF000000EF000000000000000000000000000000
      0000000000000000000096969600C6C6C600D2D2D200D8D8D800D6D6D600CCCC
      CC00B1B1B1009696960000000000000000000000000000000000000000000000
      00000000000000000000005BF2004196FF005FAAFF006FB3FF0069B0FF0051A3
      FF000D73FF00005BF20000000000000000000000000000000000000000000000
      000000000000000000002B1BC9006562D4007979DD008484E2008080E0006C6C
      DA003D36CA002B1BC90000000000000000000000EF000000EF000000EF000000
      EF000000EF000000EF000000EF000000EF000000EF000000EF000000EF000000
      EF000000EF000000EF000000EF000000EF000000000000000000000000000000
      0000000000000000000000000000A2A2A200D9D9D900E9E9E900E3E3E300C4C4
      C400A2A2A2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000005BF20073A8FF00A1C7FF0091BDFF003B85
      FF00005BF2000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002B1BC9009790DA00B9B5E700ABA7E3006E64
      CC002B1BC9000000000000000000000000000000EF004242E7000000EF009494
      FF007B7BFF007B7BFF007B7BFF007B7BFF007B7BFF007B7BFF007B7BFF007B7B
      FF007B7BFF007B7BFF008C8CF7000000EF000000000000000000000000000000
      00000000000000000000000000000000000096969600A2A2A200A2A2A2009696
      9600000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000005BF200005BF200005BF200005B
      F200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002B1BC9002B1BC9002B1BC9002B1B
      C900000000000000000000000000000000000000DE000000EF000000EF000000
      EF000000EF000000EF000000EF000000EF000000EF000000EF000000EF000000
      EF000000EF000000EF000000EF000000DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00E7E7
      E7008C8C94008C8C94008C8C94008C8C94008C8C94008C8C94008C8C94008C8C
      94008C949C00E7E7E70000000000000000000000000000000000000000000000
      0000000000002129310010213100182931001829310021293100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7EFEF007BA5
      CE009CCEF7008CC6F7007BBDF7006BB5F70063ADF70073BDF70084C6F70094CE
      F700ADDEFF007394B500F7F7F700000000000000000000000000000000004A6B
      8C00396B9C0010395200001018000000000000101800103952003173A5004A7B
      B500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00A5ADBD00C6E7
      FF009CD6FF008CCEFF005284AD002139520018395200213952005A84AD0094CE
      FF00A5D6FF00ADD6F700B5B5B50000000000000000000000000052739C0052B5
      FF0029CEFF0063F7FF0029525200000000001042520039D6FF0021D6FF0021CE
      FF003984B5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      9400000094000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00A5ADB500B5DE
      FF007BBDFF0073BDFF0063B5FF003973AD0021425A00427BAD006BBDFF007BBD
      FF008CCEFF00A5CEF700B5B5B50000000000000000004A6B8C0052B5FF0031CE
      FF009CFFFF0084B5CE0000081000000000000008100010294200298CBD0029D6
      FF0029D6FF00529CCE0000000000000000000000000000000000000000000000
      00007B7B7B003131310000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      94000000B5000000940000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00A5ADB500ADD6
      FF005AADFF005AADFF004AA5F7003984CE0018395A003984D60052A5FF005AAD
      FF007BBDFF00A5CEF700B5B5B500000000004A7BB5004A7BB50039BDFF0094FF
      FF00739CAD000818290008213100000000001039520021A5E70010395A002173
      A50031D6FF0039D6FF006BBDEF00000000000000000000000000000000000000
      00009C9C9C007B7B7B0031313100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      94000000FF000000B50000009400000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00A5ADB500ADDE
      FF0052ADFF0052ADFF004A94D6002952730010213100295273004A94D60052AD
      FF0073BDFF00ADCEF700B5B5B50000000000428CC6004A7BB50052E7FF0094E7
      EF0010294200319CEF0010425200000000000829310029C6FF0021D6FF001042
      6300299CCE004AF7FF006BBDEF006BBDEF000000000000000000000000000000
      00009C9C9C009C9C9C007B7B7B00313131000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      94000000FF000000FF000000B500000094000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00A5ADB500CEE7
      FF0084C6FF0084C6FF0042638400294A630021395200294A63004263840084C6
      FF009CCEFF00ADCEEF00B5B5B500000000004A6B940042B5FF0073FFFF005284
      9400216B9C0039BDFF0010394A0000000000001018001839520029BDF70039C6
      F700184A6B0042E7FF0052FFFF006BBDEF000000000000000000000000000000
      00009C9C9C009C9C9C009C9C9C007B7B7B003131310000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      94000000FF000000FF000000FF000000B5000000940000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF009CADB500DEEF
      FF00ADD6FF00ADD6FF008CADD600425A730029395200425A73008CB5D600ADD6
      FF00BDDEFF00ADCEF700B5B5B50000000000426B940039BDFF007BFFFF00315A
      6B002984C60031CEFF00000008000000000010525200218CC600185A7B0039E7
      FF00215A7B0031A5D60052FFFF006BBDEF000000000000000000000000000000
      00009C9C9C009C9C9C009C9C9C009C9C9C007B7B7B0031313100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      94000000FF000000FF000000FF001010F7000000B50000009400000000000000
      0000000000000000000000000000000000000000000000000000E7EFF7007394
      AD00D6EFFF00D6EFFF00D6EFFF00D6EFFF00D6EFFF00D6EFFF00D6EFFF00D6EF
      FF00DEEFFF006B94BD00F7F7F700000000003163940031BDFF0073FFFF003163
      7B00186B9C000842520000000000000000001852520042DEFF00184A730031DE
      FF0031849C0021739C0052FFFF006BBDEF000000000000000000000000000000
      00009C9C9C009C9C9C009C9C9C009C9C9C007B7B7B0031313100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      94000000FF000000FF000000FF001010F7000000B50000009400000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00B5BD
      C6007B94AD006B7B9400A5ADBD00A5B5C600A5B5C600A5B5C6008494AD00738C
      A50073849C00F7F7F70000000000000000004A7BB500319CE70052F7FF004AA5
      B50010294200000000000000000000000000185252004ADEEF0010395A0039E7
      FF00318C9C0021739C0052FFFF006BBDEF000000000000000000000000000000
      00009C9C9C009C9C9C009C9C9C007B7B7B003131310000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      94000000FF000000FF001010F7000000B5000000940000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ADAD
      AD00F7F7F7009C9C9C0000000000000000000000000000000000BDBDBD00CECE
      CE00A5A5A5000000000000000000000000004A94C600398CBD0031D6FF0063FF
      FF00082131001029390042E7FF004AFFFF005AF7FF000821310018527B0042F7
      FF00296B8400299CC6005AFFFF006BBDEF000000000000000000000000000000
      00009C9C9C009C9C9C007B7B7B00313131000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      94000000FF001010F7000000B500000094000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ADAD
      AD00EFEFEF009C9C9C00FFFFFF00000000000000000000000000B5B5B500CECE
      CE00A5A5A50000000000000000000000000000000000398CBD0039C6FF004AE7
      FF0042BDEF00081018000000000000081000000008001021390031C6FF0052FF
      FF0018425A0042EFFF006BBDEF00000000000000000000000000000000000000
      00009C9C9C007B7B7B0031313100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      94002121EF000000B50000009400000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C600EFEFEF00BDBDBD00FFFFFF000000000000000000FFFFFF00A5A5A500D6D6
      D600B5B5B50000000000000000000000000000000000398CBD00398CBD0029D6
      FF0042DEFF0031CEFF0000080800000000000008100031BDFF004AFFFF002963
      7300217B940063FFFF006BBDEF00000000000000000000000000000000000000
      00007B7B7B003131310000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      94000000B5000000940000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EFEF
      EF00A5A5A500F7F7F700A5A5A500B5B5B500CECECE009C9C9C00DEDEDE00ADAD
      AD00DEDEDE000000000000000000000000000000000000000000398CBD00398C
      BD0031D6FF0042EFFF0000000000000000000000000042EFFF00215A7300185A
      730052FFFF006BBDEF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      9400000094000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E7E7E700A5A5A500F7F7F700EFEFEF00EFEFEF00EFEFEF00BDBDBD00BDBD
      BD0000000000000000000000000000000000000000000000000000000000398C
      BD00398CBD0021526B0018394200082929000821290010395200218494004AFF
      FF006BBDEF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFEFEF00ADADAD009C9C9C009C9C9C00A5A5A500E7E7E7000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000000000398CBD00398CBD00398CBD006BBDEF006BBDEF006BBDEF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF0000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000008484840000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000BDBDBD00BDBDBD000000840000FFFF0000008400BDBDBD00BDBDBD008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000FFFF000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BDBDBD00BDBDBD00BDBDBD0000008400FFFFFF00FFFFFF007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BDBDBD00BDBDBD00BDBDBD0000FFFF00FFFFFF007B7B7B007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00FFFFFF0000FFFF0000FFFF00000000008484
      8400000000000000000000000000000000000000000000000000000000008484
      8400000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BDBDBD00BDBDBD0000008400FFFFFF007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000FFFFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BDBDBD0000FFFF007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF00FFFFFF0000FFFF0000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BDBDBD000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF000000
      000000000000000000000000000000FFFF0000000000FFFFFF00000000000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000FFFF00FFFFFF0000FFFF00000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000008400FFFFFF000000840000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF000000
      000000000000000000000000000000FFFF0000000000FFFFFF00FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      0000848484000000000000000000000000000000000000000000000000008484
      8400000000000000000084848400000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000840000FFFF0000008400FFFFFF0000008400000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000BDBDBD00BDBDBD000000840000FFFF00FFFFFF0000FFFF007B7B7B000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BDBDBD00BDBDBD00BDBDBD00BDBDBD0000008400FFFFFF007B7B7B000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD008400
      0000840000008400000000000000000000000000000000FFFF00000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF000000
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF0000008400000000000000000000000000000000FFFF00000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF0000FFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF00000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF000000
      000084848400848484008484840000FFFF0000FFFF0084848400848484008484
      84008484840000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000BDBDBD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BDBDBD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BDBDBD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      00000000000000FFFF0000000000000000000000000000FFFF00000000000000
      000000FFFF0000000000000000000000000000000000000000000000FF000000
      0000000000000000FF000000000000000000000000000000FF00000000000000
      00000000FF000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FF000000FF000000FF000000FF000000FF000000FF000000FFFF
      FF00000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF000000000000FFFF000000000000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF00000000000000FF00000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000000000FFFFFF000000000000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF0000000000FFFFFF00000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FF000000FF000000FF000000FF000000FF000000FF000000FFFF
      FF00000000008484840000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF007B7B7B00FFFFFF0000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF0000000000FFFFFF007B7B7B00FFFFFF000000000000FFFF0000FF
      FF0000FFFF0000000000000000000000000000000000000000000000FF000000
      FF000000FF0000000000FFFFFF007B7B7B00FFFFFF00000000000000FF000000
      FF000000FF0000000000000000000000000000FFFF0000FFFF0000FFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000FFFF0000FFFF00000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000000000FFFFFF0000FFFF007B7B7B0000FFFF00FFFFFF000000000000FF
      FF0000FFFF0000000000000000000000000000000000000000000000FF000000
      FF0000000000FFFFFF000000FF007B7B7B000000FF00FFFFFF00000000000000
      FF000000FF000000000000000000000000000000000000FFFF0000FFFF000000
      0000FFFFFF00FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000FFFF0000FFFF0000FFFF000000000000000000000000000000
      000000000000FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFFFF00000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF000000000000FFFF00FFFFFF007B7B7B00FFFFFF0000FFFF000000000000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000FF000000FF000000FF000000
      FF00000000000000FF00FFFFFF007B7B7B00FFFFFF000000FF00000000000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000000000FF
      FF0000FFFF0000000000000000000000000000000000000000000000FF000000
      FF0000000000FFFFFF000000FF00FFFFFF000000FF00FFFFFF00000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FF000000FF000000FFFFFF0000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF0000000000FFFFFF0000FFFF00FFFFFF000000000000FFFF0000FF
      FF0000FFFF0000000000000000000000000000000000000000000000FF000000
      FF000000FF0000000000FFFFFF000000FF00FFFFFF00000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000000000000000000000000000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000000000000000000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF0000000000000000000000000000000000000000000000000000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      000000FFFF0000000000000000000000000000000000000000000000FF000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      00000000FF000000000000000000000000000000000000FFFF0000FFFF000000
      000000000000000000000000000000FFFF0000FFFF0000000000000000000000
      00000000000000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B000000
      000000000000000000007B7B7B000000000000000000000000007B7B7B000000
      000000000000000000007B7B7B00000000000000000000000000000000003268
      D5003A73DB003D7BDF004089E8004595F1003D7BDF003D7BDF003A73DB003268
      D5002E60C4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B000000
      00007B7B7B00000000007B7B7B00000000007B7B7B00000000007B7B7B000000
      00007B7B7B00000000007B7B7B000000000000000000000000002E60C40074B7
      FC003268D5003A73DB003D7BDF004089E8004595F10049A4FA004BAEFF00329C
      FF006DCBFF002E60C40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003A73DB0079CC
      FF00368FF1004FACF40065C0F60074CAF90084D5FA0095E1FC00A4ECFE00A0E4
      FF007FD6FF002E60C40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003D7BDF0076C8
      FF003486E8004B9FEB005CB2F0006ABEF40078CAF70086D7FB0093E2FE0088D4
      FF0076CDFF002E60C40000000000000000000000000000000000000000000000
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF008400000084000000FFFFFF0000000000FFFFFF0000000000000000000000
      000000000000FFFFFF00FFFFFF0000000000000000007B7B7B00000000000000
      FF00000000000000000000000000000000000000000000000000FF0000000000
      00000000000000000000000000000000000000000000000000004089E80071C5
      FD00347ADE004591E40053A4E9005EB0EE006BBEF30077CDF80082D8FE006CC2
      FF006CC1FF002E60C40000000000000000000000000000000000000000000000
      0000FFFF000000000000000000000000000000000000FFFF0000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000FF00000000000000FF000000FF0000000000FF00000000000000FF00
      00000000000000000000000000000000000000000000000000004595F10072C6
      FD00337EE1004796E60056A8EB0063B5F00070C2F4007BD0FA0087DCFE0075C8
      FF0070C2FD002E60C40000000000000000000000000000000000000000000000
      0000FFFF0000000000000000000000000000FFFF000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF008400000084000000FFFFFF0000000000FFFFFF0000000000000000008400
      00000000000000000000FFFFFF00000000007B7B7B007B7B7B00000000007B7B
      7B000000FF007B7B7B000000FF007B7B7B000000FF007B7B7B007B7B7B00FF00
      00007B7B7B007B7B7B007B7B7B007B7B7B00000000000000000049A4FA0079CA
      FF00358DF0004EA9F20063BDF40072C7F70081D2F90091DEFC00A0E9FE009CE1
      FF007ED1FF002E60C40000000000000000000000000000000000000000000000
      0000FFFF00000000000000000000FFFF0000FFFF000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000FF0000000000000000000000FF0000000000000000000000
      0000FF00000000000000000000000000000000000000000000004089E80072C6
      FF002E83E900469EED0059B2F00067BEF30076CAF80085D7FA0093E2FE008AD6
      FF0075C8FD002E60C40000000000000000000000000000000000000000000000
      0000FFFF000000000000FFFF0000FFFF00000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF008400000084000000FFFFFF0000000000FFFFFF0000000000000000000000
      000000000000FFFFFF00FFFFFF0000000000000000007B7B7B0000000000FF00
      0000000000000000000000000000FF000000000000000000FF00000000000000
      00000000FF0000000000000000000000000000000000000000003D7BDF00469E
      ED00469EED00469EED00469EED00469EED00469EED00469EED00469EED00469E
      ED00469EED002E60C40000000000000000000000000000000000000000000000
      0000FFFF0000FFFF0000FFFF000000000000000000000000000000000000FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000FF00000000000000FF00000000000000000000000000FF00000000000000
      FF00FF0000000000FF0000000000000000000000000000000000000000008685
      8400B8B8B8008E7B8E000000000000000000000000000000000086858400B8B8
      B800868584000000000000000000000000000000000000000000000000000000
      0000FFFF0000FFFF00000000000000000000000000000000000000000000FFFF
      FF00FFFFFF0000000000000000000000000000000000FFFFFF0000000000FFFF
      FF008400000084000000FFFFFF0000000000FFFFFF0000000000000000008400
      00000000000000000000FFFFFF00000000007B7B7B007B7B7B00000000007B7B
      7B00FF0000007B7B7B00FF0000007B7B7B007B7B7B007B7B7B000000FF007B7B
      7B007B7B7B00FF0000000000FF007B7B7B000000000000000000000000008685
      8400C3C3C300868584000000000000000000000000000000000086858400B8B8
      B800868584000000000000000000000000000000000000000000000000000000
      0000FFFF00000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000FF00000000000000000000000000000000000000000000000000
      000000000000FF00000000000000000000000000000000000000000000008685
      8400B8B8B800868584000000000000000000000000000000000086858400C3C3
      C300868584000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B00000000000000
      000000000000FF00000000000000000000000000000000000000000000000000
      00000000000000000000FF000000000000000000000000000000000000008685
      8400C3C3C300868584000000000000000000000000000000000086858400C3C3
      C300868584000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF0000000000000000000000000000000000FFFF
      FF0000000000000000000000000000000000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008685
      8400D2D2D2009292920086858400868584008685840086858400B8B8B800B8B8
      B800868584000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B007B7B7B00000000007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B000000000000000000000000000000
      000086858400D2D2D200D2D2D200C3C3C300B8B8B800C3C3C300B8B8B8008685
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008685840086858400868584008685840086858400868584000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000390000003900000039
      0000003900000039000000390000003900000039000000390000003900000039
      0000003900000039000000390000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF000000
      00007B7B7B007B7B7B007B7B7B0000FFFF0000FFFF007B7B7B007B7B7B007B7B
      7B007B7B7B0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000316B3100639C6300007B0000007B
      0000007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B
      0000007B0000007B0000007B0000003900000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000316B310063DE63009CDE9C00427B
      4200217B210021BD210021DE210042BD420042BD420042BD420042BD420042BD
      420042BD420042BD4200007B00000039000000000000FFFFFF00FFFFFF000000
      FF000000FF00FFFFFF00FF000000FF000000FFFFFF00FF00FF00FF00FF00FFFF
      FF000084000000840000FFFFFF00000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000007B7B7B00000000000000000000000000FFFFFF0000000000FFFF
      FF008400000084000000FFFFFF0000000000FFFFFF0000000000000000000000
      000000000000FFFFFF00FFFFFF0000000000316B310063DE63009CDE9C0052CE
      5200000000000063000000DE000021DE210042BD420042BD420042BD420042BD
      420042BD420042BD4200007B00000039000000000000FFFFFF00FFFFFF000000
      FF000000FF00FFFFFF00FF000000FF000000FFFFFF00FF00FF00FF00FF00FFFF
      FF000084000000840000FFFFFF00000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000007B7B7B000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000316B310063DE63007BFF7B00007B
      000021BD2100214221002184210021BD210021BD210021BD210000FF000052CE
      520042BD420042BD4200007B00000039000000000000FFFFFF00FFFFFF000000
      FF000000FF00FFFFFF00FF000000FF000000FFFFFF00FF00FF00FF00FF00FFFF
      FF000084000000840000FFFFFF00000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000007B7B7B00000000000000000000000000FFFFFF0000000000FFFF
      FF008400000084000000FFFFFF0000000000FFFFFF0000000000000000008400
      00000000000000000000FFFFFF0000000000316B310063DE63009CDE9C002121
      21002163210042844200428442004284420042844200428442002184210000DE
      000052CE520042BD4200007B00000039000000000000FFFFFF00FFFFFF000000
      FF000000FF00FFFFFF00FF000000FF000000FFFFFF00FF00FF00FF00FF00FFFF
      FF000084000000840000FFFFFF00000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000007B7B7B000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000316B310063DE63009CDE9C00219C
      21000000000021212100212121002121210021212100636363004284420052AD
      520021DE210042BD4200007B00000039000000000000FFFFFF00FFFFFF000000
      FF000000FF00FFFFFF00FF000000FF000000FFFFFF00FF00FF00FF00FF00FFFF
      FF000084000000840000FFFFFF000000000000FFFF0000FFFF0000FFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000FFFF0000FFFF0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000316B310063DE63009CDE9C0042BD
      420042BD420042BD420042BD420021DE210000DE0000215A2100638463004284
      420021DE210042BD4200007B00000039000000000000FFFFFF00FFFFFF000000
      FF000000FF00FFFFFF00FF000000FF000000FFFFFF00FF00FF00FF00FF00FFFF
      FF000084000000840000FFFFFF00000000000000000000FFFF0000FFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000FFFF0000FFFF0000FFFF0000000000FFFFFF0000000000FFFF
      FF008400000084000000FFFFFF0000000000FFFFFF0000000000000000000000
      000000000000FFFFFF00FFFFFF0000000000316B310063DE63009CDE9C0042BD
      420042BD420042BD4200217B2100638463006384630021422100428442004284
      420021DE210042BD4200007B00000039000000000000FFFFFF00FFFFFF000000
      FF000000FF00FFFFFF00FF000000FF000000FFFFFF00FF00FF00FF00FF00FFFF
      FF000084000000840000FFFFFF00000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000316B310063DE63009CDE9C0042BD
      420042BD4200215A2100428442004284420042844200428442004284420063BD
      630021DE210042BD4200007B00000039000000000000FFFFFF00FFFFFF000000
      FF000000FF00FFFFFF00FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000084000000840000FFFFFF00000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF008400000084000000FFFFFF0000000000FFFFFF0000000000000000008400
      00000000000000000000FFFFFF0000000000316B310063DE63009CDE9C0042BD
      420042BD4200215A2100216321004284420021DE210000FF000000FF000000FF
      000000FF000021DE2100007B00000039000000000000FFFFFF00FFFFFF000000
      FF000000FF00FFFFFF00FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000084000000840000FFFFFF00000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000000000FF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000316B310063DE63009CDE9C0042BD
      420042BD420042BD420021212100216321004284420042844200428442004284
      42002184210021DE2100007B00000039000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000084000000840000FFFFFF00000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000316B310063DE63009CDE9C0042BD
      420042BD420042BD420042BD4200424242002121210021212100212121002121
      210021212100007B0000007B00000039000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF000000000000000000000000000000000000000000FFFF
      FF0000000000000000000000000000000000FFFFFF0000000000000000000000
      000000000000000000000000000000000000316B310063DE6300DEDEDE009CDE
      9C009CDE9C009CDE9C009CDE9C009CDE9C009CDE9C009CDE9C00393939000063
      00009CBD9C009CDE9C00007B00000039000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000FFFF0000FFFF000000
      000000000000000000000000000000FFFF0000FFFF0000000000000000000000
      00000000000000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000316B31006BEF6B007BFF7B007BFF
      7B007BFF7B007BFF7B007BFF7B007BFF7B007BFF7B007BFF7B007BFF7B000039
      0000006300007BDE7B0039BD39000039000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF0000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000390000397B3900397B3900397B
      3900397B3900397B3900397B3900397B3900397B3900397B3900397B3900397B
      3900397B3900397B3900397B39000039000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E4753F00E4753F00E4753F00E4753F00E475
      3F00E4753F00E4753F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005C5252005C5252000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E4753F00EB648600EC8F6100EE9C5C00ED985800EB8B4F00EA7D4500E46C
      3400DF5B2800D6512500E4753F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007A797A007A797A007A797A005C5252009D6969005C52
      52005C5252007A797A007A797A0000000000000000000000000000000000E475
      3F00EB844900ED925400F0A46200F2B16C00F0A46300EE935400E9824700E772
      3B00E6632E00D1502500E4753F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007A797A00DCC2B000DCC2B0005C525200A26E6E00A471
      7100A37171005C5252005C52520000000000000000000000000000000000E475
      3F00E4753F00EC915300EFA15F00F2AC6700F0A46000EE935500E9854800E775
      3B00DA511D00C4401A00E4753F00000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF004284FF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000008B01007A797A00F1E0D300F1E0D3005C525200A6717200A572
      7200A5727200AA7474005C52520000000000000000000000000000000000E475
      3F00D4512600E26D3B00ED875200ED945C00EE995E00EC8E5100EA7D4100DB56
      1E00D96E4800E4753F0000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000008B0100008B0100F1E0D300F1E0D3005C525200AA757600A572
      7200A8747400AD777700624F5900000000000000000000000000000000000000
      0000E4753F00E58D7000E28C6900EA865800EC814800E8713900E95F2600D947
      1400F0E1DF00E4753F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000B8A0D000E8C11000E8C
      1100128D16002DC64900008B0100008B0100F1E0D3005C525200AD898A009988
      8800A8757500AF7A7A0065525C00000000000000000000000000000000000000
      000000000000E4753F00E0654300DE481100E85B2600E4511A00E78A6B00E4AA
      9B00E4753F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000A8E0D004EE781004EE7
      81004EE781004EE781004CE57E00008B0100008B01005C525200FFF8F800FFF8
      F800AF7A7A00B27C7C006A576200000000000000000000000000000000000000
      0000000000000000000000000000E4753F00C63C0C00D56A4900E4753F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000B8F0E0056EF890056EF
      890056EF890056EF890054ED8700008B0100008B01005C525200B27C7C00B47F
      7F00B3808000B68181006E5A6600000000000000000000000000000000000000
      000000000000E4753F00D0623200E2865600D4653600E4753F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF004284FF0000FFFF000000000000000000000000000000
      000000000000000000000000000000000000000000001B821D0015921D001592
      1D0014921A0036CF5400008B0100008B0100FBF5F3005C525200B6828200B784
      8400B6838300B9828200725E6900000000000000000000000000000000000000
      0000E4753F00E4753F00D04C2100C8652D00CC6C3800E4753F00E4753F000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000008B0100008B0100F1E0D300F2DBD0005C525200D6A9A900D6A9
      A900C6939300BB858500735F6D00000000000000000000000000000000000000
      0000E4753F009C412C00B6391900DB603000D0653300E16C3700E4753F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000008B01007A797A00F0D9CC00F1D3C5005C525200D6A9A900FFF8
      F800FFF8F800D6A9A90077616E00000000000000000000000000000000000000
      0000E4753F00B33D1F00B02B0E00B2391E00C3462300C0441F00E4753F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007A797A00F0D3C300F1CFBD005C5252005C525200D5AE
      AE00DCB4B400D6A9A9007A647200000000000000000000000000000000000000
      0000E4753F00DC6D4600D7653E00B7371800A6301800B0493400E4753F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007A797A00DCC2B000DCC2B000DCC2B000DCC2B0005C52
      52005C525200C78E8E007E657500000000000000000000000000000000000000
      0000E4753F00F0C4AB00F6DCD000C85A3C00AA3D2800C07B6D00E4753F000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF004284FF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007A797A007A797A007A797A007A797A007A797A007A79
      7A007A797A005C5252005C525200000000000000000000000000000000000000
      000000000000E4753F00E6A38D00BE543C00AF524000E2C4BF00E4753F000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E4753F00E4753F00E4753F00E4753F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000A00000000100010000000000000500000000000000000000
      000000000000000000000000FFFFFF00F81FFFF900000000E007FFF900000000
      C003E078000000008001E038000000008001E010000000000000E70100000000
      0000E701000000000000E7FF000000000000E07F000000000000C07F00000000
      0000807F000000008001807F000000008001807F00000000C003807F00000000
      E007C1FF00000000F80FFFFF00000000FFFFFC7FE3E3FC3FF00FF81FC1E38001
      E007F007C9C18001E007E003C1C18001E007C003C1E38001E007C003C1E38001
      F00FC003C1E38001F00FC003C1C10000F81FC003C1800000FC3F800380808001
      FC3F00000000C003F81F80010000E003F81FC0030800F003F81FE0070800F803
      FC3FF00F8880FC23FFFFF81F88C1FE63FFFFFFFFFFFFFFFFFFFFF00FF00FF00F
      FFFFE007E007E007E7FFE007E007E007E3FFE007E007E007F1FFE007E007E007
      F80FF00FF00FF00FFC07F00FF00FF00FFC03F81FF81FF81FFC03FC3FFC3FFC3F
      FC03FC3FFC3FFC3FFC03F81FF81FF81FFE07F81FF81FF81FFF0FF81FF81FF81F
      FFFFFC3FFC3FFC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
      0000FFFFFFFFFFFF0000E7FFE7FFE7FF0000E3FFE3FFE3FF0000F1FFF1FFF1FF
      0000F80FF80FF80F0000FC07FC07FC070000FC03FC03FC030000FC03FC03FC03
      0000FC03FC03FC030000FC03FC03FC030000FE07FE07FE070000FF0FFF0FFF0F
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFC003F83FFFFFFFFFC001E00FFFFFFFFF
      8001C007E7FFE7FF80018003E3FFE3FF80010001E1FFE1FF80010000E0FFE0FF
      80010000E07FE07F80010000E03FE03FC0010000E03FE03FC0030000E07FE07F
      E3C70000E0FFE0FFE1C78001E1FFE1FFE1878001E3FFE3FFE007C003E7FFE7FF
      F00FE007FFFFFFFFF81FE81FFFFFFFFFFFFFFFFFFFFFF9FFFFFF8003FC00F8FF
      FFFF8003FC00FC7FFC7F8003FC00FC3FF0FFE00FFC00F01FF1FFE00FFC00F00F
      E3FFF01F8000F80FE7FFF83F0400F81FE707FC7F0400C00FE387F83F0000C007
      E107F01F0000E00FF007E00F0000E01FF837E00F1C7FF00FFFFF80031C7FF007
      FFFF80031C7FF803FFFF8003007FF803FF7EFEFFFEFFFEFF9001FC7FFC7FFC7F
      C003FC7FFC7FFC7FE003FC7FD837D837E003FC7FE00FE00FE003FC7FE00FE00F
      E003F83FC007C0070001F01FC007C0078000F01F00010001E007F01FC007C007
      E00FF83FC007C007E00FFC7FE00FE00FE027FFFFE00FE00FC073FFFFD837D837
      9E79FFFFFEFFFEFF7EFEFFFFFEFFFEFF8001FFFFDDDDE007BBF5FFFFD555C003
      AAD500000000C00380014100DFFFC003E00F01008FDFC003E01F4100D4AFC003
      E21F01000000C003E04F4100DB77C003E04701008EB7C003E0C34100D5A3E3C7
      E1C301000000E3C7E3E14100DBFBE3C7E7E100009BFDE3C7EFF04F7EDFFFE007
      FFF100000000F00FFFFFFFFFFFFFF81FFF7EFFFF8000FFFF900100000000FFFF
      C003410000008001E003010008008001E003410000008001E003010000008001
      E00341000000800100014100000080018000010000008001E007410000008001
      E00F010000008001E00F410000008001E027000000008001C0734F7E00008001
      9E790000000080017EFEFFFF00008001FFFFFE03BFFFBFFFFF9FF001BFFFBFE4
      FC01E001B049B07FFC01E001807F807FF801E003B07FB064F801F003B9FFB9FF
      8001F807BFFFBFFF8001FE1FB049B0648001F83F807F807F8001F01FB07FB07F
      F801F01FB9FFB9E4F801F01FBFFFBFFFFC01F01F048F07FFFC01F01F07FF07E4
      FC01F81F07FF07FFFFFFFC3F9FFF9FFF00000000000000000000000000000000
      000000000000}
  end
  object ilLargeImages: TImageList
    Height = 24
    Width = 24
    Left = 32
    Top = 240
    Bitmap = {
      494C010119001D00040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000060000000A8000000010020000000000000FC
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003121D6003121D6003121D6003121D6003121D6003121D6003121
      D6003121D6003121D6003121D6003121D6003121D6003121D6003121D6003121
      D6003121D6003121D6003121D600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000003121D6003129FF001008FF001010FF001010FF001010
      FF005A42EF00634AEF00634AEF005A42EF001010FF001010FF001010FF001008
      FF003931FF003121D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000003121D6003121D6002921FF002921FF002921FF002110
      FF00634AEF00FFFFFF00FFFFFF00634AEF002118FF002921FF002921FF002921
      FF003121D6003121D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000003121D6004239FF003129FF003929FF003129
      FF003931FF00FFFFFF00FFFFFF003129FF003129FF003129FF003129FF004239
      FF003121D6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000DE000000DE000000DE000000
      DE000000DE000000DE000000DE003121D6003121D6004239FF004239FF004239
      FF00634AEF006B52EF006352EF00634AEF004239FF004239FF004242FF003121
      D6003121D6000000DE000000DE000000DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000DE004A52E7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF003121D600524AFF004A39FF004A42
      FF00634AEF00DEDEFF00DED6FF00634AEF004A4AFF004A4AFF005252FF003121
      D600BDBDFF00BDBDFF00BDBDFF000000DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF000000B5000000B5003121D6003121D6005A5AFF004A42
      FF005A4AEF00DEDEFF00DED6FF00634AEF005252FF006363FF003121D6003121
      D6000000B5000000B500BDBDFF000000DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF003121D6006B6BFF006363
      FF006352F700EFE7FF00E7E7FF00634AF7005A52FF00635AFF003121D600BDBD
      FF00BDBDFF00BDBDFF00BDBDFF000000DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF000000B5000000B5000000B5003121D6003121D6007B84
      FF006B5AF700EFEFFF00EFEFFF006352EF006B63FF003121D6003121D6000000
      B500BDBDFF00BDBDFF00BDBDFF000000DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF003121D6006B73
      FF006B5AF700FFF7FF00F7F7FF006B5AF7006B73FF003121D600BDBDFF00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF000000DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF000000B5000000B5000000B5000000B5003121D6003121
      D6006B5AF700FFFFFF00FFFFFF006B5AF7003121D6003121D6000000B5000000
      B5000000B5000000B500BDBDFF000000DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF003121
      D6006B5AF700635AF700635AF7006B5AEF003121D600BDBDFF00BDBDFF00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF000000DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF000000B5000000B5000000B5000000B500BDBDFF003121
      D6003121D600848CFF00848CFF003121D6003121D6000000B5000000B5000000
      B500BDBDFF00BDBDFF00BDBDFF000000DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF004A52
      E7003121D600949CF7009494F7003121D600BDBDFF00BDBDFF00BDBDFF00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF000000DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF004A52
      E7003121D6003121D6003121D6003121D600BDBDFF00BDBDFF00BDBDFF00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF000000DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF000000B5000000B5000000B5000000B500BDBDFF004A52
      E700BDBDFF003121D6003121D6000000B5000000B5000000B5000000B5000000
      B5000000B5000000B500BDBDFF000000DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF004A52
      E700BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF000000DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF000000B5000000B5000000B5000000B500BDBDFF004A52
      E700BDBDFF00BDBDFF000000B5000000B5000000B5000000B5000000B5000000
      B500BDBDFF00BDBDFF00BDBDFF000000DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF004A52
      E700BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF000000DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF000000B5000000B5000000B5000000B500BDBDFF004A52
      E700BDBDFF00BDBDFF000000B5000000B5000000B5000000B5000000B5000000
      B5000000B5000000B500BDBDFF000000DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000DE004A52E7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF004A52
      E700BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF000000DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000DE000000DE000000DE000000
      DE000000DE000000DE000000DE000000DE000000DE000000DE000000DE000000
      DE000000DE000000DE000000DE000000DE000000DE000000DE000000DE000000
      DE000000DE000000DE000000DE000000DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000DE004A52E7000000DE006363
      F7006363F7006363F7004A52E7004A52E7004A52E7004A52E7004A52E7004A52
      E7006363F7006363F7004A52E7004A52E7004A52E7004A52E7004A52E7004A52
      E7004A52E7004A52E7004A52E7000000DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000DE000000DE000000DE000000
      DE000000DE000000DE000000DE000000DE000000DE000000DE000000DE000000
      DE000000DE000000DE000000DE000000DE000000DE000000DE000000DE000000
      DE000000DE000000DE000000DE000000DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003121D6003121D6003121D6003121D6003121D6003121D6003121
      D6003121D6003121D6003121D6003121D6003121D6003121D6003121D6003121
      D6003121D6003121D6003121D600000000000000000000000000000000000000
      0000000000003121D6003121D6003121D6003121D6003121D6003121D6003121
      D6003121D6003121D6003121D6003121D6003121D6003121D6003121D6003121
      D6003121D6003121D6003121D600000000000000000000000000000000000000
      0000000000003121D6003121D6003121D6003121D6003121D6003121D6003121
      D6003121D6003121D6003121D6003121D6003121D6003121D6003121D6003121
      D6003121D6003121D6003121D600000000000000000000000000000000000000
      0000000000003121D6003121D6003121D6003121D6003121D6003121D6003121
      D6003121D6003121D6003121D6003121D6003121D6003121D6003121D6003121
      D6003121D6003121D6003121D600000000000000000000000000000000000000
      000000000000000000003121D6003129FF001008FF001010FF001010FF001010
      FF005A42EF00634AEF00634AEF005A42EF001010FF001010FF001010FF001008
      FF003931FF003121D60000000000000000000000000000000000000000000000
      000000000000000000003121D6003129FF001008FF001010FF001010FF001010
      FF005A42EF00634AEF00634AEF005A42EF001010FF001010FF001010FF001008
      FF003931FF003121D60000000000000000000000000000000000000000000000
      000000000000000000003121D6003129FF001008FF001010FF001010FF001010
      FF005A42EF00634AEF00634AEF005A42EF001010FF001010FF001010FF001008
      FF003931FF003121D60000000000000000000000000000000000000000000000
      000000000000000000003121D6003129FF001008FF001010FF001010FF001010
      FF005A42EF00634AEF00634AEF005A42EF001010FF001010FF001010FF001008
      FF003931FF003121D60000000000000000000000000000000000000000000000
      000000000000000000003121D6003121D6002921FF002921FF002921FF002110
      FF00634AEF00FFFFFF00FFFFFF00634AEF002118FF002921FF002921FF002921
      FF003121D6003121D60000000000000000000000000000000000000000000000
      000000000000000000003121D6003121D6002921FF002921FF002921FF002110
      FF00634AEF00FFFFFF00FFFFFF00634AEF002118FF002921FF002921FF002921
      FF003121D6003121D60000000000000000000000000000000000000000000000
      000000000000000000003121D6003121D6002921FF002921FF002921FF002110
      FF00634AEF00FFFFFF00FFFFFF00634AEF002118FF002921FF002921FF002921
      FF003121D6003121D60000000000000000000000000000000000000000000000
      000000000000000000003121D6003121D6002921FF002921FF002921FF002110
      FF00634AEF00FFFFFF00FFFFFF00634AEF002118FF002921FF002921FF002921
      FF003121D6003121D60000000000000000000000000000000000000000000000
      00000000000000000000000000003121D6004239FF003129FF003929FF003129
      FF003931FF00FFFFFF00FFFFFF003129FF003129FF003129FF003129FF004239
      FF003121D6000000000000000000000000000000000000000000000000000000
      00000000000000000000000000003121D6004239FF003129FF003929FF003129
      FF003931FF00FFFFFF00FFFFFF003129FF003129FF003129FF003129FF004239
      FF003121D6000000000000000000000000000000000000000000000000000000
      00000000000000000000000000003121D6004239FF003129FF003929FF003129
      FF003931FF00FFFFFF00FFFFFF003129FF003129FF003129FF003129FF004239
      FF003121D6000000000000000000000000000000000000000000000000000000
      00000000000000000000000000003121D6004239FF003129FF003929FF003129
      FF003931FF00FFFFFF00FFFFFF003129FF003129FF003129FF003129FF004239
      FF003121D6000000000000000000000000000000DE000000DE000000DE000000
      DE000000DE000000DE000000DE003121D6003121D6004239FF004239FF004239
      FF00634AEF006B52EF006352EF00634AEF004239FF004239FF004242FF003121
      D6003121D6000000DE000000DE000000DE000000DE000000DE000000DE000000
      DE000000DE000000DE000000DE003121D6003121D6004239FF004239FF004239
      FF00634AEF006B52EF006352EF00634AEF004239FF004239FF004242FF003121
      D6003121D6000000DE000000DE000000DE000000DE000000DE000000DE000000
      DE000000DE000000DE000000DE003121D6003121D6004239FF004239FF004239
      FF00634AEF006B52EF006352EF00634AEF004239FF004239FF004242FF003121
      D6003121D6000000DE000000DE000000DE000000DE000000DE000000DE000000
      DE000000DE000000DE000000DE003121D6003121D6004239FF004239FF004239
      FF00634AEF006B52EF006352EF00634AEF004239FF004239FF004242FF003121
      D6003121D6000000DE000000DE000000DE000000DE004A52E7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF003121D600524AFF004A39FF004A42
      FF00634AEF00DEDEFF00DED6FF00634AEF004A4AFF004A4AFF005252FF003121
      D600BDBDFF00BDBDFF00BDBDFF000000DE000000DE004A52E7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF003121D600524AFF004A39FF004A42
      FF00634AEF00DEDEFF00DED6FF00634AEF004A4AFF004A4AFF005252FF003121
      D600BDBDFF00BDBDFF00BDBDFF000000DE000000DE004A52E7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF003121D600524AFF004A39FF004A42
      FF00634AEF00DEDEFF00DED6FF00634AEF004A4AFF004A4AFF005252FF003121
      D600BDBDFF00BDBDFF00BDBDFF000000DE000000DE004A52E7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF003121D600524AFF004A39FF004A42
      FF00634AEF00DEDEFF00DED6FF00634AEF004A4AFF004A4AFF005252FF003121
      D600BDBDFF00BDBDFF00BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF000000B5000000B5003121D6003121D6005A5AFF004A42
      FF005A4AEF00DEDEFF00DED6FF00634AEF005252FF006363FF003121D6003121
      D6000000B5000000B500BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF000000B5000000B5003121D6003121D6005A5AFF004A42
      FF005A4AEF00DEDEFF00DED6FF00634AEF005252FF006363FF003121D6003121
      D6000000B5000000B500BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF000000B5000000B5003121D6003121D6005A5AFF004A42
      FF005A4AEF00DEDEFF00DED6FF00634AEF005252FF006363FF003121D6003121
      D6000000B5000000B500BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF000000B5000000B5003121D6003121D6005A5AFF004A42
      FF005A4AEF00DEDEFF00DED6FF00634AEF005252FF006363FF003121D6003121
      D6000000B5000000B500BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF003121D6006B6BFF006363
      FF006352F700EFE7FF00E7E7FF00634AF7005A52FF00635AFF003121D600BDBD
      FF00BDBDFF00BDBDFF00BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF003121D6006B6BFF006363
      FF006352F700EFE7FF00E7E7FF00634AF7005A52FF00635AFF003121D600BDBD
      FF00BDBDFF00BDBDFF00BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF003121D6006B6BFF006363
      FF006352F700EFE7FF00E7E7FF00634AF7005A52FF00635AFF003121D600BDBD
      FF00BDBDFF00BDBDFF00BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF003121D6006B6BFF006363
      FF006352F700EFE7FF00E7E7FF00634AF7005A52FF00635AFF003121D600BDBD
      FF00BDBDFF00BDBDFF00BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF000000B5000000B5000000B5003121D6003121D6007B84
      FF006B5AF700EFEFFF00EFEFFF006352EF006B63FF003121D6003121D6000000
      B500BDBDFF00BDBDFF00BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF000000B5000000B5000000B5003121D6003121D6007B84
      FF006B5AF700EFEFFF00EFEFFF006352EF006B63FF003121D6003121D6000000
      B500BDBDFF00BDBDFF00BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF000000B5000000B5000000B5003121D6003121D6007B84
      FF006B5AF700EFEFFF00EFEFFF006352EF006B63FF003121D6003121D6000000
      B500BDBDFF00BDBDFF00BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF000000B5000000B5000000B5003121D6003121D6007B84
      FF006B5AF700EFEFFF00EFEFFF006352EF006B63FF003121D6003121D6000000
      B500BDBDFF00BDBDFF00BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF003121D6006B73
      FF006B5AF700FFF7FF00F7F7FF006B5AF7006B73FF003121D600BDBDFF00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF003121D6006B73
      FF006B5AF700FFF7FF00F7F7FF006B5AF7006B73FF003121D600BDBDFF00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF003121D6006B73
      FF006B5AF700FFF7FF00F7F7FF006B5AF7006B73FF003121D600BDBDFF00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF003121D6006B73
      FF006B5AF700FFF7FF00F7F7FF006B5AF7006B73FF003121D600BDBDFF00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF000000B5000000B5000000B5000000B5003121D6003121
      D6006B5AF700FFFFFF00FFFFFF006B5AF7003121D6003121D6000000B5000000
      B5000000B5000000B500BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF000000B5000000B5000000B5000000B5003121D6003121
      D6006B5AF700FFFFFF00FFFFFF006B5AF7003121D6003121D6000000B5000000
      B5000000B5000000B500BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF000000B5000000B5000000B5000000B5003121D6003121
      D6006B5AF700FFFFFF00FFFFFF006B5AF7003121D6003121D6000000B5000000
      B5000000B5000000B500BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF000000B5000000B5000000B5000000B5003121D6003121
      D6006B5AF700FFFFFF00FFFFFF006B5AF7003121D6003121D6000000B5000000
      B5000000B5000000B500BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF003121
      D6006B5AF700635AF700635AF7006B5AEF003121D600BDBDFF00BDBDFF00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF003121
      D6006B5AF700635AF700635AF7006B5AEF003121D600BDBDFF00BDBDFF00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF003121
      D6006B5AF700635AF700635AF7006B5AEF003121D600BDBDFF00BDBDFF00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF003121
      D6006B5AF700635AF700635AF7006B5AEF003121D600BDBDFF00BDBDFF00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF000000B5000000B5000000B5000000B500BDBDFF003121
      D6003121D600848CFF00848CFF003121D6003121D6000000B5000000B5000000
      B500BDBDFF00BDBDFF00BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF000000B5000000B5000000B5000000B500BDBDFF003121
      D6003121D600848CFF00848CFF003121D6003121D6000000B5000000B5000000
      B500BDBDFF00BDBDFF00BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF000000B5000000B5000000B5000000B500BDBDFF003121
      D6003121D600848CFF00848CFF003121D6003121D6000000B5000000B5000000
      B500BDBDFF00BDBDFF00BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF000000B5000000B5000000B5000000B500BDBDFF003121
      D6003121D600848CFF00848CFF003121D6003121D6000000B5000000B5000000
      B500BDBDFF00BDBDFF00BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF004A52
      E7003121D600949CF7009494F7003121D600BDBDFF00BDBDFF00BDBDFF00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF004A52
      E7003121D600949CF7009494F7003121D600BDBDFF00BDBDFF00BDBDFF00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF004A52
      E7003121D600949CF7009494F7003121D600BDBDFF00BDBDFF00BDBDFF00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF004A52
      E7003121D600949CF7009494F7003121D600BDBDFF00BDBDFF00BDBDFF00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF004A52
      E7003121D6003121D6003121D6003121D600BDBDFF00BDBDFF00BDBDFF00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF004A52
      E7003121D6003121D6003121D6003121D600BDBDFF00BDBDFF00BDBDFF00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF004A52
      E7003121D6003121D6003121D6003121D600BDBDFF00BDBDFF00BDBDFF00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF004A52
      E7003121D6003121D6003121D6003121D600BDBDFF00BDBDFF00BDBDFF00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF000000B5000000B5000000B5000000B500BDBDFF004A52
      E700BDBDFF003121D6003121D6000000B5000000B5000000B5000000B5000000
      B5000000B5000000B500BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF000000B5000000B5000000B5000000B500BDBDFF004A52
      E700BDBDFF003121D6003121D6000000B5000000B5000000B5000000B5000000
      B5000000B5000000B500BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF000000B5000000B5000000B5000000B500BDBDFF004A52
      E700BDBDFF003121D6003121D6000000B5000000B5000000B5000000B5000000
      B5000000B5000000B500BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF000000B5000000B5000000B5000000B500BDBDFF004A52
      E700BDBDFF003121D6003121D6000000B5000000B5000000B5000000B5000000
      B5000000B5000000B500BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF004A52
      E700BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF004A52
      E700BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF004A52
      E700BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF004A52
      E700BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF000000B5000000B5000000B5000000B500BDBDFF004A52
      E700BDBDFF00BDBDFF000000B5000000B5000000B5000000B5000000B5000000
      B500BDBDFF00BDBDFF00BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF000000B5000000B5000000B5000000B500BDBDFF004A52
      E700BDBDFF00BDBDFF000000B5000000B5000000B5000000B5000000B5000000
      B500BDBDFF00BDBDFF00BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF000000B5000000B5000000B5000000B500BDBDFF004A52
      E700BDBDFF00BDBDFF000000B5000000B5000000B5000000B5000000B5000000
      B500BDBDFF00BDBDFF00BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF000000B5000000B5000000B5000000B500BDBDFF004A52
      E700BDBDFF00BDBDFF000000B5000000B5000000B5000000B5000000B5000000
      B500BDBDFF00BDBDFF00BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF004A52
      E700BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF004A52
      E700BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF004A52
      E700BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF004A52
      E700BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF000000B5000000B5000000B5000000B500BDBDFF004A52
      E700BDBDFF00BDBDFF000000B5000000B5000000B5000000B5000000B5000000
      B5000000B5000000B500BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF000000B5000000B5000000B5000000B500BDBDFF004A52
      E700BDBDFF00BDBDFF000000B5000000B5000000B5000000B5000000B5000000
      B5000000B5000000B500BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF000000B5000000B5000000B5000000B500BDBDFF004A52
      E700BDBDFF00BDBDFF000000B5000000B5000000B5000000B5000000B5000000
      B5000000B5000000B500BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF000000B5000000B5000000B5000000B500BDBDFF004A52
      E700BDBDFF00BDBDFF000000B5000000B5000000B5000000B5000000B5000000
      B5000000B5000000B500BDBDFF000000DE000000DE004A52E7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF004A52
      E700BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF000000DE000000DE004A52E7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF004A52
      E700BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF000000DE000000DE004A52E7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF004A52
      E700BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF000000DE000000DE004A52E7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF004A52
      E700BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF000000DE000000DE000000DE000000DE000000
      DE000000DE000000DE000000DE000000DE000000DE000000DE000000DE000000
      DE000000DE000000DE000000DE000000DE000000DE000000DE000000DE000000
      DE000000DE000000DE000000DE000000DE000000DE000000DE000000DE000000
      DE000000DE000000DE000000DE000000DE000000DE000000DE000000DE000000
      DE000000DE000000DE000000DE000000DE000000DE000000DE000000DE000000
      DE000000DE000000DE000000DE000000DE000000DE000000DE000000DE000000
      DE000000DE000000DE000000DE000000DE000000DE000000DE000000DE000000
      DE000000DE000000DE000000DE000000DE000000DE000000DE000000DE000000
      DE000000DE000000DE000000DE000000DE000000DE000000DE000000DE000000
      DE000000DE000000DE000000DE000000DE000000DE000000DE000000DE000000
      DE000000DE000000DE000000DE000000DE000000DE000000DE000000DE000000
      DE000000DE000000DE000000DE000000DE000000DE004A52E7000000DE006363
      F7006363F7006363F7004A52E7004A52E7004A52E7004A52E7004A52E7004A52
      E7006363F7006363F7004A52E7004A52E7004A52E7004A52E7004A52E7004A52
      E7004A52E7004A52E7004A52E7000000DE000000DE004A52E7000000DE006363
      F7006363F7006363F7004A52E7004A52E7004A52E7004A52E7004A52E7004A52
      E7006363F7006363F7004A52E7004A52E7004A52E7004A52E7004A52E7004A52
      E7004A52E7004A52E7004A52E7000000DE000000DE004A52E7000000DE006363
      F7006363F7006363F7004A52E7004A52E7004A52E7004A52E7004A52E7004A52
      E7006363F7006363F7004A52E7004A52E7004A52E7004A52E7004A52E7004A52
      E7004A52E7004A52E7004A52E7000000DE000000DE004A52E7000000DE006363
      F7006363F7006363F7004A52E7004A52E7004A52E7004A52E7004A52E7004A52
      E7006363F7006363F7004A52E7004A52E7004A52E7004A52E7004A52E7004A52
      E7004A52E7004A52E7004A52E7000000DE000000DE000000DE000000DE000000
      DE000000DE000000DE000000DE000000DE000000DE000000DE000000DE000000
      DE000000DE000000DE000000DE000000DE000000DE000000DE000000DE000000
      DE000000DE000000DE000000DE000000DE000000DE000000DE000000DE000000
      DE000000DE000000DE000000DE000000DE000000DE000000DE000000DE000000
      DE000000DE000000DE000000DE000000DE000000DE000000DE000000DE000000
      DE000000DE000000DE000000DE000000DE000000DE000000DE000000DE000000
      DE000000DE000000DE000000DE000000DE000000DE000000DE000000DE000000
      DE000000DE000000DE000000DE000000DE000000DE000000DE000000DE000000
      DE000000DE000000DE000000DE000000DE000000DE000000DE000000DE000000
      DE000000DE000000DE000000DE000000DE000000DE000000DE000000DE000000
      DE000000DE000000DE000000DE000000DE000000DE000000DE000000DE000000
      DE000000DE000000DE000000DE000000DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003121D6003121D6003121D6003121D6003121D6003121D6003121
      D6003121D6003121D6003121D6003121D6003121D6003121D6003121D6003121
      D6003121D6003121D6003121D600000000000000000000000000000000000000
      0000000000003121D6003121D6003121D6003121D6003121D6003121D6003121
      D6003121D6003121D6003121D6003121D6003121D6003121D6003121D6003121
      D6003121D6003121D6003121D600000000000000000000000000000000000000
      0000000000003121D6003121D6003121D6003121D6003121D6003121D6003121
      D6003121D6003121D6003121D6003121D6003121D6003121D6003121D6003121
      D6003121D6003121D6003121D600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000003121D6003129FF001008FF001010FF001010FF001010
      FF005A42EF00634AEF00634AEF005A42EF001010FF001010FF001010FF001008
      FF003931FF003121D60000000000000000000000000000000000000000000000
      000000000000000000003121D6003129FF001008FF001010FF001010FF001010
      FF005A42EF00634AEF00634AEF005A42EF001010FF001010FF001010FF001008
      FF003931FF003121D60000000000000000000000000000000000000000000000
      000000000000000000003121D6003129FF001008FF001010FF001010FF001010
      FF005A42EF00634AEF00634AEF005A42EF001010FF001010FF001010FF001008
      FF003931FF003121D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000003121D6003121D6002921FF002921FF002921FF002110
      FF00634AEF00FFFFFF00FFFFFF00634AEF002118FF002921FF002921FF002921
      FF003121D6003121D60000000000000000000000000000000000000000000000
      000000000000000000003121D6003121D6002921FF002921FF002921FF002110
      FF00634AEF00FFFFFF00FFFFFF00634AEF002118FF002921FF002921FF002921
      FF003121D6003121D60000000000000000000000000000000000000000000000
      000000000000000000003121D6003121D6002921FF002921FF002921FF002110
      FF00634AEF00FFFFFF00FFFFFF00634AEF002118FF002921FF002921FF002921
      FF003121D6003121D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000003121D6004239FF003129FF003929FF003129
      FF003931FF00FFFFFF00FFFFFF003129FF003129FF003129FF003129FF004239
      FF003121D6000000000000000000000000000000000000000000000000000000
      00000000000000000000000000003121D6004239FF003129FF003929FF003129
      FF003931FF00FFFFFF00FFFFFF003129FF003129FF003129FF003129FF004239
      FF003121D6000000000000000000000000000000000000000000000000000000
      00000000000000000000000000003121D6004239FF003129FF003929FF003129
      FF003931FF00FFFFFF00FFFFFF003129FF003129FF003129FF003129FF004239
      FF003121D6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000DE000000DE000000DE000000
      DE000000DE000000DE000000DE003121D6003121D6004239FF004239FF004239
      FF00634AEF006B52EF006352EF00634AEF004239FF004239FF004242FF003121
      D6003121D6000000DE000000DE000000DE000000DE000000DE000000DE000000
      DE000000DE000000DE000000DE003121D6003121D6004239FF004239FF004239
      FF00634AEF006B52EF006352EF00634AEF004239FF004239FF004242FF003121
      D6003121D6000000DE000000DE000000DE000000DE000000DE000000DE000000
      DE000000DE000000DE000000DE003121D6003121D6004239FF004239FF004239
      FF00634AEF006B52EF006352EF00634AEF004239FF004239FF004242FF003121
      D6003121D6000000DE000000DE000000DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000DE004A52E7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF003121D600524AFF004A39FF004A42
      FF00634AEF00DEDEFF00DED6FF00634AEF004A4AFF004A4AFF005252FF003121
      D600BDBDFF00BDBDFF00BDBDFF000000DE000000DE004A52E7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF003121D600524AFF004A39FF004A42
      FF00634AEF00DEDEFF00DED6FF00634AEF004A4AFF004A4AFF005252FF003121
      D600BDBDFF00BDBDFF00BDBDFF000000DE000000DE004A52E7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF003121D600524AFF004A39FF004A42
      FF00634AEF00DEDEFF00DED6FF00634AEF004A4AFF004A4AFF005252FF003121
      D600BDBDFF00BDBDFF00BDBDFF000000DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF000000B5000000B5003121D6003121D6005A5AFF004A42
      FF005A4AEF00DEDEFF00DED6FF00634AEF005252FF006363FF003121D6003121
      D6000000B5000000B500BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF000000B5000000B5003121D6003121D6005A5AFF004A42
      FF005A4AEF00DEDEFF00DED6FF00634AEF005252FF006363FF003121D6003121
      D6000000B5000000B500BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF000000B5000000B5003121D6003121D6005A5AFF004A42
      FF005A4AEF00DEDEFF00DED6FF00634AEF005252FF006363FF003121D6003121
      D6000000B5000000B500BDBDFF000000DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF003121D6006B6BFF006363
      FF006352F700EFE7FF00E7E7FF00634AF7005A52FF00635AFF003121D600BDBD
      FF00BDBDFF00BDBDFF00BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF003121D6006B6BFF006363
      FF006352F700EFE7FF00E7E7FF00634AF7005A52FF00635AFF003121D600BDBD
      FF00BDBDFF00BDBDFF00BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF003121D6006B6BFF006363
      FF006352F700EFE7FF00E7E7FF00634AF7005A52FF00635AFF003121D600BDBD
      FF00BDBDFF00BDBDFF00BDBDFF000000DE000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF000000B5000000B5000000B5003121D6003121D6007B84
      FF006B5AF700EFEFFF00EFEFFF006352EF006B63FF003121D6003121D6000000
      B500BDBDFF00BDBDFF00BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF000000B5000000B5000000B5003121D6003121D6007B84
      FF006B5AF700EFEFFF00EFEFFF006352EF006B63FF003121D6003121D6000000
      B500BDBDFF00BDBDFF00BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF000000B5000000B5000000B5003121D6003121D6007B84
      FF006B5AF700EFEFFF00EFEFFF006352EF006B63FF003121D6003121D6000000
      B500BDBDFF00BDBDFF00BDBDFF000000DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF003121D6006B73
      FF006B5AF700FFF7FF00F7F7FF006B5AF7006B73FF003121D600BDBDFF00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF003121D6006B73
      FF006B5AF700FFF7FF00F7F7FF006B5AF7006B73FF003121D600BDBDFF00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF003121D6006B73
      FF006B5AF700FFF7FF00F7F7FF006B5AF7006B73FF003121D600BDBDFF00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF000000DE000000000000000000000000000000
      0000000000000000000000000000848484000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF000000B5000000B5000000B5000000B5003121D6003121
      D6006B5AF700FFFFFF00FFFFFF006B5AF7003121D6003121D6000000B5000000
      B5000000B5000000B500BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF000000B5000000B5000000B5000000B5003121D6003121
      D6006B5AF700FFFFFF00FFFFFF006B5AF7003121D6003121D6000000B5000000
      B5000000B5000000B500BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF000000B5000000B5000000B5000000B5003121D6003121
      D6006B5AF700FFFFFF00FFFFFF006B5AF7003121D6003121D6000000B5000000
      B5000000B5000000B500BDBDFF000000DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF003121
      D6006B5AF700635AF700635AF7006B5AEF003121D600BDBDFF00BDBDFF00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF003121
      D6006B5AF700635AF700635AF7006B5AEF003121D600BDBDFF00BDBDFF00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF003121
      D6006B5AF700635AF700635AF7006B5AEF003121D600BDBDFF00BDBDFF00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF000000DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF000000B5000000B5000000B5000000B500BDBDFF003121
      D6003121D600848CFF00848CFF003121D6003121D6000000B5000000B5000000
      B500BDBDFF00BDBDFF00BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF000000B5000000B5000000B5000000B500BDBDFF003121
      D6003121D600848CFF00848CFF003121D6003121D6000000B5000000B5000000
      B500BDBDFF00BDBDFF00BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF000000B5000000B5000000B5000000B500BDBDFF003121
      D6003121D600848CFF00848CFF003121D6003121D6000000B5000000B5000000
      B500BDBDFF00BDBDFF00BDBDFF000000DE000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF004A52
      E7003121D600949CF7009494F7003121D600BDBDFF00BDBDFF00BDBDFF00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF004A52
      E7003121D600949CF7009494F7003121D600BDBDFF00BDBDFF00BDBDFF00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF004A52
      E7003121D600949CF7009494F7003121D600BDBDFF00BDBDFF00BDBDFF00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF000000DE000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000848484000000
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF004A52
      E7003121D6003121D6003121D6003121D600BDBDFF00BDBDFF00BDBDFF00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF004A52
      E7003121D6003121D6003121D6003121D600BDBDFF00BDBDFF00BDBDFF00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF004A52
      E7003121D6003121D6003121D6003121D600BDBDFF00BDBDFF00BDBDFF00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF000000DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF000000B5000000B5000000B5000000B500BDBDFF004A52
      E700BDBDFF003121D6003121D6000000B5000000B5000000B5000000B5000000
      B5000000B5000000B500BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF000000B5000000B5000000B5000000B500BDBDFF004A52
      E700BDBDFF003121D6003121D6000000B5000000B5000000B5000000B5000000
      B5000000B5000000B500BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF000000B5000000B5000000B5000000B500BDBDFF004A52
      E700BDBDFF003121D6003121D6000000B5000000B5000000B5000000B5000000
      B5000000B5000000B500BDBDFF000000DE000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF004A52
      E700BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF004A52
      E700BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF004A52
      E700BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF000000DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF000000B5000000B5000000B5000000B500BDBDFF004A52
      E700BDBDFF00BDBDFF000000B5000000B5000000B5000000B5000000B5000000
      B500BDBDFF00BDBDFF00BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF000000B5000000B5000000B5000000B500BDBDFF004A52
      E700BDBDFF00BDBDFF000000B5000000B5000000B5000000B5000000B5000000
      B500BDBDFF00BDBDFF00BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF000000B5000000B5000000B5000000B500BDBDFF004A52
      E700BDBDFF00BDBDFF000000B5000000B5000000B5000000B5000000B5000000
      B500BDBDFF00BDBDFF00BDBDFF000000DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF004A52
      E700BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF004A52
      E700BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF004A52
      E700BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF000000DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF000000B5000000B5000000B5000000B500BDBDFF004A52
      E700BDBDFF00BDBDFF000000B5000000B5000000B5000000B5000000B5000000
      B5000000B5000000B500BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF000000B5000000B5000000B5000000B500BDBDFF004A52
      E700BDBDFF00BDBDFF000000B5000000B5000000B5000000B5000000B5000000
      B5000000B5000000B500BDBDFF000000DE000000DE006363F7000000DE00BDBD
      FF00BDBDFF00BDBDFF000000B5000000B5000000B5000000B500BDBDFF004A52
      E700BDBDFF00BDBDFF000000B5000000B5000000B5000000B5000000B5000000
      B5000000B5000000B500BDBDFF000000DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000DE004A52E7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF004A52
      E700BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF000000DE000000DE004A52E7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF004A52
      E700BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF000000DE000000DE004A52E7000000DE00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF004A52
      E700BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBD
      FF00BDBDFF00BDBDFF00BDBDFF000000DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000DE000000DE000000DE000000
      DE000000DE000000DE000000DE000000DE000000DE000000DE000000DE000000
      DE000000DE000000DE000000DE000000DE000000DE000000DE000000DE000000
      DE000000DE000000DE000000DE000000DE000000DE000000DE000000DE000000
      DE000000DE000000DE000000DE000000DE000000DE000000DE000000DE000000
      DE000000DE000000DE000000DE000000DE000000DE000000DE000000DE000000
      DE000000DE000000DE000000DE000000DE000000DE000000DE000000DE000000
      DE000000DE000000DE000000DE000000DE000000DE000000DE000000DE000000
      DE000000DE000000DE000000DE000000DE000000DE000000DE000000DE000000
      DE000000DE000000DE000000DE000000DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000DE004A52E7000000DE006363
      F7006363F7006363F7004A52E7004A52E7004A52E7004A52E7004A52E7004A52
      E7006363F7006363F7004A52E7004A52E7004A52E7004A52E7004A52E7004A52
      E7004A52E7004A52E7004A52E7000000DE000000DE004A52E7000000DE006363
      F7006363F7006363F7004A52E7004A52E7004A52E7004A52E7004A52E7004A52
      E7006363F7006363F7004A52E7004A52E7004A52E7004A52E7004A52E7004A52
      E7004A52E7004A52E7004A52E7000000DE000000DE004A52E7000000DE006363
      F7006363F7006363F7004A52E7004A52E7004A52E7004A52E7004A52E7004A52
      E7006363F7006363F7004A52E7004A52E7004A52E7004A52E7004A52E7004A52
      E7004A52E7004A52E7004A52E7000000DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000DE000000DE000000DE000000
      DE000000DE000000DE000000DE000000DE000000DE000000DE000000DE000000
      DE000000DE000000DE000000DE000000DE000000DE000000DE000000DE000000
      DE000000DE000000DE000000DE000000DE000000DE000000DE000000DE000000
      DE000000DE000000DE000000DE000000DE000000DE000000DE000000DE000000
      DE000000DE000000DE000000DE000000DE000000DE000000DE000000DE000000
      DE000000DE000000DE000000DE000000DE000000DE000000DE000000DE000000
      DE000000DE000000DE000000DE000000DE000000DE000000DE000000DE000000
      DE000000DE000000DE000000DE000000DE000000DE000000DE000000DE000000
      DE000000DE000000DE000000DE000000DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000848484000000
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000848484000000
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000848484000000
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000848484000000
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B0000000000000000000000000000000000000000007B7B7B00000000000000
      00000000000000000000000000007B7B7B000000000000000000000000000000
      0000000000007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B0000000000000000000000000000000000000000007B7B7B00000000000000
      00000000000000000000000000007B7B7B000000000000000000000000000000
      0000000000007B7B7B00000000000000000000FFFF0000FFFF0000FFFF000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B0000000000000000007B7B7B0000000000000000007B7B7B00000000000000
      00007B7B7B0000000000000000007B7B7B0000000000000000007B7B7B000000
      0000000000007B7B7B0000000000000000000000000000FFFF0000FFFF0000FF
      FF0000000000000000008484840084848400848484008484840000FFFF0000FF
      FF0000FFFF0084848400848484008484840084848400848484008484840000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B007B7B7B007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B007B7B7B007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      0000FFFFFF00FFFFFF00840000008400000084000000FFFFFF00000000000000
      0000FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF000000000000000000000000007B7B7B007B7B7B000000
      00000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FFFFFF00FFFFFF00000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      0000FFFFFF00FFFFFF00840000008400000084000000FFFFFF00000000000000
      0000FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF000000000000000000000000007B7B7B007B7B7B000000
      00000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000000000000000000000000000000000000000
      000000000000FFFF0000FFFF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000000FF0000000000000000000000FF000000FF000000
      FF0000000000FF000000FF00000000000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000000000000000000000000000000000000000
      0000FFFF00000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      0000FFFFFF00FFFFFF00840000008400000084000000FFFFFF00000000000000
      0000FFFFFF000000000000000000000000008400000084000000000000000000
      000000000000FFFFFF0000000000000000007B7B7B007B7B7B007B7B7B000000
      00007B7B7B007B7B7B000000FF007B7B7B007B7B7B000000FF007B7B7B007B7B
      7B000000FF007B7B7B007B7B7B007B7B7B00FF000000FF0000007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FFFFFF00FFFFFF00000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000000000000000000000000000000000000000
      0000FFFF00000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      0000FFFFFF00FFFFFF00840000008400000084000000FFFFFF00000000000000
      0000FFFFFF000000000000000000000000008400000084000000000000000000
      000000000000FFFFFF0000000000000000007B7B7B007B7B7B007B7B7B000000
      00007B7B7B007B7B7B000000FF007B7B7B007B7B7B000000FF007B7B7B007B7B
      7B000000FF007B7B7B007B7B7B007B7B7B00FF000000FF0000007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000000000000000000000000000FFFF0000FFFF
      0000FFFF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF0000000000000000000000
      00000000FF000000000000000000000000000000000000000000FF0000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      00000000000000000000FFFF00000000000000000000FFFF0000FFFF0000FFFF
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      0000FFFFFF00FFFFFF00840000008400000084000000FFFFFF00000000000000
      0000FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF000000000000000000000000007B7B7B007B7B7B000000
      0000FF000000FF00000000000000000000000000000000000000FF000000FF00
      0000000000000000FF000000FF000000000000000000000000000000FF000000
      00000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000000000FFFFFF00FFFFFF00FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FFFFFF00FFFFFF000000000000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF000000000000000000000000000000
      00000000000000000000FFFF00000000000000000000FFFF0000FFFF0000FFFF
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      0000FFFFFF00FFFFFF00840000008400000084000000FFFFFF00000000000000
      0000FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF000000000000000000000000007B7B7B007B7B7B000000
      0000FF000000FF00000000000000000000000000000000000000FF000000FF00
      0000000000000000FF000000FF000000000000000000000000000000FF000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF000000000000000000000000000000
      00000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000FF0000000000000000000000FF000000000000000000
      0000000000000000FF000000FF00000000000000FF000000FF00FF0000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000FFFF0000FFFF000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      0000FFFFFF00FFFFFF00840000008400000084000000FFFFFF00000000000000
      0000FFFFFF000000000000000000000000008400000084000000000000000000
      000000000000FFFFFF0000000000000000007B7B7B007B7B7B007B7B7B000000
      00007B7B7B007B7B7B00FF0000007B7B7B007B7B7B00FF0000007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B000000FF007B7B7B007B7B7B007B7B7B00FF00
      0000FF0000000000FF007B7B7B007B7B7B000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FF000000FF000000FF000000FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000FFFF0000FFFF000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      0000FFFFFF00FFFFFF00840000008400000084000000FFFFFF00000000000000
      0000FFFFFF000000000000000000000000008400000084000000000000000000
      000000000000FFFFFF0000000000000000007B7B7B007B7B7B007B7B7B000000
      00007B7B7B007B7B7B00FF0000007B7B7B007B7B7B00FF0000007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B000000FF007B7B7B007B7B7B007B7B7B00FF00
      0000FF0000000000FF007B7B7B007B7B7B000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000FF000000FF00000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF000000000000FFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B007B7B7B000000
      0000000000000000000000000000FF000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FF000000FF000000FF000000FFFFFF00FFFF
      FF0000000000FFFFFF00000000000000000000FFFF0000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B007B7B7B000000
      0000000000000000000000000000FF000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B007B7B7B007B7B7B000000
      00007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B000000000000FFFF0000FFFF0000FF
      FF0000FFFF00000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF0000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B007B7B7B007B7B7B000000
      00007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B0000FFFF0000FFFF0000FFFF0000FF
      FF0000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000390000003900000039
      0000003900000039000000390000003900000039000000390000003900000039
      0000003900000039000000390000003900000039000000390000003900000039
      0000003900000039000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000FFFF000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000390000003900000039
      0000003900000039000000390000003900000039000000390000003900000039
      0000003900000039000000390000003900000039000000390000003900000039
      0000003900000039000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000000000000000007B7B7B007B7B7B007B7B7B007B7B7B0000FFFF0000FF
      FF0000FFFF007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000316B3100639C6300639C6300007B
      0000007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B
      0000007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B
      0000007B0000007B000000390000003900000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000316B310063DE630063DE63009CDE
      9C00427B4200427B4200217B210021BD210021BD210021DE210042BD420042BD
      420042BD420042BD420042BD420042BD420042BD420042BD420042BD420042BD
      420042BD4200007B0000003900000039000000000000FFFFFF00FFFFFF00FFFF
      FF000000FF000000FF000000FF00FFFFFF00FFFFFF00FF000000FF000000FF00
      0000FFFFFF00000000000000000000000000FFFFFF00FFFFFF00008400000084
      000000840000FFFFFF00000000000000000000000000000000000000000000FF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000316B310063DE630063DE63009CDE
      9C00427B4200427B4200217B210021BD210021BD210021DE210042BD420042BD
      420042BD420042BD420042BD420042BD420042BD420042BD420042BD420042BD
      420042BD4200007B0000003900000039000000000000FFFFFF00FFFFFF00FFFF
      FF000000FF000000FF000000FF00FFFFFF00FFFFFF00FF000000FF000000FF00
      0000FFFFFF00000000000000000000000000FFFFFF00FFFFFF00008400000084
      000000840000FFFFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000007B7B
      7B00000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0084000000840000008400000084000000FFFFFF0000000000FFFF
      FF00FFFFFF00840000008400000084000000840000008400000084000000FFFF
      FF00FFFFFF00000000000000000000000000316B310063DE630063DE63009CDE
      9C0052CE520052CE520000000000006300000063000000DE000021DE210021DE
      210042BD420042BD420042BD420042BD420042BD420042BD420042BD420042BD
      420042BD4200007B0000003900000039000000000000FFFFFF00FFFFFF00FFFF
      FF000000FF000000FF000000FF00FFFFFF00FFFFFF00FF000000FF000000FF00
      0000FFFFFF00000000000000000000000000FFFFFF00FFFFFF00008400000084
      000000840000FFFFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000316B310063DE630063DE63007BFF
      7B00007B0000007B000021BD210021422100214221002184210021BD210021BD
      210021BD210021BD210021BD210000FF000052CE520052CE520042BD420042BD
      420042BD4200007B0000003900000039000000000000FFFFFF00FFFFFF00FFFF
      FF000000FF000000FF000000FF00FFFFFF00FFFFFF00FF000000FF000000FF00
      0000FFFFFF00000000000000000000000000FFFFFF00FFFFFF00008400000084
      000000840000FFFFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000007B7B
      7B00000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0084000000840000008400000084000000FFFFFF0000000000FFFF
      FF00FFFFFF008400000084000000840000008400000084000000840000008400
      0000FFFFFF00000000000000000000000000316B310063DE630063DE63007BFF
      7B00007B0000007B000021BD210021422100214221002184210021BD210021BD
      210021BD210021BD210021BD210000FF000052CE520052CE520042BD420042BD
      420042BD4200007B0000003900000039000000000000FFFFFF00FFFFFF00FFFF
      FF000000FF000000FF000000FF00FFFFFF00FFFFFF00FF000000FF000000FF00
      0000FFFFFF00000000000000000000000000FFFFFF00FFFFFF00008400000084
      000000840000FFFFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000316B310063DE630063DE63009CDE
      9C00212121002121210021632100428442004284420042844200428442004284
      42004284420042844200428442002184210000DE000000DE000052CE520042BD
      420042BD4200007B0000003900000039000000000000FFFFFF00FFFFFF00FFFF
      FF000000FF000000FF000000FF00FFFFFF00FFFFFF00FF000000FF000000FF00
      0000FFFFFF00000000000000000000000000FFFFFF00FFFFFF00008400000084
      000000840000FFFFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000007B7B
      7B00000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0084000000840000008400000084000000FFFFFF0000000000FFFF
      FF00FFFFFF00840000008400000084000000840000008400000084000000FFFF
      FF00FFFFFF00000000000000000000000000316B310063DE630063DE63009CDE
      9C00219C2100219C210000000000212121002121210021212100212121002121
      21002121210063636300636363004284420052AD520052AD520021DE210042BD
      420042BD4200007B0000003900000039000000000000FFFFFF00FFFFFF00FFFF
      FF000000FF000000FF000000FF00FFFFFF00FFFFFF00FF000000FF000000FF00
      0000FFFFFF00000000000000000000000000FFFFFF00FFFFFF00008400000084
      000000840000FFFFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000316B310063DE630063DE63009CDE
      9C00219C2100219C210000000000212121002121210021212100212121002121
      21002121210063636300636363004284420052AD520052AD520021DE210042BD
      420042BD4200007B0000003900000039000000000000FFFFFF00FFFFFF00FFFF
      FF000000FF000000FF000000FF00FFFFFF00FFFFFF00FF000000FF000000FF00
      0000FFFFFF00000000000000000000000000FFFFFF00FFFFFF00008400000084
      000000840000FFFFFF00000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000316B310063DE630063DE63009CDE
      9C0042BD420042BD420042BD420042BD420042BD420042BD420021DE210021DE
      210000DE0000215A2100215A210063846300428442004284420021DE210042BD
      420042BD4200007B0000003900000039000000000000FFFFFF00FFFFFF00FFFF
      FF000000FF000000FF000000FF00FFFFFF00FFFFFF00FF000000FF000000FF00
      0000FFFFFF00000000000000000000000000FFFFFF00FFFFFF00008400000084
      000000840000FFFFFF00000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF000000000000000000FFFFFF000000
      0000FFFFFF0084000000840000008400000084000000FFFFFF0000000000FFFF
      FF00FFFFFF008400000084000000840000008400000084000000840000008400
      0000FFFFFF00000000000000000000000000316B310063DE630063DE63009CDE
      9C0042BD420042BD420042BD420042BD420042BD4200217B2100638463006384
      630063846300214221002142210042844200428442004284420021DE210042BD
      420042BD4200007B0000003900000039000000000000FFFFFF00FFFFFF00FFFF
      FF000000FF000000FF000000FF00FFFFFF00FFFFFF00FF000000FF000000FF00
      0000FFFFFF00000000000000000000000000FFFFFF00FFFFFF00008400000084
      000000840000FFFFFF000000000000000000000000000000000000FFFF0000FF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000316B310063DE630063DE63009CDE
      9C0042BD420042BD420042BD420042BD420042BD4200217B2100638463006384
      630063846300214221002142210042844200428442004284420021DE210042BD
      420042BD4200007B0000003900000039000000000000FFFFFF00FFFFFF00FFFF
      FF000000FF000000FF000000FF00FFFFFF00FFFFFF00FF000000FF000000FF00
      0000FFFFFF00000000000000000000000000FFFFFF00FFFFFF00008400000084
      000000840000FFFFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0084000000840000008400000084000000FFFFFF0000000000FFFF
      FF00FFFFFF00840000008400000084000000840000008400000084000000FFFF
      FF00FFFFFF00000000000000000000000000316B310063DE630063DE63009CDE
      9C0042BD420042BD420042BD4200215A2100215A210042844200428442004284
      42004284420042844200428442004284420063BD630063BD630021DE210042BD
      420042BD4200007B0000003900000039000000000000FFFFFF00FFFFFF00FFFF
      FF000000FF000000FF000000FF00FFFFFF00FFFFFF00FF000000FF000000FF00
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00008400000084
      000000840000FFFFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000316B310063DE630063DE63009CDE
      9C0042BD420042BD420042BD4200215A2100215A210021632100428442004284
      420021DE210000FF000000FF000000FF000000FF000000FF000000FF000021DE
      210021DE2100007B0000003900000039000000000000FFFFFF00FFFFFF00FFFF
      FF000000FF000000FF000000FF00FFFFFF00FFFFFF00FF000000FF000000FF00
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00008400000084
      000000840000FFFFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0084000000840000008400000084000000FFFFFF0000000000FFFF
      FF00FFFFFF008400000084000000840000008400000084000000840000008400
      0000FFFFFF00000000000000000000000000316B310063DE630063DE63009CDE
      9C0042BD420042BD420042BD4200215A2100215A210021632100428442004284
      420021DE210000FF000000FF000000FF000000FF000000FF000000FF000021DE
      210021DE2100007B0000003900000039000000000000FFFFFF00FFFFFF00FFFF
      FF000000FF000000FF000000FF00FFFFFF00FFFFFF00FF000000FF000000FF00
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00008400000084
      000000840000FFFFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF000000000000FFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000316B310063DE630063DE63009CDE
      9C0042BD420042BD420042BD420042BD420042BD420021212100216321002163
      21004284420042844200428442004284420042844200428442002184210021DE
      210021DE2100007B0000003900000039000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF000000FF000000FF00
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00008400000084
      000000840000FFFFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00000000000000000000FFFF0000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000316B310063DE630063DE63009CDE
      9C0042BD420042BD420042BD420042BD420042BD420042BD4200424242004242
      420021212100212121002121210021212100212121002121210021212100007B
      0000007B0000007B0000003900000039000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF000000FF000000FF00
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000316B310063DE630063DE63009CDE
      9C0042BD420042BD420042BD420042BD420042BD420042BD4200424242004242
      420021212100212121002121210021212100212121002121210021212100007B
      0000007B0000007B0000003900000039000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF000000FF000000FF00
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000000000000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000316B310063DE630063DE6300DEDE
      DE009CDE9C009CDE9C009CDE9C009CDE9C009CDE9C009CDE9C009CDE9C009CDE
      9C009CDE9C009CDE9C009CDE9C003939390000630000006300009CBD9C009CDE
      9C009CDE9C00007B0000003900000039000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF000000FF000000FF00
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF00000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF0000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000316B31006BEF6B006BEF6B007BFF
      7B007BFF7B007BFF7B007BFF7B007BFF7B007BFF7B007BFF7B007BFF7B007BFF
      7B007BFF7B007BFF7B007BFF7B007BFF7B000039000000390000006300007BDE
      7B007BDE7B0039BD3900003900000039000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000316B31006BEF6B006BEF6B007BFF
      7B007BFF7B007BFF7B007BFF7B007BFF7B007BFF7B007BFF7B007BFF7B007BFF
      7B007BFF7B007BFF7B007BFF7B007BFF7B000039000000390000006300007BDE
      7B007BDE7B0039BD3900003900000039000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000FFFF0000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000390000397B3900397B3900397B
      3900397B3900397B3900397B3900397B3900397B3900397B3900397B3900397B
      3900397B3900397B3900397B3900397B3900397B3900397B3900397B3900397B
      3900397B3900397B3900003900000039000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000084000000000000000000000084008400000000000000
      000000000000C6C6C600C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000000000000000000084008400000000000000
      000000000000C6C6C600C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840084008400840000000000840084008400
      840000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000000000000000000084008400000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000BDBD0000BDBD0000BDBD000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000000000000000000084008400000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000BDBD0000BDBD0000BDBD000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF000000FF000000FF0000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840084008400840000000000840084008400
      840000000000FFFFFF00FFFFFF00FFFF0000FFFFFF00FFFFFF00FFFF00008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000BDBD00000000000000000000FFFF0000BD
      BD0000BDBD000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000000000000000000084008400000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000BDBD0000BDBD000000000000FFFF0000FFFF000000000000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000000000000000000084008400000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000BDBD0000BDBD000000000000FFFF0000FFFF000000000000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840084008400840000000000840084008400
      840000000000FFFFFF00FFFFFF00FFFF0000FFFFFF00FFFFFF00FFFF00008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000BDBD00000000000000000000FFFF00000000000000000000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000000000000000000084008400000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000BDBD0000BDBD0000BD
      BD000000000000FFFF0000FFFF000000000000FFFF0000FFFF00000000008484
      840084848400FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000000000000000000084008400000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000BDBD0000BDBD0000BD
      BD000000000000FFFF0000FFFF000000000000FFFF0000FFFF00000000008484
      840084848400FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840084008400840000000000840084008400
      840000000000FFFFFF00FFFFFF00FFFF0000FFFFFF00FFFFFF00FFFF00008400
      00008400000000000000000000000000000000000000000000000000000000BD
      BD0000BDBD0000BDBD0000BDBD0000BDBD0000BDBD0000000000000000000000
      000000FFFF00000000000000000000FFFF000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000000000000000000084008400000000000000
      000000000000FFFF0000FFFF0000FFFFFF00FFFF0000FFFF0000FFFFFF008400
      0000840000000000000000000000000000000000000000BDBD0000BDBD000000
      000000FFFF0000FFFF000000000000FFFF0000FFFF0000BDBD0000FFFF0000FF
      FF000000000000FFFF0000FFFF00000000008484840084848400FFFFFF008484
      840084848400FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF000000FF000000FF0000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000000000000000000084008400000000000000
      000000000000FFFF0000FFFF0000FFFFFF00FFFF0000FFFF0000FFFFFF008400
      0000840000000000000000000000000000000000000000BDBD0000BDBD000000
      000000FFFF0000FFFF000000000000FFFF0000FFFF0000BDBD0000FFFF0000FF
      FF000000000000FFFF0000FFFF00000000008484840084848400FFFFFF008484
      840084848400FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840084008400840000000000840084008400
      840000000000FFFFFF00FFFFFF00FFFF0000FFFFFF00FFFFFF00FFFF00008400
      00008400000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000BDBD0000FFFF0000FFFF000000000000BDBD0000BD
      BD0000FFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000000000000000000084008400000000000000
      000000000000FFFF0000FFFF0000FFFFFF00FFFF0000FFFF0000FFFFFF008400
      0000840000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000BDBD0000BDBD0000FFFF0000BDBD0000BDBD0000FFFF0000FFFF0000FF
      FF00000000000000000000000000FFFFFF008484840084848400FFFFFF008484
      840084848400FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000000000000000000084008400000000000000
      000000000000FFFF0000FFFF0000FFFFFF00FFFF0000FFFF0000FFFFFF008400
      0000840000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000BDBD0000BDBD0000FFFF0000BDBD0000BDBD0000FFFF0000FFFF0000FF
      FF00000000000000000000000000FFFFFF008484840084848400FFFFFF008484
      840084848400FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000008400000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      00008400000000000000000000000000000084848400848484008484840000BD
      BD00000000000000000000BDBD0000FFFF0000FFFF0000BDBD0000FFFF0000FF
      FF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000BDBD0000BDBD0000FFFF0000BDBD0000BD
      BD0000FFFF000000000000000000FFFFFF008484840084848400FFFFFF008484
      840084848400FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000BDBD0000BDBD0000FFFF0000BDBD0000BD
      BD0000FFFF000000000000000000FFFFFF008484840084848400FFFFFF008484
      840084848400FFFFFF0000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF008484
      8400000000000000000000BDBD0000FFFF0000FFFF0000BDBD0000FFFF0000FF
      FF00000000000000000000000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF000000
      FF000000FF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF000000FF
      000000FF000000FF000000FF000000FF00000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF008484840000FFFF0000FFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF000000FF
      000000FF000000FF000000FF000000FF00000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF008484840000FFFF0000FFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000A80000000100010000000000E00700000000000000000000
      000000000000000000000000FFFFFF00F80001000000000000000000FC000300
      0000000000000000FC0003000000000000000000FE0007000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000F80001F80001F80001F80001FC0003FC
      0003FC0003FC0003FC0003FC0003FC0003FC0003FE0007FE0007FE0007FE0007
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFF80001F80001F80001FFFFFFFC
      0003FC0003FC0003FFFFFFFC0003FC0003FC0003FFFFFFFE0007FE0007FE0007
      FFFFFF000000000000000000FFFFFF000000000000000000FFFFFF0000000000
      00000000FFC7FF000000000000000000FF0FFF000000000000000000FF1FFF00
      0000000000000000FE3FFF000000000000000000FE7FFF000000000000000000
      FE707F000000000000000000FE387F000000000000000000FE107F0000000000
      00000000FF007F000000000000000000FF837F000000000000000000FFFFFF00
      0000000000000000FFFFFF000000000000000000FFFFFF000000000000000000
      FFFFFF000000000000000000FFFFFF000000000000000000FFFFFF0000000000
      00000000FFFFFF000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFC7FFFFC7FFFFC7FFFFC7FFFF0FFFFF0FFFFF0FFFFF0FFFFF1FFFFF
      1FFFFF1FFFFF1FFFFE3FFFFE3FFFFE3FFFFE3FFFFE7FFFFE7FFFFE7FFFFE7FFF
      FE707FFE707FFE707FFE707FFE387FFE387FFE387FFE387FFE107FFE107FFE10
      7FFE107FFF007FFF007FFF007FFF007FFF837FFF837FFF837FFF837FFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800003FFFFFFEFBEFBFFF7FE800003FF
      FFFFEFBEFB1FE7F89E7FDBFFFFFFEDB6DB8C0001924EDB000000000000C00003
      924EDB000000000000E00007800003603000EFFFFFF0000FF0003F00300083FE
      FFF0000FF0003F00300083FEFFF0000FF000FF603000ED893FF0000FF040FF00
      3000000000F0000FF040FF003000000000F0000FF0063F603000EE77DF000003
      F0061F00300083C9DF000000F0061F00300083C9DFC00000F00E07603000EDB9
      07F0001FF03E07003000000000F0003FF03E07003000000000F0007FF07F0360
      3000EE7FE7F0003FF1FF030000008E7FFBF0011FF1FF030000008E7FFBF0039F
      F3FFC063F7FCEFFFFFE007C7FFFFC300000000000087C7E3FFFFC30000000000
      000FC7F1FFFFFFFFFFFFFFFFFF7FCFFDFFF7FEFFFFFF800000FFFFFF1FE7F8FF
      FFFF800000FFFFFF8C0001FFFFFF000000FFFFFFC00003800003000000800703
      E00007A02003000000800703F0000F802003020000800703F0000FA020030000
      00800703F0000F802003000000800703F0000FA02003000000800703F0000F80
      2003000000800703F0000FA02003000000800703000003A02003000000800703
      000000802003000000800703C00000A02003000000800703F0001F8020030000
      00800003F0003FA02003000000800003F0007F802003000000800003F0003FA0
      2003000000800003F0011F800003000000800003F0039FA7E7FB000000800003
      E007C780000300000080000387C7E3FFFFFF0000008000030FC7F1FFFFFF0000
      008000037FCFFDFFFFFF000000800003FD8007FFFFFFBFFFFFBFFFFFFD8007FF
      FFFFBFFFFFBFFFFFFC4007FFFF07BC0223BC03FFFDB007FFFE03BC03FFBC03FF
      FDB007FFFE038003FF8003A4FC4007FFF803BC03FFBC03FFFDB007FFF003BC03
      FFBC03FFFDB007FFF003BE3FFFBE3FFFFC4007FF8000BFFFFFBFFFA4FDB007E0
      0000BFFFFFBFFFFFFDB007E00000BC0223BC03FFFC4007800000BC03FFBC03FF
      FDB0071200008003FF8003A4FDB007120000BC03FFBC03FFFC4007604000BC03
      FFBC03FFFDB007000000BE3FFFBE3FFFFDB007000000BFFFFFBFFFA4FC000700
      0800BFFFFFBFFFFFFFFFFF6C00000088FF00FFFFFFFFFF6C000000FFFF00FFFF
      FF803F00080000FFFF00FFA4FF803F80300000FFFF00FFFFFF803F80300000FF
      FF00FFFFFF803FE00FFF8FFFFF8FFFFF00000000000000000000000000000000
      000000000000}
  end
  object pmToolbars: TPopupMenu
    Images = ilSmallImages
    Left = 32
    Top = 304
  end
  object tmrMllChanges: TTimer
    Enabled = False
    Interval = 300000
    OnTimer = tmrMllChangesTimer
    Left = 72
    Top = 240
  end
  object cdsXModelsParams: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 560
    object cdsXModelsParamsENGINEER_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ENGINEER_EMPLOYEE_CODE'
      FieldValueType = fvtInteger
    end
    object cdsXModelsParamsHAS_REQUESTED_CHANGES: TAbmesFloatField
      FieldName = 'HAS_REQUESTED_CHANGES'
      FieldValueType = fvtBoolean
    end
    object cdsXModelsParamsHAS_NOT_REQUESTED_CHANGES: TAbmesFloatField
      FieldName = 'HAS_NOT_REQUESTED_CHANGES'
      FieldValueType = fvtBoolean
    end
    object cdsXModelsParamsHAS_REQUESTED_MY_CHANGES: TAbmesFloatField
      FieldName = 'HAS_REQUESTED_MY_CHANGES'
      FieldValueType = fvtBoolean
    end
    object cdsXModelsParamsHAS_NOT_REQUESTED_MY_CHANGES: TAbmesFloatField
      FieldName = 'HAS_NOT_REQUESTED_MY_CHANGES'
      FieldValueType = fvtBoolean
    end
    object cdsXModelsParamsHAS_REJECTED_CHANGES: TAbmesFloatField
      FieldName = 'HAS_REJECTED_CHANGES'
      FieldValueType = fvtBoolean
    end
    object cdsXModelsParamsHAS_NOT_REJECTED_CHANGES: TAbmesFloatField
      FieldName = 'HAS_NOT_REJECTED_CHANGES'
      FieldValueType = fvtBoolean
    end
    object cdsXModelsParamsHAS_REJECTED_MY_CHANGES: TAbmesFloatField
      FieldName = 'HAS_REJECTED_MY_CHANGES'
      FieldValueType = fvtBoolean
    end
    object cdsXModelsParamsHAS_NOT_REJECTED_MY_CHANGES: TAbmesFloatField
      FieldName = 'HAS_NOT_REJECTED_MY_CHANGES'
      FieldValueType = fvtBoolean
    end
  end
  object pmPendingMLLChanges: TPopupMenu
    Images = ilSmallImages
    Left = 592
    Top = 80
    object miRefreshPendingMllChanges: TMenuItem
      Action = actRefreshPendingMllChanges
    end
    object mlMllcRequestedMyChange: TMenuItem
      Caption = '-'
    end
    object miMllcRequestedMyChange: TMenuItem
      Action = actMllcRequestedMyChanges
    end
    object miMllcRejectedMyChange: TMenuItem
      Action = actMllcRejectedMyChanges
    end
    object mlMllcMyMLRequestedChange: TMenuItem
      Caption = '-'
    end
    object miMllcMyMLRequestedChange: TMenuItem
      Action = actMllcMyMlRequestedChanges
    end
    object miMllcMyMLRejectedChange: TMenuItem
      Action = actMllcMyMlRejectedChanges
    end
    object mlMllcRequestedChange: TMenuItem
      Caption = '-'
    end
    object miMllcRequestedChange: TMenuItem
      Action = actMllcRequestedChanges
    end
    object miMllcRejectedChange: TMenuItem
      Action = actMllcRejectedChanges
    end
  end
  object pmCaption: TPopupMenu
    Images = ilSmallImages
    MenuAnimation = [maTopToBottom]
    OnPopup = pmCaptionPopup
    Top = 336
    object miDateFormat: TMenuItem
      Caption = #1060#1086#1088#1084#1072#1090' '#1085#1072' '#1076#1072#1090#1080
      object miMonthDateFormat: TMenuItem
        Action = actMonthDateFormat
        AutoCheck = True
        GroupIndex = 30
        RadioItem = True
      end
      object miWeekDateFormat: TMenuItem
        Action = actWeekDateFormat
        AutoCheck = True
        GroupIndex = 30
        RadioItem = True
      end
      object mlBeginEndDateIntervalFormat: TMenuItem
        Caption = '-'
        GroupIndex = 30
      end
      object miBeginEndDateIntervalFormat: TMenuItem
        Action = actBeginEndDateIntervalFormat
        AutoCheck = True
        GroupIndex = 31
        RadioItem = True
      end
      object miBeginDaysDateIntervalFormat: TMenuItem
        Action = actBeginDaysDateIntervalFormat
        AutoCheck = True
        GroupIndex = 31
        RadioItem = True
      end
      object miBeginWorkdaysDateIntervalFormat: TMenuItem
        Action = actBeginWorkdaysDateIntervalFormat
        AutoCheck = True
        GroupIndex = 31
        RadioItem = True
      end
    end
    object mlCaptionToolbarMenu: TMenuItem
      Caption = '-'
    end
    object miCaptionToolbarMenu: TMenuItem
      Caption = #1051#1077#1085#1090#1080' '#1089' &'#1073#1091#1090#1086#1085#1080
    end
    object miCaptionChangeRequestsMenu: TMenuItem
      Caption = '&'#1047#1072#1084#1077#1085#1080
    end
    object miCaptionExceptEventIndicators: TMenuItem
      Caption = #1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103
    end
    object miCaptionExceptEventTaskIndicators: TMenuItem
      Caption = #1055#1072#1082#1077#1090#1080' '#1086#1090' '#1052#1077#1088#1082#1080
    end
    object mlCaptionHumanResourceMenu: TMenuItem
      Caption = '-'
    end
  end
  object cdsPendingChangeCounts: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conModelChanges
    Params = <
      item
        DataType = ftFloat
        Name = 'USER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'USER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'USER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'USER_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvPendingChangeCounts'
    Left = 528
    object cdsPendingChangeCountsPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField
      FieldName = 'PROD_ORDER_BASE_TYPE_CODE'
    end
    object cdsPendingChangeCountsREQUESTED_CHANGE_COUNT: TAbmesFloatField
      FieldName = 'REQUESTED_CHANGE_COUNT'
    end
    object cdsPendingChangeCountsREJECTED_CHANGE_COUNT: TAbmesFloatField
      FieldName = 'REJECTED_CHANGE_COUNT'
    end
    object cdsPendingChangeCountsREQUESTED_MY_CHANGE_COUNT: TAbmesFloatField
      FieldName = 'REQUESTED_MY_CHANGE_COUNT'
    end
    object cdsPendingChangeCountsREJECTED_MY_CHANGE_COUNT: TAbmesFloatField
      FieldName = 'REJECTED_MY_CHANGE_COUNT'
    end
    object cdsPendingChangeCountsMY_ML_REQUESTED_CHANGE_COUNT: TAbmesFloatField
      FieldName = 'MY_ML_REQUESTED_CHANGE_COUNT'
    end
    object cdsPendingChangeCountsMY_ML_REJECTED_CHANGE_COUNT: TAbmesFloatField
      FieldName = 'MY_ML_REJECTED_CHANGE_COUNT'
    end
  end
  object pmMllcRequestedChanges: TPopupMenu
    Images = ilSmallImages
    Left = 680
  end
  object pmMllcRejectedChanges: TPopupMenu
    Images = ilSmallImages
    Left = 680
    Top = 32
  end
  object pmMllcRequestedMyChanges: TPopupMenu
    Images = ilSmallImages
    Left = 616
  end
  object pmMllcRejectedMyChanges: TPopupMenu
    Images = ilSmallImages
    Left = 616
    Top = 32
  end
  object pmMllcMyMlRequestedChanges: TPopupMenu
    Images = ilSmallImages
    Left = 648
  end
  object pmMllcMyMlRejectedChanges: TPopupMenu
    Images = ilSmallImages
    Left = 648
    Top = 32
  end
  object cdsCustomMenuItems: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conDoc
    Params = <>
    ProviderName = 'prvCustomMenuItems'
    Left = 496
    object cdsCustomMenuItemsCUSTOM_MENU_ITEM_CODE: TAbmesFloatField
      FieldName = 'CUSTOM_MENU_ITEM_CODE'
    end
    object cdsCustomMenuItemsCUSTOM_MENU_ITEM_NAME: TAbmesWideStringField
      FieldName = 'CUSTOM_MENU_ITEM_NAME'
      Size = 100
    end
    object cdsCustomMenuItemsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsCustomMenuItemsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsCustomMenuItemsRELATIVE_MENU_ITEM_NAME: TAbmesWideStringField
      FieldName = 'RELATIVE_MENU_ITEM_NAME'
      Size = 100
    end
    object cdsCustomMenuItemsIS_BEFORE_MENU_ITEM: TAbmesFloatField
      FieldName = 'IS_BEFORE_MENU_ITEM'
      FieldValueType = fvtBoolean
    end
    object cdsCustomMenuItemsHAS_MENU_LINE_BEFORE: TAbmesFloatField
      FieldName = 'HAS_MENU_LINE_BEFORE'
      FieldValueType = fvtBoolean
    end
    object cdsCustomMenuItemsHAS_MENU_LINE_AFTER: TAbmesFloatField
      FieldName = 'HAS_MENU_LINE_AFTER'
      FieldValueType = fvtBoolean
    end
    object cdsCustomMenuItemsIS_IN_CAPTION_MENU: TAbmesFloatField
      FieldName = 'IS_IN_CAPTION_MENU'
      FieldValueType = fvtBoolean
    end
    object cdsCustomMenuItemsIS_SUBMENU: TAbmesFloatField
      FieldName = 'IS_SUBMENU'
      FieldValueType = fvtBoolean
    end
  end
  object cdsProductionOrderBaseTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conMfgReports
    Params = <>
    ProviderName = 'prvProductionOrderBaseTypes'
    Left = 464
    object cdsProductionOrderBaseTypesPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField
      FieldName = 'PROD_ORDER_BASE_TYPE_CODE'
    end
    object cdsProductionOrderBaseTypesPROD_ORDER_BASE_TYPE_NO: TAbmesFloatField
      FieldName = 'PROD_ORDER_BASE_TYPE_NO'
    end
    object cdsProductionOrderBaseTypesPROD_ORDER_BASE_TYPE_NAME: TAbmesWideStringField
      FieldName = 'PROD_ORDER_BASE_TYPE_NAME'
      Size = 100
    end
    object cdsProductionOrderBaseTypesPROD_ORDER_BASE_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'PROD_ORDER_BASE_TYPE_ABBREV'
      Size = 100
    end
    object cdsProductionOrderBaseTypesPROD_ORDER_BASE_TYPE_NAME_PL: TAbmesWideStringField
      FieldName = 'PROD_ORDER_BASE_TYPE_NAME_PL'
      Required = True
      Size = 100
    end
    object cdsProductionOrderBaseTypesPROD_ORDER_BASE_TYPE_ABBREV_PL: TAbmesWideStringField
      FieldName = 'PROD_ORDER_BASE_TYPE_ABBREV_PL'
      Required = True
      Size = 100
    end
  end
  object pmProductionOrderMenuTemplate: TPopupMenu
    Left = 32
    Top = 336
    object miNewProductionOrder: TMenuItem
      Tag = 1
      Action = actNewProductionOrder
    end
    object miProductionOrders: TMenuItem
      Action = actProductionOrders
    end
    object miXModels: TMenuItem
      Action = actXModels
    end
    object miModelsInvestedValues: TMenuItem
      Action = actModelsInvestedValues
    end
    object mlStageLevelTasks: TMenuItem
      Caption = '-'
    end
    object miStageLevelTasks: TMenuItem
      Action = actStageLevelTasks
    end
    object miOperationalTasks: TMenuItem
      Action = actOperationalTasks
    end
    object miSpecialControlTasks: TMenuItem
      Action = actSpecialControlTasks
    end
    object mlModelMovementsOverview: TMenuItem
      Caption = '-'
    end
    object miModelMovementsOverview: TMenuItem
      Action = actModelMovementsOverview
    end
    object miOperationMovements: TMenuItem
      Action = actOperationMovements
    end
    object mlExceptEventsProduction: TMenuItem
      Caption = '-'
    end
    object miExceptEventsProduction: TMenuItem
      Action = actExceptEventsProduction
    end
  end
  object cdsToolbars: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conLogin
    Filtered = True
    IndexFieldNames = 'TOOLBAR_CATEGORY_CODE;TOOLBAR_NO;TOOLBAR_CODE'
    Params = <>
    ProviderName = 'prvToolbars'
    OnFilterRecord = cdsToolbarsFilterRecord
    Left = 464
    Top = 32
    object cdsToolbarsCROSS_STATE_CODE: TAbmesFloatField
      FieldName = 'CROSS_STATE_CODE'
    end
    object cdsToolbarsTOOLBAR_CODE: TAbmesFloatField
      FieldName = 'TOOLBAR_CODE'
    end
    object cdsToolbarsTOOLBAR_NAME: TAbmesWideStringField
      FieldName = 'TOOLBAR_NAME'
      Size = 100
    end
    object cdsToolbarsTOOLBAR_CATEGORY_CODE: TAbmesFloatField
      FieldName = 'TOOLBAR_CATEGORY_CODE'
    end
    object cdsToolbarsTOOLBAR_CATEGORY_ACTIVITY_CODE: TAbmesFloatField
      FieldName = 'TOOLBAR_CATEGORY_ACTIVITY_CODE'
    end
    object cdsToolbarsTOOLBAR_NO: TAbmesFloatField
      FieldName = 'TOOLBAR_NO'
    end
  end
  object cdsUserToolbars: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conLogin
    Filtered = True
    IndexFieldNames = 'TOOLBAR_CODE'
    Params = <
      item
        DataType = ftFloat
        Name = 'USER_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvUserToolbars'
    OnFilterRecord = cdsUserToolbarsFilterRecord
    OnReconcileError = cdsUserToolbarsReconcileError
    Left = 496
    Top = 32
    object cdsUserToolbarsEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
    end
    object cdsUserToolbarsCROSS_STATE_CODE: TAbmesFloatField
      FieldName = 'CROSS_STATE_CODE'
    end
    object cdsUserToolbarsTOOLBAR_CODE: TAbmesFloatField
      FieldName = 'TOOLBAR_CODE'
    end
  end
  object tmrExceptEventIndicators: TTimer
    Enabled = False
    Interval = 300000
    OnTimer = tmrExceptEventIndicatorsTimer
    Left = 704
    Top = 120
  end
  object cdsExceptEventIndicatorCounts: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conExceptEvents
    Params = <
      item
        DataType = ftFloat
        Name = 'USER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'USER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'USER_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvExceptEventIndicatorCounts'
    Left = 672
    Top = 152
    object cdsExceptEventIndicatorCountsEE_NOT_ACCEPTED: TAbmesFloatField
      FieldName = 'EE_NOT_ACCEPTED'
    end
    object cdsExceptEventIndicatorCountsEE_NOT_ACTIVATED: TAbmesFloatField
      FieldName = 'EE_NOT_ACTIVATED'
    end
    object cdsExceptEventIndicatorCountsEE_ACTIVATED: TAbmesFloatField
      FieldName = 'EE_ACTIVATED'
    end
    object cdsExceptEventIndicatorCountsEE_CTRL_EMP_NOT_ACCEPTED: TAbmesFloatField
      FieldName = 'EE_CTRL_EMP_NOT_ACCEPTED'
    end
    object cdsExceptEventIndicatorCountsEE_CTRL_EMP_NOT_ACTIVATED: TAbmesFloatField
      FieldName = 'EE_CTRL_EMP_NOT_ACTIVATED'
    end
    object cdsExceptEventIndicatorCountsEE_CTRL_EMP_ACTIVATED: TAbmesFloatField
      FieldName = 'EE_CTRL_EMP_ACTIVATED'
    end
    object cdsExceptEventIndicatorCountsEE_CTRL_DEPT_NOT_ACCEPTED: TAbmesFloatField
      FieldName = 'EE_CTRL_DEPT_NOT_ACCEPTED'
    end
    object cdsExceptEventIndicatorCountsEE_CTRL_DEPT_NOT_ACTIVATED: TAbmesFloatField
      FieldName = 'EE_CTRL_DEPT_NOT_ACTIVATED'
    end
    object cdsExceptEventIndicatorCountsEE_CTRL_DEPT_ACTIVATED: TAbmesFloatField
      FieldName = 'EE_CTRL_DEPT_ACTIVATED'
    end
  end
  object cdsExceptEventTaskIndicatorCounts: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conExceptEvents
    Params = <
      item
        DataType = ftFloat
        Name = 'USER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'USER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'USER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'USER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'USER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'USER_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvExceptEventTaskIndicatorCounts'
    Left = 704
    Top = 152
    object cdsExceptEventTaskIndicatorCountsEET_REAL_EMP_NOT_ACTIVATED: TAbmesFloatField
      FieldName = 'EET_REAL_EMP_NOT_ACTIVATED'
    end
    object cdsExceptEventTaskIndicatorCountsEET_REAL_EMP_ACTIVATED: TAbmesFloatField
      FieldName = 'EET_REAL_EMP_ACTIVATED'
    end
    object cdsExceptEventTaskIndicatorCountsEET_REAL_EMP_PROBLEMS: TAbmesFloatField
      FieldName = 'EET_REAL_EMP_PROBLEMS'
    end
    object cdsExceptEventTaskIndicatorCountsEET_REAL_DEPT_NOT_ACTIVATED: TAbmesFloatField
      FieldName = 'EET_REAL_DEPT_NOT_ACTIVATED'
    end
    object cdsExceptEventTaskIndicatorCountsEET_REAL_DEPT_ACTIVATED: TAbmesFloatField
      FieldName = 'EET_REAL_DEPT_ACTIVATED'
    end
    object cdsExceptEventTaskIndicatorCountsEET_REAL_DEPT_PROBLEMS: TAbmesFloatField
      FieldName = 'EET_REAL_DEPT_PROBLEMS'
    end
    object cdsExceptEventTaskIndicatorCountsEET_CTRL_NOT_ACTIVATED: TAbmesFloatField
      FieldName = 'EET_CTRL_NOT_ACTIVATED'
    end
    object cdsExceptEventTaskIndicatorCountsEET_CTRL_ACTIVATED: TAbmesFloatField
      FieldName = 'EET_CTRL_ACTIVATED'
    end
    object cdsExceptEventTaskIndicatorCountsEET_CTRL_PROBLEMS: TAbmesFloatField
      FieldName = 'EET_CTRL_PROBLEMS'
    end
    object cdsExceptEventTaskIndicatorCountsEET_CTRL_EMP_NOT_ACTIVATED: TAbmesFloatField
      FieldName = 'EET_CTRL_EMP_NOT_ACTIVATED'
    end
    object cdsExceptEventTaskIndicatorCountsEET_CTRL_EMP_ACTIVATED: TAbmesFloatField
      FieldName = 'EET_CTRL_EMP_ACTIVATED'
    end
    object cdsExceptEventTaskIndicatorCountsEET_CTRL_EMP_PROBLEMS: TAbmesFloatField
      FieldName = 'EET_CTRL_EMP_PROBLEMS'
    end
    object cdsExceptEventTaskIndicatorCountsEET_CTRL_DEPT_NOT_ACTIVATED: TAbmesFloatField
      FieldName = 'EET_CTRL_DEPT_NOT_ACTIVATED'
    end
    object cdsExceptEventTaskIndicatorCountsEET_CTRL_DEPT_ACTIVATED: TAbmesFloatField
      FieldName = 'EET_CTRL_DEPT_ACTIVATED'
    end
    object cdsExceptEventTaskIndicatorCountsEET_CTRL_DEPT_PROBLEMS: TAbmesFloatField
      FieldName = 'EET_CTRL_DEPT_PROBLEMS'
    end
  end
  object pmExceptEventIndicators: TPopupMenu
    Images = ilSmallImages
    Left = 672
    Top = 184
    object miRefreshExceptEventCounts: TMenuItem
      Action = actRefreshExceptEventCounts
    end
    object mlExceptEventUserIndicators: TMenuItem
      Caption = '-'
    end
    object miExceptEventUserNotActivated: TMenuItem
      Action = actExceptEventUserNotActivated
    end
    object miExceptEventUserActivated: TMenuItem
      Action = actExceptEventUserActivated
    end
    object miExceptEventTaskCtrlUserNotActivated: TMenuItem
      Action = actExceptEventTaskCtrlUserNotActivated
    end
    object miExceptEventTaskCtrlUserActivated: TMenuItem
      Action = actExceptEventTaskCtrlUserActivated
    end
    object mlExceptEventDeptIndicators: TMenuItem
      Caption = '-'
    end
    object miExceptEventDeptNotActivated: TMenuItem
      Action = actExceptEventDeptNotActivated
    end
    object miExceptEventDeptActivated: TMenuItem
      Action = actExceptEventDeptActivated
    end
    object miExceptEventTaskCtrlDeptNotActivated: TMenuItem
      Action = actExceptEventTaskCtrlDeptNotActivated
    end
    object miExceptEventTaskCtrlDeptActivated: TMenuItem
      Action = actExceptEventTaskCtrlDeptActivated
    end
    object mlExceptEventIndicators: TMenuItem
      Caption = '-'
    end
    object miExceptEventNotActivated: TMenuItem
      Action = actExceptEventNotActivated
    end
    object miExceptEventActivated: TMenuItem
      Action = actExceptEventActivated
    end
    object miExceptEventTaskCtrlNotActivated: TMenuItem
      Action = actExceptEventTaskCtrlNotActivated
    end
    object miExceptEventTaskCtrlActivated: TMenuItem
      Action = actExceptEventTaskCtrlActivated
    end
  end
  object cdsExceptEventsFromIndicatorParams: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 672
    Top = 96
    object cdsExceptEventsFromIndicatorParamsMIN_STATE_CODE: TAbmesFloatField
      FieldName = 'MIN_STATE_CODE'
    end
    object cdsExceptEventsFromIndicatorParamsMAX_STATE_CODE: TAbmesFloatField
      FieldName = 'MAX_STATE_CODE'
    end
    object cdsExceptEventsFromIndicatorParamsCTRL_MAIN_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CTRL_MAIN_EMPLOYEE_CODE'
    end
    object cdsExceptEventsFromIndicatorParamsCTRL_DEPTS_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CTRL_DEPTS_EMPLOYEE_CODE'
    end
    object cdsExceptEventsFromIndicatorParamsIS_FILTERED_BY_TASKS: TAbmesFloatField
      FieldName = 'IS_FILTERED_BY_TASKS'
      FieldValueType = fvtBoolean
    end
    object cdsExceptEventsFromIndicatorParamsMIN_TASK_STATE_CODE: TAbmesFloatField
      FieldName = 'MIN_TASK_STATE_CODE'
    end
    object cdsExceptEventsFromIndicatorParamsMAX_TASK_STATE_CODE: TAbmesFloatField
      FieldName = 'MAX_TASK_STATE_CODE'
    end
    object cdsExceptEventsFromIndicatorParamsTASK_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'TASK_EMPLOYEE_CODE'
    end
    object cdsExceptEventsFromIndicatorParamsTASK_DEPTS_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'TASK_DEPTS_EMPLOYEE_CODE'
    end
    object cdsExceptEventsFromIndicatorParamsMIN_EXCEPT_EVENT_LEVEL_CODE: TAbmesFloatField
      FieldName = 'MIN_EXCEPT_EVENT_LEVEL_CODE'
    end
  end
  object pmExceptEventTaskRealIndicators: TPopupMenu
    Images = ilSmallImages
    Left = 704
    Top = 184
    object miRefreshExceptEventTaskRealCounts: TMenuItem
      Action = actRefreshExceptEventCounts
    end
    object mlExceptEventTaskRealUser: TMenuItem
      Caption = '-'
    end
    object actExceptEventTaskRealUserNotActivated1: TMenuItem
      Action = actExceptEventTaskRealUserNotActivated
    end
    object actExceptEventTaskRealUserActivated1: TMenuItem
      Action = actExceptEventTaskRealUserActivated
    end
    object mlExceptEventTaskRealDept: TMenuItem
      Caption = '-'
    end
    object actExceptEventTaskRealDeptNotActivated1: TMenuItem
      Action = actExceptEventTaskRealDeptNotActivated
    end
    object actExceptEventTaskRealDeptActivated1: TMenuItem
      Action = actExceptEventTaskRealDeptActivated
    end
  end
  object cdsExceptEventsParams: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 704
    Top = 96
    object cdsExceptEventsParamsMAX_STATE_CODE: TAbmesFloatField
      FieldName = 'MAX_STATE_CODE'
    end
    object cdsExceptEventsParamsEXCEPT_EVENT_GEN_TYPE_CODE: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_GEN_TYPE_CODE'
    end
    object cdsExceptEventsParamsOM_BRANCH_CODE: TAbmesFloatField
      FieldName = 'OM_BRANCH_CODE'
    end
    object cdsExceptEventsParamsOM_CODE: TAbmesFloatField
      FieldName = 'OM_CODE'
    end
    object cdsExceptEventsParamsSALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_BRANCH_CODE'
    end
    object cdsExceptEventsParamsSALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_CODE'
    end
    object cdsExceptEventsParamsDCD_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_BRANCH_CODE'
    end
    object cdsExceptEventsParamsDCD_OBJECT_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_CODE'
    end
    object cdsExceptEventsParamsDELIVERY_PROJECT_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_PROJECT_CODE'
    end
  end
  object tmrClock: TTimer
    OnTimer = tmrClockTimer
    Left = 192
    Top = 24
  end
  object tmrDisconnected: TTimer
    OnTimer = tmrDisconnectedTimer
    Left = 104
    Top = 240
  end
end
