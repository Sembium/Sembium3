unit fEmptyFieldEditFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fFieldEditFrame, Db, ImgList, ActnList, StdCtrls, DBCtrls, System.Actions;

type
  TfrEmptyFieldEditFrame = class(TFieldEditFrame)
    edtProcessObjectIdentifier: TDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.DFM}

end.
