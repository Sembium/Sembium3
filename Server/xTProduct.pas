
{**********************************************************************}
{                                                                      }
{                           XML Data Binding                           }
{                                                                      }
{         Generated on: 20.11.2007 12:50:19                            }
{       Generated from: XMLSchemas\Public\TProduct.xsd                 }
{                                                                      }
{**********************************************************************}

unit xTProduct;

interface

uses
  xmldom, XMLDoc, XMLIntf, xTMeasure, xTSelfExistentStatus, xTPriority,
  xTBOIOrderType, xTTreeNode, xTTransientStatus, xTProductOrigin;

type

{ Forward Decls }

  IXMLTProduct = interface;

{ IXMLTProduct }

  IXMLTProduct = interface(IXMLTTreeNode)
    ['{82A6FA5C-8D2B-4930-8C7C-0848722ED6B9}']
    { Property Accessors }
    function Get_ProductNo: Variant;
    function Get_WorkMeasure: IXMLTMeasure;
    function Get_AccountMeasure: IXMLTMeasure;
    function Get_AccountMeasureCoef: Variant;
    function Get_TechMeasure: IXMLTMeasure;
    function Get_TechMeasureCoef: Variant;
    function Get_TransportMeasure: IXMLTMeasure;
    function Get_TransportMeasureCoef: Variant;
    function Get_PartnerProductNames: Variant;
    function Get_IsVatFree: Variant;
    function Get_Notes: Variant;
    function Get_IsInactive: Variant;
    function Get_SelfExistentStatus: IXMLTSelfExistentStatus;
    function Get_IsProductionProduct: Variant;
    function Get_TransientStatus: IXMLTTransientStatus;
    function Get_WorkdaysToExist: Variant;
    function Get_IsUsedBySales: Variant;
    function Get_IsUsedBySaleProduction: Variant;
    function Get_IsUsedByEnvironmentProduction: Variant;
    function Get_IsProvidedByDeliveries: Variant;
    function Get_IsProvidedBySaleProduction: Variant;
    function Get_IsProvidedByEnvironmentProduction: Variant;
    function Get_UsedBySalesPriority: IXMLTPriority;
    function Get_UsedBySaleProductionPriority: IXMLTPriority;
    function Get_UsedByEnvironmentProductionPriority: IXMLTPriority;
    function Get_ProvidedByDeliveriesPriority: IXMLTPriority;
    function Get_ProvidedBySaleProductionPriority: IXMLTPriority;
    function Get_ProvidedByEnvironmentProductionPriority: IXMLTPriority;
    function Get_ProductOrigin: IXMLTProductOrigin;
    function Get_BOIOrderType: IXMLTBOIOrderType;
    procedure Set_ProductNo(Value: Variant);
    procedure Set_AccountMeasureCoef(Value: Variant);
    procedure Set_TechMeasureCoef(Value: Variant);
    procedure Set_TransportMeasureCoef(Value: Variant);
    procedure Set_PartnerProductNames(Value: Variant);
    procedure Set_IsVatFree(Value: Variant);
    procedure Set_Notes(Value: Variant);
    procedure Set_IsInactive(Value: Variant);
    procedure Set_IsProductionProduct(Value: Variant);
    procedure Set_WorkdaysToExist(Value: Variant);
    procedure Set_IsUsedBySales(Value: Variant);
    procedure Set_IsUsedBySaleProduction(Value: Variant);
    procedure Set_IsUsedByEnvironmentProduction(Value: Variant);
    procedure Set_IsProvidedByDeliveries(Value: Variant);
    procedure Set_IsProvidedBySaleProduction(Value: Variant);
    procedure Set_IsProvidedByEnvironmentProduction(Value: Variant);
    { Methods & Properties }
    property ProductNo: Variant read Get_ProductNo write Set_ProductNo;
    property WorkMeasure: IXMLTMeasure read Get_WorkMeasure;
    property AccountMeasure: IXMLTMeasure read Get_AccountMeasure;
    property AccountMeasureCoef: Variant read Get_AccountMeasureCoef write Set_AccountMeasureCoef;
    property TechMeasure: IXMLTMeasure read Get_TechMeasure;
    property TechMeasureCoef: Variant read Get_TechMeasureCoef write Set_TechMeasureCoef;
    property TransportMeasure: IXMLTMeasure read Get_TransportMeasure;
    property TransportMeasureCoef: Variant read Get_TransportMeasureCoef write Set_TransportMeasureCoef;
    property PartnerProductNames: Variant read Get_PartnerProductNames write Set_PartnerProductNames;
    property IsVatFree: Variant read Get_IsVatFree write Set_IsVatFree;
    property Notes: Variant read Get_Notes write Set_Notes;
    property IsInactive: Variant read Get_IsInactive write Set_IsInactive;
    property SelfExistentStatus: IXMLTSelfExistentStatus read Get_SelfExistentStatus;
    property IsProductionProduct: Variant read Get_IsProductionProduct write Set_IsProductionProduct;
    property TransientStatus: IXMLTTransientStatus read Get_TransientStatus;
    property WorkdaysToExist: Variant read Get_WorkdaysToExist write Set_WorkdaysToExist;
    property IsUsedBySales: Variant read Get_IsUsedBySales write Set_IsUsedBySales;
    property IsUsedBySaleProduction: Variant read Get_IsUsedBySaleProduction write Set_IsUsedBySaleProduction;
    property IsUsedByEnvironmentProduction: Variant read Get_IsUsedByEnvironmentProduction write Set_IsUsedByEnvironmentProduction;
    property IsProvidedByDeliveries: Variant read Get_IsProvidedByDeliveries write Set_IsProvidedByDeliveries;
    property IsProvidedBySaleProduction: Variant read Get_IsProvidedBySaleProduction write Set_IsProvidedBySaleProduction;
    property IsProvidedByEnvironmentProduction: Variant read Get_IsProvidedByEnvironmentProduction write Set_IsProvidedByEnvironmentProduction;
    property UsedBySalesPriority: IXMLTPriority read Get_UsedBySalesPriority;
    property UsedBySaleProductionPriority: IXMLTPriority read Get_UsedBySaleProductionPriority;
    property UsedByEnvironmentProductionPriority: IXMLTPriority read Get_UsedByEnvironmentProductionPriority;
    property ProvidedByDeliveriesPriority: IXMLTPriority read Get_ProvidedByDeliveriesPriority;
    property ProvidedBySaleProductionPriority: IXMLTPriority read Get_ProvidedBySaleProductionPriority;
    property ProvidedByEnvironmentProductionPriority: IXMLTPriority read Get_ProvidedByEnvironmentProductionPriority;
    property ProductOrigin: IXMLTProductOrigin read Get_ProductOrigin;
    property BOIOrderType: IXMLTBOIOrderType read Get_BOIOrderType;
  end;

