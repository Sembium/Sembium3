
{**********************************************************************}
{                                                                      }
{                           XML Data Binding                           }
{                                                                      }
{         Generated on: 23.12.2005 15:40:07                            }
{       Generated from: XMLSchemas\Public\TPartner.xsd                 }
{                                                                      }
{**********************************************************************}

unit xTPartner;

interface

uses
  xmldom, XMLDoc, XMLIntf, xTPartnerClass, xTCountry, xTLanguage, xTCompanyType,
  xTDate, xTEducation;

type

{ Forward Decls }

  IXMLTPartner = interface;

{ IXMLTPartner }

  IXMLTPartner = interface(IXMLNode)
    ['{8C4391B6-10A6-450D-9590-E8532D368C7B}']
    { Property Accessors }
    function Get_PartnerNo: Variant;
    function Get_PartnerClass: IXMLTPartnerClass;
    function Get_PartnerShortName: Variant;
    function Get_PartnerFullName: Variant;
    function Get_Country: IXMLTCountry;
    function Get_State: Variant;
    function Get_Region: Variant;
    function Get_City: Variant;
    function Get_Zip: Variant;
    function Get_Address: Variant;
    function Get_Language: IXMLTLanguage;
    function Get_CompanyName: Variant;
    function Get_CompanyType: IXMLTCompanyType;
    function Get_CompanyTaxNo: Variant;
    function Get_CompanyBulstat: Variant;
    function Get_CompanyIsVatRegistered: Variant;
    function Get_PersonFirstName: Variant;
    function Get_PersonMiddleName: Variant;
    function Get_PersonLastName: Variant;
    function Get_PersonAbbrev: Variant;
    function Get_PersonEGN: Variant;
    function Get_PersonBirthDate: IXMLTDate;
    function Get_PersonEducation: IXMLTEducation;
    procedure Set_PartnerNo(Value: Variant);
    procedure Set_PartnerShortName(Value: Variant);
    procedure Set_PartnerFullName(Value: Variant);
    procedure Set_State(Value: Variant);
    procedure Set_Region(Value: Variant);
    procedure Set_City(Value: Variant);
    procedure Set_Zip(Value: Variant);
    procedure Set_Address(Value: Variant);
    procedure Set_CompanyName(Value: Variant);
    procedure Set_CompanyTaxNo(Value: Variant);
    procedure Set_CompanyBulstat(Value: Variant);
    procedure Set_CompanyIsVatRegistered(Value: Variant);
    procedure Set_PersonFirstName(Value: Variant);
    procedure Set_PersonMiddleName(Value: Variant);
    procedure Set_PersonLastName(Value: Variant);
    procedure Set_PersonAbbrev(Value: Variant);
    procedure Set_PersonEGN(Value: Variant);
    { Methods & Properties }
    property PartnerNo: Variant read Get_PartnerNo write Set_PartnerNo;
    property PartnerClass: IXMLTPartnerClass read Get_PartnerClass;
    property PartnerShortName: Variant read Get_PartnerShortName write Set_PartnerShortName;
    property PartnerFullName: Variant read Get_PartnerFullName write Set_PartnerFullName;
    property Country: IXMLTCountry read Get_Country;
    property State: Variant read Get_State write Set_State;
    property Region: Variant read Get_Region write Set_Region;
    property City: Variant read Get_City write Set_City;
    property Zip: Variant read Get_Zip write Set_Zip;
    property Address: Variant read Get_Address write Set_Address;
    property Language: IXMLTLanguage read Get_Language;
    property CompanyName: Variant read Get_CompanyName write Set_CompanyName;
    property CompanyType: IXMLTCompanyType read Get_CompanyType;
    property CompanyTaxNo: Variant read Get_CompanyTaxNo write Set_CompanyTaxNo;
    property CompanyBulstat: Variant read Get_CompanyBulstat write Set_CompanyBulstat;
    property CompanyIsVatRegistered: Variant read Get_CompanyIsVatRegistered write Set_CompanyIsVatRegistered;
    property PersonFirstName: Variant read Get_PersonFirstName write Set_PersonFirstName;
    property PersonMiddleName: Variant read Get_PersonMiddleName write Set_PersonMiddleName;
    property PersonLastName: Variant read Get_PersonLastName write Set_PersonLastName;
    property PersonAbbrev: Variant read Get_PersonAbbrev write Set_PersonAbbrev;
    property PersonEGN: Variant read Get_PersonEGN write Set_PersonEGN;
    property PersonBirthDate: IXMLTDate read Get_PersonBirthDate;
    property PersonEducation: IXMLTEducation read Get_PersonEducation;
  end;

