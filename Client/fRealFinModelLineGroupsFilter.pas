unit fRealFinModelLineGroupsFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fRealFinModelLinesFilter, DB, AbmesFields, DBClient,
  AbmesClientDataSet, JvComponentBase, JvCaptionButton, ActnList,
  fTreeOnlyNodeFieldEditFrame, fFinClassFieldEditFrame, fProductFieldEditFrame,
  fProductFieldEditFrameBald, StdCtrls, JvExStdCtrls, JvDBCombobox,
  fPartnerFieldEditFrame, fPartnerFieldEditFrameLabeled,
  fTreeNodeFieldEditFrame, fDeptFieldEditFrame, fDeptFieldEditFrameBald,
  fBaseFrame, fDBFrame, fFieldEditFrame, fDateIntervalFrame, DBCtrls, Mask,
  DBCtrlsEh, JvExControls, JvDBLookup, Buttons, ExtCtrls, JvCombobox;

type
  TfmRealFinModelLineGroupsFilter = class(TfmRealFinModelLinesFilter)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