{ Forward Decls }

  TXMLTProduct = class;

{ TXMLTProduct }

  TXMLTProduct = class(TXMLTTreeNode, IXMLTProduct)
  protected
    { IXMLTProduct }
    function Get_ProductNo: Variant;
    function Get_WorkMeasure: IXMLTMeasure;
    function Get_AccountMeasure: IXMLTMeasure;
    function Get_AccountMeasureCoef: Variant;
    function Get_TechMeasure: IXMLTMeasure;
    function Get_TechMeasureCoef: Variant;
    function Get_TransportMeasure: IXMLTMeasure;
    function Get_TransportMeasureCoef: Variant;
    function Get_PartnerProductNames: Variant;
    function Get_IsVatFree: Variant;
    function Get_Notes: Variant;
    function Get_IsInactive: Variant;
    function Get_SelfExistentStatus: IXMLTSelfExistentStatus;
    function Get_IsProductionProduct: Variant;
    function Get_TransientStatus: IXMLTTransientStatus;
    function Get_WorkdaysToExist: Variant;
    function Get_IsUsedBySales: Variant;
    function Get_IsUsedBySaleProduction: Variant;
    function Get_IsUsedByEnvironmentProduction: Variant;
    function Get_IsProvidedByDeliveries: Variant;
    function Get_IsProvidedBySaleProduction: Variant;
    function Get_IsProvidedByEnvironmentProduction: Variant;
    function Get_UsedBySalesPriority: IXMLTPriority;
    function Get_UsedBySaleProductionPriority: IXMLTPriority;
    function Get_UsedByEnvironmentProductionPriority: IXMLTPriority;
    function Get_ProvidedByDeliveriesPriority: IXMLTPriority;
    function Get_ProvidedBySaleProductionPriority: IXMLTPriority;
    function Get_ProvidedByEnvironmentProductionPriority: IXMLTPriority;
    function Get_ProductOrigin: IXMLTProductOrigin;
    function Get_BOIOrderType: IXMLTBOIOrderType;
    procedure Set_ProductNo(Value: Variant);
    procedure Set_AccountMeasureCoef(Value: Variant);
    procedure Set_TechMeasureCoef(Value: Variant);
    procedure Set_TransportMeasureCoef(Value: Variant);
    procedure Set_PartnerProductNames(Value: Variant);
    procedure Set_IsVatFree(Value: Variant);
    procedure Set_Notes(Value: Variant);
    procedure Set_IsInactive(Value: Variant);
    procedure Set_IsProductionProduct(Value: Variant);
    procedure Set_WorkdaysToExist(Value: Variant);
    procedure Set_IsUsedBySales(Value: Variant);
    procedure Set_IsUsedBySaleProduction(Value: Variant);
    procedure Set_IsUsedByEnvironmentProduction(Value: Variant);
    procedure Set_IsProvidedByDeliveries(Value: Variant);
    procedure Set_IsProvidedBySaleProduction(Value: Variant);
    procedure Set_IsProvidedByEnvironmentProduction(Value: Variant);
  public
    procedure AfterConstruction; override;
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTProduct;
function LoadUnknown(const FileName: WideString): IXMLTProduct;
function NewUnknown: IXMLTProduct;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTProduct;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTProduct, TargetNamespace) as IXMLTProduct;
end;

