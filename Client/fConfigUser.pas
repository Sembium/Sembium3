unit fConfigUser;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uClientTypes, Db, Menus, DBClient, AbmesClientDataSet, JvButtons, ImgList,
  ActnList, StdCtrls, Buttons, ExtCtrls, ComCtrls, AbmesFields, Mask,
  DBCtrls, AbmesDBCheckBox, fEditForm, dDocClient, JvDBCombobox,
  JvExStdCtrls, JvComponent, JvCaptionButton, JvComponentBase, JvCombobox, System.Actions, JvImage,
  VFrames, JvExExtCtrls, Vcl.Imaging.jpeg;

type
  TfmConfigUser = class(TEditForm)
    pcMain: TPageControl;
    tsTrees: TTabSheet;
    bvlTrees: TBevel;
    lblNormalProductsTreeExpandLevels: TLabel;
    lblDeptsTreeExpandLevels: TLabel;
    edtNormalProductsTreeExpandLevels: TDBEdit;
    edtDeptsTreeExpandLevels: TDBEdit;
    udNormalProductsTreeExpandLevels: TUpDown;
    udDeptsTreeExpandLevels: TUpDown;
    cdsDataEMPLOYEE_CODE: TAbmesFloatField;
    cdsDataPRODUCTS_TREE_EXPAND_LEVELS: TAbmesFloatField;
    cdsDataDEPTS_TREE_EXPAND_LEVELS: TAbmesFloatField;
    cdsDataDEFAULT_SHOW_UNCOVERED_LINES: TAbmesFloatField;
    cdsDataPSD_COMPLETE_IN_ADVANCE_WDAYS: TAbmesFloatField;
    cdsDataPSD_REQUEST_IN_ADVANCE_WDAYS: TAbmesFloatField;
    tsMiscellaneous: TTabSheet;
    bvlMiscellaneous: TBevel;
    chbDefaultShowUncoveredLines: TAbmesDBCheckBox;
    cdsDataDEFAULT_DELIVERIES_ACTIVE_PAGE: TAbmesFloatField;
    cdsDataDEFAULT_SALES_EXP_ACTIVE_PAGE: TAbmesFloatField;
    tsRegisters: TTabSheet;
    lblDefaultSalesExpPage: TLabel;
    lblDefaultDeliveriesPage: TLabel;
    bvlRegisters: TBevel;
    cdsDataPRODUCTS_TREE_SHOW_DETAIL: TAbmesFloatField;
    cdsDataDEPTS_TREE_SHOW_DETAIL: TAbmesFloatField;
    lblNormalProductsTreeShowDetail: TLabel;
    cbNormalProductsTreeShowDetail: TJvDBComboBox;
    lblDeptsTreeShowDetail: TLabel;
    cbDeptsTreeShowDetail: TJvDBComboBox;
    cdsDataFIN_PROD_TREE_EXPAND_LEVELS: TAbmesFloatField;
    cdsDataBUDGET_PROD_TREE_EXPAND_LEVELS: TAbmesFloatField;
    cdsDataFIN_PROD_TREE_SHOW_DETAIL: TAbmesFloatField;
    cdsDataBUDGET_PROD_TREE_SHOW_DETAIL: TAbmesFloatField;
    lblFinancialProductsTreeExpandLevels: TLabel;
    edtFinancialProductsTreeExpandLevels: TDBEdit;
    udFinancialProductsTreeExpandLevels: TUpDown;
    lblBudgetProductsTreeExpandLevels: TLabel;
    edtBudgetProductsTreeExpandLevels: TDBEdit;
    udBudgetProductsTreeExpandLevels: TUpDown;
    lblFinancialProductsTreeShowDetail: TLabel;
    cbFinancialProductsTreeShowDetail: TJvDBComboBox;
    lblBudgetProductsTreeShowDetail: TLabel;
    cbBudgetProductsTreeShowDetail: TJvDBComboBox;
    cdsDataDOS_PRINT: TAbmesFloatField;
    chkDOSPrint: TAbmesDBCheckBox;
    cdsDataDEFAULT_MODEL_STATUS_EXPAND_ST: TAbmesFloatField;
    lblDefaultModelStatusExpandState: TLabel;
    cbDefaultModelStatusExpandState: TJvDBComboBox;
    cbDefaultSalesExpPage: TJvDBComboBox;
    cbDefaultDeliveriesPage: TJvDBComboBox;
    chkShowProductQuantitiesTreeByDefault: TAbmesDBCheckBox;
    cdsDataDEFAULT_SHOW_PRODUCT_QTY_TREE: TAbmesFloatField;
    cdsDataPICTURE: TBlobField;
    tsPicture: TTabSheet;
    actLoadPicture: TAction;
    OpenDialog: TOpenDialog;
    actClearPicture: TAction;
    bvlPicture: TBevel;
    pnlPictureMain: TPanel;
    imgPicture: TJvImage;
    btnLoadPicture: TButton;
    btnClearPicture: TButton;
    actCapturePicture: TAction;
    btnCapturePicture: TButton;
    pnlPictureCapture: TPanel;
    pbWebCam: TPaintBox;
    cbWebCams: TComboBox;
    lblWebCam: TLabel;
    actTakePicture: TAction;
    actBackToPicture: TAction;
    btnTakePicture: TButton;
    btnBackToPicture: TButton;
    lblNoWebCamFound: TLabel;
    actWebCamProperties: TAction;
    btnWebCamProperties: TSpeedButton;
    pnlMiscAdvancedSettings: TPanel;
    lblPSDRequestInAdvanceWorkdays: TLabel;
    lblPSDCompleteInAdvanceWorkdays: TLabel;
    edtPSDRequestInAdvanceWorkdays: TDBEdit;
    edtPSDCompleteInAdvanceWorkdays: TDBEdit;
    procedure udNormalProductsTreeExpandLevelsClick(Sender: TObject;
      Button: TUDBtnType);
    procedure udDeptsTreeExpandLevelsClick(Sender: TObject;
      Button: TUDBtnType);
    procedure FormCreate(Sender: TObject);
    procedure udFinancialProductsTreeExpandLevelsClick(Sender: TObject;
      Button: TUDBtnType);
    procedure udBudgetProductsTreeExpandLevelsClick(Sender: TObject;
      Button: TUDBtnType);
    procedure actLoadPictureExecute(Sender: TObject);
    procedure actLoadPictureUpdate(Sender: TObject);
    procedure actClearPictureUpdate(Sender: TObject);
    procedure actClearPictureExecute(Sender: TObject);
    procedure imgPictureDblClick(Sender: TObject);
    procedure actCapturePictureExecute(Sender: TObject);
    procedure actBackToPictureExecute(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure actTakePictureExecute(Sender: TObject);
    procedure actTakePictureUpdate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cbWebCamsChange(Sender: TObject);
    procedure cdsDataAfterOpen(DataSet: TDataSet);
    procedure cdsDataPICTUREChange(Sender: TField);
    procedure actWebCamPropertiesUpdate(Sender: TObject);
    procedure actWebCamPropertiesExecute(Sender: TObject);
  private
    FInCaptureMode: Boolean;
    FVideoImage: TVideoImage;
    VideoBMPIndex: Integer;
    VideoBMP: array[0..1] of TBitmap;
    procedure InitWebCam;
    procedure StartWebCam;
    procedure StopWebCam;
    function GetProperVideoSizeIndex(AVideoSizes: TStringList; const AMinSize: Integer): Integer;
    function TakePictureToBitmap: TBitmap;
    function TakePictureToJpeg: TJpegImage;
    procedure BackToPicture;
    procedure OnVideoImageNewFrame(Sender : TObject; Width, Height: integer; DataPtr: pointer);
    procedure ShowPicture;
    function CenterCropBitmap(ABitmap: TBitmap; const AWidth, AHeight: Integer): TBitmap;
//    procedure HorizontalFlipBitmap(ABitmap: TBitmap);
  public
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      AUserCode: Integer = 0;
      AStartWithPicture: Boolean = False); reintroduce; virtual;
    class function ShowForm(AdmDocClient: TdmDocClient = nil;
      AUserCode: Integer = 0;
      AEditMode: TEditMode = emEdit;
      AStartWithPicture: Boolean = False): Boolean;
    procedure Initialize; override;
  protected
    procedure DoApplyUpdates; override;
  end;

