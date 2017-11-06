unit uToolbarUtils;

interface

uses
  ExtCtrls, ComCtrls, Classes, Controls;

type
  TToolbarArray = array of TToolbar;
  TFlowPanelArray = array of TFlowPanel;
  TWinControlArray = array of TWinControl;

function NormalizeToolbar(AToolbar: TToolbar): TFlowPanel;
procedure NormalizeAllToolbarsOf(AComponent: TComponent);
function NormalizedToolbar(AToolbar: TToolbar): TWinControl;
function NormalizedToolbarToolbars(AToolbar: TToolbar): TToolbarArray;
function NormalizedToolbarFlowPanels(AToolbar: TToolbar): TFlowPanelArray;
function NormalizedToolbarToolbarsAndFlowPanels(AToolbar: TToolbar): TWinControlArray;

implementation

uses
  SysUtils, Graphics;

const
  NormalizedToolbarNameSuffix = 'Normalized';

function NormalizeToolbar(AToolbar: TToolbar): TFlowPanel;
var
  MainFlowPanel: TFlowPanel;
  Control: TControl;
  CurrentContainer: TWinControl;
  ToolbarCount: Integer;
  FlowPanelCount: Integer;
  ControlsWidth: Integer;
  i: Integer;
  HasNonToolButtonControl: Boolean;
  k: Integer;
  MaxIndex: Integer;
  Temp: TControl;
  SubToolbar: TToolbar;

  procedure InitializeMainFlowPanel;
  begin
    MainFlowPanel.AutoWrap:= False;
    MainFlowPanel.BevelOuter:= bvNone;
    MainFlowPanel.Align:= AToolbar.Align;
    MainFlowPanel.Anchors:= AToolbar.Anchors;
    MainFlowPanel.Color:= AToolbar.Color;
    MainFlowPanel.Font:= AToolbar.Font;
    MainFlowPanel.Hint:= AToolbar.Hint;
    MainFlowPanel.Height:= AToolbar.Height;
    MainFlowPanel.Left:= AToolbar.Left;
    MainFlowPanel.Name:= AToolbar.Name + NormalizedToolbarNameSuffix;
    MainFlowPanel.Caption:= '';
    MainFlowPanel.ParentFont:= AToolbar.ParentFont;
    MainFlowPanel.ParentShowHint:= AToolbar.ParentShowHint;
    MainFlowPanel.Top:= AToolbar.Top;
    MainFlowPanel.Visible:= AToolbar.Visible;
    MainFlowPanel.Width:= AToolbar.Width;
    MainFlowPanel.Parent:= AToolbar.Parent;
  end;  { InitializeMainFlowPanel }

  function NewToolbarContainer: TToolbar;
  begin
    Assert(Assigned(MainFlowPanel));

    Result:= TToolbar.Create(AToolbar.Owner);
    try
      Inc(ToolbarCount);

      Result.Name:= Format('%s_Toolbar%d', [MainFlowPanel.Name, ToolbarCount]);
      Result.Caption:= '';
      Result.PopupMenu:= AToolbar.PopupMenu;
      Result.ShowCaptions:= AToolbar.ShowCaptions;
      Result.Parent:= MainFlowPanel;
      Result.Height:= MainFlowPanel.Height;
      Result.ButtonHeight:= AToolbar.ButtonHeight;
      Result.ParentShowHint:= AToolbar.ParentShowHint;
      Result.ShowHint:= AToolbar.ShowHint;
      Result.Hint:= AToolbar.Hint;
      Result.ParentColor:= AToolbar.ParentColor;
      Result.Flat:= AToolbar.Flat;

      Result.DisabledImages:= AToolbar.DisabledImages;
      Result.HotImages:= AToolbar.HotImages;
      Result.Images:= AToolbar.Images;
    except
      FreeAndNil(Result);
      raise;
    end;
  end;  { NewToolbarContainer }

  function NewFlowPanelContainer: TFlowPanel;
  begin
    Assert(Assigned(MainFlowPanel));

    Result:= TFlowPanel.Create(AToolbar.Owner);
    try
      Inc(FlowPanelCount);

      Result.Name:= Format('%s_FlowPanel%d', [MainFlowPanel.Name, FlowPanelCount]);
      Result.Caption:= '';
      Result.BevelOuter:= bvNone;
      Result.PopupMenu:= AToolbar.PopupMenu;
      Result.Height:= AToolbar.Height;
      Result.AutoWrap:= False;
      Result.Parent:= MainFlowPanel;
    except
      FreeAndNil(Result);
      raise;
    end;
  end; { NewFlowPanelContainer }

