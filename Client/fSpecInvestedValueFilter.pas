unit fSpecInvestedValueFilter;
                   
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBaseInvestedValueFilter, DB, DBClient, AbmesClientDataSet,
  JvButtons, ActnList, Buttons, StdCtrls, ExtCtrls, DBCtrls, Mask,
  fBaseFrame, fDBFrame, fFieldEditFrame, fDateFieldEditFrame,
  JvComponentBase, JvCaptionButton, JvExControls, JvComponent, JvDBLookup,
  JvExExtCtrls, JvDBRadioPanel, JvExStdCtrls, JvDBCombobox;

type
  TfmSpecInvestedValueFilter = class(TBaseInvestedValueFilter)
    gbDate: TGroupBox;
    lblDate: TLabel;
    frDate: TfrDateFieldEditFrame;
    gbStages: TGroupBox;
    lblRootLineStageIncludeLevel: TLabel;
    cbRootLineStageIncludeLevel: TJvDBComboBox;
    lblNonRootLineStageIncludeLevel: TLabel;
    cbNonRootLineStageIncludeLevel: TJvDBComboBox;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TfmSpecInvestedValueFilter.FormCreate(Sender: TObject);
begin
  inherited;
  frDate.FieldNames:= 'THE_DATE';
end;

end.
