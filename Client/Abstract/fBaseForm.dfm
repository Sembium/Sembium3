object BaseForm: TBaseForm
  Left = 369
  Top = 236
  Action = actForm
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'BaseForm'
  ClientHeight = 361
  ClientWidth = 538
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Microsoft Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMode = pmAuto
  Position = poMainFormCenter
  Scaled = False
  OnActivate = FormActivate
  OnClick = actFormExecute
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnHide = FormHide
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object alActions: TActionList
    Images = dmMain.ilActions
    Left = 120
    object actForm: TAction
      Caption = 'BaseForm'
      Visible = False
      OnExecute = actFormExecute
      OnUpdate = actFormUpdate
    end
    object actStartNewAppInstance: TAction
      Caption = 'actStartNewAppInstance'
      ShortCut = 16462
      OnExecute = actStartNewAppInstanceExecute
    end
    object actPopupCaptionMenu: TAction
      Caption = 'actPopupCaptionMenu'
      ShortCut = 123
      OnExecute = actPopupCaptionMenuExecute
      OnUpdate = actPopupCaptionMenuUpdate
    end
  end
end
