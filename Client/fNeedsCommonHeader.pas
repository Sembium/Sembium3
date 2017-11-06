unit fNeedsCommonHeader;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFieldEditFrame, DB, ActnList, ExtCtrls, StdCtrls, Mask, DBCtrls,
  JvToolEdit, JvDBControls, fBaseFrame, fDBFrame, fDateIntervalFrame,
  fTreeNodeFieldEditFrame, fProductFieldEditFrame,
  fProductFieldEditFrameBald;

type
  TfrNeedsCommonHeader = class(TFieldEditFrame)
    bvlMain: TBevel;
    lblTreeNodeName: TLabel;
    lblDateInterval: TLabel;
    frDateInterval: TfrDateIntervalFrame;
    frProduct: TfrProductFieldEditFrameBald;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.

 
