unit uScalingUtils;

interface

uses
  Winapi.Windows,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Graphics;

type
  TFormHelper = class helper for TForm
    procedure Rescale;
    procedure PositionFormInScreen;
  end;

type
  TImageListHelper = class helper for TImageList
    procedure Rescale;
  end;

procedure InitializeScale(ACanvas: TCanvas);
function IsApplicationScaled: Boolean;
function ScalePixels(AValue: Integer): Integer;
procedure SetUserPixelsPerInch(const Value: string);

function GetVerticalScrollBarWidth: Integer;

implementation

uses
  System.Types,
  System.Classes,
  System.Math,
  System.SysUtils,
  System.Generics.Collections,
  Vcl.StdCtrls,
  Vcl.ComCtrls,
  Vcl.ExtCtrls,
  Vcl.DBCtrls,
  JvDBLookup,
  DBGridEh,
  DBAxisGridsEh,
  AbmesDBGrid,
  uUtils,
  uClientUtils,
  uEnumeratorUtils,
  uToolbarUtils,
  uComCtrlsHelpers,
  uEhLibHelpers,
  fButtonForm,
  fBevelEditForm,
  fBevelFilterForm;

const
  DesignPixelsPerInch = 96;
  DesignTextHeight = 13;

const
  ppiDisabled = -1;
  ppiAuto = 0;

const
  DefaultVertScrollBarWidth = 16;
  DefaultIndicatorWidth = 11;
  VertScrollBarAndIndicatorWidth = DefaultVertScrollBarWidth + DefaultIndicatorWidth;

var
  ScreenTextHeight: Integer = 0;
  ScaleMultiplicator: Integer = 0;
  ScaleDivider: Integer;
  UserPixelsPerInch: Integer = 0;

{ Routines }

function SizeOfTNonClientMetrics: Integer;
begin
  if Win32MajorVersion >= 6 then
    // Size of complete structure
    Result := System.SizeOf(TNonClientMetrics)
  else
    // Platforms prior to Vista do not recognize the field iPaddedBorderWidth
    Result := System.SizeOf(TNonClientMetrics) - System.SizeOf(Integer);
end;

function GetVerticalScrollBarWidth: Integer;
var
  ncm: TNonClientMetrics;
begin
  ncm.cbSize:= SizeOfTNonClientMetrics;
  if not SystemParametersInfo(SPI_GETNONCLIENTMETRICS, SizeOfTNonClientMetrics, @ncm, 0) then
    raise Exception.Create(SysErrorMessage(GetLastError));

  Result:= ncm.iScrollWidth;
end;

function ScreenPixelsPerInch: Integer;
begin
  Result:= Screen.PixelsPerInch;
end;

procedure InitializeScale(ACanvas: TCanvas);
const
  CompareValue = 1000;
var
  SaveFontSize: Integer;
begin
  if (UserPixelsPerInch = -1) then
    begin
      ScaleMultiplicator:= DesignPixelsPerInch;
      ScaleDivider:= DesignPixelsPerInch;
    end;

  if (UserPixelsPerInch > 0) then
    begin
      ScaleMultiplicator:= UserPixelsPerInch;
      ScaleDivider:= DesignPixelsPerInch;
    end;

  if (UserPixelsPerInch = 0) then
    begin
      SaveFontSize:= ACanvas.Font.Size;
      ACanvas.Font.Size:= 8;
      try
        ScreenTextHeight:= ACanvas.TextHeight('0');
      finally
        ACanvas.Font.Size:= SaveFontSize;
      end;

      if (MulDiv(CompareValue, ScreenTextHeight, DesignTextHeight) > MulDiv(CompareValue, ScreenPixelsPerInch, DesignPixelsPerInch)) then
        begin
          ScaleMultiplicator:= ScreenTextHeight;
          ScaleDivider:= DesignTextHeight;
        end
      else
        begin
          ScaleMultiplicator:= ScreenPixelsPerInch;
          ScaleDivider:= DesignPixelsPerInch;
        end;
    end;

  if (GetVerticalScrollBarWidth > ScalePixels(VertScrollBarAndIndicatorWidth)) then
    raise Exception.CreateFmt('Vertical ScrollBar is too wide. Max width supported is %d', [ScalePixels(VertScrollBarAndIndicatorWidth)]);

  DBGridEh.IndicatorWidth:= ScalePixels(VertScrollBarAndIndicatorWidth) - GetVerticalScrollBarWidth;

  if (Screen.PixelsPerInch = DesignPixelsPerInch) then
    Screen.MenuFont.Height:= ScalePixels(Screen.MenuFont.Height);
