unit uIntToText;

interface

type
  TGender= (M, F, N);    // myjki, jenski, sreden rod

function IntToGender(Value: Integer): TGender;

function GenderToInt(Value: TGender): Integer;

function IntToBulgarianText(n: Int64;
  Gender: TGender): string;

function IntToEnglishText(n: Int64): string;

implementation

uses SysUtils;

function IntToGender(Value: Integer): TGender;
begin
  case Value of
    1: Result:= M;
    2: Result:= F;
    3: Result:= N;
  else
    raise Exception.CreateFmt('IntToGender: Invalid argument %d', [Value]);
  end;
end;

function GenderToInt(Value: TGender): Integer;
begin
  case Value of
    M: Result:= 1;
    F: Result:= 2;
    N: Result:= 3;
  else
    raise Exception.Create('GenderToInt: Unknown argument');
  end;
end;

function IntToEnglishText(n: Int64): string;

  const
    Zero = 'Zero';
    AndKeyWord = 'and';
    Hundred = 'Hundred';
    Delimeter = ',';

    SmallNumbers: array [0..19] of string =
    ('Zero', 'One', 'Two', 'Three', 'Four',
     'Five', 'Six', 'Seven', 'Eight', 'Nine',
     'Ten', 'Eleven', 'Twelve', 'Thirteen', 'Fourteen',
     'Fifteen', 'Sixteen', 'Seventeen', 'Eighteen', 'Nineteen');

    TensNumbers: array [0..9] of string =
    ('', '', 'Twenty', 'Thirty', 'Forty', 'Fifty', 'Sixty', 'Seventy', 'Eighty', 'Ninety');

    ScaleNumbers: array[1..6] of string =
    ('Thousand', 'Million', 'Billion', 'Trillion', 'Quadrillion', 'Quintillion');

  function TriadToText(n: Integer): string;
  var
    Hundreds: Integer;
    TensAndUnits: Integer;
    Tens: Integer;
    Units: Integer;
  begin
    Result:= '';

    Hundreds:= n div 100;
    TensAndUnits:= n mod 100;

    if (Hundreds <> 0) then
      begin
        Result:= Result + SmallNumbers[Hundreds] + ' ' + Hundred;

        if (TensAndUnits <> 0) then
          Result:= Result + ' ' + AndKeyWord + ' ';
      end;

    Tens:= TensAndUnits div 10;
    Units:= TensAndUnits mod 10;

    if (Tens >= 2) then
      begin
        Result:= Result + TensNumbers[Tens];

        if (Units > 0) then
          Result:= Result + ' ' + SmallNumbers[Units];
      end
    else
      if (TensAndUnits > 0) then
        Result:= Result + SmallNumbers[TensAndUnits];
  end;

var
  DigitGroups: array [0..6] of Integer;
  GroupText: array [0..6] of string;
  i: Integer;
  Prefix: string;
  AppendAnd: Boolean;
begin
  Assert(n >= 0);

  if (n = 0) then
    Result:= Zero
  else
    begin
      for i:= 0 to 6 do
        begin
          DigitGroups[i]:= n mod 1000;
          n:= n div 1000;
        end;

        for i:= 0 to 3 do
          GroupText[i]:= TriadToText(DigitGroups[i]);

        Result:= GroupText[0];
        AppendAnd:= (DigitGroups[0] > 0) and (DigitGroups[0] < 100);

        for i:= 1 to 6 do
          begin
            if (DigitGroups[i] > 0) then
              begin
                Prefix:= GroupText[i] + ' ' + ScaleNumbers[i];

                if (Length(Result) > 0) then
                  if AppendAnd then
                    Prefix:= Prefix + ' ' + AndKeyWord + ' '
                  else
                    Prefix:= Prefix + Delimeter + ' ';

                AppendAnd:= False;
                Result:= Prefix + Result;
              end;
          end;
    end;
end;

