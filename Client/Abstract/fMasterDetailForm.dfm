inherited MasterDetailForm: TMasterDetailForm
  Left = 237
  Top = 111
  Caption = 'MasterDetailForm'
  ClientHeight = 428
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 393
  end
  inherited pnlMain: TPanel
    Height = 393
    object sptDetail: TSplitter [0]
      Left = 8
      Top = 213
      Width = 521
      Height = 3
      Cursor = crVSplit
      Align = alBottom
      ResizeStyle = rsUpdate
      OnCanResize = sptDetailCanResize
    end
    object pnlDetailGrid: TPanel [1]
      Left = 8
      Top = 216
      Width = 521
      Height = 169
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object pnlDetailNavigator: TPanel
        Left = 0
        Top = 0
        Width = 521
        Height = 24
        Align = alTop
        BevelOuter = bvNone
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        object navDetail: TDBColorNavigator
          Left = 0
          Top = 0
          Width = 168
          Height = 24
          DataSource = dsDetail
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit]
          Align = alLeft
          Flat = True
          TabOrder = 0
          BeforeAction = navDetailBeforeAction
        end
        object tlbDetailGridButtons: TToolBar
          Left = 168
          Top = 0
          Width = 32
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 24
          Caption = 'tlbTopGridButtons'
          Images = dmMain.ilActions
          TabOrder = 1
          object sepBeforePrintDetailsButton: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'sepBeforePrintDetailsButton'
            ImageIndex = 3
            Style = tbsSeparator
          end
          object btnPrintDetails: TToolButton
            Left = 8
            Top = 0
            Action = actPrintDetails
          end
        end
      end
      object grdDetail: TAbmesDBGrid
        Left = 0
        Top = 24
        Width = 521
        Height = 145
        Align = alClient
        DataSource = dsDetail
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'Microsoft Sans Serif'
        FooterFont.Style = []
        HorzScrollBar.Tracking = True
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghIncSearch, dghPreferIncSearch]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Microsoft Sans Serif'
        TitleFont.Style = []
        VertScrollBar.Tracking = True
        OnDblClick = grdDetailDblClick
        OnDrawColumnCell = grdDetailDrawColumnCell
      end
    end
    inherited pnlGrid: TPanel
      Height = 205
      inherited pnlNavigator: TPanel
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdData: TAbmesDBGrid
        Height = 181
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    FetchOnDemand = False
    AfterScroll = cdsGridDataAfterScroll
  end
  inherited alActions: TActionList
    Left = 0
    Top = 392
    inherited actForm: TAction
      Caption = 'MasterDetailForm'
    end
    object actInsertDetailRecord: TAction
      Caption = #1044#1086#1073#1072#1074#1103#1085#1077'...'
      ImageIndex = 4
      OnExecute = actInsertDetailRecordExecute
      OnUpdate = actInsertDetailRecordUpdate
    end
    object actDelDetailRecord: TAction
      Caption = #1048#1079#1090#1088#1080#1074#1072#1085#1077'...'
      ImageIndex = 5
      OnExecute = actDelDetailRecordExecute
      OnUpdate = actDelDetailRecordUpdate
    end
    object actEditDetailRecord: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077'...'
      ImageIndex = 6
      OnExecute = actEditDetailRecordExecute
      OnUpdate = actEditDetailRecordUpdate
    end
    object actPrintDetails: TAction
      Caption = 'actPrintDetails'
      Hint = #1055#1077#1095#1072#1090
      ImageIndex = 2
      OnExecute = actPrintDetailsExecute
      OnUpdate = actPrintDetailsUpdate
    end
  end
  object cdsDetail: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    AfterPost = cdsDetailAfterPost
    AfterCancel = cdsDetailAfterCancel
    AfterDelete = cdsDetailAfterDelete
    OnReconcileError = cdsDetailReconcileError
    KeyViolationErrorMessage = #1042#1077#1095#1077' '#1089#1098#1097#1077#1089#1090#1074#1091#1074#1072' '#1090#1072#1082#1098#1074' '#1079#1072#1087#1080#1089
    Top = 352
  end
  object dsDetail: TDataSource
    DataSet = cdsDetail
    Left = 32
    Top = 352
  end
  object tmrMaster: TTimer
    Interval = 400
    OnTimer = tmrMasterTimer
    Left = 248
  end
end
