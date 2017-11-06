unit fSpecificationCreateLikeFilter;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fBevelFilterForm, Db, DBClient, AbmesClientDataSet, ImgList, ActnList,
  StdCtrls, Buttons, ExtCtrls, fBaseFrame, fDBFrame, fFieldEditFrame,
  Menus, JvButtons, Mask, JvToolEdit, JvDBControls,
  AbmesFields, JvDBLookup, fTreeNodeFieldEditFrame, fProductFieldEditFrame,
  JvExMask, JvComponent, JvCaptionButton, JvExControls, JvComponentBase;

type
  TfmSpecificationCreateLikeFilter = class(TBevelFilterForm)
    frOriginalProduct: TfrProductFieldEditFrame;
    frNewProduct: TfrProductFieldEditFrame;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure DoApplyUpdates; override;
  public
    { Public declarations }
  end;

implementation

uses
  uUtils, fTreeSelectForm, dMain, fSpecifications, AbmesDialogs, uClientUtils,
  uUserActivityConsts;

{$R *.DFM}

resourcestring
  SNoSpec = 'Не съществува Принципен МОДЕл за този Управляем Обект';
  SSpecExists = 'Вече съществува Принципен МОДЕл за този Управляем Обект. ' +
                'Желаете ли да бъде променена и евентуално да се създаде нова версия?';

procedure TfmSpecificationCreateLikeFilter.DoApplyUpdates;
var
  Authorized: Boolean;
  AuthorEmployeeCode: Integer;
begin
  CheckRequiredFields(dsData.DataSet, '_ORIGINAL_SPEC_PRODUCT_NAME; _NEW_SPEC_PRODUCT_NAME');

  with dsData.DataSet do
    begin
      if FieldByName('ORIGINAL_SPEC_VERSION_NO').IsNull then
        begin
          FieldByName('_ORIGINAL_SPEC_PRODUCT_NAME').FocusControl;
          raise Exception.Create(SNoSpec);
        end;   { if }

      if dmMain.SvrSpecifications.SpecificationExists(
           FieldByName('NEW_SPEC_PRODUCT_CODE').AsInteger,
           Authorized, AuthorEmployeeCode) then
        begin
          FieldByName('_NEW_SPEC_PRODUCT_NAME').FocusControl;

          if (AuthorEmployeeCode <> LoginContext.UserCode) then
            LoginContext.CheckUserActivity(uaEditForeignSpecification);

          if (MessageDlgEx(SSpecExists, mtConfirmation, mbOkCancel, 0) <> mrOk) then
            Abort;
        end;   { if }
    end;   { with }

  inherited;
end;

procedure TfmSpecificationCreateLikeFilter.FormCreate(Sender: TObject);
begin
  inherited;

  frOriginalProduct.FieldNames:= 'ORIGINAL_SPEC_PRODUCT_CODE';
  frNewProduct.FieldNames:= 'NEW_SPEC_PRODUCT_CODE';

  frOriginalProduct.TreeDetailSelection:= tdsInstance;
  frNewProduct.TreeDetailSelection:= tdsInstance;
end;

procedure TfmSpecificationCreateLikeFilter.FormShow(Sender: TObject);
begin
  inherited;

  frOriginalProduct.ShowAllWhenEmpty:= False;
  frNewProduct.ShowAllWhenEmpty:= False;

  RefreshDBEdit(frNewProduct.edtTreeNodeName);
end;

end.
