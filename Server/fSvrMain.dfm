object fmSvrMain: TfmSvrMain
  Left = 205
  Top = 107
  BorderIcons = []
  Caption = 'Main Service'
  ClientHeight = 105
  ClientWidth = 433
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Microsoft Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    433
    105)
  PixelsPerInch = 96
  TextHeight = 13
  object bvlMain: TBevel
    Left = 8
    Top = 8
    Width = 305
    Height = 89
    Anchors = [akLeft, akTop, akRight]
  end
  object imgIcon: TImage
    Left = 24
    Top = 32
    Width = 41
    Height = 33
    Stretch = True
  end
  object lblTotalDataModules: TLabel
    Left = 72
    Top = 48
    Width = 233
    Height = 13
    Anchors = [akLeft, akTop, akRight]
    AutoSize = False
    Caption = '0 total data modules active'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object btnMinimize: TBitBtn
    Left = 328
    Top = 40
    Width = 97
    Height = 25
    Action = actMinimize
    Anchors = [akTop, akRight]
    Caption = '&Minimize'
    Default = True
    TabOrder = 1
  end
  object btnShutDown: TBitBtn
    Left = 328
    Top = 72
    Width = 97
    Height = 25
    Action = actShutDown
    Anchors = [akTop, akRight]
    Caption = '&Shut Down...'
    TabOrder = 2
  end
  object btnRefresh: TBitBtn
    Left = 328
    Top = 8
    Width = 97
    Height = 25
    Action = actRefresh
    Anchors = [akTop, akRight]
    Caption = '&Refresh'
    TabOrder = 0
  end
  object AppEvents: TJvAppEvents
    ShowMainForm = False
  end
  object tiServer: TJvTrayIcon
    Active = True
    IconIndex = -1
    Hint = 'Main Service'
    PopupMenu = pmTrayIcon
    Left = 32
  end
  object pmTrayIcon: TPopupMenu
    Top = 32
    object miRestore: TMenuItem
      Action = actRestore
      Default = True
    end
    object ml1: TMenuItem
      Caption = '-'
    end
    object miShutDown: TMenuItem
      Action = actShutDown
    end
  end
  object alActions: TActionList
    Left = 32
    Top = 32
    object actRestore: TAction
      Caption = 'Restore...'
      OnExecute = actRestoreExecute
    end
    object actShutDown: TAction
      Caption = '&Shut Down...'
      OnExecute = actShutDownExecute
    end
    object actMinimize: TAction
      Caption = '&Minimize'
      OnExecute = actMinimizeExecute
    end
    object actRefresh: TAction
      Caption = '&Refresh'
      OnExecute = actRefreshExecute
    end
  end
end
