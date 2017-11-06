unit fOtherStoreRequests;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fStoreRequests, Menus, JvButtons, ImgList, ParamDataSet,
  ActnList, Db, AbmesFields, DBClient, AbmesClientDataSet, GridsEh, DBGridEh,
  AbmesDBGrid, DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls,
  fStoreRequestsAbstract, uClientTypes, ComCtrls, ToolWin, dDocClient,
  JvComponent, JvCaptionButton;

type
  TfmOtherStoreRequests = class(TfmStoreRequestsAbstract)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  protected
    function ShowEditForm(AEditMode: TEditMode): Boolean; override;
  public
    class function ShowForm(
      AdmDocClient: TdmDocClient = nil;
      APlannedStoreDealBranchCode: Integer = 0;
      APlannedStoreDealCode: Integer = 0;
      AStoreRequestBranchCode: Integer = 0;
      AStoreRequestCode: Integer = 0): Boolean;
    procedure SetDataParams(
      AdmDocClient: TdmDocClient = nil;
      APlannedStoreDealBranchCode: Integer = 0;
      APlannedStoreDealCode: Integer = 0;
      AStoreRequestBranchCode: Integer = 0;
      AStoreRequestCode: Integer = 0); reintroduce; virtual;
  end;

implementation

uses
  fStoreRequest;

{$R *.DFM}

{ TfmOtherStoreRequests }

procedure TfmOtherStoreRequests.SetDataParams(AdmDocClient: TdmDocClient;
  APlannedStoreDealBranchCode, APlannedStoreDealCode,
  AStoreRequestBranchCode, AStoreRequestCode: Integer);
begin
  inherited SetDataParams(AdmDocClient, nil, emReadOnly, doNone, False);

  with cdsGridData.Params do
    begin
      ParamByName('PLANNED_STORE_DEAL_BRANCH_CODE').AsInteger:= APlannedStoreDealBranchCode;
      ParamByName('PLANNED_STORE_DEAL_CODE').AsInteger:= APlannedStoreDealCode;
      ParamByName('STORE_REQUEST_BRANCH_CODE').AsInteger:= AStoreRequestBranchCode;
      ParamByName('STORE_REQUEST_CODE').AsInteger:= AStoreRequestCode;
    end;   { with }
end;

class function TfmOtherStoreRequests.ShowForm(AdmDocClient: TdmDocClient;
  APlannedStoreDealBranchCode, APlannedStoreDealCode,
  AStoreRequestBranchCode, AStoreRequestCode: Integer): Boolean;
var
  f: TfmOtherStoreRequests;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, APlannedStoreDealBranchCode, APlannedStoreDealCode,
      AStoreRequestBranchCode, AStoreRequestCode);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;  { try }
end;

procedure TfmOtherStoreRequests.FormCreate(Sender: TObject);
begin
  inherited;
  FilterFormClass:= nil;
end;

function TfmOtherStoreRequests.ShowEditForm(AEditMode: TEditMode): Boolean;
begin
  Result:= TfmStoreRequestClass(EditFormClass).ShowForm(dmDocClient, cdsGridData, emReadOnly,
    cdsGridDataIN_OUT.AsInteger, 0, cdsBranches, cdsEmployees);
end;

end.
