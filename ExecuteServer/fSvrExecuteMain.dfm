object fmSvrExecuteMain: TfmSvrExecuteMain
  Left = 768
  Top = 535
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Execute Server'
  ClientHeight = 74
  ClientWidth = 172
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Microsoft Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 8
    Top = 8
    Width = 57
    Height = 57
  end
  object imgIcon: TImage
    Left = 21
    Top = 20
    Width = 32
    Height = 32
    Stretch = True
  end
  object btnShutDown: TButton
    Left = 84
    Top = 40
    Width = 75
    Height = 25
    Action = actShutDown
    TabOrder = 0
  end
  object btnMinimize: TButton
    Left = 84
    Top = 7
    Width = 75
    Height = 25
    Action = actMinimize
    Default = True
    TabOrder = 1
  end
  object tiServer: TJvTrayIcon
    Active = True
    IconIndex = -1
    Hint = 'Execute Server'
    PopupMenu = pmTrayIcon
    Left = 8
    Top = 8
  end
  object alActions: TActionList
    Left = 40
    Top = 40
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
      Checked = True
      OnExecute = actMinimizeExecute
    end
  end
  object pmTrayIcon: TPopupMenu
    Left = 40
    Top = 8
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
  object AppEvents: TJvAppEvents
    ShowMainForm = False
    Left = 8
    Top = 40
  end
  object DSServer: TDSServer
    Left = 88
    Top = 8
  end
  object dsscSvrExecute: TDSServerClass
    OnGetClass = dsscSvrExecuteGetClass
    Server = DSServer
    Left = 88
    Top = 40
  end
  object DSTCPServerTransport: TDSTCPServerTransport
    PoolSize = 0
    Server = DSServer
    Filters = <
      item
        FilterId = 'ZLibCompression'
        Properties.Strings = (
          'CompressMoreThan=1024')
      end>
    Left = 120
    Top = 8
  end
end