function IntToBulgarianText(n: Int64; Gender: TGender): string;

  const
    Zero = 'нула';
    AndKeyWord = 'и';

    Hundreds: array [1..9] of string =
      ('сто', 'двеста', 'триста', 'четиристотин', 'петстотин',
       'шестстотин', 'седемстотин', 'осемстотин', 'деветстотин');

    Tens: array [2..9] of string =
      ('двадесет', 'тридесет', 'четиридесет', 'петдесет',
       'шестдесет', 'седемдесет', 'осемдесет', 'деветдесет');

    BelowTwenty: array [TGender, 0..19] of string =
      (
        ('', 'един', 'два', 'три', 'четири', 'пет', 'шест', 'седем', 'осем',
         'девет', 'десет', 'единадесет', 'дванадесет', 'тринадесет',
         'четиринадесет', 'петнадесет', 'шестнадесет', 'седемнадесет',
         'осемнадесет', 'деветнадесет'),
        ('', 'една', 'две', 'три', 'четири', 'пет', 'шест', 'седем', 'осем',
         'девет', 'десет', 'единадесет', 'дванадесет', 'тринадесет',
         'четиринадесет', 'петнадесет', 'шестнадесет', 'седемнадесет',
         'осемнадесет', 'деветнадесет'),
        ('', 'едно', 'две', 'три', 'четири', 'пет', 'шест', 'седем', 'осем',
         'девет', 'десет', 'единадесет', 'дванадесет', 'тринадесет',
         'четиринадесет', 'петнадесет', 'шестнадесет', 'седемнадесет',
         'осемнадесет', 'деветнадесет')
      );

    // v edinstveno chislo
    BigNumberNamesSingular: array [1..7] of string =
      ('', 'хиляда', 'милион', 'милиард', 'трилион', 'квадрилион', 'квинтилион');
    // v mnojestveno chislo
    BigNumberNamesPlural: array [1..7] of string =
      ('', 'хиляди', 'милиона', 'милиарда', 'трилиона', 'квадрилиона', 'квинтилиона');

  var
    AndPut: Boolean;  // flag, dali sme slojili dumata i da ne stane 'milion i 500 hiliadi i 1' primerno

  function TriadToText(n: Integer; Gender: TGender): string;
  var
    i: Integer;

  begin
    Assert(n < 1000);

    Result:= '';
    if (n < 100) then
      begin
        if (n < 20) then
          Result:= BelowTwenty[Gender, n]
        else
          begin
            Result:= Tens[n div 10];
            i:= n mod 10;
            if (i > 0) then
              begin
                Result:= Result + ' ' + AndKeyWord + ' ' + BelowTwenty[Gender, i];
                AndPut:= True;
              end;
          end;
      end
    else
      begin
        i:= n mod 100;
        n:= n div 100;

        if (i = 0) then
          Result:= Hundreds[n]
        else
          begin
            if (i < 20) then
              begin
                Result:= Hundreds[n] + ' ' + AndKeyWord + ' ' + BelowTwenty[Gender, i];
                AndPut:= True;
              end
            else
              begin
                if ((i mod 10) = 0) then
                  begin
                    Result:= Hundreds[n] + ' ' + AndKeyWord + ' ' + TriadToText(i, Gender);
                    AndPut:= True;
                  end
                else
                  Result:= Hundreds[n] + ' ' + TriadToText(i, Gender);
              end;
          end;
      end;
  end;

var
  Triads: array[1..10] of Integer;
  TriadsPtr: Integer;
  BigNumbersGender: array[1..7] of TGender;
  i: Integer;
  AndPosition: Integer;
  AndString: string;

begin
  Assert(n >= 0);
  FillChar(Triads, SizeOf(Triads), 0);
  TriadsPtr:= 0;
  AndPut:= False;
  BigNumbersGender[1]:= Gender;   // <1000
  BigNumbersGender[2]:= F;     // <1000000, hiliadite v jenski rod
  BigNumbersGender[3]:= M;     // drugite sa v myjki
  BigNumbersGender[4]:= M;
  BigNumbersGender[5]:= M;
  BigNumbersGender[6]:= M;
  BigNumbersGender[7]:= M;

  if (n = 0) then
    Result:= Zero
  else
    begin
      Result:= '';

      while (n > 0) do
        begin
          Inc(TriadsPtr);
          Triads[TriadsPtr]:= n mod 1000;
          n:= n div 1000;
        end;

      AndPosition:= 0;
      i:= 1;
      while (Triads[i] = 0) and (i < TriadsPtr) do
        Inc(i);
      if (i < TriadsPtr) and
         ( (Triads[i] < 20) or
           ( (Triads[i] mod 100) = 0) or
           ( ((Triads[i] mod 10) = 0) and (Triads[i] < 100) )
         ) then
        AndPosition:= i;

      while (TriadsPtr > 0) do
        begin
          if (TriadsPtr = AndPosition) then
            AndString:= AndKeyWord + ' '
          else
            AndString:= '';
            
          case Triads[TriadsPtr] of
            0:
              begin
                Result:= Result + AndString;
              end;
            1:
              begin
                // ne kazvame 1 hiliada, a samo hiliada
                if (TriadsPtr = 2) then
                  Result:= Result + AndString + BigNumberNamesSingular[TriadsPtr] + ' '
                else
                  Result:= Result + AndString + BelowTwenty[BigNumbersGender[TriadsPtr], 1] + ' ' + BigNumberNamesSingular[TriadsPtr] + ' ';
              end;
            else
              Result:= Result + AndString + TriadToText(Triads[TriadsPtr], BigNumbersGender[TriadsPtr]) + ' ' + BigNumberNamesPlural[TriadsPtr] + ' ';
          end;  { case }

          Dec(TriadsPtr);
        end;
    end;

  Result:= Trim(Result);
end;

end.
