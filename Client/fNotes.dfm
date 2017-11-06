inherited fmNotes: TfmNotes
  Left = 431
  Top = 311
  Caption = #1041#1077#1083#1077#1078#1082#1080' - %s'
  ClientHeight = 165
  ClientWidth = 386
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 370
    Height = 114
    ExplicitWidth = 370
    ExplicitHeight = 114
  end
  inherited pnlBottomButtons: TPanel
    Top = 130
    Width = 386
    TabOrder = 1
    ExplicitTop = 130
    ExplicitWidth = 386
    inherited pnlOKCancel: TPanel
      Left = 118
      ExplicitLeft = 118
    end
    inherited pnlClose: TPanel
      Left = 29
      ExplicitLeft = 29
    end
    inherited pnlApply: TPanel
      Left = 297
      Visible = False
      ExplicitLeft = 297
    end
  end
  object moNotes: TDBMemo [2]
    Left = 16
    Top = 16
    Width = 353
    Height = 97
    DataField = 'NOTES'
    DataSource = dsData
    TabOrder = 0
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1041#1077#1083#1077#1078#1082#1080' - %s'
    end
  end
end