function LoadUnknown(const FileName: WideString): IXMLTProduct;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTProduct, TargetNamespace) as IXMLTProduct;
end;

function NewUnknown: IXMLTProduct;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTProduct, TargetNamespace) as IXMLTProduct;
end;

{ TXMLTProduct }

procedure TXMLTProduct.AfterConstruction;
begin
  RegisterChildNode('WorkMeasure', TXMLTMeasure);
  RegisterChildNode('AccountMeasure', TXMLTMeasure);
  RegisterChildNode('TechMeasure', TXMLTMeasure);
  RegisterChildNode('TransportMeasure', TXMLTMeasure);
  RegisterChildNode('SelfExistentStatus', TXMLTSelfExistentStatus);
  RegisterChildNode('TransientStatus', TXMLTTransientStatus);
  RegisterChildNode('UsedBySalesPriority', TXMLTPriority);
  RegisterChildNode('UsedBySaleProductionPriority', TXMLTPriority);
  RegisterChildNode('UsedByEnvironmentProductionPriority', TXMLTPriority);
  RegisterChildNode('ProvidedByDeliveriesPriority', TXMLTPriority);
  RegisterChildNode('ProvidedBySaleProductionPriority', TXMLTPriority);
  RegisterChildNode('ProvidedByEnvironmentProductionPriority', TXMLTPriority);
  RegisterChildNode('ProductOrigin', TXMLTProductOrigin);
  RegisterChildNode('BOIOrderType', TXMLTBOIOrderType);
  inherited;
end;

function TXMLTProduct.Get_ProductNo: Variant;
begin
  Result := ChildNodes['ProductNo'].NodeValue;
end;