implementation

uses
  dMain, uUtils, uClientUtils, System.Math, fMain, uUserActivityConsts;

{$R *.DFM}

resourcestring
  SConfirmClearPicture = 'Потвърдете изчистването на снимката?';
  SErrorStartingWebCam = 'Грешка при стартиране на камерата. Може да се използва от друго приложение.';

procedure TfmConfigUser.udNormalProductsTreeExpandLevelsClick(Sender: TObject;
  Button: TUDBtnType);
begin
  inherited;

  CheckEditMode(cdsData);
  cdsDataPRODUCTS_TREE_EXPAND_LEVELS.AsInteger:=
    udNormalProductsTreeExpandLevels.Position;
end;

procedure TfmConfigUser.udBudgetProductsTreeExpandLevelsClick(Sender: TObject;
  Button: TUDBtnType);
begin
  inherited;

  CheckEditMode(cdsData);
  cdsDataBUDGET_PROD_TREE_EXPAND_LEVELS.AsInteger:=
    udBudgetProductsTreeExpandLevels.Position;
end;

procedure TfmConfigUser.udDeptsTreeExpandLevelsClick(Sender: TObject;
  Button: TUDBtnType);
begin
  inherited;

  CheckEditMode(cdsData);
  cdsDataDEPTS_TREE_EXPAND_LEVELS.AsInteger:=
    udDeptsTreeExpandLevels.Position;
