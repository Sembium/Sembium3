unit fMainProcessView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, fBaseFrame, System.Actions, Vcl.ActnList,
  JvExControls, JvLabel, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TProcessView = (pvNone, pvFinance, pvSales, pvDeliveries, pvProduction, pvEnvironment);

type
  TfrMainProcessView = class(TBaseFrame)
    pnlOutOfProcessView: TPanel;
    imgCross: TImage;
    lblPVDeliveries: TLabel;
    btnPVDeliveries: TSpeedButton;
    lblPVFinances: TLabel;
    lblPVSales: TLabel;
    btnPVSales: TSpeedButton;
    lblPVProduction: TLabel;
    btnPVProduction: TSpeedButton;
    btnPVFinances: TSpeedButton;
    lblPVEnvironment: TLabel;
    btnPVEnvironment: TSpeedButton;
    lblLogoAppName: TJvLabel;
    pnlInProcessView: TPanel;
    imgInProcessViewBackground: TImage;
    shpNoProcessView: TShape;
    lblProcessView: TLabel;
    lblNoProcessView: TLabel;
    btnNoProcessView: TSpeedButton;
    actSalesProcessView: TAction;
    actDeliveriesProcessView: TAction;
    actProductionProcessView: TAction;
    actFinanceProcessView: TAction;
    actEnvironmentProcessView: TAction;
    actNoProcessView: TAction;
    procedure FrameResize(Sender: TObject);
    procedure btnPVFinancesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btnPVDeliveriesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btnPVProductionMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btnPVSalesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btnPVEnvironmentMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btnPVFinancesMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnPVDeliveriesMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnPVProductionMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnPVSalesMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnPVEnvironmentMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnPVFinancesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnPVDeliveriesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnPVProductionMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnPVSalesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnPVEnvironmentMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure actSalesProcessViewExecute(Sender: TObject);
    procedure actDeliveriesProcessViewExecute(Sender: TObject);
    procedure actProductionProcessViewExecute(Sender: TObject);
    procedure actFinanceProcessViewExecute(Sender: TObject);
    procedure actEnvironmentProcessViewExecute(Sender: TObject);
    procedure actNoProcessViewExecute(Sender: TObject);
    procedure actFrameUpdate(Sender: TObject);
    procedure lblPVDeliveriesClick(Sender: TObject);
    procedure lblPVEnvironmentClick(Sender: TObject);
    procedure lblPVFinancesClick(Sender: TObject);
    procedure lblPVProductionClick(Sender: TObject);
    procedure lblPVSalesClick(Sender: TObject);
    procedure lblNoProcessViewClick(Sender: TObject);
    procedure ProcessLabelMouseEnter(Sender: TObject);
    procedure ProcessLabelMouseLeave(Sender: TObject);
  private
    FInProcessRightOffset: Integer;
    FProcessButtonDown: Boolean;
    FProcessLabelVOffset: Integer;
    FProcessView: TProcessView;
    FOnProcessViewChanged: TNotifyEvent;
    FButtonsVisible: Boolean;
    procedure SetInProcessRightOffset(const Value: Integer);
    procedure SetProcessLabelPosition(AProcessLabel: TLabel;
      AProcessSpeedButton: TSpeedButton; AProcessButtonDown: Boolean);
    procedure SetProcessView(const Value: TProcessView);
    procedure DoProcessViewChanged;
  public
    constructor Create(AOwner: TComponent); override;

    property InProcessRightOffset: Integer read FInProcessRightOffset write SetInProcessRightOffset;
    property ButtonsVisible: Boolean read FButtonsVisible write FButtonsVisible;
    property ProcessView: TProcessView read FProcessView write SetProcessView;
    property OnProcessViewChanged: TNotifyEvent read FOnProcessViewChanged write FOnProcessViewChanged;
  end;

implementation

uses
  uClientApp, System.UITypes, System.Math;

{$R *.dfm}

resourcestring
  SNoProcessViewName = '';
  SFinanceProcessViewName = 'Финансиране';
  SSalesProcessViewName = 'Продажби';
  SDeliveriesProcessViewName = 'Доставки';
  SProductionProcessViewName = 'Вътрешно Обезпечаване на Продажбите';
  SEnvironmentProcessViewName = 'Осъществяване на Технологичната Среда';

