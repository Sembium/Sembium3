inherited fmDeptsTreeEditor: TfmDeptsTreeEditor
  Left = 295
  Top = 202
  Caption = #1057#1090#1088#1091#1082#1090#1091#1088#1072' '#1085#1072' '#1058#1077#1093#1085#1086#1083#1086#1075#1080#1095#1085#1072#1090#1072' '#1057#1088#1077#1076#1072
  ClientHeight = 564
  ClientWidth = 984
  PixelsPerInch = 96
  TextHeight = 13
  inherited sptMain: TSplitter
    Left = 350
    Top = 26
    Height = 353
  end
  inherited pnlBottomButtons: TPanel
    Top = 519
    Width = 984
    inherited bvlFind: TBevel
      Width = 984
    end
    inherited pnlOKCancel: TPanel
      Left = 805
    end
    inherited pnlClose: TPanel
      Left = 716
    end
  end
  inherited pnlTree: TPanel
    Top = 26
    Width = 350
    Height = 353
    inherited tvTree: TTreeView
      Width = 350
      Height = 353
    end
  end
  inherited clbMain: TCoolBar
    Width = 984
    Height = 26
    Bands = <
      item
        Control = cbParents
        ImageIndex = -1
        MinHeight = 22
        MinWidth = 150
        Width = 301
      end
      item
        Break = False
        Control = tlbButtons
        ImageIndex = -1
        MinHeight = 22
        MinWidth = 250
        Width = 309
      end
      item
        Break = False
        Control = pnlNavChildren
        ImageIndex = -1
        MinHeight = 22
        MinWidth = 329
        Width = 360
      end>
    inherited pnlNavChildren: TPanel
      Left = 629
      Top = 0
      Width = 351
      ParentShowHint = False
      ShowHint = True
      inherited navChildren: TDBColorNavigator
        Width = 110
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
        Hints.Strings = ()
      end
      inherited tlbEditChildren: TToolBar
        Left = 110
        Width = 184
        Align = alLeft
        AutoSize = True
        Images = dmMain.ilActions
        inherited btnDel: TToolButton
          DropdownMenu = nil
        end
        inherited btnEdit: TToolButton
          DropdownMenu = nil
        end
        object sepSpecDocStatus: TToolButton
          Left = 92
          Top = 0
          Width = 8
          Caption = 'sepSpecDocStatus'
          ImageIndex = 114
          Style = tbsSeparator
        end
        object btnDeptDetailFlow: TToolButton
          Left = 100
          Top = 0
          Hint = #1055#1086#1090#1086#1094#1080' '#1087#1088#1077#1079' '#1058#1055' - '#1054#1087#1077#1088#1072#1094#1080#1086#1085#1085#1086' '#1053#1080#1074#1086
          Action = actOperationLevelDeptDetailFlow
          DropdownMenu = pmDeptDetailFlow
          ImageIndex = 150
          Style = tbsDropDown
        end
        object btnSpecDocStatus: TToolButton
          Left = 138
          Top = 0
          Action = actSpecDocStatus
        end
        object btnStoreQuantities: TToolButton
          Left = 161
          Top = 0
          Action = actStoreQuantities
        end
      end
      object tlbDocs: TToolBar
        Left = 294
        Top = 0
        Width = 39
        Height = 22
        Align = alLeft
        AutoSize = True
        ButtonWidth = 39
        Images = dmMain.ilDocs
        TabOrder = 2
        object btnDocs: TToolButton
          Left = 0
          Top = 0
          Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' '#1080#1079#1073#1088#1072#1085#1086#1090#1086' '#1058#1055
          ImageIndex = 1
          OnClick = btnDocsClick
        end
      end
    end
    inherited tlbButtons: TToolBar
      Left = 316
      Width = 296
      object btnShowDocs: TToolButton
        Left = 269
        Top = 0
        Action = actShowDocs
      end
    end
    inherited cbParents: TTreeParentsComboBox
      Width = 297
      ExpandedLevels = 3
    end
  end
  inherited pnlDetails: TPanel
    Left = 352
    Top = 26
    Width = 632
    Height = 353
    DesignSize = (
      632
      353)
    inherited sptParams: TSplitter
      Top = 51
      Width = 632
      MinSize = 1
      OnMoved = sptParamsMoved
    end
    inherited grdChildren: TAbmesDBGrid
      Width = 632
      Height = 34
      OnGetCellParams = grdChildrenGetCellParams
      Columns = <
        item
          EditButtons = <>
          FieldName = 'NODE_NAME'
          Footers = <>
          Width = 287
        end
        item
          EditButtons = <>
          FieldName = 'SHOW_NO'
          Footers = <>
          Title.Caption = #1050#1086#1076
          Width = 63
        end
        item
          Alignment = taCenter
          Color = 15532031
          EditButtons = <>
          FieldName = 'DOC_EMPTINESS_REQUIREMENT_CODE'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1052#1048#1048#1054
          Width = 50
        end
        item
          Alignment = taCenter
          Color = 15532031
          EditButtons = <>
          FieldName = 'UNAUTHORIZED_ACTIVE_DI_COUNT'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1048#1048#1054
          Width = 50
        end>
    end
    inherited pnlHeader: TPanel
      Width = 632
      inherited hcChildren: THeaderControl
        Width = 632
      end
    end
    inherited frTreeNodeParams: TfrTreeNodeParams
      Top = 233
      Width = 632
      inherited pnlCaption: TPanel
        Width = 632
        inherited tlbButtons: TToolBar
          Left = 590
        end
        inherited tlbDocs: TToolBar
          Left = 317
        end
        inherited pnlCaptionLeft: TPanel
          Width = 315
        end
        inherited tlbShowNotDefined: TToolBar
          Left = 550
        end
      end
      inherited grdParams: TAbmesDBGrid
        Width = 632
        OnDblClick = frTreeNodeParamsgrdParamsDblClick
        OnGetCellParams = frTreeNodeParamsgrdParamsGetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'PARAM_VALUE'
            Footers = <>
            Title.Caption = #1057#1090#1072#1090#1091#1089
            Width = 39
            OnGetCellParams = grdParamsColumns0GetCellParams
          end
          item
            Alignment = taLeftJustify
            EditButtons = <>
            FieldName = 'IS_MAIN'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'NODE_PARAM_NAME'
            Footers = <>
            Title.Caption = #1044#1083#1098#1078#1085#1086#1089#1090
            Width = 208
          end
          item
            EditButtons = <>
            FieldName = 'OCCUPATION_PHASE_NAME'
            Footers = <>
            Width = 76
          end
          item
            Alignment = taCenter
            Color = 15532031
            EditButtons = <>
            FieldName = 'DOC_EMPTINESS_REQUIREMENT_CODE'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1052#1048#1048#1054
            Width = 40
          end
          item
            Alignment = taCenter
            Color = 15532031
            EditButtons = <>
            FieldName = 'UNAUTHORIZED_ACTIVE_DI_COUNT'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1048#1048#1054
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'NODE_PARAM_ORDER_NO'
            Footers = <>
            Title.Alignment = taRightJustify
            Title.Caption = #1057#1090#1072#1090#1091#1089
            Visible = False
            Width = 41
          end>
      end
      inherited alActions: TActionList
        inherited actCopyParamValue: TAction
          Hint = #1050#1086#1087#1080#1088#1072' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077#1090#1086' '#1085#1072' '#1076#1083#1098#1078#1085#1086#1089#1090#1090#1072' '#1074' '#1073#1091#1092#1077#1088#1072
        end
      end
      inherited dsData: TDataSource
        DataSet = cdsOccupations
      end
      inherited cdsParams: TAbmesClientDataSet
        ConnectionBroker = dmMain.conDeptsTreeEditor
        AfterOpen = frTreeNodeParamscdsParamsAfterOpen
        BeforeClose = frTreeNodeParamscdsParamsBeforeClose
        AfterScroll = frTreeNodeParamscdsParamsAfterScroll
        inherited cdsParamsPARAM_VALUE: TAbmesWideStringField
          OnGetText = frTreeNodeParamscdsParamsPARAM_VALUEGetText
        end
      end
    end
    object pnlOccupationsUpper: TPanel
      Left = 0
      Top = 239
      Width = 631
      Height = 22
      Alignment = taRightJustify
      Anchors = [akLeft, akRight, akBottom]
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      object navOccupations: TDBColorNavigator
        Left = 0
        Top = 0
        Width = 96
        Height = 22
        DataSource = frTreeNodeParams.dsData
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Align = alLeft
        Flat = True
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
      object tlbOccupations: TToolBar
        Left = 96
        Top = 0
        Width = 169
        Height = 22
        Align = alLeft
        Caption = 'tlbOccupations'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        Images = dmMain.ilActions
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        object sepEditOccupations: TToolButton
          Left = 0
          Top = 0
          Width = 8
          ImageIndex = 0
          Style = tbsSeparator
        end
        object btnAddOccupation: TToolButton
          Left = 8
          Top = 0
          Action = actInsertOccupation
          DropdownMenu = pmInsertOccupationMenu
          ParentShowHint = False
          ShowHint = True
          Style = tbsDropDown
        end
        object btnDelOccupation: TToolButton
          Left = 46
          Top = 0
          Action = actDelOccupation
          ParentShowHint = False
          ShowHint = True
        end
        object btnEditOccupation: TToolButton
          Left = 69
          Top = 0
          Action = actEditOccupation
          ParentShowHint = False
          ShowHint = True
        end
        object sepBeforeShowPastOccupations: TToolButton
          Left = 92
          Top = 0
          Width = 8
          Caption = 'sepBeforeShowPastOccupations'
          Style = tbsSeparator
        end
        object btnShowPastOccupations: TSpeedButton
          Left = 100
          Top = 0
          Width = 23
          Height = 22
          Action = actShowPastOccupations
          AllowAllUp = True
          GroupIndex = 1
          Flat = True
          ParentShowHint = False
          ShowHint = True
          Transparent = False
        end
        object btnShowActiveOccupations: TSpeedButton
          Left = 123
          Top = 0
          Width = 23
          Height = 22
          Action = actShowActiveOccupations
          AllowAllUp = True
          GroupIndex = 2
          Down = True
          Flat = True
          ParentShowHint = False
          ShowHint = True
          Transparent = False
        end
        object btnShowFutureOccupations: TSpeedButton
          Left = 146
          Top = 0
          Width = 23
          Height = 22
          Action = actShowFutureOccupations
          AllowAllUp = True
          GroupIndex = 3
          Down = True
          Flat = True
          ParentShowHint = False
          ShowHint = True
          Transparent = False
        end
      end
      object tlbOccupationsMaximize: TToolBar
        Left = 611
        Top = 0
        Width = 20
        Height = 22
        Align = alRight
        AutoSize = True
        Caption = 'tlbOccupationsMaximize'
        Images = dmMain.ilActions
        TabOrder = 2
        object btnMaximize: TSpeedButton
          Left = 0
          Top = 0
          Width = 20
          Height = 22
          Action = frTreeNodeParams.actMaximize
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Marlett'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Transparent = False
        end
      end
      object pnlOccupationsUpperCaption: TPanel
        Left = 265
        Top = 0
        Width = 346
        Height = 22
        Align = alClient
        BevelOuter = bvNone
        Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1086#1085#1085#1072' '#1063#1072#1089#1090' ('#1054#1088#1063')'
        TabOrder = 3
      end
    end
    object pnlDocs: TPanel
      Left = 0
      Top = 53
      Width = 632
      Height = 180
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 4
      Visible = False
      object bvlDocBottomLine: TBevel
        Left = 0
        Top = 178
        Width = 632
        Height = 2
        Align = alBottom
        Shape = bsBottomLine
      end
      object pnlDocStatusPanels: TPanel
        Left = 0
        Top = 0
        Width = 632
        Height = 24
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          632
          24)
        object pnlDocStatusDeptName: TPanel
          Left = 1
          Top = 2
          Width = 547
          Height = 21
          Anchors = [akLeft, akTop, akRight, akBottom]
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 0
          object txtDeptName: TDBText
            Left = 4
            Top = 4
            Width = 62
            Height = 13
            AutoSize = True
            DataField = 'NODE_NAME'
            DataSource = dsNodeChildren
          end
        end
        object pnlDocStatusDeptNo: TPanel
          Left = 546
          Top = 2
          Width = 86
          Height = 21
          Anchors = [akTop, akRight, akBottom]
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 1
          object txtDeptNo: TDBText
            Left = 4
            Top = 4
            Width = 77
            Height = 13
            DataField = 'NODE_NO'
            DataSource = dsNodeChildren
          end
        end
      end
      inline frDoc: TfrDoc
        Left = 0
        Top = 24
        Width = 632
        Height = 154
        Align = alClient
        Constraints.MinHeight = 62
        TabOrder = 1
        TabStop = True
        inherited pnlMain: TPanel
          Width = 632
          Height = 154
          inherited pnlTop: TPanel
            Width = 632
            inherited pnlTopRight: TPanel
              Left = 542
            end
          end
          inherited pnlBottom: TPanel
            Top = 129
            Width = 632
            inherited pnlCount: TPanel
              Left = 558
              inherited lblCount: TLabel
                Margins.Bottom = 0
              end
            end
          end
          inherited pnlGrid: TPanel
            Width = 632
            Height = 104
            inherited grdClonedDocItems: TAbmesDBGrid
              Width = 632
              Height = 104
              FooterFont.Name = 'Microsoft Sans Serif'
              TitleFont.Name = 'Microsoft Sans Serif'
            end
          end
        end
      end
    end
  end
  inherited pnlFind: TPanel
    Top = 379
    Width = 984
    inherited pnlQuickFind: TPanel
      Width = 984
      inherited pnlQuickFindLeft: TPanel
        Width = 353
        inherited edtFind: TEdit
          Width = 321
        end
      end
      inherited pnlQuickFindClient: TPanel
        Left = 353
        Width = 631
        inherited pnlFindNavigator: TPanel
          Left = 523
          inherited navFind: TDBColorNavigator
            Hints.Strings = ()
          end
        end
        inherited pnlFindResultStatus: TPanel
          Width = 314
        end
      end
    end
    inherited pnlFindDetails: TPanel
      Width = 984
      inherited pnlFindOptions: TPanel
        Width = 350
        inherited bvlFindSeparator: TBevel
          Width = 339
        end
        inherited chbFindNodeName: TAbmesDBCheckBox
          Width = 153
          Caption = #1058#1098#1088#1089#1077#1085#1077' '#1074' '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        end
        inherited chbFindNodeNo: TAbmesDBCheckBox
          Top = 26
          Width = 97
          Caption = #1058#1098#1088#1089#1077#1085#1077' '#1074' '#1050#1086#1076
        end
        inherited chbFindCaseSensitive: TAbmesDBCheckBox
          Width = 249
          TabOrder = 3
        end
        object chkFindProduct: TAbmesDBCheckBox
          Left = 8
          Top = 45
          Width = 198
          Height = 17
          Caption = #1058#1098#1088#1089#1077#1085#1077' '#1074' '#1080#1076#1077#1085#1090#1080#1092#1080#1082#1072#1094#1080#1103' '#1085#1072' '#1054#1087#1052
          DataField = 'FIND_PRODUCT'
          DataSource = dsFindParams
          TabOrder = 2
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
      end
      inherited grdFind: TAbmesDBGrid
        Left = 353
        Width = 631
        Columns = <
          item
            EditButtons = <>
            FieldName = 'NODE_NAME'
            Footers = <>
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 210
          end
          item
            EditButtons = <>
            FieldName = 'SHOW_NO'
            Footers = <>
            Title.Caption = #1050#1086#1076
            Width = 90
          end>
      end
      inherited pnlFindDetailsSeparator: TPanel
        Left = 350
      end
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1057#1090#1088#1091#1082#1090#1091#1088#1072' '#1085#1072' '#1058#1077#1093#1085#1086#1083#1086#1075#1080#1095#1085#1072#1090#1072' '#1057#1088#1077#1076#1072
    end
    object actShowDocs: TAction [9]
      GroupIndex = 5
      Hint = #1052#1048#1048#1054' '#1055#1072#1085#1077#1083
      ImageIndex = 112
      ShortCut = 16457
      OnExecute = actShowDocsExecute
      OnUpdate = actShowDocsUpdate
    end
    inherited actShowParams: TAction
      Hint = #1044#1083#1098#1078#1085#1086#1089#1090#1080
    end
    inherited actFilterParams: TAction
      ImageIndex = 3
    end
    inherited actInsertChild: TAction
      Caption = #1044#1086#1073#1072#1074#1103#1085#1077' '#1085#1072' '#1054#1087#1058#1055'...'
      Hint = #1044#1086#1073#1072#1074#1103#1085#1077' '#1085#1072' '#1054#1087#1058#1055
    end
    inherited actInsertGroup: TAction
      Caption = #1044#1086#1073#1072#1074#1103#1085#1077' '#1085#1072' '#1054#1088#1043#1058#1055'...'
      Hint = #1044#1086#1073#1072#1074#1103#1085#1077' '#1085#1072' '#1054#1088#1043#1058#1055
    end
    object actInsertOccupation: TAction
      Caption = #1044#1086#1073#1072#1074#1103#1085#1077'...'
      Hint = #1044#1086#1073#1072#1074#1103#1085#1077
      ImageIndex = 145
      OnExecute = actInsertOccupationExecute
      OnUpdate = actInsertOccupationUpdate
    end
    object actEditOccupation: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077'...'
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077
      ImageIndex = 147
      OnExecute = actEditOccupationExecute
      OnUpdate = actEditOccupationUpdate
    end
    object actShowPastOccupations: TAction
      Caption = #1055#1052
      GroupIndex = 1
      Hint = #1055#1072#1089#1080#1074#1085#1080' '#1052#1080#1085#1072#1083#1080
      OnExecute = actFilterOccupationsExecute
    end
    object actShowActiveOccupations: TAction
      Caption = #1040
      Checked = True
      GroupIndex = 2
      Hint = #1040#1082#1090#1080#1074#1085#1080
      OnExecute = actFilterOccupationsExecute
    end
    object actShowFutureOccupations: TAction
      Caption = #1055#1041
      Checked = True
      GroupIndex = 3
      Hint = #1055#1072#1089#1080#1074#1085#1080' '#1041#1098#1076#1077#1097#1080
      OnExecute = actFilterOccupationsExecute
    end
    object actSpecDocStatus: TAction
      Hint = #1057#1090#1088#1091#1082#1090#1091#1088#1085#1080' '#1080' '#1052#1072#1088#1096#1088#1091#1090#1085#1080' '#1052#1048#1048#1054' '#1085#1072' '#1059#1054#1073', '#1089#1074#1098#1088#1079#1072#1085' '#1089' '#1080#1079#1073#1088#1072#1085#1086#1090#1086' '#1058#1055
      ImageIndex = 113
      OnExecute = actSpecDocStatusExecute
      OnUpdate = actSpecDocStatusUpdate
    end
    object actOperationLevelDeptDetailFlow: TAction
      Caption = #1055#1086#1090#1086#1094#1080' '#1087#1088#1077#1079' '#1058#1055' - '#1054#1087#1077#1088#1072#1094#1080#1086#1085#1085#1086' '#1053#1080#1074#1086'...'
      OnExecute = actOperationLevelDeptDetailFlowExecute
      OnUpdate = actOperationLevelDeptDetailFlowUpdate
    end
    object actStageLevelDeptDetailFlow: TAction
      Caption = #1055#1086#1090#1086#1094#1080' '#1087#1088#1077#1079' '#1058#1055' - '#1045#1090#1072#1087#1085#1086' '#1053#1080#1074#1086'...'
      OnExecute = actStageLevelDeptDetailFlowExecute
      OnUpdate = actStageLevelDeptDetailFlowUpdate
    end
    object actOccupationCreateLike: TAction
      Caption = #1044#1086#1073#1072#1074#1103#1085#1077' '#1082#1072#1090#1086'...'
      Hint = #1044#1086#1073#1072#1074#1103#1085#1077' '#1082#1072#1090#1086
      OnExecute = actOccupationCreateLikeExecute
      OnUpdate = actOccupationCreateLikeUpdate
    end
    object actDelOccupation: TAction
      Caption = #1048#1079#1090#1088#1080#1074#1072#1085#1077'...'
      Hint = #1048#1079#1090#1088#1080#1074#1072#1085#1077
      ImageIndex = 146
      OnExecute = actDelOccupationExecute
      OnUpdate = actDelOccupationUpdate
    end
    object actStoreQuantities: TAction
      Caption = 'actStoreQuantities'
      Hint = #1053#1072#1083#1080#1095#1085#1086#1089#1090#1080
      ImageIndex = 78
      OnExecute = actStoreQuantitiesExecute
      OnUpdate = actStoreQuantitiesUpdate
    end
  end
  inherited cdsTreeToNode: TAbmesClientDataSet
    ConnectionBroker = dmMain.conDeptsTreeEditor
    inherited cdsTreeToNodeNODE_NAME: TAbmesWideStringField
      OnGetText = cdsTreeToNodeNODE_NAMEGetText
    end
    object cdsTreeToNodeIS_STORE: TAbmesFloatField
      FieldName = 'IS_STORE'
      FieldValueType = fvtBoolean
    end
    object cdsTreeToNodeIS_COMPUTERIZED_STORE: TAbmesFloatField
      FieldName = 'IS_COMPUTERIZED_STORE'
      FieldValueType = fvtBoolean
    end
    object cdsTreeToNodeIS_BRANCH: TAbmesFloatField
      FieldName = 'IS_BRANCH'
      FieldValueType = fvtBoolean
    end
    object cdsTreeToNodeIS_FIN_STORE: TAbmesFloatField
      FieldName = 'IS_FIN_STORE'
      FieldValueType = fvtBoolean
    end
    object cdsTreeToNodeIS_EXTERNAL: TAbmesFloatField
      FieldName = 'IS_EXTERNAL'
      FieldValueType = fvtBoolean
    end
    object cdsTreeToNodeIS_RECURRENT: TAbmesFloatField
      FieldName = 'IS_RECURRENT'
      FieldValueType = fvtBoolean
    end
    object cdsTreeToNodeINACTIVE_TYPE_CODE: TAbmesFloatField
      FieldName = 'INACTIVE_TYPE_CODE'
    end
  end
  inherited cdsTreeNodeChildren: TAbmesClientDataSet
    ConnectionBroker = dmMain.conDeptsTreeEditor
    Params = <
      item
        DataType = ftFloat
        Name = 'NODE_ID'
        ParamType = ptInput
        Value = '0'
      end>
    inherited cdsTreeNodeChildrenNODE_NAME: TAbmesWideStringField
      OnGetText = cdsTreeNodeChildrenNODE_NAMEGetText
    end
    object cdsTreeNodeChildrenIS_STORE: TAbmesFloatField
      FieldName = 'IS_STORE'
      FieldValueType = fvtBoolean
    end
    object cdsTreeNodeChildrenIS_COMPUTERIZED_STORE: TAbmesFloatField
      FieldName = 'IS_COMPUTERIZED_STORE'
      FieldValueType = fvtBoolean
    end
    object cdsTreeNodeChildrenSHOW_NO: TAbmesWideStringField
      FieldName = 'SHOW_NO'
      OnGetText = cdsTreeNodeChildrenSHOW_NOGetText
      Size = 46
    end
    object cdsTreeNodeChildrenIS_BRANCH: TAbmesFloatField
      FieldName = 'IS_BRANCH'
      FieldValueType = fvtBoolean
    end
    object cdsTreeNodeChildrenIS_FIN_STORE: TAbmesFloatField
      FieldName = 'IS_FIN_STORE'
      FieldValueType = fvtBoolean
    end
    object cdsTreeNodeChildrenIS_EXTERNAL: TAbmesFloatField
      FieldName = 'IS_EXTERNAL'
      FieldValueType = fvtBoolean
    end
    object cdsTreeNodeChildrenIS_RECURRENT: TAbmesFloatField
      FieldName = 'IS_RECURRENT'
      FieldValueType = fvtBoolean
    end
    object cdsTreeNodeChildrenINACTIVE_TYPE_CODE: TAbmesFloatField
      FieldName = 'INACTIVE_TYPE_CODE'
    end
  end
  inherited ilIcons: TImageList
    Bitmap = {
      494C010100000400080010001000FFFFFFFFFF00FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
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
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000}
  end
  inherited cdsNodeChildren: TAbmesClientDataSet
    ConnectionBroker = dmMain.conDeptsTreeEditor
    FieldDefs = <
      item
        Name = 'NODE_ID'
        DataType = ftFloat
      end
      item
        Name = 'PARENT_NODE_ID'
        DataType = ftFloat
      end
      item
        Name = 'NODE_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'NODE_TYPE'
        DataType = ftFloat
      end
      item
        Name = 'NODE_NO'
        DataType = ftFloat
      end
      item
        Name = 'IS_EXTERNAL'
        DataType = ftFloat
      end
      item
        Name = 'IS_RECURRENT'
        DataType = ftFloat
      end
      item
        Name = 'BEGIN_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'END_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'IS_INACTIVE'
        DataType = ftFloat
      end
      item
        Name = 'DEPT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PARENT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'CUSTOM_CODE'
        DataType = ftFloat
      end
      item
        Name = 'IS_GROUP'
        DataType = ftFloat
      end
      item
        Name = 'DEPT_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SUFFIX_LETTER'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'IS_BRANCH'
        DataType = ftFloat
      end
      item
        Name = 'SHOW_NO'
        DataType = ftWideString
        Size = 46
      end
      item
        Name = 'IS_STORE'
        DataType = ftFloat
      end
      item
        Name = 'IS_COMPUTERIZED_STORE'
        DataType = ftFloat
      end
      item
        Name = 'HAS_DOCUMENTATION'
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
        Name = 'DOC_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DOC_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'IS_FIN_STORE'
        DataType = ftFloat
      end
      item
        Name = 'CHANGE_DATE_TIME'
        DataType = ftTimeStamp
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
        Name = 'ACTIVE_DI_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'UNAUTHORIZED_ACTIVE_DI_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'UNAPPROVED_ACTIVE_DI_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'PARENT_IS_RECURRENT'
        DataType = ftFloat
      end
      item
        Name = 'PARENT_BEGIN_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'PARENT_END_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'INACTIVE_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'STORE_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRC_DATA'
        DataType = ftOraBlob
        Size = 1
      end
      item
        Name = 'IS_OWD_PRIORITIES_SET_COMPLETE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'SKIP_OWDP_TYPE_CHECK'
        Attributes = [faRequired]
        DataType = ftFloat
      end>
    Params = <
      item
        DataType = ftFloat
        Name = 'NODE_ID'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'SHOW_FIN_STORES'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'SHOW_OWD_FIN_STORES'
        ParamType = ptInput
        Value = '1'
      end>
    BeforeOpen = cdsNodeChildrenBeforeOpen
    AfterOpen = cdsNodeChildrenAfterOpen
    BeforeClose = cdsNodeChildrenBeforeClose
    BeforeDelete = cdsNodeChildrenBeforeDelete
    BeforeApplyUpdates = cdsNodeChildrenBeforeApplyUpdates
    inherited cdsNodeChildrenNODE_NAME: TAbmesWideStringField
      OnChange = cdsNodeChildrenNODE_NAMEChange
    end
    inherited cdsNodeChildrenNODE_TYPE: TAbmesFloatField
      OnChange = cdsNodeChildrenNODE_TYPEChange
    end
    inherited cdsNodeChildrenNODE_NO: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      Required = True
      OnChange = cdsNodeChildrenNODE_TYPEChange
    end
    object cdsNodeChildrenDEPT_CODE: TAbmesFloatField [6]
      FieldName = 'DEPT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsNodeChildrenPARENT_CODE: TAbmesFloatField [7]
      FieldName = 'PARENT_CODE'
    end
    object cdsNodeChildrenNAME: TAbmesWideStringField [8]
      FieldName = 'NAME'
      Size = 100
    end
    object cdsNodeChildrenCUSTOM_CODE: TAbmesFloatField [9]
      DisplayLabel = #1050#1086#1076
      FieldName = 'CUSTOM_CODE'
    end
    object cdsNodeChildrenDEPT_TYPE_CODE: TAbmesFloatField [10]
      FieldName = 'DEPT_TYPE_CODE'
    end
    object cdsNodeChildrenSUFFIX_LETTER: TAbmesWideStringField [11]
      FieldName = 'SUFFIX_LETTER'
      OnChange = cdsNodeChildrenNODE_TYPEChange
      Size = 1
    end
    object cdsNodeChildrenIS_BRANCH: TAbmesFloatField [12]
      FieldName = 'IS_BRANCH'
      FieldValueType = fvtBoolean
    end
    object cdsNodeChildrenSHOW_NO: TAbmesWideStringField [13]
      FieldName = 'SHOW_NO'
      Size = 255
    end
    object cdsNodeChildrenPRODUCT_CODE: TAbmesFloatField [14]
      FieldName = 'PRODUCT_CODE'
      OnChange = cdsNodeChildrenPRODUCT_CODEChange
    end
    object cdsNodeChildrenPRODUCT_NAME: TAbmesWideStringField [15]
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object cdsNodeChildrenPRODUCT_NO: TAbmesFloatField [16]
      FieldName = 'PRODUCT_NO'
    end
    object cdsNodeChildrenIS_GROUP: TAbmesFloatField [17]
      FieldName = 'IS_GROUP'
      FieldValueType = fvtBoolean
    end
    object cdsNodeChildrenDOC_BRANCH_CODE: TAbmesFloatField [18]
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsNodeChildrenDOC_CODE: TAbmesFloatField [19]
      FieldName = 'DOC_CODE'
    end
    object cdsNodeChildren_DEPT_TYPE_ABBREV: TAbmesWideStringField [20]
      FieldKind = fkLookup
      FieldName = '_DEPT_TYPE_ABBREV'
      LookupDataSet = cdsDeptTypes
      LookupKeyFields = 'DEPT_TYPE_CODE'
      LookupResultField = 'DEPT_TYPE_ABBREV'
      KeyFields = 'DEPT_TYPE_CODE'
      Size = 5
      Lookup = True
    end
    object cdsNodeChildrenIS_STORE: TAbmesFloatField [21]
      FieldName = 'IS_STORE'
      OnChange = cdsNodeChildrenIS_STOREChange
      FieldValueType = fvtBoolean
    end
    object cdsNodeChildrenIS_COMPUTERIZED_STORE: TAbmesFloatField [22]
      FieldName = 'IS_COMPUTERIZED_STORE'
      FieldValueType = fvtBoolean
    end
    object cdsNodeChildrenHAS_DOCUMENTATION: TAbmesFloatField [23]
      FieldName = 'HAS_DOCUMENTATION'
      FieldValueType = fvtBoolean
    end
    object cdsNodeChildrenCHANGE_DATE_TIME: TAbmesSQLTimeStampField [24]
      FieldName = 'CHANGE_DATE_TIME'
      ProviderFlags = []
    end
    object cdsNodeChildrenDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField [25]
      FieldName = 'DOC_EMPTINESS_REQUIREMENT_CODE'
      OnGetText = cdsNodeChildrenDOC_EMPTINESS_REQUIREMENT_CODEGetText
    end
    object cdsNodeChildrenDOC_IS_COMPLETE: TAbmesFloatField [26]
      FieldName = 'DOC_IS_COMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsNodeChildrenACTIVE_DI_COUNT: TAbmesFloatField [27]
      FieldName = 'ACTIVE_DI_COUNT'
    end
    object cdsNodeChildrenUNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField [28]
      FieldName = 'UNAUTHORIZED_ACTIVE_DI_COUNT'
      OnGetText = cdsNodeChildrenUNAUTHORIZED_ACTIVE_DI_COUNTGetText
    end
    object cdsNodeChildrenUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField [29]
      FieldName = 'UNAPPROVED_ACTIVE_DI_COUNT'
    end
    object cdsNodeChildrenBEGIN_DATE: TAbmesSQLTimeStampField [30]
      DisplayLabel = #1053#1072#1095#1072#1083#1085#1072' '#1076#1072#1090#1072' '#1085#1072' '#1089#1098#1097#1077#1089#1090#1074#1091#1074#1072#1085#1077' '#1085#1072' '#1058#1055
      FieldName = 'BEGIN_DATE'
      Required = True
    end
    object cdsNodeChildrenEND_DATE: TAbmesSQLTimeStampField [31]
      DisplayLabel = #1050#1088#1072#1081#1085#1072' '#1076#1072#1090#1072' '#1085#1072' '#1089#1098#1097#1077#1089#1090#1074#1091#1074#1072#1085#1077' '#1085#1072' '#1058#1055
      FieldName = 'END_DATE'
      Required = True
    end
    object cdsNodeChildrenIS_EXTERNAL: TAbmesFloatField [32]
      FieldName = 'IS_EXTERNAL'
      FieldValueType = fvtBoolean
    end
    object cdsNodeChildrenIS_RECURRENT: TAbmesFloatField [33]
      FieldName = 'IS_RECURRENT'
      FieldValueType = fvtBoolean
    end
    object cdsNodeChildrenPARENT_IS_RECURRENT: TAbmesFloatField [34]
      FieldName = 'PARENT_IS_RECURRENT'
      FieldValueType = fvtBoolean
    end
    object cdsNodeChildrenPARENT_BEGIN_DATE: TAbmesSQLTimeStampField [35]
      FieldName = 'PARENT_BEGIN_DATE'
    end
    object cdsNodeChildrenPARENT_END_DATE: TAbmesSQLTimeStampField [36]
      FieldName = 'PARENT_END_DATE'
    end
    object cdsNodeChildrenIS_FIN_STORE: TAbmesFloatField [37]
      FieldName = 'IS_FIN_STORE'
      FieldValueType = fvtBoolean
    end
    object cdsNodeChildrenINACTIVE_TYPE_CODE: TAbmesFloatField [38]
      FieldName = 'INACTIVE_TYPE_CODE'
    end
    object cdsNodeChildrenSTORE_TYPE_CODE: TAbmesFloatField [39]
      DisplayLabel = #1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086' '#1079#1072
      FieldName = 'STORE_TYPE_CODE'
    end
    object cdsNodeChildrenPRC_DATA: TBlobField [40]
      FieldName = 'PRC_DATA'
      BlobType = ftOraBlob
      Size = 1
    end
    object cdsNodeChildrenIS_OWD_PRIORITIES_SET_COMPLETE: TAbmesFloatField [41]
      FieldName = 'IS_OWD_PRIORITIES_SET_COMPLETE'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsNodeChildrenSKIP_OWDP_TYPE_CHECK: TAbmesFloatField [42]
      FieldName = 'SKIP_OWDP_TYPE_CHECK'
      Required = True
      FieldValueType = fvtBoolean
    end
  end
  inherited cdsTreeNode: TAbmesClientDataSet
    ConnectionBroker = dmMain.conDeptsTreeEditor
    Params = <
      item
        DataType = ftFloat
        Name = 'NODE_ID'
        ParamType = ptInput
        Value = 0
      end>
    object cdsTreeNodeIS_STORE: TAbmesFloatField
      FieldName = 'IS_STORE'
      FieldValueType = fvtBoolean
    end
    object cdsTreeNodeIS_COMPUTERIZED_STORE: TAbmesFloatField
      FieldName = 'IS_COMPUTERIZED_STORE'
      FieldValueType = fvtBoolean
    end
    object cdsTreeNodeIS_BRANCH: TAbmesFloatField
      FieldName = 'IS_BRANCH'
      FieldValueType = fvtBoolean
    end
    object cdsTreeNodeIS_FIN_STORE: TAbmesFloatField
      FieldName = 'IS_FIN_STORE'
      FieldValueType = fvtBoolean
    end
    object cdsTreeNodeIS_EXTERNAL: TAbmesFloatField
      FieldName = 'IS_EXTERNAL'
      FieldValueType = fvtBoolean
    end
    object cdsTreeNodeIS_RECURRENT: TAbmesFloatField
      FieldName = 'IS_RECURRENT'
      FieldValueType = fvtBoolean
    end
    object cdsTreeNodeINACTIVE_TYPE_CODE: TAbmesFloatField
      FieldName = 'INACTIVE_TYPE_CODE'
    end
  end
  inherited cdsPrintTree: TAbmesClientDataSet
    ConnectionBroker = dmMain.conDeptsTreeEditor
    Params = <
      item
        DataType = ftFloat
        Name = 'NODE_ID'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHOW_INACTIVE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'SORT_FIELD_NAMES'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'SORT_DESC_FIELD_NAMES'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHOW_FIN_STORES'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MAX_RECORDS'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'SHOW_OWD_FIN_STORES'
        ParamType = ptUnknown
        Value = '1'
      end>
    Top = 106
    inherited cdsPrintTreeNODE_NO: TAbmesFloatField
      Visible = False
    end
    inherited cdsPrintTreeHAS_CHILDREN: TAbmesFloatField
      Visible = False
    end
    object cdsPrintTreeSHOW_NO: TAbmesWideStringField [8]
      FieldName = 'SHOW_NO'
      FixedChar = True
    end
    object cdsPrintTreeINACTIVE_TYPE_CODE: TAbmesFloatField [10]
      FieldName = 'INACTIVE_TYPE_CODE'
      Visible = False
    end
    inherited cdsPrintTreeIS_INACTIVE: TAbmesFloatField
      Visible = False
    end
    object cdsPrintTreeIS_EXTERNAL: TAbmesFloatField [12]
      FieldName = 'IS_EXTERNAL'
      Required = True
      Visible = False
      FieldValueType = fvtBoolean
    end
    object cdsPrintTreeIS_RECURRENT: TAbmesFloatField [13]
      FieldName = 'IS_RECURRENT'
      Required = True
      Visible = False
      FieldValueType = fvtBoolean
    end
    object cdsPrintTreeIS_BRANCH: TAbmesFloatField [14]
      FieldName = 'IS_BRANCH'
      Visible = False
      FieldValueType = fvtBoolean
    end
    object cdsPrintTreeIS_STORE: TAbmesFloatField [15]
      FieldName = 'IS_STORE'
      Visible = False
      FieldValueType = fvtBoolean
    end
    object cdsPrintTreeIS_FIN_STORE: TAbmesFloatField [16]
      FieldName = 'IS_FIN_STORE'
      Visible = False
      FieldValueType = fvtBoolean
    end
    inherited cdsPrintTree_IMAGE_INDEX: TAbmesFloatField
      Visible = False
    end
  end
  inherited cdsFind: TAbmesClientDataSet
    ConnectionBroker = dmMain.conDeptsTreeEditor
    Params = <
      item
        DataType = ftFloat
        Name = 'PARENT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PARENT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHOW_INACTIVE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'SHOW_FIN_STORES'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'SHOW_OWD_FIN_STORES'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'FIND_STRING'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'CASE_SENSITIVE'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'FIND_NODE_NAME'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'FIND_NODE_NO'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'FIND_PRODUCT'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'EXACT_MATCH'
        ParamType = ptUnknown
        Value = '0'
      end>
    object cdsFindSHOW_NO: TAbmesWideStringField
      FieldName = 'SHOW_NO'
      Size = 46
    end
  end
  object cdsDeptTypes: TAbmesClientDataSet [16]
    Aggregates = <>
    ConnectionBroker = dmMain.conDeptsTreeEditor
    Params = <>
    ProviderName = 'prvDeptTypes'
    Left = 267
    Top = 138
    object cdsDeptTypesDEPT_TYPE_CODE: TAbmesFloatField
      FieldName = 'DEPT_TYPE_CODE'
    end
    object cdsDeptTypesDEPT_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'DEPT_TYPE_ABBREV'
      Size = 5
    end
  end
  object cdsOccupations: TAbmesClientDataSet [17]
    Aggregates = <>
    ConnectionBroker = dmMain.conDeptsTreeEditor
    Filtered = True
    Params = <
      item
        DataType = ftFloat
        Name = 'NODE_ID'
        ParamType = ptInput
      end>
    ProviderName = 'prvShowNodeParams'
    AfterScroll = cdsOccupationsAfterScroll
    OnFilterRecord = cdsOccupationsFilterRecord
    OnReconcileError = cdsOccupationsReconcileError
    Left = 424
    Top = 306
    object cdsOccupationsNODE_PARAM_CODE: TAbmesFloatField
      FieldName = 'NODE_PARAM_CODE'
    end
    object cdsOccupationsNODE_PARAM_NAME: TAbmesWideStringField
      FieldName = 'NODE_PARAM_NAME'
      Size = 50
    end
    object cdsOccupationsNODE_PARAM_ORDER_NO: TAbmesFloatField
      FieldName = 'NODE_PARAM_ORDER_NO'
    end
    object cdsOccupationsPARAM_VALUE: TAbmesWideStringField
      FieldName = 'PARAM_VALUE'
      ReadOnly = True
      OnGetText = frTreeNodeParamscdsParamsPARAM_VALUEGetText
      Size = 250
    end
    object cdsOccupationsOCCUPATION_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_CODE'
    end
    object cdsOccupationsIS_MAIN: TAbmesFloatField
      DisplayLabel = #1042#1080#1076
      FieldName = 'IS_MAIN'
      DisplayBoolValues = #1054#1089#1085'.;'#1055#1088#1074'.'
      FieldValueType = fvtBoolean
    end
    object cdsOccupationsOCCUPATION_PHASE_NAME: TAbmesWideStringField
      DisplayLabel = #1060#1072#1079#1072
      FieldName = 'OCCUPATION_PHASE_NAME'
      Size = 93
    end
    object cdsOccupationsIS_ACTIVE: TAbmesFloatField
      FieldName = 'IS_ACTIVE'
      FieldValueType = fvtBoolean
    end
    object cdsOccupationsIS_PAST: TAbmesFloatField
      FieldName = 'IS_PAST'
      FieldValueType = fvtBoolean
    end
    object cdsOccupationsIS_FUTURE: TAbmesFloatField
      FieldName = 'IS_FUTURE'
      FieldValueType = fvtBoolean
    end
    object cdsOccupationsIS_OCCUPIED: TAbmesFloatField
      FieldName = 'IS_OCCUPIED'
    end
    object cdsOccupationsIS_DEFINED: TAbmesFloatField
      FieldName = 'IS_DEFINED'
    end
    object cdsOccupationsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsOccupationsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsOccupationsDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'DOC_EMPTINESS_REQUIREMENT_CODE'
      OnGetText = cdsOccupationsDOC_EMPTINESS_REQUIREMENT_CODEGetText
    end
    object cdsOccupationsDOC_IS_COMPLETE: TAbmesFloatField
      FieldName = 'DOC_IS_COMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsOccupationsACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'ACTIVE_DI_COUNT'
    end
    object cdsOccupationsUNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAUTHORIZED_ACTIVE_DI_COUNT'
      OnGetText = cdsOccupationsUNAUTHORIZED_ACTIVE_DI_COUNTGetText
    end
    object cdsOccupationsUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAPPROVED_ACTIVE_DI_COUNT'
    end
  end
  inherited pdsFindParams: TParamDataSet
    object pdsFindParamsFIND_PRODUCT: TAbmesFloatField
      FieldName = 'FIND_PRODUCT'
      FieldValueType = fvtBoolean
    end
  end
  object cdsDeptDetailFlowParams: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 192
    Top = 224
    object cdsDeptDetailFlowParamsCHOSEN_DEPTS: TAbmesWideStringField
      FieldName = 'CHOSEN_DEPTS'
      Size = 4000
    end
    object cdsDeptDetailFlowParamsFLOW_LEVEL: TAbmesFloatField
      FieldName = 'FLOW_LEVEL'
    end
  end
  object pmDeptDetailFlow: TPopupMenu
    Left = 466
    Top = 67
    object miOperationLevelDeptDetailFlow: TMenuItem
      Action = actOperationLevelDeptDetailFlow
      Default = True
    end
    object miStageLevelDeptDetailFlow: TMenuItem
      Action = actStageLevelDeptDetailFlow
    end
  end
  object ilStore: TImageList
    Left = 88
    Top = 176
    Bitmap = {
      494C010103000800080010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
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
      0000000000000000000000000000000000000000000028AFFF0028AFFF0026B2
      FF0028AFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000DB3D0000DB3D0000DB
      3D0000DB3D000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002AC7FF002AC7FF002AC7
      FF002AC7FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FC460000FC460000FC
      460000FC46000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002AC7FF002AC7FF002AC7
      FF002AC7FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FC460000FC460000FC
      460000FC46000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080EAFF0080EAFF0080E9
      FF0080E9FF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B6FCC900B6FCC900B6FC
      C900B6FCC9000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF0000FFFF87FF87FF0000
      FFFF03FF03FF0000FFFF03FF03FF0000FFFF03FF03FF0000FFFF03FF03FF0000
      FFFF87FF87FF0000FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFFFFFF0000
      FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFFFFFF0000
      FFFFFFFFFFFF0000FFFFFFFFFFFF000000000000000000000000000000000000
      000000000000}
  end
  object ilExternal: TImageList
    Left = 120
    Top = 176
    Bitmap = {
      494C010102000400080010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
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
      00002D8EC70026B2FF002D8EC700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002F8C
      C70026B2FF0026B2FF0028AEFF002F8CC7000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000C8F3
      FE00000000000000000000000000C8F3FE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C8F6
      FF00C8F4FF0000000000C8F4FF00C8F6FF000000000000000000000000000000
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
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000FFFFFFFF00000000
      FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000
      FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000
      FFFFFFF100000000FFFFFFE000000000FFFFFFE000000000FFFFFFE000000000
      FFFFFFE000000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object ilRecurrent: TImageList
    Left = 152
    Top = 176
    Bitmap = {
      494C010102000400080010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
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
      000000000000000000000000000000000000C000C8002D8EC70026B2FF002D8E
      C700BE01C7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000026B2FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002AC8FF000000000024CCFF000000
      00002AC7FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C8F3FE00000000007CEEFF000000
      0000C8F3FE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C8F6FF0000000000000000000000
      0000C8F6FF000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000FFFFFFFF00000000
      FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000
      FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000
      FFFF07FF00000000FFFF07FF00000000FFFF07FF00000000FFFF07FF00000000
      FFFF07FF00000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object ilInactive: TImageList
    Left = 184
    Top = 176
    Bitmap = {
      494C010103000400080010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
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
      000000000000000000000D24FF000D24FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000D24FF00FEFEFE000D24FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF00E5E6EF000000FF000000FF00E5E6EF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000D24FF00FEFEFE00FEFEFE000D24FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF00E5E6EF00E5E6EF000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000D24FF000D24FF00FEFEFE00FEFEFE00152BFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF00E5E6EF00E5E6EF000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000D24FF000D24FF00FEFEFE00FEFEFE000D24FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF00E5E6EF000000FF000000FF00E5E6EF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000D24FF00FEFEFE00FEFEFE000D24FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000D24FF00FEFEFE000D24FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000D24FF000D24FF000000000000000000000000000000
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
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF0000FFFFFFFFFFFF0000
      FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFFFCFF0000FFFFFC3FFC7F0000
      FFFFF81FFC3F0000FFFFF81FFC1F0000FFFFF81FFC1F0000FFFFF81FFC3F0000
      FFFFFC3FFC7F0000FFFFFFFFFCFF0000FFFFFFFFFFFF0000FFFFFFFFFFFF0000
      FFFFFFFFFFFF0000FFFFFFFFFFFF000000000000000000000000000000000000
      000000000000}
  end
  object pmInsertOccupationMenu: TPopupMenu
    Left = 552
    Top = 248
    object miInsertOccupation: TMenuItem
      Action = actInsertOccupation
      Default = True
    end
    object miCreateLikeOccupation: TMenuItem
      Action = actOccupationCreateLike
    end
  end
  object cdsStoreQuantitiesParams: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 224
    Top = 224
    object cdsStoreQuantitiesParamsCHOSEN_PRODUCTS: TStringField
      FieldName = 'CHOSEN_PRODUCTS'
      Size = 4000
    end
    object cdsStoreQuantitiesParamsCHOSEN_DEPTS: TStringField
      FieldName = 'CHOSEN_DEPTS'
      Size = 4000
    end
    object cdsStoreQuantitiesParamsSTORE_DEAL_DATE: TAbmesDateTimeField
      FieldName = 'STORE_DEAL_DATE'
    end
  end
end