end;

procedure TfmConfigUser.udFinancialProductsTreeExpandLevelsClick(
  Sender: TObject; Button: TUDBtnType);
begin
  inherited;

  CheckEditMode(cdsData);
  cdsDataFIN_PROD_TREE_EXPAND_LEVELS.AsInteger:=
    udFinancialProductsTreeExpandLevels.Position;
end;

procedure TfmConfigUser.Initialize;
begin
  inherited;

  udNormalProductsTreeExpandLevels.Position:=
    cdsDataPRODUCTS_TREE_EXPAND_LEVELS.AsInteger;
  udFinancialProductsTreeExpandLevels.Position:=
    cdsDataFIN_PROD_TREE_EXPAND_LEVELS.AsInteger;
  udBudgetProductsTreeExpandLevels.Position:=
    cdsDataBUDGET_PROD_TREE_EXPAND_LEVELS.AsInteger;
  udDeptsTreeExpandLevels.Position:=
    cdsDataDEPTS_TREE_EXPAND_LEVELS.AsInteger;
end;

procedure TfmConfigUser.InitWebCam;
var
  SL: TStringList;
begin
  SL:= TStringList.Create;
  try
    FVideoImage.GetListOfDevices(SL);
    cbWebCams.Items.Assign(SL);
  finally
    FreeAndNil(SL);
  end;

  if (cbWebCams.Items.Count > 0) then
    begin
      cbWebCams.ItemIndex:= 0;
      StartWebCam;
    end
  else
    cbWebCams.ItemIndex:= -1;

  lblNoWebCamFound.Visible:= (cbWebCams.Items.Count = 0);
end;

procedure TfmConfigUser.OnVideoImageNewFrame(Sender: TObject; Width, Height: integer; DataPtr: pointer);
var
  bmp: TBitmap;
  z: Integer;
begin
  VideoBMPIndex:= 1 - VideoBMPIndex;
  FVideoImage.GetBitmap(VideoBMP[VideoBMPIndex]);

  bmp:= VideoBMP[VideoBMPIndex];

  z:= Min(bmp.Width, bmp.Height);

  bmp:= CenterCropBitmap(bmp, z, z);
  try
    pbWebCam.Canvas.StretchDraw(pbWebCam.Canvas.ClipRect, bmp);
  finally
    FreeAndNil(bmp);
  end;
end;

procedure TfmConfigUser.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; AUserCode: Integer;
  AStartWithPicture: Boolean);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode);

  cdsData.Params.ParamByName('USER_CODE').AsInteger:= AUserCode;

  if AStartWithPicture then
    pcMain.ActivePage:= tsPicture;
end;

class function TfmConfigUser.ShowForm(AdmDocClient: TdmDocClient;
  AUserCode: Integer; AEditMode: TEditMode;
  AStartWithPicture: Boolean): Boolean;
var
  f: TfmConfigUser;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, nil, AEditMode, AUserCode, AStartWithPicture);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;
end;

procedure TfmConfigUser.ShowPicture;
var
  MS: TMemoryStream;
  wic: TWICImage;