{ Forward Decls }

  TXMLTPartner = class;

{ TXMLTPartner }

  TXMLTPartner = class(TXMLNode, IXMLTPartner)
  protected
    { IXMLTPartner }
    function Get_PartnerNo: Variant;
    function Get_PartnerClass: IXMLTPartnerClass;
    function Get_PartnerShortName: Variant;
    function Get_PartnerFullName: Variant;
    function Get_Country: IXMLTCountry;
    function Get_State: Variant;
    function Get_Region: Variant;
    function Get_City: Variant;
    function Get_Zip: Variant;
    function Get_Address: Variant;
    function Get_Language: IXMLTLanguage;
    function Get_CompanyName: Variant;
    function Get_CompanyType: IXMLTCompanyType;
    function Get_CompanyTaxNo: Variant;
    function Get_CompanyBulstat: Variant;
    function Get_CompanyIsVatRegistered: Variant;
    function Get_PersonFirstName: Variant;
    function Get_PersonMiddleName: Variant;
    function Get_PersonLastName: Variant;
    function Get_PersonAbbrev: Variant;
    function Get_PersonEGN: Variant;
    function Get_PersonBirthDate: IXMLTDate;
    function Get_PersonEducation: IXMLTEducation;
    procedure Set_PartnerNo(Value: Variant);
    procedure Set_PartnerShortName(Value: Variant);
    procedure Set_PartnerFullName(Value: Variant);
    procedure Set_State(Value: Variant);
    procedure Set_Region(Value: Variant);
    procedure Set_City(Value: Variant);
    procedure Set_Zip(Value: Variant);
    procedure Set_Address(Value: Variant);
    procedure Set_CompanyName(Value: Variant);
    procedure Set_CompanyTaxNo(Value: Variant);
    procedure Set_CompanyBulstat(Value: Variant);
    procedure Set_CompanyIsVatRegistered(Value: Variant);
    procedure Set_PersonFirstName(Value: Variant);
    procedure Set_PersonMiddleName(Value: Variant);
    procedure Set_PersonLastName(Value: Variant);
    procedure Set_PersonAbbrev(Value: Variant);
    procedure Set_PersonEGN(Value: Variant);
  public
    procedure AfterConstruction; override;
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTPartner;
function LoadUnknown(const FileName: WideString): IXMLTPartner;
function NewUnknown: IXMLTPartner;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTPartner;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTPartner, TargetNamespace) as IXMLTPartner;
end;

function LoadUnknown(const FileName: WideString): IXMLTPartner;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTPartner, TargetNamespace) as IXMLTPartner;
end;

function NewUnknown: IXMLTPartner;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTPartner, TargetNamespace) as IXMLTPartner;
end;

{ TXMLTPartner }

procedure TXMLTPartner.AfterConstruction;
begin
  RegisterChildNode('PartnerClass', TXMLTPartnerClass);
  RegisterChildNode('Country', TXMLTCountry);
  RegisterChildNode('Language', TXMLTLanguage);
  RegisterChildNode('CompanyType', TXMLTCompanyType);
  RegisterChildNode('PersonBirthDate', TXMLTDate);
  RegisterChildNode('PersonEducation', TXMLTEducation);
  inherited;
end;

function TXMLTPartner.Get_PartnerNo: Variant;
begin
  Result := ChildNodes['PartnerNo'].NodeValue;
end;

procedure TXMLTPartner.Set_PartnerNo(Value: Variant);
begin
  ChildNodes['PartnerNo'].NodeValue := Value;
end;

function TXMLTPartner.Get_PartnerClass: IXMLTPartnerClass;
begin
  Result := ChildNodes['PartnerClass'] as IXMLTPartnerClass;
end;

function TXMLTPartner.Get_PartnerShortName: Variant;
begin
  Result := ChildNodes['PartnerShortName'].NodeValue;
end;

procedure TXMLTPartner.Set_PartnerShortName(Value: Variant);
begin
  ChildNodes['PartnerShortName'].NodeValue := Value;
end;

function TXMLTPartner.Get_PartnerFullName: Variant;
begin
  Result := ChildNodes['PartnerFullName'].NodeValue;
end;

procedure TXMLTPartner.Set_PartnerFullName(Value: Variant);
begin
  ChildNodes['PartnerFullName'].NodeValue := Value;
end;

function TXMLTPartner.Get_Country: IXMLTCountry;
begin
  Result := ChildNodes['Country'] as IXMLTCountry;
end;

function TXMLTPartner.Get_State: Variant;
begin
  Result := ChildNodes['State'].NodeValue;
end;