end;

function IsApplicationScaled: Boolean;
begin
  Result:= (ScaleMultiplicator <> 0) and (ScaleMultiplicator <> ScaleDivider);
end;

function ScalePixels(AValue: Integer): Integer;
begin
  if IsApplicationScaled then
    Result:= MulDiv(AValue, ScaleMultiplicator, ScaleDivider)
  else
    Result:= AValue;
end;

function StrToPixelsPerInch(const Value: string): Integer;
begin
  if SameText(Value, 'disabled') then
    Exit(ppiDisabled);

  if SameText(Value, 'auto') then
    Exit(ppiAuto);

  Result:= StrToIntDef(Value, 0);
end;

procedure SetUserPixelsPerInch(const Value: string);
begin
  UserPixelsPerInch:= StrToPixelsPerInch(Value);
end;

{ TFormHelper }

type
  TFontSizes = TDictionary<TFont, Integer>;

  TControlHack = class(TControl);

procedure TFormHelper.Rescale;

  procedure BeforeScaleFixComponents(AOwner: TComponent);
  var
    tlb: TToolBar;
    pnl: TPanel;
    clb: TCoolBar;
    i: Integer;
    band: TCoolBand;
    c: TComponent;
    ntlb: TWinControl;
  begin
    for tlb in AOwner.AllComponents.OfType<TToolBar> do
      if (tlb.Align = alNone) then
        begin
          ntlb:= NormalizedToolbar(tlb);

          pnl:= TPanel.Create(ntlb.Owner);
          try
            pnl.Name:= ntlb.Name + 'WrapPanel';
            pnl.BevelOuter:= bvNone;
            pnl.Caption:= '';

            pnl.SetBounds(ntlb.Left, ntlb.Top, ntlb.Width, ntlb.Height);
            pnl.Parent:= ntlb.Parent;

            ntlb.Parent:= pnl;
            ntlb.Align:= alClient;
          except
            FreeAndNil(pnl);
            raise;
          end;
        end;

    for clb in AOwner.AllComponents.OfType<TCoolBar> do
      for i:= 0 to clb.Bands.Count - 1 do
        begin
          band:= clb.Bands[i];
          band.MinHeight:= ScalePixels(band.MinHeight);
          band.MinWidth:= ScalePixels(band.MinWidth);
        end;

    for c in AOwner.AllComponents do
      BeforeScaleFixComponents(c);
  end;  { BeforeScaleFixComponents }

  procedure AfterScaleFixComponents(AOwner: TComponent);
  var
    HeaderGrids: TDictionary<TWinControl, TAbmesDBGrid>;

    procedure StretchImages;
    var
      img: TImage;
    begin
      for img in AOwner.AllComponents.OfType<TImage> do
        img.Stretch:= True;
    end;  { StretchImages }

    procedure ScaleToolbars(AOwner: TComponent);

      function HasOnlyToolButtons(AToolBar: TToolBar): Boolean;
      var
        c: TComponent;
      begin
        for c in AToolBar.AllComponents do
          if not (c is TToolButton) then
            Exit(False);
        Result:= True;
      end;

    var
      tlb: TToolBar;
      ntlb: TWinControl;
      c: TControl;
      w: Integer;
      SquareButtons: Boolean;
    begin
      for tlb in AOwner.AllComponents.OfType<TToolBar> do
        begin
          SquareButtons:= (tlb.ButtonWidth = tlb.ButtonHeight);
          if (tlb.Parent is TFlowPanel) then
            tlb.Height:= tlb.Parent.Height;


          tlb.ButtonHeight:= tlb.Height;
          tlb.ButtonWidth:= ScalePixels(tlb.ButtonWidth);

          if SquareButtons then
            tlb.ButtonWidth:= tlb.ButtonHeight;
        end;

      for tlb in AOwner.AllComponents.OfType<TToolBar> do
        begin
          ntlb:= NormalizedToolbar(tlb);
          if Assigned(ntlb) then
            begin
              ntlb.Height:= tlb.Height;

              w:= 0;
              for c in ntlb.AllControls do
                Inc(w, c.Width);

              ntlb.Width:= w;
            end;
        end;
    end;  { ScaleToolbars }

    procedure FixFlowPanels;
    var
      fp: TFlowPanel;
      w: Integer;
      c: TControl;
    begin
      for fp in AOwner.AllComponents.OfType<TFlowPanel> do
        begin
          w:= 0;
          for c in fp.AllControls do
            Inc(w, c.Width);

          fp.Width:= w;
        end;

    end;  { FixFlowPanels; }

    procedure ScaleStatusBars;
    var
      stb: TStatusBar;
      i: Integer;
    begin
      for stb in AOwner.AllComponents.OfType<TStatusBar> do
        for i:= 0 to stb.Panels.Count - 1 do
          stb.Panels[i].Width:= ScalePixels(stb.Panels[i].Width);
    end;  { ScaleStatusBars; }

    procedure FixPanels;
    var
      pnl: TPanel;
    begin
      for pnl in AOwner.AllComponents.OfType<TPanel> do
        pnl.BorderWidth:= ScalePixels(pnl.BorderWidth);
    end;  { FixPanels }

    procedure FixPageControlToolbars;
    var
      pc: TPageControl;
      pnl: TPanel;
      pp: TPoint;
      pcp: TPoint;
      NewLeft: Integer;
      NewTop: Integer;
    begin
      for pc in AOwner.AllComponents.OfType<TPageControl> do
        begin
          Assert(pc.PageCount > 0);

          for pnl in AOwner.AllComponents.OfType<TPanel> do
            if (pnl.Align = alNone) then
              begin
                pp:= pnl.Parent.ClientToScreen(Point(pnl.Left, pnl.Top));
                pcp:= pc.Parent.ClientToScreen(Point(pc.Left, pc.Top));

                if InRange(pcp.Y, pp.Y, pp.Y + pnl.Height) and
                   InRange(pp.Y + pnl.Height, pcp.Y, pcp.Y + pc.Height) then
                  begin
                    pnl.Top:= pnl.Top + - ((pp.Y + pnl.Height) - (pcp.Y + pc.RealTabHeight));

                    if (pnl.Top < 0) and (pnl.Parent is TPanel) then
                      begin
                        NewLeft:= pnl.Parent.Left + pnl.Left;
                        NewTop:= pnl.Parent.Top + pnl.Top;

                        pnl.Parent:= pnl.Parent.Parent;
                        pnl.Left:= NewLeft;
                        pnl.Top:= NewTop;
                      end;
                  end;
              end;
        end;
    end;  { FixPageControlToolbars }

    procedure FixTabControlToolbars;
    var
      tc: TTabControl;
      pnl: TPanel;
      pp: TPoint;
      pcp: TPoint;
      NewLeft: Integer;
      NewTop: Integer;
    begin
      for tc in AOwner.AllComponents.OfType<TTabControl> do
        begin
          Assert(tc.Tabs.Count > 0);

          for pnl in AOwner.AllComponents.OfType<TPanel> do
            if (pnl.Align = alNone) then
              begin
                pp:= pnl.Parent.ClientToScreen(Point(pnl.Left, pnl.Top));
                pcp:= tc.Parent.ClientToScreen(Point(tc.Left, tc.Top));

                if InRange(pcp.Y, pp.Y, pp.Y + pnl.Height) and
                   InRange(pp.Y + pnl.Height, pcp.Y, pcp.Y + tc.Height) then
                  begin
                    pnl.Top:= tc.Top + tc.RealTabHeight - pnl.Height;

                    if (pnl.Top < 0) and (pnl.Parent is TPanel) then
                      begin
                        NewLeft:= pnl.Parent.Left + pnl.Left;
                        NewTop:= pnl.Parent.Top + pnl.Top;

                        pnl.Parent:= pnl.Parent.Parent;
                        pnl.Left:= NewLeft;
                        pnl.Top:= NewTop;
                      end;
                  end;
              end;
        end;
    end;  { FixTTabControlToolbars }

    procedure FixEditHeights;
    var
      EditHeight: Integer;
      edt: TCustomEdit;
    begin
      EditHeight:= ScalePixels(21);
      for edt in AOwner.AllComponents.OfType<TCustomEdit> do
        if not (edt is TCustomMemo) then
          edt.Height:= EditHeight;
    end;  { FixEditHeights }

    function GridIsGridHeader(AHeaderGrid, AGrid: TAbmesDBGrid): Boolean;
    var
      col: TColumnEh;
    begin
      if (AHeaderGrid = AGrid) or
         (AHeaderGrid.Columns.Count = 0) or
         Assigned(AHeaderGrid.DataSource) or
         (AHeaderGrid.Parent <> AGrid.Parent) then
        Exit(False);

      for col in AHeaderGrid.Columns do
        if col.Visible and
           (col.Title.Caption <> '') and
           not Assigned(AGrid.FindFieldColumn(col.FieldName)) then
          Exit(False);

      Result:= True;
    end;

    procedure CalcHeaderGrids;
    var
      grd: TAbmesDBGrid;
      hgrd: TAbmesDBGrid;
    begin
      for grd in AOwner.AllComponents.OfType<TAbmesDBGrid> do
        for hgrd in AOwner.AllComponents.OfType<TAbmesDBGrid> do
          if GridIsGridHeader(hgrd, grd) then
            HeaderGrids.Add(grd, hgrd);
    end;  { CalcHeaderGrids }

    procedure FixGrids;

      procedure FixHeader(AHeaderGrid, AGrid: TAbmesDBGrid);
      var
        col: TColumnEh;
        HeaderHeight: Integer;
        Delta: Integer;
        BottomPanelsHeight: Integer;
        pnl: TPanel;
      begin
        HeaderHeight:= AHeaderGrid.DataRect.Top;

        Delta:= HeaderHeight - AGrid.Top;

        BottomPanelsHeight:= 0;
        for pnl in AGrid.Parent.AllControls.OfType<TPanel> do
          Inc(BottomPanelsHeight, IfThen(pnl.Align = alBottom, pnl.Height));

        AGrid.Top:= AHeaderGrid.Top + AGrid.Top + Delta;
        AGrid.Height:= AGrid.Parent.Height - AGrid.Top - BottomPanelsHeight;

        AHeaderGrid.HorzScrollBar.Visible:= False;

        for col in AHeaderGrid.Columns do
          col.Width:= AGrid.FindFieldColumn(col.FieldName).Width;
      end;  { FixHeader }

      procedure FixColumns(AGrid: TAbmesDBGrid);
      var
        col: TColumnEh;
        AutoFit: Boolean;
      begin
        // match column widths of two-line grids
        for col in AGrid.Columns do
          if (col.InRowLinePos = 1) then
            col.Width:= AGrid.Columns[col.Index - 1].Width;

        AutoFit:= False;
        for col in AGrid.Columns do
          if col.AutoFitColWidth then
            AutoFit:= True;

        if AutoFit then
          AGrid.AutoFitColWidths:=
            AGrid.AutoFitColWidths or
            ( Assigned(AGrid.DataSource) and
             (dgTitles in AGrid.Options) );
      end;  { FixColumns }

    var
      grd, hgrd: TAbmesDBGrid;
    begin
      for grd in AOwner.AllComponents.OfType<TAbmesDBGrid> do
        begin
          if not HeaderGrids.ContainsValue(grd) then
            FixColumns(grd);

            if HeaderGrids.ContainsKey(grd) then
              begin
                hgrd:= HeaderGrids[grd];

                // fix grid width
                if (grd.Align = alNone) and (hgrd.Align <> alNone) then
                  grd.Width:= hgrd.Width;

                FixHeader(hgrd, grd);
              end;
          end;
    end;  { FixGrids }

    procedure FixToolbarLabels;
    var
      lbl: TLabel;
      pnl: TPanel;
      ControlIndex: Integer;
    begin
      for lbl in AOwner.AllComponents.OfType<TLabel> do
        if (lbl.Parent is TToolbar) or (lbl.Parent is TFlowPanel) then
          begin
            pnl:= TPanel.Create(AOwner);
            try
              pnl.Align:= lbl.Align;
              pnl.BoundsRect:= lbl.BoundsRect;
              pnl.Height:= lbl.Parent.Height;
              pnl.Constraints.MinHeight:= pnl.Height;
              pnl.Constraints.MinWidth:= pnl.Width;
              pnl.AutoSize:= lbl.AutoSize;
              pnl.BevelOuter:= bvNone;
              pnl.Alignment:= lbl.Alignment;
              pnl.VerticalAlignment:= taVerticalCenter;
              pnl.Font:= lbl.Font;
              pnl.Caption:= lbl.Caption;

              if (lbl.Parent is TFlowPanel) then
                begin
                  ControlIndex:= (lbl.Parent as TFlowPanel).GetControlIndex(lbl);
                  pnl.Parent:= lbl.Parent;
                  (pnl.Parent as TFlowPanel).SetControlIndex(pnl, ControlIndex);
                end
              else
                pnl.Parent:= lbl.Parent;

              lbl.Parent:= nil;
            except
              FreeAndNil(pnl);
              raise;
            end;
          end;
    end;  { FixToolbarLabels }

    procedure FixComboBoxes;
    var
      DBLookupComboBox: TDBLookupComboBox;
      JvDBLookupCombo: TJvDBLookupCombo;
    begin
      for DBLookupComboBox in AOwner.AllComponents.OfType<TDBLookupComboBox> do
        if (DBLookupComboBox.DropDownWidth > 0) then
          DBLookupComboBox.DropDownWidth:= ScalePixels(DBLookupComboBox.DropDownWidth);

      for JvDBLookupCombo in AOwner.AllComponents.OfType<TJvDBLookupCombo> do
        if (JvDBLookupCombo.DropDownWidth > 0) then
          JvDBLookupCombo.DropDownWidth:= ScalePixels(JvDBLookupCombo.DropDownWidth);
    end;  { FixComboBoxes }

  var
    c: TComponent;
    p: Integer;
    wc: TWinControl;
  begin
    StretchImages;

    ScaleToolbars(AOwner);
    if (AOwner is TWinControl) then
      for wc in (AOwner as TWinControl).AllControls.OfType<TForm> do
        ScaleToolbars(wc);

    FixFlowPanels;

    ScaleStatusBars;
    FixPanels;
    FixPageControlToolbars;
    FixTabControlToolbars;
    FixEditHeights;

    HeaderGrids:= TDictionary<TWinControl, TAbmesDBGrid>.Create;
    try
      CalcHeaderGrids;
      FixGrids;
    finally
      FreeAndNil(HeaderGrids);
    end;

    FixToolbarLabels;
    FixComboBoxes;

    for c in AOwner.AllComponents do
      AfterScaleFixComponents(c);

    if AOwner is TPageControl then
      with AOwner as TPageControl do
        for p:= 0 to PageCount - 1 do
          AfterScaleFixComponents(Pages[p]);
  end;  { AfterScaleFixComponents }

  procedure FixBevel;
  var
    c: TControl;
    f: TButtonForm;
    MaxBottom: Integer;
    bvlMain: TBevel;
  begin
    if (Self is TBevelEditForm) or (Self is TBevelFilterForm) then
      begin
        if (Self is TBevelEditForm) then
          bvlMain:= (Self as TBevelEditForm).bvlMain
        else
          bvlMain:= (Self as TBevelFilterForm).bvlMain;

        f:= Self as TButtonForm;
        MaxBottom:= 0;

        for c in f.AllControls do
          if c.Visible and
             (c.Parent = f) and
             (c <> bvlMain) and
             (c <> f.pnlBottomButtons) then
            MaxBottom:= Max(MaxBottom, c.BoundsRect.Bottom);

        if (bvlMain.BoundsRect.Bottom - MaxBottom <= 5) then
          bvlMain.Height:= bvlMain.Height + (MaxBottom - bvlMain.BoundsRect.Bottom) + 16;
      end;
  end;

  procedure FixBottomButtonPanel;
  var
    c: TControl;
    f: TButtonForm;
    MaxBottom: Integer;
    BottomAnchorControls: TList<TControl>;
    SaveCanResize: Vcl.Controls.TCanResizeEvent;
    BottomControl: TControl;
    NewClientHeight: Integer;
  begin
    if (Self is TButtonForm) then
      begin
        f:= Self as TButtonForm;
        MaxBottom:= 0;
        BottomControl:= nil;
        for c in f.AllControls do
          if c.Visible and
             (not c.SelfAndParents.Filter(f.pnlBottomButtons).Exists) and
             (c.BoundsRect.Bottom > MaxBottom) then
            begin
              MaxBottom:= c.BoundsRect.Bottom;
              BottomControl:= c;
            end;

        if not (BottomControl.Align in [alBottom, alClient])then
          begin
            NewClientHeight:= MaxBottom + ScalePixels(8) + f.pnlBottomButtons.Height;

            if (ClientHeight - NewClientHeight <= 5) then
              begin
                BottomAnchorControls:= TList<TControl>.Create;
                try
                  for c in f.AllControls do
                    if (akBottom in c.Anchors) then
                      begin
                        BottomAnchorControls.Add(c);
                        c.Anchors:= c.Anchors - [akBottom];
                      end;
                  try
                    SaveCanResize:= f.OnCanResize;
                    f.OnCanResize:= nil;
                    try
                      f.ClientHeight:= NewClientHeight;
                    finally
                      f.OnCanResize:= SaveCanResize;
                    end;
                  finally
                    for c in BottomAnchorControls do
                      c.Anchors:= c.Anchors + [akBottom];
                  end;
                finally
                  FreeAndNil(BottomAnchorControls);
                end;
              end;
          end;
      end;
  end;  { FixBottomButtonPanel }

  function GetObjectFonts(AObject: TObject): TEnumerableRec<TFont>;
  begin
    Result:= Utils.EmptyEnumerable<TFont>;

    if AObject is TControl then
      with TControlHack(AObject) do
        if not ParentFont then
          Result:= Result + Font;

    if AObject is TDBGridEh then
      with AObject as TDBGridEh do
        begin
          Result:= Result + TitleFont;
          Result:= Result + FooterFont;
        end;

    if AObject is TColumnEh then
      with AObject as TColumnEh do
        begin
          if cvFont in AssignedValues then
            Result:= Result + Font;

          if cvTitleFont in AssignedValues then
            Result:= Result + Title.Font;

          if cvFooterFont in Footer.AssignedValues then
            Result:= Result + Footer.Font;
        end;
  end;  { GetObjectFonts }

  function GetObjectFontObjects(AObject: TObject): TEnumerableRec<TObject>;
  begin
    Result:= Utils.EmptyEnumerable<TObject>;

    if AObject is TWinControl then
      Result:= Result + (AObject as TWinControl).AllControls._AsOf<TObject>;

    if AObject is TDBGridEh then
      Result:= Result + (AObject as TDBGridEh).AllColumns._AsOf<TObject>;
  end;  { GetObjectFontObjects }

  procedure SaveFontSizes(AObject: TObject; AFontSizes: TFontSizes);
  var
    font: TFont;
    obj: TObject;
  begin
    for font in GetObjectFonts(AObject) do
      AFontSizes.Add(font, MulDiv(-font.Height, 72, DesignPixelsPerInch));

    for obj in GetObjectFontObjects(AObject) do
      SaveFontSizes(obj, AFontSizes);
  end;  { SaveFontSizes }

  procedure RestoreFontSizes(AFontSizes: TFontSizes);
  var
    font: TFont;
  begin
    for font in AFontSizes.Keys do
      if (UserPixelsPerInch = ppiAuto) then
        font.Size:= AFontSizes[font]
      else
        font.Size:= ScalePixels(AFontSizes[font]);
  end;  { RestoreFontSizes }

