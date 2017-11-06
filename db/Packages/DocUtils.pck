create or replace package DocUtils is
    
  type TDoc is record (
    DOC_BRANCH_CODE DOCS.DOC_BRANCH_CODE%TYPE,
    DOC_CODE DOCS.DOC_CODE%TYPE  
  );

  type TDocTable is table of TDoc;
  
  function BlobToDocTable(ADocsBytes in Blob) return TDocTable;
  procedure InsertTempDocs(ADocTable in TDocTable);

end;
/
create or replace package body DocUtils is

  function RawIntToNum(ARawInt in VarChar2) return Number is
  begin
    return 
      To_Number(
        SubStr(ARawInt, 7, 2) ||
        SubStr(ARawInt, 5, 2) ||
        SubStr(ARawInt, 3, 2) ||
        SubStr(ARawInt, 1, 2),
        'XXXXXXXX');
  end;

  function BlobToDocTable(ADocsBytes in Blob) return TDocTable is
    result TDocTable:= TDocTable();
    doc TDoc;
    DocsLength Number;
  begin
    DocsLength:= DBMS_LOB.GetLength(ADocsBytes);

    for i in 1..(DocsLength/8) loop
      doc.DOC_BRANCH_CODE:= RawIntToNum(DBMS_LOB.SubStr(ADocsBytes, 4, 8*(i-1)+1));
      doc.DOC_CODE:= RawIntToNum(DBMS_LOB.SubStr(ADocsBytes, 4, 8*(i-1)+5));

      result.Extend;
      result(result.Last):= doc;
    end loop;
    
    return result;
  end;

  procedure InsertTempDocs(ADocTable in TDocTable) is
  begin
    forall i in 1..ADocTable.Count
      insert into 
        TEMP_DOCS     
      values
        (ADocTable(i).DOC_BRANCH_CODE, ADocTable(i).DOC_CODE);
  end;

end;
/
