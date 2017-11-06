create or replace package MessageUtils is

  function InternalDateToStr(
    ADate in Date
  ) return VarChar2;
  
  function InternalStrToDate(
    AString in VarChar2
  ) return Date;
  
  function InternalTimeToStr(
    ATime in Date
  ) return VarChar2;
  
  function InternalStrToTime(
    AString in VarChar2
  ) return Date;
 
  function InternalFloatToStr(
    AFloat in Number
  ) return VarChar2;
  
  function InternalStrToFloat(
    AString in VarChar2
  ) return Number;
  
  function InternalIntToStr(
    AnInteger in Number
  ) return VarChar2;
  
  function InternalStrToInt(
    AString in VarChar2
  ) return Number;
  
  function InternalEncodeString(
    AString in VarChar2
  ) return VarChar2;
  
  function InternalDecodeString(
    AString in VarChar2
  ) return VarChar2;
       
  PRAGMA RESTRICT_REFERENCES (InternalFloatToStr, WNDS, WNPS, RNDS);  
  PRAGMA RESTRICT_REFERENCES (InternalStrToFloat, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (InternalIntToStr, WNDS, WNPS, RNDS);    
  PRAGMA RESTRICT_REFERENCES (InternalStrToInt, WNDS, WNPS, RNDS);  
  PRAGMA RESTRICT_REFERENCES (InternalEncodeString, WNDS, WNPS, RNDS);    
  PRAGMA RESTRICT_REFERENCES (InternalDecodeString, WNDS, WNPS, RNDS);  
  
end MessageUtils;
/
create or replace package body MessageUtils is
 
  function InternalDateToStr(
    ADate in Date
  ) return VarChar2 is
  
  Result Varchar2(50 char);
  
  begin
    Result:= To_char(ADate, MessageConsts.InternalDateFormatString); 
    return Result;
  end;
  
  function InternalStrToDate(
    AString in VarChar2
  ) return Date is
  
  Result Date;
  
  begin
    Result:= To_date(AString, MessageConsts.InternalDateFormatString);
    return Result;
  end;
  
  function InternalTimeToStr(
    ATime in Date
  ) return VarChar2 is
  
  Result Varchar2(50 char);
  
  begin
    Result:= To_char(ATime, MessageConsts.InternalTimeFormatString);
    return Result;
  end;
  
  function InternalStrToTime(
    AString in VarChar2
  ) return Date is
  
  Result Date;
  
  begin
    Result:= To_date(AString, MessageConsts.InternalTimeFormatString);
    return Result;  
  end;
 
  function InternalFloatToStr(
    AFloat in Number
  ) return VarChar2 is
  
  Result Varchar2(50 char);
  
  begin
    Result:= To_char(AFloat);
    return Result;
  end;
  
  function InternalStrToFloat(
    AString in VarChar2  
  ) return Number is
  
  Result Number;
  
  begin
    Result:= To_number(AString);
    return Result;
  end;
  
  function InternalIntToStr(
    AnInteger in Number
  ) return VarChar2 is
  
  Result Varchar2(50 char);
  
  begin
    Result:= To_char(AnInteger);
    return Result;
  end;
  
  function InternalStrToInt(
    AString in VarChar2
  ) return Number is
  
  Result Number;
  
  begin
    Result:= To_number(AString);
    return Result;
  end;
  
  function DoubleChar(
    AString in Varchar2,
    AChar in Char
  ) return VarChar2 is
  
  Result Varchar2(200 char);
  
  i Number(10);
  
  begin
    Result:= AString; 
    i:= 1;
    while (i < Length(Result)) loop
      if (substr(Result, i, 1) = AChar) then
        Result:=  substr(Result, 1, i) || AChar || substr(Result, i + 1, Length(Result) - i);
        i:= i + 1;
      end if ;
      i:= i + 1;
    end loop; 
    
    return Result;
  end;  
  
  function DeleteDoubledChars(
    AString in VarChar2,
    AChar in Char
  ) return VarChar2 is
  
  Result Varchar2(200 char);
  
  begin
    Result:= Replace(AString, AChar || AChar, AChar);
    
    return Result;
  end;
  
  function InternalEncodeString(
    AString in VarChar2
  ) return VarChar2 is
  
  Result Varchar2(200 char);
  
  begin
    Result:= AString;
    Result:= DoubleChar(Result, '(');
    Result:= DoubleChar(Result, ')');    
    Result:= DoubleChar(Result, ',');    
    
    return Result;
  end;
  
  function InternalDecodeString(
    AString in VarChar2
  ) return VarChar2 is
  
  Result Varchar2(200 char);  
  
  begin
    Result:= AString;
    Result:= DeleteDoubledChars(Result, '(');
    Result:= DeleteDoubledChars(Result, ')');
    Result:= DeleteDoubledChars(Result, ',');
    
    return Result;
  end;
  
end MessageUtils;
/