begin
  if cdsDataPICTURE.IsNull then
    imgPicture.Picture:= fmMain.imgDefaultUserPicture.Picture
  else
    begin
      MS:= TMemoryStream.Create;
      try
        cdsDataPICTURE.SaveToStream(MS);

        wic:= TWICImage.Create;
        try
          wic.LoadFromStream(MS);
          imgPicture.Picture.Assign(wic);
        finally
          FreeAndNil(wic);
        end;
      finally
        FreeAndNil(MS);
      end;
    end;

  imgPicture.Visible:= False;
  imgPicture.Visible:= True;
end;

procedure TfmConfigUser.StartWebCam;
var
  ErrorCode: Integer;
  VideoSizes: TStringList;
  ProperVideoSizeIndex: Integer;
begin
  ErrorCode:= FVideoImage.VideoStart('#' + IntToStr(cbWebCams.ItemIndex+1));

  if (ErrorCode > 0) then
    raise Exception.Create(SErrorStartingWebCam);

  VideoSizes:= TStringList.Create;
  try
    FVideoImage.GetListOfSupportedVideoSizes(VideoSizes);
    ProperVideoSizeIndex:= GetProperVideoSizeIndex(VideoSizes, MaxInt{pbWebCam.Width});  // max resolution
  finally
    FreeAndNil(VideoSizes);
  end;

  FVideoImage.SetResolutionByIndex(ProperVideoSizeIndex);
end;

procedure TfmConfigUser.StopWebCam;
begin
  FVideoImage.VideoStop;
end;

function TfmConfigUser.TakePictureToBitmap: TBitmap;
var
  bmp: TBitmap;
  z: Integer;
begin
  bmp:= TBitmap.Create;
  try
    FVideoImage.GetBitmap(bmp);

    z:= Min(bmp.Width, bmp.Height);

    Result:= CenterCropBitmap(bmp, z, z);
  finally
    FreeAndNil(bmp);
  end;
end;

function TfmConfigUser.TakePictureToJpeg: TJpegImage;
var
  bmp: TBitmap;
begin
  Result:= TJpegImage.Create;
  try
    bmp:= TakePictureToBitmap;
    try
      Result.Assign(bmp);
    finally
      FreeAndNil(bmp);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

procedure TfmConfigUser.actBackToPictureExecute(Sender: TObject);
begin
  inherited;
  BackToPicture;
end;

procedure TfmConfigUser.actCapturePictureExecute(Sender: TObject);
begin
  inherited;
  FInCaptureMode:= True;
  InitWebCam;
end;

procedure TfmConfigUser.actClearPictureExecute(Sender: TObject);
begin
  inherited;
  ConfirmAction(SConfirmClearPicture);
  CheckEditMode(cdsData);
  cdsDataPICTURE.Clear;
  imgPicture.Visible:= False;
  Application.ProcessMessages;
  imgPicture.Visible:= True;
end;

procedure TfmConfigUser.actClearPictureUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode <> emReadOnly) and
    not cdsDataPICTURE.IsNull;
end;

procedure TfmConfigUser.actFormUpdate(Sender: TObject);
begin
  inherited;
  pnlPictureMain.Visible:= not FInCaptureMode;
  pnlPictureCapture.Visible:= FInCaptureMode;
  cbWebCams.Enabled:= (cbWebCams.Items.Count > 0);
  pnlMiscAdvancedSettings.Visible:= LoginContext.HasUserActivity(uaUsersEdit);
end;

procedure TfmConfigUser.actLoadPictureExecute(Sender: TObject);
var
  pic: TPicture;
begin
  inherited;
  if OpenDialog.Execute then
    begin
      pic:= TPicture.Create;
      try
        pic.LoadFromFile(OpenDialog.FileName);
      finally
        pic.Free;
      end;

      CheckEditMode(cdsData);
      cdsDataPICTURE.LoadFromFile(OpenDialog.FileName);
    end;
end;

procedure TfmConfigUser.actLoadPictureUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= (EditMode <> emReadOnly);
end;

procedure TfmConfigUser.actTakePictureExecute(Sender: TObject);
var
  picture: TGraphic;
  MS: TMemoryStream;
begin
  inherited;
  CheckEditMode(cdsData);

  picture:= TakePictureToJpeg;

  MS:= TMemoryStream.Create;
  try
    picture.SaveToStream(MS);
    cdsDataPICTURE.LoadFromStream(MS);
  finally
    FreeAndNil(MS);
  end;

  BackToPicture;
end;