var
  Controls: array of TControl;
  ControlContainers: array of TWinControl;

  function ControlIndex(AControl: TControl): Integer;
  var
    i: Integer;
  begin
    for i:= Low(Controls) to High(Controls) do
      if (Controls[i] = AControl) then
        begin
          Result:= i;
          Exit;
        end;

    Result:= -1;
  end;

  function FindSubToolbar(AWinControl: TWinControl): TToolbar;
  var
    i: Integer;
  begin
    for i:= 0 to AWinControl.ControlCount - 1 do
      if (AWinControl.Controls[i] is TToolbar) then
        begin
          Result:= AWinControl.Controls[i] as TToolbar;
          Exit;
        end
      else
        begin
          if (AWinControl.Controls[i] is TWinControl) then
            begin
              Result:= FindSubToolbar(AWinControl.Controls[i] as TWinControl);
              if Assigned(Result) then
                Exit;
            end;
        end;
    Result:= nil;
  end;  { FindSubToolbar }

begin
  Assert(Assigned(AToolbar));

  SetLength(Controls, AToolbar.ControlCount);
  for i:= 0 to AToolbar.ControlCount - 1 do
    Controls[i]:= AToolbar.Controls[i];

  HasNonToolButtonControl:= False;
  for i:= Low(Controls) to High(Controls) do
    HasNonToolButtonControl:= HasNonToolButtonControl or not (Controls[i] is TToolButton);

  if not HasNonToolButtonControl then
    begin
      Result:= nil;
      Exit;
    end;

  // sort controls by Left
  for i:= High(Controls) downto Low(Controls) + 1 do
    begin
      MaxIndex:= Low(Controls);
      for k:= Low(Controls) + 1 to i do
        if Controls[MaxIndex].Left < Controls[k].Left then
          MaxIndex:= k;

      Temp:= Controls[MaxIndex];
      Controls[MaxIndex]:= Controls[i];
      Controls[i]:= Temp;
    end;

  Assert(Assigned(AToolbar.Owner), 'A toolbar without owner cannot be normalized');

  MainFlowPanel:= TFlowPanel.Create(AToolbar.Owner);
  try
    InitializeMainFlowPanel;

    // create toolbars and flow panels
    SetLength(ControlContainers, Length(Controls));
    CurrentContainer:= nil;
    ToolbarCount:= 0;
    FlowPanelCount:= 0;
    ControlsWidth:= 0;
    for i:= High(Controls) downto Low(Controls) do
      begin
        Control:= Controls[i];

        // create new container if necessary
        if (not Assigned(CurrentContainer)) or
           ( (CurrentContainer is TToolbar) and not (Control is TToolButton) ) or
           ( (CurrentContainer is TFlowPanel) and (Control is TToolButton) ) then
          begin
            if (Control is TToolButton) then
              CurrentContainer:= NewToolbarContainer
            else
              CurrentContainer:= NewFlowPanelContainer;

            MainFlowPanel.SetControlIndex(CurrentContainer, 0);

            ControlsWidth:= 0;
          end;

        if Control.Visible then
          Inc(ControlsWidth, Control.Width);
        CurrentContainer.Width:= ControlsWidth;

        ControlContainers[i]:= CurrentContainer;
      end;

    // first move non tool buttons (toolbutton height problem workaround)
    for i:= High(Controls) downto Low(Controls) do
      if not (Controls[i] is TToolButton) then
        begin
          Controls[i].Parent:= ControlContainers[ControlIndex(Controls[i])];
          TFlowPanel(Controls[i].Parent).SetControlIndex(Controls[i], 0);
        end;

    // then tool buttons
    for i:= High(Controls) downto Low(Controls) do
      if (Controls[i] is TToolButton) then
        begin
          Controls[i].Parent:= ControlContainers[ControlIndex(Controls[i])];
          Controls[i].Left:= 0;
        end;

    MainFlowPanel.AutoSize:= True;

    AToolbar.Visible:= False;
  except
    FreeAndNil(MainFlowPanel);
    raise;
  end;

  SubToolbar:= FindSubToolbar(AToolbar);
  while Assigned(SubToolbar) and Assigned(NormalizeToolbar(SubToolbar)) do
    SubToolbar:= FindSubToolbar(AToolbar);

  Result:= MainFlowPanel;