const
  ProcessViewNames: array[TProcessView] of string = (
    SNoProcessViewName,
    SFinanceProcessViewName,
    SSalesProcessViewName,
    SDeliveriesProcessViewName,
    SProductionProcessViewName,
    SEnvironmentProcessViewName
  );

procedure TfrMainProcessView.actDeliveriesProcessViewExecute(Sender: TObject);
begin
  inherited;
  ProcessView:= pvDeliveries;
end;

procedure TfrMainProcessView.actEnvironmentProcessViewExecute(Sender: TObject);
begin
  inherited;
  ProcessView:= pvEnvironment;
end;

procedure TfrMainProcessView.actFinanceProcessViewExecute(Sender: TObject);
begin
  inherited;
  ProcessView:= pvFinance;
end;

procedure TfrMainProcessView.actFrameUpdate(Sender: TObject);
begin
  inherited;

  pnlOutOfProcessView.Visible:= (FProcessView = pvNone);
  pnlInProcessView.Visible:= (FProcessView <> pvNone);

  lblProcessView.Caption:= ProcessViewNames[FProcessView];

  btnPVDeliveries.Visible:= FButtonsVisible;
  btnPVSales.Visible:= FButtonsVisible;
  btnPVProduction.Visible:= FButtonsVisible;
  btnPVFinances.Visible:= FButtonsVisible;
  btnPVEnvironment.Visible:= FButtonsVisible;
  btnNoProcessView.Visible:= FButtonsVisible;
end;

procedure TfrMainProcessView.actNoProcessViewExecute(Sender: TObject);
begin
  inherited;
  ProcessView:= pvNone;
end;

procedure TfrMainProcessView.actProductionProcessViewExecute(Sender: TObject);
begin
  inherited;
  ProcessView:= pvProduction;
end;

procedure TfrMainProcessView.actSalesProcessViewExecute(Sender: TObject);
begin
  inherited;
  ProcessView:= pvSales;
end;

procedure TfrMainProcessView.btnPVDeliveriesMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  SetProcessLabelPosition(lblPVDeliveries, btnPVDeliveries, True);
end;

procedure TfrMainProcessView.btnPVDeliveriesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  SetProcessLabelPosition(lblPVDeliveries, btnPVDeliveries, FProcessButtonDown);
end;

procedure TfrMainProcessView.btnPVDeliveriesMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  SetProcessLabelPosition(lblPVDeliveries, btnPVDeliveries, False);
end;

procedure TfrMainProcessView.btnPVEnvironmentMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  SetProcessLabelPosition(lblPVEnvironment, btnPVEnvironment, True);
end;

procedure TfrMainProcessView.btnPVEnvironmentMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  SetProcessLabelPosition(lblPVEnvironment, btnPVEnvironment, FProcessButtonDown);
end;

procedure TfrMainProcessView.btnPVEnvironmentMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  SetProcessLabelPosition(lblPVEnvironment, btnPVEnvironment, False);
end;

procedure TfrMainProcessView.btnPVFinancesMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  SetProcessLabelPosition(lblPVFinances, btnPVFinances, True);
end;

procedure TfrMainProcessView.btnPVFinancesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  SetProcessLabelPosition(lblPVFinances, btnPVFinances, FProcessButtonDown);
end;

procedure TfrMainProcessView.btnPVFinancesMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  SetProcessLabelPosition(lblPVFinances, btnPVFinances, False);
end;

procedure TfrMainProcessView.btnPVProductionMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  SetProcessLabelPosition(lblPVProduction, btnPVProduction, True);
end;

procedure TfrMainProcessView.btnPVProductionMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  SetProcessLabelPosition(lblPVProduction, btnPVProduction, FProcessButtonDown);
end;

procedure TfrMainProcessView.btnPVProductionMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  SetProcessLabelPosition(lblPVProduction, btnPVProduction, False);
end;

procedure TfrMainProcessView.btnPVSalesMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  SetProcessLabelPosition(lblPVSales, btnPVSales, True);
end;

