
{*********************************************************************}
{                                                                     }
{                          XML Data Binding                           }
{                                                                     }
{         Generated on: 15.1.2007 18:38:06                            }
{       Generated from: XMLSchemas\TextMessages.xsd                   }
{                                                                     }
{*********************************************************************}

unit xTextMessages;

interface

uses xmldom, XMLDoc, XMLIntf, Classes;

type

{ Forward Decls }

  IXMLTextMessages = interface;
  IXMLTextMessage = interface;

{ IXMLTextMessages }

  IXMLTextMessages = interface(IXMLNodeCollection)
    ['{7B907A87-95F0-427B-BF1B-28E6201AC2DE}']
    { Property Accessors }
    function Get_TextMessage(Index: Integer): IXMLTextMessage;
    { Methods & Properties }
    function Add: IXMLTextMessage;
    function Insert(const Index: Integer): IXMLTextMessage;
    property TextMessage[Index: Integer]: IXMLTextMessage read Get_TextMessage; default;
  end;

{ IXMLTextMessage }

  IXMLTextMessage = interface(IXMLNode)
    ['{D308B44C-97CD-450E-9EBC-92265D7FB0CC}']
    { Property Accessors }
    function Get_Id: Variant;
    function Get_Text: Variant;
    procedure Set_Id(Value: Variant);
    procedure Set_Text(Value: Variant);
    { Methods & Properties }
    property Id: Variant read Get_Id write Set_Id;
    property Text: Variant read Get_Text write Set_Text;
  end;

{ Forward Decls }

  TXMLTextMessages = class;
  TXMLTextMessage = class;

{ TXMLTextMessages }

  TXMLTextMessages = class(TXMLNodeCollection, IXMLTextMessages)
  protected
    { IXMLTextMessages }
    function Get_TextMessage(Index: Integer): IXMLTextMessage;
    function Add: IXMLTextMessage;
    function Insert(const Index: Integer): IXMLTextMessage;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTextMessage }

  TXMLTextMessage = class(TXMLNode, IXMLTextMessage)
  protected
    { IXMLTextMessage }
    function Get_Id: Variant;
    function Get_Text: Variant;
    procedure Set_Id(Value: Variant);
    procedure Set_Text(Value: Variant);
  end;

{ Global Functions }

function GetTextMessages(Doc: IXMLDocument): IXMLTextMessages;
function LoadTextMessages(const FileName: string): IXMLTextMessages;
function NewTextMessages: IXMLTextMessages;

// added by Lubo
function LoadTextMessagesFromStream(const Stream: TStream): IXMLTextMessages;

const
  TargetNamespace = '';

implementation

uses
  uXMLUtils;

{ Global Functions }

function GetTextMessages(Doc: IXMLDocument): IXMLTextMessages;
begin
  Result := Doc.GetDocBinding('TextMessages', TXMLTextMessages, TargetNamespace) as IXMLTextMessages;
end;

function LoadTextMessages(const FileName: string): IXMLTextMessages;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('TextMessages', TXMLTextMessages, TargetNamespace) as IXMLTextMessages;
end;

function NewTextMessages: IXMLTextMessages;
begin
  Result := NewXMLDocument.GetDocBinding('TextMessages', TXMLTextMessages, TargetNamespace) as IXMLTextMessages;
end;

function LoadTextMessagesFromStream(const Stream: TStream): IXMLTextMessages;
begin
  Result:= LoadXMLDocumentFromStream(Stream).GetDocBinding('TextMessages', TXMLTextMessages, TargetNamespace) as IXMLTextMessages;
end;

{ TXMLTextMessages }

procedure TXMLTextMessages.AfterConstruction;
begin
  RegisterChildNode('TextMessage', TXMLTextMessage);
  ItemTag := 'TextMessage';
  ItemInterface := IXMLTextMessage;
  inherited;
end;

function TXMLTextMessages.Get_TextMessage(Index: Integer): IXMLTextMessage;
begin
  Result := List[Index] as IXMLTextMessage;
end;

function TXMLTextMessages.Add: IXMLTextMessage;
begin
  Result := AddItem(-1) as IXMLTextMessage;
end;

function TXMLTextMessages.Insert(const Index: Integer): IXMLTextMessage;
begin
  Result := AddItem(Index) as IXMLTextMessage;
end;

{ TXMLTextMessage }

function TXMLTextMessage.Get_Id: Variant;
begin
  Result := (Self as IXMLTextMessage).Attributes['Id'];
end;

procedure TXMLTextMessage.Set_Id(Value: Variant);
begin
  (Self as IXMLTextMessage).Attributes['Id'] := Value;
end;

function TXMLTextMessage.Get_Text: Variant;
begin
  Result := ChildNodes['Text'].NodeValue;
end;

procedure TXMLTextMessage.Set_Text(Value: Variant);
begin
  ChildNodes['Text'].NodeValue := Value;
end;

end.
