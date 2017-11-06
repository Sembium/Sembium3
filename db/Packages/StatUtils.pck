create or replace package StatUtils is

  procedure SetTempTableStats(DestTableName in Varchar2);

end;
/
create or replace package body StatUtils is
  
  function GetBaseName(AName in Varchar2) return Varchar2 is
    Result Varchar2(100 char);
  begin
    if ( SubStr(AName, Length(AName), 1) in 
         ('0', '1', '2', '3', '4', '5', '6', '7', '8', '9') ) then
       
      Result:= SubStr(AName, 1, Length(AName) - 2);
    else
      Result:= AName;
    end if;
    
    return Result;
  end;
  
  procedure SetTempTableStats(DestTableName in Varchar2) is
    BaseTableName Varchar2(100 char);
    BaseIndexName Varchar2(100 char);
    SourceTableName Varchar2(100 char);
    SourceIndexName Varchar2(100 char);
    DestIndexName Varchar2(100 char);
    tNumRows Number;
    tNumBlks Number;
    tAvgRLen Number;
    iNumRows Number;
    iNumLBlks Number;
    iNumDist Number;
    iAvgLBlk Number;
    iAvgDBlk Number;
    iClstFct Number;
    iIndLevel Number;
    cDistCnt Number;
    cDensity Number;
    cNullCnt Number;
    cSRec dbms_stats.StatRec;
    cAvgCLen Number;
  begin
    BaseTableName := GetBaseName(DestTableName);
    
    SourceTableName := BaseTableName || '_S';
    
    dbms_stats.delete_table_stats(
      ownname => login_user,
      tabname => SourceTableName,
      cascade_parts => true,
      cascade_columns => true,
      cascade_indexes => true);
  
    dbms_stats.delete_table_stats(
      ownname => login_user,
      tabname => DestTableName,
      cascade_parts => true,
      cascade_columns => true,
      cascade_indexes => true);
  
    dbms_stats.gather_table_stats(
      ownname => login_user,
      tabname => SourceTableName,
      method_opt => 'FOR ALL COLUMNS SIZE AUTO',
      cascade => true);
  
    dbms_stats.get_table_stats(
      ownname => login_user,
      tabname => SourceTableName,
      numrows => tNumRows,
      numblks => tNumBlks,
      avgrlen => tAvgRLen);
  
    dbms_stats.set_table_stats(
      ownname => login_user,
      tabname => DestTableName,
      numrows => tNumRows,
      numblks => tNumBlks,
      avgrlen => tAvgRLen);
  
  
    -- copy index stats
    for TheIndex in
      ( select
          ui.INDEX_NAME
        from
          sys.USER_INDEXES ui
        where
          (ui.TABLE_OWNER = sys.login_user) and
          (ui.TABLE_NAME = DestTableName)
        order by
          ui.INDEX_NAME
      ) loop
    
      DestIndexName := TheIndex.INDEX_NAME;
      BaseIndexName := GetBaseName(DestIndexName);
      SourceIndexName := BaseIndexName || '_S';
    
      dbms_stats.get_index_stats(
        ownname => login_user,
        indname => SourceIndexName,
        numrows => iNumRows,
        numlblks => iNumLBlks,
        numdist => iNumDist,
        avglblk => iAvgLBlk,
        avgdblk => iAvgDBlk,
        clstfct => iClstFct,
        indlevel => iIndLevel);
    
      dbms_stats.set_index_stats(
        ownname => login_user,
        indname => DestIndexName,
        numrows => iNumRows,
        numlblks => iNumLBlks,
        numdist => iNumDist,
        avglblk => iAvgLBlk,
        avgdblk => iAvgDBlk,
        clstfct => iClstFct,
        indlevel => iIndLevel);
    end loop;

    -- copy column stats    
    for TheColumn in
      ( select
          c.CNAME
        from
          sys.COL c
        where
          (c.TNAME = DestTableName)
        order by
          c.COLNO
      ) loop
    
      dbms_stats.get_column_stats(
        ownname => login_user,
        tabname => SourceTableName,
        colname => TheColumn.CNAME,
        distcnt => cDistCnt,
        density => cDensity,
        nullcnt => cNullCnt,
        srec => cSRec,
        avgclen => cAvgCLen);
        
      dbms_stats.set_column_stats(
        ownname => login_user,
        tabname => DestTableName,
        colname => TheColumn.CNAME,
        distcnt => cDistCnt,
        density => cDensity,
        nullcnt => cNullCnt,
        srec => cSRec,
        avgclen => cAvgCLen);
    end loop;
  end;

end;
/