var
  FontSizes: TFontSizes;
begin
  Assert(not Scaled, 'TForm.Scaled property is not working well, you should set it to False at design-time!');

  if IsApplicationScaled and
     not Assigned(HostDockSite) then
    begin
      BeforeScaleFixComponents(Self);

      FontSizes:= TFontSizes.Create;
      try
        SaveFontSizes(Self, FontSizes);

        ScaleBy(ScaleMultiplicator, ScaleDivider);

        RestoreFontSizes(FontSizes);
      finally
        FreeAndNil(FontSizes);
      end;

      AfterScaleFixComponents(Self);
      FixBevel;
      FixBottomButtonPanel;
    end;
end;

procedure TFormHelper.PositionFormInScreen;

  function RectWidth(const ARect: TRect): Integer;
  begin
    Result:= ARect.Right - ARect.Left;
  end;

  function RectHeight(const ARect: TRect): Integer;
  begin
    Result:= ARect.Bottom - ARect.Top;
  end;

  procedure PositionFormInRect(ARect: TRect);
  var
    BR: TRect;
    d: Integer;
  begin
    BR:= BoundsRect;

    if (RectWidth(BR) >= RectWidth(ARect)) then
      begin
        d:= (RectWidth(ARect) - RectWidth(BR)) div 2;
        OffsetRect(BR, d - BR.Left, 0);
      end;

    if (RectHeight(BR) >= RectHeight(ARect)) then
      OffsetRect(BR, 0, BR.Top);          // da se vijda title bar-a

    if (BR.Left < ARect.Left) then
      OffsetRect(BR, ARect.Left - BR.Left, 0);

    if (BR.Right > ARect.Right) then
      OffsetRect(BR, ARect.Right - BR.Right, 0);

    if (BR.Top < ARect.Top) then
      OffsetRect(BR, 0, ARect.Top - BR.Top);

    if (BR.Bottom > ARect.Bottom) then
      OffsetRect(BR, 0, ARect.Bottom - BR.Bottom);

    BoundsRect:= BR;
  end;

