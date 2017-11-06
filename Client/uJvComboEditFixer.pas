unit uJvComboEditFixer;

interface

uses
  JvToolEdit, Windows;

type
  TJvCustomComboEditHelper = class helper for TJvCustomComboEdit
    procedure OnMessage(var Msg: tagMSG; var Handled: Boolean);
  end;

implementation

uses
  JvExMask, Classes, Graphics, Controls, ImgList, ShlObj, Messages, SysUtils,
  Forms, UITypes;

{$HINTS OFF}

type
  TJvCustomComboEditHack = class(TJvExCustomMaskEdit)
  private
    FOnButtonClick: TNotifyEvent;
    FOnPopupShown: TNotifyEvent;
    FOnPopupHidden: TNotifyEvent;
    FClickKey: TShortCut;
    FReadOnly: Boolean;
    FDirectInput: Boolean;
    FAlwaysEnableButton: Boolean;
    FAlwaysShowPopup: Boolean;
    FPopupAlign: TPopupAlign;
    FGroupIndex: Integer;
    FDisabledColor: TColor;
    FDisabledTextColor: TColor;
    FOnKeyDown: TKeyEvent;
    FImages: TCustomImageList;
    FImageIndex: TImageIndex;
    FImageKind: TJvImageKind;
    FNumGlyphs: Integer;
    FStreamedButtonWidth: Integer;
    FStreamedFixedWidth: Boolean;
    FOnEnabledChanged: TNotifyEvent;

    FSavedButtonWidth: Integer;
    FDataConnector: TJvCustomComboEditDataConnector;
    FAlignment: TAlignment;
    FAutoCompleteIntf: IAutoComplete;
  end;

{$HINTS ON}

{ TJvCustomComboEditHelper }

procedure TJvCustomComboEditHelper.OnMessage(var Msg: tagMSG;
  var Handled: Boolean);
var
  edt: TJvCustomComboEditHack;
  AutoCompleteDropDown: IAutoCompleteDropDown;
  dwStatus: Cardinal;
  pwc: PWideChar;
  AutoCompleteCloseRequest: Boolean;
begin
  inherited;
  if (Msg.message = WM_KEYDOWN) and
     ( (Msg.wParam = VK_RETURN) or (Msg.wParam = VK_ESCAPE) ) and
     Self.Focused then
    begin
      edt:= TJvCustomComboEditHack(Self);

      AutoCompleteCloseRequest:=
        Assigned(edt.FAutoCompleteIntf) and
        Supports(edt.FAutoCompleteIntf, IAutoCompleteDropDown, AutoCompleteDropDown) and
        Succeeded(AutoCompleteDropDown.GetDropDownStatus(dwStatus, pwc)) and
        (dwStatus = ACDD_VISIBLE);

      if (Msg.wParam = VK_RETURN) and not AutoCompleteCloseRequest then
        (Owner as TForm).ModalResult:= mrOK;

      if (Msg.wParam = VK_ESCAPE) and not AutoCompleteCloseRequest then
        (Owner as TForm).ModalResult:= mrCancel;
    end;
end;

end.