procedure TfrMainProcessView.btnPVSalesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  SetProcessLabelPosition(lblPVSales, btnPVSales, FProcessButtonDown);
end;

procedure TfrMainProcessView.btnPVSalesMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  SetProcessLabelPosition(lblPVSales, btnPVSales, False);
end;

constructor TfrMainProcessView.Create(AOwner: TComponent);
begin
  inherited;

  lblLogoAppName.Caption:= ReplaceAppParams(lblLogoAppName.Caption);
  TryLoadPictureFromResource(imgCross.Picture, AppCrossBitmapResourceName);
end;

procedure TfrMainProcessView.DoProcessViewChanged;
begin
  if Assigned(FOnProcessViewChanged) then
    FOnProcessViewChanged(Self);
end;

procedure TfrMainProcessView.FrameResize(Sender: TObject);
begin
  inherited;

  pnlOutOfProcessView.Top:=
    (Height - pnlOutOfProcessView.Height) div 2;
  pnlOutOfProcessView.Left:=
    (Width - pnlOutOfProcessView.Width) div 2;

  pnlInProcessView.Top:=
    (Height - pnlInProcessView.Height) - 2;
  pnlInProcessView.Left:=
    (Width - pnlInProcessView.Width - FInProcessRightOffset) - 2;
end;

procedure TfrMainProcessView.lblNoProcessViewClick(Sender: TObject);
begin
  inherited;
  actNoProcessView.Execute;
end;

procedure TfrMainProcessView.lblPVDeliveriesClick(Sender: TObject);
begin
  inherited;
  actDeliveriesProcessView.Execute;
end;

procedure TfrMainProcessView.lblPVEnvironmentClick(Sender: TObject);
begin
  inherited;
  actEnvironmentProcessView.Execute;
end;

procedure TfrMainProcessView.lblPVFinancesClick(Sender: TObject);
begin
  inherited;
  actFinanceProcessView.Execute;
end;

procedure TfrMainProcessView.lblPVProductionClick(Sender: TObject);
begin
  inherited;
  actProductionProcessView.Execute;
end;

procedure TfrMainProcessView.lblPVSalesClick(Sender: TObject);
begin
  inherited;
  actSalesProcessView.Execute;
end;

procedure TfrMainProcessView.ProcessLabelMouseEnter(Sender: TObject);
begin
  inherited;
  with (Sender as TLabel).Font do
    begin
      Color:= clBlue;
      Style:= Style + [fsUnderline];
    end;
end;

procedure TfrMainProcessView.ProcessLabelMouseLeave(Sender: TObject);
begin
  inherited;
  with (Sender as TLabel).Font do
    begin
      Color:= clWindowText;
      Style:= Style - [fsUnderline];
    end;
end;

procedure TfrMainProcessView.SetInProcessRightOffset(const Value: Integer);
begin
  if (Value <> FInProcessRightOffset) then
    begin
      FInProcessRightOffset:= Value;
      Resize;
    end;
end;

procedure TfrMainProcessView.SetProcessLabelPosition(AProcessLabel: TLabel;
  AProcessSpeedButton: TSpeedButton; AProcessButtonDown: Boolean);
var
  DownInButton: Boolean;
begin
  FProcessButtonDown:= AProcessButtonDown;
  FProcessLabelVOffset:= AProcessLabel.Top - AProcessSpeedButton.Top;

  DownInButton:=
    FProcessButtonDown and
    PtInRect(AProcessSpeedButton.ClientRect, AProcessSpeedButton.ScreenToClient(Mouse.CursorPos));

  if FProcessButtonDown then
    begin
      AProcessLabel.Left:= AProcessSpeedButton.Left + Ord(DownInButton);
      AProcessLabel.Top:= AProcessSpeedButton.Top + FProcessLabelVOffset + Ord(DownInButton);
    end;
end;

procedure TfrMainProcessView.SetProcessView(const Value: TProcessView);
begin
  if (Value <> FProcessView) then
    begin
      FProcessView:= Value;
      DoProcessViewChanged;
    end;  { if }
end;

end.