procedure TXMLTProduct.Set_ProductNo(Value: Variant);
begin
  ChildNodes['ProductNo'].NodeValue := Value;
end;

function TXMLTProduct.Get_WorkMeasure: IXMLTMeasure;
begin
  Result := ChildNodes['WorkMeasure'] as IXMLTMeasure;
end;

function TXMLTProduct.Get_AccountMeasure: IXMLTMeasure;
begin
  Result := ChildNodes['AccountMeasure'] as IXMLTMeasure;
end;

function TXMLTProduct.Get_AccountMeasureCoef: Variant;
begin
  Result := ChildNodes['AccountMeasureCoef'].NodeValue;
end;

procedure TXMLTProduct.Set_AccountMeasureCoef(Value: Variant);
begin
  ChildNodes['AccountMeasureCoef'].NodeValue := Value;
end;

function TXMLTProduct.Get_TechMeasure: IXMLTMeasure;
begin
  Result := ChildNodes['TechMeasure'] as IXMLTMeasure;
end;

function TXMLTProduct.Get_TechMeasureCoef: Variant;
begin
  Result := ChildNodes['TechMeasureCoef'].NodeValue;
end;

procedure TXMLTProduct.Set_TechMeasureCoef(Value: Variant);
begin
  ChildNodes['TechMeasureCoef'].NodeValue := Value;
end;

function TXMLTProduct.Get_TransportMeasure: IXMLTMeasure;
begin
  Result := ChildNodes['TransportMeasure'] as IXMLTMeasure;
end;

function TXMLTProduct.Get_TransportMeasureCoef: Variant;
begin
  Result := ChildNodes['TransportMeasureCoef'].NodeValue;
end;

procedure TXMLTProduct.Set_TransportMeasureCoef(Value: Variant);
begin
  ChildNodes['TransportMeasureCoef'].NodeValue := Value;
end;

function TXMLTProduct.Get_PartnerProductNames: Variant;
begin
  Result := ChildNodes['PartnerProductNames'].NodeValue;
end;

procedure TXMLTProduct.Set_PartnerProductNames(Value: Variant);
begin
  ChildNodes['PartnerProductNames'].NodeValue := Value;
end;

function TXMLTProduct.Get_IsVatFree: Variant;
begin
  Result := ChildNodes['IsVatFree'].NodeValue;
end;

procedure TXMLTProduct.Set_IsVatFree(Value: Variant);
begin
  ChildNodes['IsVatFree'].NodeValue := Value;
end;

function TXMLTProduct.Get_Notes: Variant;
begin
  Result := ChildNodes['Notes'].NodeValue;
end;

procedure TXMLTProduct.Set_Notes(Value: Variant);
begin
  ChildNodes['Notes'].NodeValue := Value;
end;

function TXMLTProduct.Get_IsInactive: Variant;
begin
  Result := ChildNodes['IsInactive'].NodeValue;
end;

procedure TXMLTProduct.Set_IsInactive(Value: Variant);
begin
  ChildNodes['IsInactive'].NodeValue := Value;
end;

function TXMLTProduct.Get_SelfExistentStatus: IXMLTSelfExistentStatus;
begin
  Result := ChildNodes['SelfExistentStatus'] as IXMLTSelfExistentStatus;
end;

function TXMLTProduct.Get_IsProductionProduct: Variant;
begin
  Result := ChildNodes['IsProductionProduct'].NodeValue;
end;

procedure TXMLTProduct.Set_IsProductionProduct(Value: Variant);
begin
  ChildNodes['IsProductionProduct'].NodeValue := Value;
end;

function TXMLTProduct.Get_TransientStatus: IXMLTTransientStatus;
begin
  Result := ChildNodes['TransientStatus'] as IXMLTTransientStatus;
end;

function TXMLTProduct.Get_WorkdaysToExist: Variant;
begin
  Result := ChildNodes['WorkdaysToExist'].NodeValue;
end;