end;  { NormalizeToolbar }

procedure NormalizeAllToolbarsOf(AComponent: TComponent);
var
  i: Integer;
begin
  with AComponent do
    for i:= 0 to ComponentCount - 1 do
      if (Components[i] is TToolbar) then
        NormalizeToolbar(Components[i] as TToolbar);
end;  { NormalizeAllToolbarsOf }

function NormalizedToolbar(AToolbar: TToolbar): TWinControl;
var
  c: TComponent;
begin
  if Assigned(AToolbar) then
    begin
      Assert(Assigned(AToolbar.Owner));
      c:= AToolbar.Owner.FindComponent(AToolbar.Name + NormalizedToolbarNameSuffix);

      if Assigned(c) then
        begin
          Assert(c is TFlowPanel);
          Result:= c as TWinControl;
        end
      else
        Result:= AToolbar;
    end
  else
    Result:= nil;
end;  { NormalizedToolbar }

function NormalizedToolbarToolbars(AToolbar: TToolbar): TToolbarArray;
var
  ntlb: TWinControl;
  i: Integer;
begin
  SetLength(Result, 0);
  ntlb:= NormalizedToolbar(AToolbar);
  if Assigned(ntlb) then
    begin
      if (ntlb is TToolbar) then
        begin
          SetLength(Result, 1);
          Result[0]:= (ntlb as TToolbar);
        end
      else
        begin
          Assert(ntlb is TFlowPanel);
          for i:= 0 to ntlb.ControlCount - 1 do
            if (ntlb.Controls[i] is TToolbar) then
              begin
                SetLength(Result, Length(Result) + 1);
                Result[Length(Result) - 1]:= (ntlb.Controls[i] as TToolbar);
              end;
        end;
    end;
end;

function NormalizedToolbarFlowPanels(AToolbar: TToolbar): TFlowPanelArray;
var
  ntlb: TWinControl;
  i: Integer;
begin
  SetLength(Result, 0);
  ntlb:= NormalizedToolbar(AToolbar);
  if Assigned(ntlb) and (ntlb is TFlowPanel) then
    begin
      for i:= 0 to ntlb.ControlCount - 1 do
        if (ntlb.Controls[i] is TFlowPanel) then
          begin
            SetLength(Result, Length(Result) + 1);
            Result[Length(Result) - 1]:= (ntlb.Controls[i] as TFlowPanel);
          end;
    end;
end;

function NormalizedToolbarToolbarsAndFlowPanels(AToolbar: TToolbar): TWinControlArray;
var
  ntlb: TWinControl;
  i: Integer;
begin
  SetLength(Result, 0);
  ntlb:= NormalizedToolbar(AToolbar);
  if Assigned(ntlb) then
    begin
      if (ntlb is TToolbar) then
        begin
          SetLength(Result, 1);
          Result[0]:= ntlb;
        end
      else
        begin
          Assert(ntlb is TFlowPanel);
          SetLength(Result, ntlb.ControlCount);
          for i:= 0 to ntlb.ControlCount - 1 do
            begin
              Assert(ntlb.Controls[i] is TWinControl);
              Result[i]:= (ntlb.Controls[i] as TWinControl);
            end;
        end;
    end;
end;

end.