procedure TXMLTPartner.Set_State(Value: Variant);
begin
  ChildNodes['State'].NodeValue := Value;
end;

function TXMLTPartner.Get_Region: Variant;
begin
  Result := ChildNodes['Region'].NodeValue;
end;

procedure TXMLTPartner.Set_Region(Value: Variant);
begin
  ChildNodes['Region'].NodeValue := Value;
end;

function TXMLTPartner.Get_City: Variant;
begin
  Result := ChildNodes['City'].NodeValue;
end;

procedure TXMLTPartner.Set_City(Value: Variant);
begin
  ChildNodes['City'].NodeValue := Value;
end;

function TXMLTPartner.Get_Zip: Variant;
begin
  Result := ChildNodes['Zip'].NodeValue;
end;

procedure TXMLTPartner.Set_Zip(Value: Variant);
begin
  ChildNodes['Zip'].NodeValue := Value;
end;

function TXMLTPartner.Get_Address: Variant;
begin
  Result := ChildNodes['Address'].NodeValue;
end;

procedure TXMLTPartner.Set_Address(Value: Variant);
begin
  ChildNodes['Address'].NodeValue := Value;
end;

function TXMLTPartner.Get_Language: IXMLTLanguage;
begin
  Result := ChildNodes['Language'] as IXMLTLanguage;
end;

function TXMLTPartner.Get_CompanyName: Variant;
begin
  Result := ChildNodes['CompanyName'].NodeValue;
end;

procedure TXMLTPartner.Set_CompanyName(Value: Variant);
begin
  ChildNodes['CompanyName'].NodeValue := Value;
end;

function TXMLTPartner.Get_CompanyType: IXMLTCompanyType;
begin
  Result := ChildNodes['CompanyType'] as IXMLTCompanyType;
end;

function TXMLTPartner.Get_CompanyTaxNo: Variant;
begin
  Result := ChildNodes['CompanyTaxNo'].NodeValue;
end;

procedure TXMLTPartner.Set_CompanyTaxNo(Value: Variant);
begin
  ChildNodes['CompanyTaxNo'].NodeValue := Value;
end;

function TXMLTPartner.Get_CompanyBulstat: Variant;
begin
  Result := ChildNodes['CompanyBulstat'].NodeValue;
end;

procedure TXMLTPartner.Set_CompanyBulstat(Value: Variant);
begin
  ChildNodes['CompanyBulstat'].NodeValue := Value;
end;

function TXMLTPartner.Get_CompanyIsVatRegistered: Variant;
begin
  Result := ChildNodes['CompanyIsVatRegistered'].NodeValue;
end;

procedure TXMLTPartner.Set_CompanyIsVatRegistered(Value: Variant);
begin
  ChildNodes['CompanyIsVatRegistered'].NodeValue := Value;
end;

function TXMLTPartner.Get_PersonFirstName: Variant;
begin
  Result := ChildNodes['PersonFirstName'].NodeValue;
end;

procedure TXMLTPartner.Set_PersonFirstName(Value: Variant);
begin
  ChildNodes['PersonFirstName'].NodeValue := Value;
end;

function TXMLTPartner.Get_PersonMiddleName: Variant;
begin
  Result := ChildNodes['PersonMiddleName'].NodeValue;
end;

procedure TXMLTPartner.Set_PersonMiddleName(Value: Variant);
begin
  ChildNodes['PersonMiddleName'].NodeValue := Value;
end;

function TXMLTPartner.Get_PersonLastName: Variant;
begin
  Result := ChildNodes['PersonLastName'].NodeValue;
end;

procedure TXMLTPartner.Set_PersonLastName(Value: Variant);
begin
  ChildNodes['PersonLastName'].NodeValue := Value;
end;

function TXMLTPartner.Get_PersonAbbrev: Variant;
begin
  Result := ChildNodes['PersonAbbrev'].NodeValue;
end;

procedure TXMLTPartner.Set_PersonAbbrev(Value: Variant);
begin
  ChildNodes['PersonAbbrev'].NodeValue := Value;
end;

function TXMLTPartner.Get_PersonEGN: Variant;
begin
  Result := ChildNodes['PersonEGN'].NodeValue;
end;

procedure TXMLTPartner.Set_PersonEGN(Value: Variant);
begin
  ChildNodes['PersonEGN'].NodeValue := Value;
end;

function TXMLTPartner.Get_PersonBirthDate: IXMLTDate;
begin
  Result := ChildNodes['PersonBirthDate'] as IXMLTDate;
end;

function TXMLTPartner.Get_PersonEducation: IXMLTEducation;
begin
  Result := ChildNodes['PersonEducation'] as IXMLTEducation;
end;

end.