procedure TXMLTProduct.Set_WorkdaysToExist(Value: Variant);
begin
  ChildNodes['WorkdaysToExist'].NodeValue := Value;
end;

function TXMLTProduct.Get_IsUsedBySales: Variant;
begin
  Result := ChildNodes['IsUsedBySales'].NodeValue;
end;

procedure TXMLTProduct.Set_IsUsedBySales(Value: Variant);
begin
  ChildNodes['IsUsedBySales'].NodeValue := Value;
end;

function TXMLTProduct.Get_IsUsedBySaleProduction: Variant;
begin
  Result := ChildNodes['IsUsedBySaleProduction'].NodeValue;
end;

procedure TXMLTProduct.Set_IsUsedBySaleProduction(Value: Variant);
begin
  ChildNodes['IsUsedBySaleProduction'].NodeValue := Value;
end;

function TXMLTProduct.Get_IsUsedByEnvironmentProduction: Variant;
begin
  Result := ChildNodes['IsUsedByEnvironmentProduction'].NodeValue;
end;

procedure TXMLTProduct.Set_IsUsedByEnvironmentProduction(Value: Variant);
begin
  ChildNodes['IsUsedByEnvironmentProduction'].NodeValue := Value;
end;

function TXMLTProduct.Get_IsProvidedByDeliveries: Variant;
begin
  Result := ChildNodes['IsProvidedByDeliveries'].NodeValue;
end;

procedure TXMLTProduct.Set_IsProvidedByDeliveries(Value: Variant);
begin
  ChildNodes['IsProvidedByDeliveries'].NodeValue := Value;
end;

function TXMLTProduct.Get_IsProvidedBySaleProduction: Variant;
begin
  Result := ChildNodes['IsProvidedBySaleProduction'].NodeValue;
end;

procedure TXMLTProduct.Set_IsProvidedBySaleProduction(Value: Variant);
begin
  ChildNodes['IsProvidedBySaleProduction'].NodeValue := Value;
end;

function TXMLTProduct.Get_IsProvidedByEnvironmentProduction: Variant;
begin
  Result := ChildNodes['IsProvidedByEnvironmentProduction'].NodeValue;
end;

procedure TXMLTProduct.Set_IsProvidedByEnvironmentProduction(Value: Variant);
begin
  ChildNodes['IsProvidedByEnvironmentProduction'].NodeValue := Value;
end;

function TXMLTProduct.Get_UsedBySalesPriority: IXMLTPriority;
begin
  Result := ChildNodes['UsedBySalesPriority'] as IXMLTPriority;
end;

function TXMLTProduct.Get_UsedBySaleProductionPriority: IXMLTPriority;
begin
  Result := ChildNodes['UsedBySaleProductionPriority'] as IXMLTPriority;
end;

function TXMLTProduct.Get_UsedByEnvironmentProductionPriority: IXMLTPriority;
begin
  Result := ChildNodes['UsedByEnvironmentProductionPriority'] as IXMLTPriority;
end;

function TXMLTProduct.Get_ProvidedByDeliveriesPriority: IXMLTPriority;
begin
  Result := ChildNodes['ProvidedByDeliveriesPriority'] as IXMLTPriority;
end;

function TXMLTProduct.Get_ProvidedBySaleProductionPriority: IXMLTPriority;
begin
  Result := ChildNodes['ProvidedBySaleProductionPriority'] as IXMLTPriority;
end;

function TXMLTProduct.Get_ProvidedByEnvironmentProductionPriority: IXMLTPriority;
begin
  Result := ChildNodes['ProvidedByEnvironmentProductionPriority'] as IXMLTPriority;
end;

function TXMLTProduct.Get_ProductOrigin: IXMLTProductOrigin;
begin
  Result := ChildNodes['ProductOrigin'] as IXMLTProductOrigin;
end;

function TXMLTProduct.Get_BOIOrderType: IXMLTBOIOrderType;
begin
  Result := ChildNodes['BOIOrderType'] as IXMLTBOIOrderType;
end;

end.