begin
  if Assigned(Application.MainForm) and Application.MainForm.Visible then
    begin
      Position:= poDesigned;

      // center on main form
      Left:= Application.MainForm.Left + ((Application.MainForm.Width - Width) div 2);
      Top:= Application.MainForm.Top + ((Application.MainForm.Height - Height) div 2);

      PositionFormInRect(Screen.MonitorFromRect(Application.MainForm.BoundsRect).WorkareaRect);
    end;
end;

{ TImageListHelper }

procedure TImageListHelper.Rescale;
var
  il: TImageList;
  bmpDestination: TBitmap;
  i: Integer;
begin
  if IsApplicationScaled then
    begin
      il:= TImageList.Create(nil);
      try
        il.Height:= ScalePixels(Height);
        il.Width:= ScalePixels(Width);

        for i:= 0 to Count - 1 do
          begin
            bmpDestination:= TBitmap.Create;
            try
              bmpDestination.Height:= il.Height;
              bmpDestination.Width:= il.Width;

              bmpDestination.Canvas.Brush.Color:= clMaroon;
              bmpDestination.Canvas.FillRect(Rect(0, 0, bmpDestination.Width, bmpDestination.Height));

              Self.Draw(bmpDestination.Canvas, (il.Width - Width) div 2, (il.Height - Height) div 2, i);

              il.AddMasked(bmpDestination, clMaroon);
            finally
              FreeAndNil(bmpDestination);
            end;
          end;

        Self.Assign(il);
      finally
        FreeAndNil(il);
      end;
    end;
end;

end.
