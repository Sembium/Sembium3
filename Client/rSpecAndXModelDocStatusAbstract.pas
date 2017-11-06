unit rSpecAndXModelDocStatusAbstract;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rTreeDefault, DB, QRExport, QRCtrls, QuickRpt, ExtCtrls,
  DBClient, AbmesClientDataSet;

type
  TrptSpecAndXModelDocStatusAbstract = class(TrptTreeDefault)
    txtDocItemsUnauthorizedStatus: TQRDBText;
    txtApproveCycleNo: TQRDBText;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    procedure qrbDetailsBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    function GetNodeLevel: Integer; override;
    function GetReportTitle: string; override;
    function IsLastChild: Boolean; override;
    function HasChildren: Boolean; override;
  end;

type
  TrptSpecAndXModelDocStatusAbstractClass = class of TrptSpecAndXModelDocStatusAbstract;

implementation

uses
  uDocUtils;

{$R *.dfm}

{ TrptSpecAndXModelDocStatusAbstract }

function TrptSpecAndXModelDocStatusAbstract.GetNodeLevel: Integer;
begin
  Result:= DataSet.FieldByName('LEVEL_NO').AsInteger;
end;

function TrptSpecAndXModelDocStatusAbstract.GetReportTitle: string;
begin
  Result:= lblReportTitle.Caption;
end;

function TrptSpecAndXModelDocStatusAbstract.HasChildren: Boolean;
begin
  Result:= DataSet.FieldByName('HAS_CHILDREN').AsBoolean;
end;

function TrptSpecAndXModelDocStatusAbstract.IsLastChild: Boolean;
begin
  Result:= DataSet.FieldByName('IS_LAST_CHILD').AsBoolean;
end;

procedure TrptSpecAndXModelDocStatusAbstract.qrbDetailsBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
var
  s: string;
begin
  inherited;

  with DataSet do
    begin
      if FieldByName('DOC_IS_COMPLETE').AsBoolean then
        begin
          txtNodeNo.Font.Color:= clGreen;
        end
      else
        begin
          txtNodeNo.Font.Color:= clRed;
          txtNodeNo.Font.Name:= txtNodeName.Font.Name;
        end;

      if (FieldByName('UNAUTHORIZED_ACTIVE_DI_COUNT').AsInteger = 0) and
         (FieldByName('UNAPPROVED_ACTIVE_DI_COUNT').AsInteger = 0) then
        txtDocItemsUnauthorizedStatus.Font.Color:= clGreen
      else
        txtDocItemsUnauthorizedStatus.Font.Color:= clRed;


      s:= FieldByName('_SHOW_APPROVE_CYCLE_NO').AsString;
      if (s <> '') and (s[1] = '(') then
        txtApproveCycleNo.Font.Color:= clRed
      else
        txtApproveCycleNo.Font.Color:= clGreen;   
    end;
end;

end.