procedure TfmConfigUser.actTakePictureUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode <> emReadOnly) and
    FInCaptureMode and
    (cbWebCams.Items.Count > 0);
end;

procedure TfmConfigUser.actWebCamPropertiesExecute(Sender: TObject);
begin
  inherited;
  FVideoImage.ShowProperty;
end;

procedure TfmConfigUser.actWebCamPropertiesUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    FInCaptureMode and
    (cbWebCams.ItemIndex >= 0);
end;

procedure TfmConfigUser.cbWebCamsChange(Sender: TObject);
begin
  inherited;
  StopWebCam;
  StartWebCam;
end;

procedure TfmConfigUser.cdsDataAfterOpen(DataSet: TDataSet);
begin
  inherited;
  ShowPicture;
end;

procedure TfmConfigUser.cdsDataPICTUREChange(Sender: TField);
begin
  inherited;
  ShowPicture;
end;

function TfmConfigUser.CenterCropBitmap(ABitmap: TBitmap; const AWidth, AHeight: Integer): TBitmap;
var
  Source: TRect;
  Dest: TRect;
begin
  Result:= TBitmap.Create;
  try
    Result.SetSize(AWidth, AHeight);

    Dest:= Rect(0, 0, AWidth - 1, AHeight - 1);

    Source.Left:= (ABitmap.Width - AWidth) div 2;
    Source.Top:= (ABitmap.Height - AHeight) div 2;
    Source.Width:= AWidth;
    Source.Height:= AHeight;

    Result.Canvas.CopyRect(Dest, ABitmap.Canvas, Source);
  except
    FreeAndNil(Result);
    raise;
  end;
end;

procedure TfmConfigUser.DoApplyUpdates;
begin
  inherited;
  dmMain.RefreshLoginContext;
end;

procedure TfmConfigUser.BackToPicture;
begin
  FInCaptureMode:= False;
  StopWebCam;
end;

procedure TfmConfigUser.FormCreate(Sender: TObject);
begin
  inherited;

  pcMain.ActivePage:= tsMiscellaneous;

  VideoBMP[0]:= TBitmap.Create;
  VideoBMP[1]:= TBitmap.Create;

  FVideoImage:= TVideoImage.Create;
  FVideoImage.SetDisplayCanvas(nil);
  FVideoImage.OnNewVideoFrame:= OnVideoImageNewFrame;
end;

procedure TfmConfigUser.FormDestroy(Sender: TObject);
begin
  inherited;
  StopWebCam;
  FVideoImage.Free;
  VideoBMP[0].Free;
  VideoBMP[1].Free;
end;

function TfmConfigUser.GetProperVideoSizeIndex(AVideoSizes: TStringList; const AMinSize: Integer): Integer;

  function GetVideoSizeSmallestDim(const AVideoSize: string): Integer;
  var
    s: string;
    sizes: TStringArray;
  begin
    s:= SplitString(AVideoSize, ' ')[0];
    sizes:= SplitString(s, '*');
    Assert(Length(sizes) = 2);
    Result:= Min(StrToInt(sizes[0]), StrToInt(sizes[1]));
  end;

var
  i: Integer;
begin
  for i:= 0 to AVideoSizes.Count - 1 do
    if (GetVideoSizeSmallestDim(AVideoSizes[i]) >= AMinSize) then
      Exit(i);
  Result:= AVideoSizes.Count - 1;
end;

//procedure TfmConfigUser.HorizontalFlipBitmap(ABitmap: TBitmap);
//type TArrayOfPixel = array[0..5000] of TRGBTriple;
//     PArrayOfPixel = ^TArrayOfPixel;
//var
//  row: Integer;
//  ScanLine: PArrayOfPixel;
//  i: Integer;
//  x: TRGBTriple;
//begin
//  for row:= 0 to ABitmap.Height - 1 do
//    begin
//      ScanLine:= ABitmap.ScanLine[row];
//
//      for i:= 0 to ABitmap.Width div 2 do
//        begin
//          x:= ScanLine[i];
//          ScanLine[i]:= ScanLine[ABitmap.Width - 1 - i];
//          ScanLine[ABitmap.Width - 1 - i]:= x;
//        end;
//    end;
//end;
//
procedure TfmConfigUser.imgPictureDblClick(Sender: TObject);
begin
  inherited;
  actLoadPicture.Execute;
end;

end.
