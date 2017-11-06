unit uRTFUtils;

interface

uses
  Classes;

function ConcatRTF(RTF1, RTF2: string): string;
procedure AppendRichEditStrings(ToStrings: TStrings; NewStrings: TStrings);

implementation

uses
  SysUtils, ComCtrls, Windows, Messages, Forms, RichEdit;

{ Routines }

function EditStreamCallback(dwCookie: Longint; pbBuff: PByte;
                            cb: Longint; var pcb: Longint): Longint; stdcall;
var
  theStream: TMemoryStream;
begin
  // dwCookie is Application-defined,
  // so we're passing the stream containing
  // the formatted text to be added.
  //
  theStream := TMemoryStream(dwCookie);
  Result := 0;

  with theStream do begin
    if (Size = position) then begin
      pcb := 0;
      Exit;
    end
    else if (Size - Position) <= cb then begin
      pcb := Size;
      Read(pbBuff^, Size);
    end
    else begin
      pcb := cb;
      Read(pbBuff^, cb);
    end;
  end;
end;

function ConcatRTF(RTF1, RTF2: string): string;
var
  edtRich: TRichEdit;
  StrStream: TStringStream;
  EditStream: TEditStream;
  i: Integer;
  ResultStrings: TStringList;
begin
  edtRich:= TRichEdit.Create(nil);
  try
    edtRich.Parent:= Application.MainForm;

    edtRich.Lines.BeginUpdate;
    try
      StrStream:= TStringStream.Create(RTF1);
      try
        StrStream.Seek(0, soFromBeginning);
        edtRich.Lines.LoadFromStream(StrStream);
      finally
        FreeAndNil(StrStream);
      end;  { try }

      edtRich.Lines.Append(' ');
      edtRich.SelStart:= SendMessage(edtRich.Handle, EM_LINEINDEX, edtRich.Lines.Count - 1, 0);
      edtRich.SelLength:= 1; // Select the space that we just added.

      StrStream:= TStringStream.Create(RTF2);
      try
        StrStream.Seek(0, soFromBeginning);

        EditStream.dwCookie:= Longint(StrStream);
        EditStream.dwError:= 0;
        EditStream.pfnCallback:= @EditStreamCallback;

        SendMessage(edtRich.Handle, EM_STREAMIN, SF_RTF or SFF_SELECTION, Longint(@EditStream));
      finally
        FreeAndNil(StrStream);
      end;  { try }

      ResultStrings:= TStringList.Create;
      try
        StrStream:= TStringStream.Create(RTF2);
        try
          edtRich.Lines.SaveToStream(StrStream);
          StrStream.Seek(0, soFromBeginning);
          ResultStrings.LoadFromStream(StrStream);
        finally
          FreeAndNil(StrStream);
        end;  { try }

        // poiaviavat se 3 nenujni reda v kraia
        for i:= 1 to 3 do
          ResultStrings.Delete(ResultStrings.Count-1);
        ResultStrings.Add('}');

        Result:= ResultStrings.Text;
      finally
        FreeAndNil(ResultStrings);
      end;  { try }
    finally
      edtRich.Lines.EndUpdate;
    end;  { try }
  finally
    FreeAndNil(edtRich);
  end;  { try }
end;

procedure AppendRichEditStrings(ToStrings: TStrings; NewStrings: TStrings);
var
  ToStringsStream: TStringStream;
  NewStringsStream: TStringStream;
  ResultRTF: string;
begin
  ToStrings.BeginUpdate;
  try
    ToStringsStream:= TStringStream.Create('');
    try
      ToStrings.SaveToStream(ToStringsStream);

      NewStringsStream:= TStringStream.Create('');
      try
        NewStrings.SaveToStream(NewStringsStream);

        ResultRTF:= ConcatRTF(ToStringsStream.DataString, NewStringsStream.DataString);
      finally
        FreeAndNil(NewStringsStream);
      end;  { try }
    finally
      FreeAndNil(ToStringsStream);
    end;  { try }

    ToStringsStream:= TStringStream.Create(ResultRTF);
    try
      ToStrings.LoadFromStream(ToStringsStream);
    finally
      FreeAndNil(ToStringsStream);
    end;  { try }
  finally
    ToStrings.EndUpdate;
  end;  { try }
end;

end.
