create or replace package StateUtils is

  function InSdfeUpdate return Boolean;
  procedure BeginSdfeUpdate;
  procedure EndSdfeUpdate;

  function InPsdfeUpdate return Boolean;
  procedure BeginPsdfeUpdate;
  procedure EndPsdfeUpdate;

  function InSdUpdate return Boolean;
  procedure BeginSdUpdate;
  procedure EndSdUpdate;

  function InScfeUpdate return Boolean;
  procedure BeginScfeUpdate;
  procedure EndScfeUpdate;

  function InStrfeUpdate return Boolean;
  procedure BeginStrfeUpdate;
  procedure EndStrfeUpdate;

  function InSfeUpdate return Boolean;
  procedure BeginSfeUpdate;
  procedure EndSfeUpdate;

  function InBoifeUpdate return Boolean;
  procedure BeginBoifeUpdate;
  procedure EndBoifeUpdate;

  function InBofeUpdate return Boolean;
  procedure BeginBofeUpdate;
  procedure EndBofeUpdate;

  function InMlmsUpdate return Boolean;
  procedure BeginMlmsUpdate;
  procedure EndMlmsUpdate;

  function InMllUpdate return Boolean;
  procedure BeginMllUpdate;
  procedure EndMllUpdate;

  function InEmfeUpdate return Boolean;
  procedure BeginEmfeUpdate;
  procedure EndEmfeUpdate;

  function InOmfeUpdate return Boolean;
  procedure BeginOmfeUpdate;
  procedure EndOmfeUpdate;

  function InMmfeUpdate return Boolean;
  procedure BeginMmfeUpdate;
  procedure EndMmfeUpdate;

  function InMlmsofeUpdate return Boolean;
  procedure BeginMlmsofeUpdate;
  procedure EndMlmsofeUpdate;

  function InMllfeUpdate return Boolean;
  procedure BeginMllfeUpdate;
  procedure EndMllfeUpdate;

  function InMlfeUpdate return Boolean;
  procedure BeginMlfeUpdate;
  procedure EndMlfeUpdate;

  function InPfeUpdate return Boolean;
  procedure BeginPfeUpdate;
  procedure EndPfeUpdate;

  function InPsfeUpdate return Boolean;
  procedure BeginPsfeUpdate;
  procedure EndPsfeUpdate;

  function InOefeUpdate return Boolean;
  procedure BeginOefeUpdate;
  procedure EndOefeUpdate;
  
  function InOfeUpdate return Boolean;
  procedure BeginOfeUpdate;
  procedure EndOfeUpdate;
  
  function InDpfeUpdate return Boolean;
  procedure BeginDpfeUpdate;
  procedure EndDpfeUpdate;
  
  function InDfeUpdate return Boolean;
  procedure BeginDfeUpdate;
  procedure EndDfeUpdate;
  
  function InTdfeUpdate return Boolean;
  procedure BeginTdfeUpdate;
  procedure EndTdfeUpdate;
  
  function InCrfeUpdate return Boolean;
  procedure BeginCrfeUpdate;
  procedure EndCrfeUpdate;

  function InDifeUpdate return Boolean;
  procedure BeginDifeUpdate;
  procedure EndDifeUpdate;

  function InBgfeUpdate return Boolean;
  procedure BeginBgfeUpdate;
  procedure EndBgfeUpdate;

  function InBcfeUpdate return Boolean;
  procedure BeginBcfeUpdate;
  procedure EndBcfeUpdate;

  function InCfeUpdate return Boolean;
  procedure BeginCfeUpdate;
  procedure EndCfeUpdate;

  function InCpfeUpdate return Boolean;
  procedure BeginCpfeUpdate;
  procedure EndCpfeUpdate;

  function InCmifeUpdate return Boolean;
  procedure BeginCmifeUpdate;
  procedure EndCmifeUpdate;
  
  function InDcdfeUpdate return Boolean;
  procedure BeginDcdfeUpdate;
  procedure EndDcdfeUpdate;

  function InDgfeUpdate return Boolean;
  procedure BeginDgfeUpdate;
  procedure EndDgfeUpdate;

  function InDprfeUpdate return Boolean;
  procedure BeginDprfeUpdate;
  procedure EndDprfeUpdate;
  
  function InDptfeUpdate return Boolean;
  procedure BeginDptfeUpdate;
  procedure EndDptfeUpdate;

  function InDitfeUpdate return Boolean;
  procedure BeginDitfeUpdate;
  procedure EndDitfeUpdate;
  
  function InEfeUpdate return Boolean;
  procedure BeginEfeUpdate;
  procedure EndEfeUpdate;
  
  function InPrfeUpdate return Boolean;
  procedure BeginPrfeUpdate;
  procedure EndPrfeUpdate;
  
  function InSgfeUpdate return Boolean;
  procedure BeginSgfeUpdate;
  procedure EndSgfeUpdate;
  
  function InSrgfeUpdate return Boolean;
  procedure BeginSrgfeUpdate;
  procedure EndSrgfeUpdate;
  
  function InSsfeUpdate return Boolean;
  procedure BeginSsfeUpdate;
  procedure EndSsfeUpdate;
  
  function InSmvsfeUpdate return Boolean;
  procedure BeginSmvsfeUpdate;
  procedure EndSmvsfeUpdate;
  
  function InTfeUpdate return Boolean;
  procedure BeginTfeUpdate;
  procedure EndTfeUpdate;
  
  function InMlmsfeUpdate return Boolean;
  procedure BeginMlmsfeUpdate;
  procedure EndMlmsfeUpdate;
  
  function InSmvsofeUpdate return Boolean;
  procedure BeginSmvsofeUpdate;
  procedure EndSmvsofeUpdate;

  function InSpcfeUpdate return Boolean;
  procedure BeginSpcfeUpdate;
  procedure EndSpcfeUpdate;
  
  function InSlfeUpdate return Boolean;
  procedure BeginSlfeUpdate;
  procedure EndSlfeUpdate;
  
  function InSmvfeUpdate return Boolean;
  procedure BeginSmvfeUpdate;
  procedure EndSmvfeUpdate;
  
  function InSmvlfeUpdate return Boolean;
  procedure BeginSmvlfeUpdate;
  procedure EndSmvlfeUpdate;
  
  function InEofeUpdate return Boolean;
  procedure BeginEofeUpdate;
  procedure EndEofeUpdate;

  function InOsfeUpdate return Boolean;
  procedure BeginOsfeUpdate;
  procedure EndOsfeUpdate;

  function InScbfeUpdate return Boolean;
  procedure BeginScbfeUpdate;
  procedure EndScbfeUpdate;

  function InEmovfeUpdate return Boolean;
  procedure BeginEmovfeUpdate;
  procedure EndEmovfeUpdate;

  function InEamfeUpdate return Boolean;
  procedure BeginEamfeUpdate;
  procedure EndEamfeUpdate;

  function InEdefeUpdate return Boolean;
  procedure BeginEdefeUpdate;
  procedure EndEdefeUpdate;

  function InPperfeUpdate return Boolean;
  procedure BeginPperfeUpdate;
  procedure EndPperfeUpdate;

  function InOsafeUpdate return Boolean;
  procedure BeginOsafeUpdate;
  procedure EndOsafeUpdate;

  function InPrperfeUpdate return Boolean;
  procedure BeginPrperfeUpdate;
  procedure EndPrperfeUpdate;

  function InProdperfeUpdate return Boolean;
  procedure BeginProdperfeUpdate;
  procedure EndProdperfeUpdate;

  function InPrpfeUpdate return Boolean;
  procedure BeginPrpfeUpdate;
  procedure EndPrpfeUpdate;

  function InPrppfeUpdate return Boolean;
  procedure BeginPrppfeUpdate;
  procedure EndPrppfeUpdate;

  function InOtpfeUpdate return Boolean;
  procedure BeginOtpfeUpdate;
  procedure EndOtpfeUpdate;

  function InDetpfeUpdate return Boolean;
  procedure BeginDetpfeUpdate;
  procedure EndDetpfeUpdate;

  function InDetfeUpdate return Boolean;
  procedure BeginDetfeUpdate;
  procedure EndDetfeUpdate;

  function InDeffeUpdate return Boolean;
  procedure BeginDeffeUpdate;
  procedure EndDeffeUpdate;

  function InEefeUpdate return Boolean;
  procedure BeginEefeUpdate;
  procedure EndEefeUpdate;

  function InEetfeUpdate return Boolean;
  procedure BeginEetfeUpdate;
  procedure EndEetfeUpdate;

  function InEedfeUpdate return Boolean;
  procedure BeginEedfeUpdate;
  procedure EndEedfeUpdate;

  function InFcfeUpdate return Boolean;
  procedure BeginFcfeUpdate;
  procedure EndFcfeUpdate;

  function InFofeUpdate return Boolean;
  procedure BeginFofeUpdate;
  procedure EndFofeUpdate;

  function InSfmfeUpdate return Boolean;
  procedure BeginSfmfeUpdate;
  procedure EndSfmfeUpdate;

  function InRfmlfeUpdate return Boolean;
  procedure BeginRfmlfeUpdate;
  procedure EndRfmlfeUpdate;

  function InPkfeUpdate return Boolean;
  procedure BeginPkfeUpdate;
  procedure EndPkfeUpdate;

  function InPffeUpdate return Boolean;
  procedure BeginPffeUpdate;
  procedure EndPffeUpdate;

  function InPbofeUpdate return Boolean;
  procedure BeginPbofeUpdate;
  procedure EndPbofeUpdate;

  function InPcofeUpdate return Boolean;
  procedure BeginPcofeUpdate;
  procedure EndPcofeUpdate;
  
  function InPafeUpdate return Boolean;
  procedure BeginPafeUpdate;
  procedure EndPafeUpdate;
  
  function InVpfeUpdate return Boolean;
  procedure BeginVpfeUpdate;
  procedure EndVpfeUpdate;  

  function InDfpfeUpdate return Boolean;
  procedure BeginDfpfeUpdate;
  procedure EndDfpfeUpdate;  

  function InCcfeUpdate return Boolean;
  procedure BeginCcfeUpdate;
  procedure EndCcfeUpdate;  

  function InVcfeUpdate return Boolean;
  procedure BeginVcfeUpdate;
  procedure EndVcfeUpdate;  
  
  function InNifeUpdate return Boolean;
  procedure BeginNifeUpdate;
  procedure EndNifeUpdate;

  function InPrppmfeUpdate return Boolean;
  procedure BeginPrppmfeUpdate;
  procedure EndPrppmfeUpdate;

  function InParrelsfeUpdate return Boolean;
  procedure BeginParrelsfeUpdate;
  procedure EndParrelsfeUpdate;

  procedure SetSkipPeriodChecksProductCode(ProductCode in Number);
  function SkipPeriodChecksProductCode return Number;

  procedure SetSkipPRPerCheckPartnerCode(PartnerCode in Number);
  function SkipPRPerCheckPartnerCode return Number;

  function InOwdpfeUpdate return Boolean;
  procedure BeginOwdpfeUpdate;
  procedure EndOwdpfeUpdate;

  function InNfeUpdate return Boolean;
  procedure BeginNfeUpdate;
  procedure EndNfeUpdate;

  function InPpfeUpdate return Boolean;
  procedure BeginPpfeUpdate;
  procedure EndPpfeUpdate;

  function InIfeUpdate return Boolean;
  procedure BeginIfeUpdate;
  procedure EndIfeUpdate;

  function InIngfeUpdate return Boolean;
  procedure BeginIngfeUpdate;
  procedure EndIngfeUpdate;

  function InD_proffeUpdate return Boolean;
  procedure BeginD_proffeUpdate;
  procedure EndD_proffeUpdate;

  function InEetpfeUpdate return Boolean;
  procedure BeginEetpfeUpdate;
  procedure EndEetpfeUpdate;

  function InBoiofeUpdate return Boolean;
  procedure BeginBoiofeUpdate;
  procedure EndBoiofeUpdate;


  PRAGMA RESTRICT_REFERENCES (InSdfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginSdfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndSdfeUpdate, WNDS, RNDS);

  PRAGMA RESTRICT_REFERENCES (InPsdfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginPsdfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndPsdfeUpdate, WNDS, RNDS);

  PRAGMA RESTRICT_REFERENCES (InSdUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginSdUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndSdUpdate, WNDS, RNDS);

  PRAGMA RESTRICT_REFERENCES (InScfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginScfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndScfeUpdate, WNDS, RNDS);

  PRAGMA RESTRICT_REFERENCES (InStrfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginStrfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndStrfeUpdate, WNDS, RNDS);
  
  PRAGMA RESTRICT_REFERENCES (InSfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginSfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndSfeUpdate, WNDS, RNDS);

  PRAGMA RESTRICT_REFERENCES (InBoifeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginBoifeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndBoifeUpdate, WNDS, RNDS);

  PRAGMA RESTRICT_REFERENCES (InBofeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginBofeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndBofeUpdate, WNDS, RNDS);

  PRAGMA RESTRICT_REFERENCES (InMlmsUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginMlmsUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndMlmsUpdate, WNDS, RNDS);

  PRAGMA RESTRICT_REFERENCES (InMllUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginMllUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndMllUpdate, WNDS, RNDS);

  PRAGMA RESTRICT_REFERENCES (InEmfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginEmfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndEmfeUpdate, WNDS, RNDS);

  PRAGMA RESTRICT_REFERENCES (InOmfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginOmfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndOmfeUpdate, WNDS, RNDS);
  
  PRAGMA RESTRICT_REFERENCES (InMmfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginMmfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndMmfeUpdate, WNDS, RNDS);
  
  PRAGMA RESTRICT_REFERENCES (InMlmsofeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginMlmsofeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndMlmsofeUpdate, WNDS, RNDS);

  PRAGMA RESTRICT_REFERENCES (InMllfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginMllfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndMllfeUpdate, WNDS, RNDS);

  PRAGMA RESTRICT_REFERENCES (InMlfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginMlfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndMlfeUpdate, WNDS, RNDS);

  PRAGMA RESTRICT_REFERENCES (InPfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginPfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndPfeUpdate, WNDS, RNDS);

  PRAGMA RESTRICT_REFERENCES (InPsfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginPsfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndPsfeUpdate, WNDS, RNDS);
  
  PRAGMA RESTRICT_REFERENCES (InOefeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginOefeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndOefeUpdate, WNDS, RNDS);
  
  PRAGMA RESTRICT_REFERENCES (InOfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginOfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndOfeUpdate, WNDS, RNDS);

  PRAGMA RESTRICT_REFERENCES (InDpfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginDpfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndDpfeUpdate, WNDS, RNDS);
  
  PRAGMA RESTRICT_REFERENCES (InDfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginDfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndDfeUpdate, WNDS, RNDS);

  PRAGMA RESTRICT_REFERENCES (InTdfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginTdfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndTdfeUpdate, WNDS, RNDS);

  PRAGMA RESTRICT_REFERENCES (InCrfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginCrfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndCrfeUpdate, WNDS, RNDS);

  PRAGMA RESTRICT_REFERENCES (InDifeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginDifeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndDifeUpdate, WNDS, RNDS);
  
  PRAGMA RESTRICT_REFERENCES (InBgfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginBgfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndBgfeUpdate, WNDS, RNDS);

  PRAGMA RESTRICT_REFERENCES (InBcfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginBcfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndBcfeUpdate, WNDS, RNDS);

  PRAGMA RESTRICT_REFERENCES (InCfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginCfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndCfeUpdate, WNDS, RNDS);


  PRAGMA RESTRICT_REFERENCES (InCpfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginCpfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndCpfeUpdate, WNDS, RNDS);

  PRAGMA RESTRICT_REFERENCES (InCmifeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginCmifeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndCmifeUpdate, WNDS, RNDS);

  PRAGMA RESTRICT_REFERENCES (InDcdfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginDcdfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndDcdfeUpdate, WNDS, RNDS);

  PRAGMA RESTRICT_REFERENCES (InDgfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginDgfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndDgfeUpdate, WNDS, RNDS);

  PRAGMA RESTRICT_REFERENCES (InDprfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginDprfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndDprfeUpdate, WNDS, RNDS);

  PRAGMA RESTRICT_REFERENCES (InDptfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginDptfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndDptfeUpdate, WNDS, RNDS);

  PRAGMA RESTRICT_REFERENCES (InDitfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginDitfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndDitfeUpdate, WNDS, RNDS);
  
  PRAGMA RESTRICT_REFERENCES (InEfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginEfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndEfeUpdate, WNDS, RNDS);

  PRAGMA RESTRICT_REFERENCES (InPrfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginPrfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndPrfeUpdate, WNDS, RNDS);
  
  PRAGMA RESTRICT_REFERENCES (InSgfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginSgfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndSgfeUpdate, WNDS, RNDS);
  
  PRAGMA RESTRICT_REFERENCES (InSrgfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginSrgfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndSrgfeUpdate, WNDS, RNDS);
  
  PRAGMA RESTRICT_REFERENCES (InSsfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginSsfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndSsfeUpdate, WNDS, RNDS);

  PRAGMA RESTRICT_REFERENCES (InSmvsfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginSmvsfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndSmvsfeUpdate, WNDS, RNDS);
  
  PRAGMA RESTRICT_REFERENCES (InTfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginTfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndTfeUpdate, WNDS, RNDS);
  
  PRAGMA RESTRICT_REFERENCES (InMlmsfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginMlmsfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndMlmsfeUpdate, WNDS, RNDS);
  
  PRAGMA RESTRICT_REFERENCES (InSmvsofeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginSmvsofeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndSmvsofeUpdate, WNDS, RNDS);

  PRAGMA RESTRICT_REFERENCES (InSpcfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginSpcfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndSpcfeUpdate, WNDS, RNDS);

  PRAGMA RESTRICT_REFERENCES (InSlfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginSlfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndSlfeUpdate, WNDS, RNDS);
  
  PRAGMA RESTRICT_REFERENCES (InSmvfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginSmvfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndSmvfeUpdate, WNDS, RNDS);
  
  PRAGMA RESTRICT_REFERENCES (InSmvlfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginSmvlfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndSmvlfeUpdate, WNDS, RNDS);
  
  PRAGMA RESTRICT_REFERENCES (InEofeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginEofeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndEofeUpdate, WNDS, RNDS);
  
  PRAGMA RESTRICT_REFERENCES (InScbfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginScbfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndScbfeUpdate, WNDS, RNDS);
  
  PRAGMA RESTRICT_REFERENCES (InEmovfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginEmovfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndEmovfeUpdate, WNDS, RNDS);
  
  PRAGMA RESTRICT_REFERENCES (InEamfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginEamfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndEamfeUpdate, WNDS, RNDS);
  
  PRAGMA RESTRICT_REFERENCES (InEdefeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginEdefeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndEdefeUpdate, WNDS, RNDS);
  
  PRAGMA RESTRICT_REFERENCES (InPperfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginPperfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndPperfeUpdate, WNDS, RNDS);
  
  PRAGMA RESTRICT_REFERENCES (InOsafeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginOsafeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndOsafeUpdate, WNDS, RNDS);
  
  PRAGMA RESTRICT_REFERENCES (InPrperfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginPrperfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndPrperfeUpdate, WNDS, RNDS);
  
  PRAGMA RESTRICT_REFERENCES (InProdperfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginProdperfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndProdperfeUpdate, WNDS, RNDS);
  
  PRAGMA RESTRICT_REFERENCES (InPrpfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginPrpfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndPrpfeUpdate, WNDS, RNDS);
  
  PRAGMA RESTRICT_REFERENCES (InPrppfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginPrppfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndPrppfeUpdate, WNDS, RNDS);
  
  PRAGMA RESTRICT_REFERENCES (InOtpfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginOtpfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndOtpfeUpdate, WNDS, RNDS);

  PRAGMA RESTRICT_REFERENCES (InDetpfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginDetpfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndDetpfeUpdate, WNDS, RNDS);

  PRAGMA RESTRICT_REFERENCES (InDetfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginDetfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndDetfeUpdate, WNDS, RNDS);

  PRAGMA RESTRICT_REFERENCES (InDeffeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginDeffeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndDeffeUpdate, WNDS, RNDS);

  PRAGMA RESTRICT_REFERENCES (InEefeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginEefeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndEefeUpdate, WNDS, RNDS);

  PRAGMA RESTRICT_REFERENCES (InEetfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginEetfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndEetfeUpdate, WNDS, RNDS);

  PRAGMA RESTRICT_REFERENCES (InEedfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginEedfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndEedfeUpdate, WNDS, RNDS);

  PRAGMA RESTRICT_REFERENCES (InFcfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginFcfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndFcfeUpdate, WNDS, RNDS);

  PRAGMA RESTRICT_REFERENCES (InFofeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginFofeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndFofeUpdate, WNDS, RNDS);

  PRAGMA RESTRICT_REFERENCES (InSfmfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginSfmfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndSfmfeUpdate, WNDS, RNDS);

  PRAGMA RESTRICT_REFERENCES (InRfmlfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginRfmlfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndRfmlfeUpdate, WNDS, RNDS);

  PRAGMA RESTRICT_REFERENCES (InPkfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginPkfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndPkfeUpdate, WNDS, RNDS);

  PRAGMA RESTRICT_REFERENCES (InPffeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginPffeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndPffeUpdate, WNDS, RNDS);

  PRAGMA RESTRICT_REFERENCES (InPbofeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginPbofeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndPbofeUpdate, WNDS, RNDS);

  PRAGMA RESTRICT_REFERENCES (InPcofeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginPcofeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndPcofeUpdate, WNDS, RNDS);
  
  PRAGMA RESTRICT_REFERENCES (InPafeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginPafeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndPafeUpdate, WNDS, RNDS);  
  
  PRAGMA RESTRICT_REFERENCES (InVpfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginVpfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndVpfeUpdate, WNDS, RNDS);  

  PRAGMA RESTRICT_REFERENCES (InDfpfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginDfpfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndDfpfeUpdate, WNDS, RNDS);  

  PRAGMA RESTRICT_REFERENCES (InCcfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginCcfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndCcfeUpdate, WNDS, RNDS);  

  PRAGMA RESTRICT_REFERENCES (InVcfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginVcfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndVcfeUpdate, WNDS, RNDS);  
  
  PRAGMA RESTRICT_REFERENCES (InNifeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginNifeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndNifeUpdate, WNDS, RNDS);  

  PRAGMA RESTRICT_REFERENCES (InPrppmfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginPrppmfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndPrppmfeUpdate, WNDS, RNDS);

  PRAGMA RESTRICT_REFERENCES (InParrelsfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginParrelsfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndParrelsfeUpdate, WNDS, RNDS);

  PRAGMA RESTRICT_REFERENCES (SetSkipPeriodChecksProductCode, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (SkipPeriodChecksProductCode, WNDS, RNDS);

  PRAGMA RESTRICT_REFERENCES (SetSkipPRPerCheckPartnerCode, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (SkipPRPerCheckPartnerCode, WNDS, RNDS);

  PRAGMA RESTRICT_REFERENCES (InOwdpfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginOwdpfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndOwdpfeUpdate, WNDS, RNDS);

  PRAGMA RESTRICT_REFERENCES (InNfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginNfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndNfeUpdate, WNDS, RNDS);  

  PRAGMA RESTRICT_REFERENCES (InpPfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginPpfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndPpfeUpdate, WNDS, RNDS);  

  PRAGMA RESTRICT_REFERENCES (InD_proffeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginD_proffeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndD_proffeUpdate, WNDS, RNDS);

  PRAGMA RESTRICT_REFERENCES (InEetpfeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginEetpfeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndEetpfeUpdate, WNDS, RNDS);

  PRAGMA RESTRICT_REFERENCES (InBoiofeUpdate, WNDS, WNPS, RNDS);
  PRAGMA RESTRICT_REFERENCES (BeginBoiofeUpdate, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (EndBoiofeUpdate, WNDS, RNDS);

end StateUtils;
/
create or replace package body StateUtils is

  FInSdfeUpdate Number := 0;
  FInPsdfeUpdate Boolean := False;
  FInSdUpdate Boolean := False;
  FInScfeUpdate Boolean := False;
  FInStrfeUpdate Boolean := False;
  FInSfeUpdate Boolean := False;
  FInBoifeUpdate Boolean := False;
  FInBofeUpdate Boolean := False;
  FInMlmsUpdate Boolean := False;
  FInMllUpdate Boolean := False;
  FInEmfeUpdate Boolean := False;
  FInOmfeUpdate Boolean := False;
  FInMmfeUpdate Boolean := False;
  FInMlmsofeUpdate Boolean := False;
  FInMllfeUpdate Boolean := False;
  FInMlfeUpdate Boolean := False;
  FInPfeUpdate Boolean := False;
  FInPsfeUpdate Boolean := False;
  FInOefeUpdate Boolean := False;
  FInOfeUpdate Boolean := False;
  FInDpfeUpdate Boolean := False;
  FInDfeUpdate Boolean := False;
  FInTdfeUpdate Boolean := False;
  FInCrfeUpdate Boolean := False;
  FInDifeUpdate Boolean := False;
  FInBgfeUpdate Boolean := False;
  FInBcfeUpdate Boolean := False;
  FInCfeUpdate Boolean := False;
  FInCpfeUpdate Boolean := False;
  FInCmifeUpdate Boolean := False;
  FInDcdfeUpdate Boolean := False;
  FInDgfeUpdate Boolean := False;
  FInDprfeUpdate Boolean := False;
  FInDptfeUpdate Boolean := False;
  FInDitfeUpdate Boolean := False;
  FInEfeUpdate Boolean := False;
  FInPrfeUpdate Boolean := False;
  FInSgfeUpdate Boolean := False;
  FInSrgfeUpdate Boolean := False;
  FInSsfeUpdate Boolean := False;
  FInSmvsfeUpdate Boolean := False;
  FInTfeUpdate Boolean := False;
  FInMlmsfeUpdate Boolean := False;
  FInSmvsofeUpdate Boolean := False;
  FInSpcfeUpdate Boolean := False;
  FInSlfeUpdate Boolean := False;
  FInSmvfeUpdate Boolean := False;
  FInSmvlfeUpdate Boolean := False;
  FInEofeUpdate Boolean := False;
  FInOsfeUpdate Boolean := False;
  FInScbfeUpdate Boolean := False;
  FInEmovfeUpdate Boolean := False;
  FInEamfeUpdate Boolean := False;
  FInEdefeUpdate Boolean := False;
  FInPperfeUpdate Boolean := False;
  FInOsafeUpdate Boolean := False;
  FInPrperfeUpdate Number := 0;
  FInProdperfeUpdate Number := 0;
  FInPrpfeUpdate Boolean := False;
  FInPrppfeUpdate Boolean := False;
  FInOtpfeUpdate Boolean := False;
  FInDetpfeUpdate Boolean := False;
  FInDetfeUpdate Boolean := False;
  FInDeffeUpdate Boolean := False;
  FInEefeUpdate Boolean := False;
  FInEetfeUpdate Boolean := False;
  FInEedfeUpdate Boolean := False;
  FSkipPeriodChecksProductCode Number := 0;
  FInFcfeUpdate Boolean := False;
  FInFofeUpdate Boolean := False;
  FInSfmfeUpdate Boolean := False;
  FInRfmlfeUpdate Boolean := False;
  FInPkfeUpdate Boolean := False;
  FInPffeUpdate Boolean := False;
  FInPbofeUpdate Boolean := False;
  FInPcofeUpdate Boolean := False;
  FInPafeUpdate Boolean := False;
  FInVpfeUpdate Boolean := False;  
  FInDfpfeUpdate Boolean := False;  
  FInCcfeUpdate Boolean := False;  
  FInVcfeUpdate Boolean := False;  
  FInNifeUpdate Boolean := False;
  FInPrppmfeUpdate Boolean := False;
  FInParrelsfeUpdate Boolean := False;
  FSkipPRPerCheckPartnerCode Number := 0;
  FInOwdpfeUpdate Boolean := False;
  FInNfeUpdate Boolean := False;
  FInPpfeUpdate Boolean := False;
  FInIfeUpdate Boolean := False;
  FInIngfeUpdate Boolean := False;
  FInD_proffeUpdate Boolean := False;
  FInEetpfeUpdate Boolean := False;
  FInBoiofeUpdate Boolean := False;

  
  function InSdfeUpdate return Boolean is
  begin
    return (FInSdfeUpdate > 0);
  end;

  procedure BeginSdfeUpdate is
  begin
    FInSdfeUpdate:= FInSdfeUpdate + 1;
  end;

  procedure EndSdfeUpdate is
  begin
    if (FInSdfeUpdate <= 0) then
      raise_application_error(-20000, 'Internal error: Not in sdfe update');
    end if;

    FInSdfeUpdate:= FInSdfeUpdate - 1;
  end;

  
  function InPsdfeUpdate return Boolean is
  begin
    return FInPsdfeUpdate;
  end;

  procedure BeginPsdfeUpdate is
  begin
    if FInPsdfeUpdate then
      raise_application_error(-20000, 'Internal error: Already in psdfe update');
    end if;
  
    FInPsdfeUpdate:= True;
  end;

  procedure EndPsdfeUpdate is
  begin
    if not FInPsdfeUpdate then
      raise_application_error(-20000, 'Internal error: Not in psdfe update');
    end if;

    FInPsdfeUpdate:= False;
  end;


  function InSdUpdate return Boolean is
  begin
    return FInSdUpdate;
  end;

  procedure BeginSdUpdate is
  begin
    if FInSdUpdate then
      raise_application_error(-20000, 'Internal error: Already in sd update');
    end if;
  
    FInSdUpdate:= True;
  end;

  procedure EndSdUpdate is
  begin
    if not FInSdUpdate then
      raise_application_error(-20000, 'Internal error: Not in sd update');
    end if;

    FInSdUpdate:= False;
  end;


  function InScfeUpdate return Boolean is
  begin
    return FInScfeUpdate;
  end;
  
  procedure BeginScfeUpdate is
  begin
    if (FInScfeUpdate) then
      raise_application_error(-20000, 'Internal error: Already in scfe update');
    end if;
    
    FInScfeUpdate:= True;
  end;
  
  procedure EndScfeUpdate is
  begin
    if (not FInScfeUpdate) then
      raise_application_error(-20000, 'Internal error: Not in scfe update');
    end if;
    
    FInScfeUpdate:= False;
  end;

  
  function InStrfeUpdate return Boolean is
  begin
    return FInStrfeUpdate;
  end;
  
  procedure BeginStrfeUpdate is
  begin
    if (FInStrfeUpdate) then
      raise_application_error(-20000, 'Internal error: Already in strfe update');
    end if;
    
    FInStrfeUpdate:= True;
  end;
  
  procedure EndStrfeUpdate is
  begin
    if (not FInStrfeUpdate) then
      raise_application_error(-20000, 'Internal error: Not in strfe update');
    end if;
    
    FInStrfeUpdate:= False;
  end;

  
  function InSfeUpdate return Boolean is
  begin
    return FInSfeUpdate;
  end;

  procedure BeginSfeUpdate is
  begin
    if FInSfeUpdate then
      raise_application_error(-20000, 'Internal error: Already in sfe update');
    end if;
  
    FInSfeUpdate:= True;
  end;

  procedure EndSfeUpdate is
  begin
    if not FInSfeUpdate then
      raise_application_error(-20000, 'Internal error: Not in sfe update');
    end if;

    FInSfeUpdate:= False;
  end;


  function InBoifeUpdate return Boolean is
  begin
    return FInBoifeUpdate;
  end;

  procedure BeginBoifeUpdate is
  begin
    if FInBoifeUpdate then
      raise_application_error(-20000, 'Internal error: Already in boife update');
    end if;
  
    FInBoifeUpdate:= True;
  end;

  procedure EndBoifeUpdate is
  begin
    if not FInBoifeUpdate then
      raise_application_error(-20000, 'Internal error: Not in boife update');
    end if;

    FInBoifeUpdate:= False;
  end;

  
  function InBofeUpdate return Boolean is
  begin
    return FInBofeUpdate;
  end;

  procedure BeginBofeUpdate is
  begin
    if FInBofeUpdate then
      raise_application_error(-20000, 'Internal error: Already in bofe update');
    end if;
  
    FInBofeUpdate:= True;
  end;

  procedure EndBofeUpdate is
  begin
    if not FInBofeUpdate then
      raise_application_error(-20000, 'Internal error: Not in bofe update');
    end if;

    FInBofeUpdate:= False;
  end;

  
  function InMlmsUpdate return Boolean is
  begin
    return FInMlmsUpdate;
  end;

  procedure BeginMlmsUpdate is
  begin
    if FInMlmsUpdate then
      raise_application_error(-20000, 'Internal error: Already in mlms update');
    end if;
  
    FInMlmsUpdate:= True;
  end;

  procedure EndMlmsUpdate is
  begin
    if not FInMlmsUpdate then
      raise_application_error(-20000, 'Internal error: Not in mlms update');
    end if;

    FInMlmsUpdate:= False;
  end;


  function InMllUpdate return Boolean is
  begin
    return FInMllUpdate;
  end;

  procedure BeginMllUpdate is
  begin
    if FInMllUpdate then
      raise_application_error(-20000, 'Internal error: Already in mll update');
    end if;
  
    FInMllUpdate:= True;
  end;

  procedure EndMllUpdate is
  begin
    if not FInMllUpdate then
      raise_application_error(-20000, 'Internal error: Not in mll update');
    end if;

    FInMllUpdate:= False;
  end;

  
  function InEmfeUpdate return Boolean is
  begin
    return FInEmfeUpdate;
  end;

  procedure BeginEmfeUpdate is
  begin
    if FInEmfeUpdate then
      raise_application_error(-20000, 'Internal error: Already in emfe update');
    end if;
  
    FInEmfeUpdate:= True;
  end;

  procedure EndEmfeUpdate is
  begin
    if not FInEmfeUpdate then
      raise_application_error(-20000, 'Internal error: Not in emfe update');
    end if;

    FInEmfeUpdate:= False;
  end;

  
  function InOmfeUpdate return Boolean is
  begin
    return FInOmfeUpdate;
  end;

  procedure BeginOmfeUpdate is
  begin
    if FInOmfeUpdate then
      raise_application_error(-20000, 'Internal error: Already in omfe update');
    end if;
  
    FInOmfeUpdate:= True;
  end;

  procedure EndOmfeUpdate is
  begin
    if not FInOmfeUpdate then
      raise_application_error(-20000, 'Internal error: Not in omfe update');
    end if;

    FInOmfeUpdate:= False;
  end;

  
  function InMmfeUpdate return Boolean is
  begin
    return FInMmfeUpdate;
  end;

  procedure BeginMmfeUpdate is
  begin
    if FInMmfeUpdate then
      raise_application_error(-20000, 'Internal error: Already in mmfe update');
    end if;
  
    FInMmfeUpdate:= True;
  end;

  procedure EndMmfeUpdate is
  begin
    if not FInMmfeUpdate then
      raise_application_error(-20000, 'Internal error: Not in mmfe update');
    end if;

    FInMmfeUpdate:= False;
  end;


  function InMlmsofeUpdate return Boolean is
  begin
    return FInMlmsofeUpdate;
  end;

  procedure BeginMlmsofeUpdate is
  begin
    if FInMlmsofeUpdate then
      raise_application_error(-20000, 'Internal error: Already in mlmsofe update');
    end if;
  
    FInMlmsofeUpdate:= True;
  end;

  procedure EndMlmsofeUpdate is
  begin
    if not FInMlmsofeUpdate then
      raise_application_error(-20000, 'Internal error: Not in mlmsofe update');
    end if;

    FInMlmsofeUpdate:= False;
  end;
  
  
  function InMllfeUpdate return Boolean is
  begin
    return FInMllfeUpdate;
  end;

  procedure BeginMllfeUpdate is
  begin
    if FInMllfeUpdate then
      raise_application_error(-20000, 'Internal error: Already in mllfe update');
    end if;
  
    FInMllfeUpdate:= True;
  end;

  procedure EndMllfeUpdate is
  begin
    if not FInMllfeUpdate then
      raise_application_error(-20000, 'Internal error: Not in mllfe update');
    end if;

    FInMllfeUpdate:= False;
  end;

  
  function InMlfeUpdate return Boolean is
  begin
    return FInMlfeUpdate;
  end;

  procedure BeginMlfeUpdate is
  begin
    if FInMlfeUpdate then
      raise_application_error(-20000, 'Internal error: Already in mlfe update');
    end if;
  
    FInMlfeUpdate:= True;
  end;

  procedure EndMlfeUpdate is
  begin
    if not FInMlfeUpdate then
      raise_application_error(-20000, 'Internal error: Not in mlfe update');
    end if;

    FInMlfeUpdate:= False;
  end;

  
  function InPfeUpdate return Boolean is
  begin
    return FInPfeUpdate;
  end;

  procedure BeginPfeUpdate is
  begin
    if FInPfeUpdate then
      raise_application_error(-20000, 'Internal error: Already in Pfe update');
    end if;
  
    FInPfeUpdate:= True;
  end;

  procedure EndPfeUpdate is
  begin
    if not FInPfeUpdate then
      raise_application_error(-20000, 'Internal error: Not in Pfe update');
    end if;

    FInPfeUpdate:= False;
  end;


  function InPsfeUpdate return Boolean is
  begin
    return FInPsfeUpdate;
  end;

  procedure BeginPsfeUpdate is
  begin
    if FInPsfeUpdate then
      raise_application_error(-20000, 'Internal error: Already in Psfe update');
    end if;
  
    FInPsfeUpdate:= True;
  end;

  procedure EndPsfeUpdate is
  begin
    if not FInPsfeUpdate then
      raise_application_error(-20000, 'Internal error: Not in Psfe update');
    end if;

    FInPsfeUpdate:= False;
  end;

  
  function InOefeUpdate return Boolean is
  begin
    return FInOefeUpdate;
  end;

  procedure BeginOefeUpdate is
  begin
    if FInOefeUpdate then
      raise_application_error(-20000, 'Internal error: Already in Oefe update');
    end if;
  
    FInOefeUpdate:= True;
  end;

  procedure EndOefeUpdate is
  begin
    if not FInOefeUpdate then
      raise_application_error(-20000, 'Internal error: Not in Oefe update');
    end if;

    FInOefeUpdate:= False;
  end;

  function InOfeUpdate return Boolean is
  begin
    return FInOfeUpdate;
  end;

  procedure BeginOfeUpdate is
  begin
    if FInOfeUpdate then
      raise_application_error(-20000, 'Internal error: Already in Ofe update');
    end if;
  
    FInOfeUpdate:= True;
  end;

  procedure EndOfeUpdate is
  begin
    if not FInOfeUpdate then
      raise_application_error(-20000, 'Internal error: Not in Ofe update');
    end if;

    FInOfeUpdate:= False;
  end;

  
  function InDpfeUpdate return Boolean is
  begin
    return FInDpfeUpdate;
  end;

  procedure BeginDpfeUpdate is
  begin
    if FInDpfeUpdate then
      raise_application_error(-20000, 'Internal error: Already in dpfe update');
    end if;
  
    FInDpfeUpdate:= True;
  end;

  procedure EndDpfeUpdate is
  begin
    if not FInDpfeUpdate then
      raise_application_error(-20000, 'Internal error: Not in dpfe update');
    end if;

    FInDpfeUpdate:= False;
  end;

  
  function InDfeUpdate return Boolean is
  begin
    return FInDfeUpdate;
  end;

  procedure BeginDfeUpdate is
  begin
    if FInDfeUpdate then
      raise_application_error(-20000, 'Internal error: Already in dfe update');
    end if;
  
    FInDfeUpdate:= True;
  end;

  procedure EndDfeUpdate is
  begin
    if not FInDfeUpdate then
      raise_application_error(-20000, 'Internal error: Not in dfe update');
    end if;

    FInDfeUpdate:= False;
  end;
  
  
  function InTdfeUpdate return Boolean is
  begin
    return FInTdfeUpdate;
  end;

  procedure BeginTdfeUpdate is
  begin
    if FInTdfeUpdate then
      raise_application_error(-20000, 'Internal error: Already in tdfe update');
    end if;
  
    FInTdfeUpdate:= True;
  end;

  procedure EndTdfeUpdate is
  begin
    if not FInTdfeUpdate then
      raise_application_error(-20000, 'Internal error: Not in tdfe update');
    end if;

    FInTdfeUpdate:= False;
  end;

  
  function InCrfeUpdate return Boolean is
  begin
    return FInCrfeUpdate;
  end;

  procedure BeginCrfeUpdate is
  begin
    if FInCrfeUpdate then
      raise_application_error(-20000, 'Internal error: Already in crfe update');
    end if;
  
    FInCrfeUpdate:= True;
  end;

  procedure EndCrfeUpdate is
  begin
    if not FInCrfeUpdate then
      raise_application_error(-20000, 'Internal error: Not in crfe update');
    end if;

    FInCrfeUpdate:= False;
  end;

  
  function InDifeUpdate return Boolean is
  begin
    return FInDifeUpdate;
  end;

  procedure BeginDifeUpdate is
  begin
    if FInDifeUpdate then
      raise_application_error(-20000, 'Internal error: Already in Dife update');
    end if;

    FInDifeUpdate:= True;
  end;

  procedure EndDifeUpdate is
  begin
    if not FInDifeUpdate then
      raise_application_error(-20000, 'Internal error: Not in Dife update');
    end if;

    FInDifeUpdate:= False;
  end;

  function InBgfeUpdate return Boolean is
  begin
    return FInBgfeUpdate;
  end;

  procedure BeginBgfeUpdate is
  begin
    if FInBgfeUpdate then
      raise_application_error(-20000, 'Internal error: Already in Bgfe update');
    end if;

    FInBgfeUpdate:= True;
  end;

  procedure EndBgfeUpdate is
  begin
    if not FInBgfeUpdate then
      raise_application_error(-20000, 'Internal error: Not in Bgfe update');
    end if;

    FInBgfeUpdate:= False;
  end;

  
  function InBcfeUpdate return Boolean is
  begin
    return FInBcfeUpdate;
  end;

  procedure BeginBcfeUpdate is
  begin
    if FInBcfeUpdate then
      raise_application_error(-20000, 'Internal error: Already in Bcfe update');
    end if;

    FInBcfeUpdate:= True;
  end;

  procedure EndBcfeUpdate is
  begin
    if not FInBcfeUpdate then
      raise_application_error(-20000, 'Internal error: Not in Bcfe update');
    end if;

    FInBcfeUpdate:= False;
  end;
  
  
  function InCfeUpdate return Boolean is
  begin
    return FInCfeUpdate;
  end;

  procedure BeginCfeUpdate is
  begin
    if FInCfeUpdate then
      raise_application_error(-20000, 'Internal error: Already in CfeUpdate');
    end if;

    FInCfeUpdate:= True;
  end;

  procedure EndCfeUpdate is
  begin
    if not FInCfeUpdate then
      raise_application_error(-20000, 'Internal error: Not in CfeUpdate');
    end if;

    FInCfeUpdate:= False;
  end;


  function InCpfeUpdate return Boolean is
  begin
    return FInCpfeUpdate;
  end;

  procedure BeginCpfeUpdate is
  begin
    if FInCpfeUpdate then
      raise_application_error(-20000, 'Internal error: Already in CpfeUpdate');
    end if;

    FInCpfeUpdate:= True;
  end;

  procedure EndCpfeUpdate is
  begin
    if not FInCpfeUpdate then
      raise_application_error(-20000, 'Internal error: Not in CpfeUpdate');
    end if;

    FInCpfeUpdate:= False;
  end;


  function InCmifeUpdate return Boolean is
  begin
    return FInCmifeUpdate;
  end;

  procedure BeginCmifeUpdate is
  begin
    if FInCmifeUpdate then
      raise_application_error(-20000, 'Internal error: Already in CmifeUpdate');
    end if;

    FInCmifeUpdate:= True;
  end;

  procedure EndCmifeUpdate is
  begin
    if not FInCmifeUpdate then
      raise_application_error(-20000, 'Internal error: Not in CmifeUpdate');
    end if;

    FInCmifeUpdate:= False;
  end;


  function InDcdfeUpdate return Boolean is
  begin
    return FInDcdfeUpdate;
  end;

  procedure BeginDcdfeUpdate is
  begin
    if FInDcdfeUpdate then
      raise_application_error(-20000, 'Internal error: Already in DcdfeUpdate');
    end if;

    FInDcdfeUpdate:= True;
  end;

  procedure EndDcdfeUpdate is
  begin
    if not FInDcdfeUpdate then
      raise_application_error(-20000, 'Internal error: Not in DcdfeUpdate');
    end if;

    FInDcdfeUpdate:= False;
  end;


  function InDgfeUpdate return Boolean is
  begin
    return FInDgfeUpdate;
  end;

  procedure BeginDgfeUpdate is
  begin
    if FInDgfeUpdate then
      raise_application_error(-20000, 'Internal error: Already in DgfeUpdate');
    end if;

    FInDgfeUpdate:= True;
  end;

  procedure EndDgfeUpdate is
  begin
    if not FInDgfeUpdate then
      raise_application_error(-20000, 'Internal error: Not in DgfeUpdate');
    end if;

    FInDgfeUpdate:= False;
  end;


  function InDprfeUpdate return Boolean is
  begin
    return FInDprfeUpdate;
  end;

  procedure BeginDprfeUpdate is
  begin
    if FInDprfeUpdate then
      raise_application_error(-20000, 'Internal error: Already in DprfeUpdate');
    end if;

    FInDprfeUpdate:= True;
  end;

  procedure EndDprfeUpdate is
  begin
    if not FInDprfeUpdate then
      raise_application_error(-20000, 'Internal error: Not in DprfeUpdate');
    end if;

    FInDprfeUpdate:= False;
  end;


  function InDptfeUpdate return Boolean is
  begin
    return FInDptfeUpdate;
  end;

  procedure BeginDptfeUpdate is
  begin
    if FInDptfeUpdate then
      raise_application_error(-20000, 'Internal error: Already in DptfeUpdate');
    end if;

    FInDptfeUpdate:= True;
  end;

  procedure EndDptfeUpdate is
  begin
    if not FInDptfeUpdate then
      raise_application_error(-20000, 'Internal error: Not in DptfeUpdate');
    end if;

    FInDptfeUpdate:= False;
  end;


  function InDitfeUpdate return Boolean is
  begin
    return FInDitfeUpdate;
  end;

  procedure BeginDitfeUpdate is
  begin
    if FInDitfeUpdate then
      raise_application_error(-20000, 'Internal error: Already in DitfeUpdate');
    end if;

    FInDitfeUpdate:= True;
  end;

  procedure EndDitfeUpdate is
  begin
    if not FInDitfeUpdate then
      raise_application_error(-20000, 'Internal error: Not in DitfeUpdate');
    end if;

    FInDitfeUpdate:= False;
  end;
  
  
  function InEfeUpdate return Boolean is
  begin
    return FInEfeUpdate;
  end;

  procedure BeginEfeUpdate is
  begin
    if FInEfeUpdate then
      raise_application_error(-20000, 'Internal error: Already in EfeUpdate');
    end if;

    FInEfeUpdate:= True;
  end;

  procedure EndEfeUpdate is
  begin
    if not FInEfeUpdate then
      raise_application_error(-20000, 'Internal error: Not in EfeUpdate');
    end if;

    FInEfeUpdate:= False;
  end;

  
  function InPrfeUpdate return Boolean is
  begin
    return FInPrfeUpdate;
  end;

  procedure BeginPrfeUpdate is
  begin
    if FInPrfeUpdate then
      raise_application_error(-20000, 'Internal error: Already in PrfeUpdate');
    end if;

    FInPrfeUpdate:= True;
  end;

  procedure EndPrfeUpdate is
  begin
    if not FInPrfeUpdate then
      raise_application_error(-20000, 'Internal error: Not in PrfeUpdate');
    end if;

    FInPrfeUpdate:= False;
  end;
  
  
  function InSgfeUpdate return Boolean is
  begin
    return FInSgfeUpdate;
  end;

  procedure BeginSgfeUpdate is
  begin
    if FInSgfeUpdate then
      raise_application_error(-20000, 'Internal error: Already in SgfeUpdate');
    end if;

    FInSgfeUpdate:= True;
  end;

  procedure EndSgfeUpdate is
  begin
    if not FInSgfeUpdate then
      raise_application_error(-20000, 'Internal error: Not in SgfeUpdate');
    end if;

    FInSgfeUpdate:= False;
  end;
  

  function InSrgfeUpdate return Boolean is
  begin
    return FInSrgfeUpdate;
  end;

  procedure BeginSrgfeUpdate is
  begin
    if FInSrgfeUpdate then
      raise_application_error(-20000, 'Internal error: Already in SrgfeUpdate');
    end if;

    FInSrgfeUpdate:= True;
  end;

  procedure EndSrgfeUpdate is
  begin
    if not FInSrgfeUpdate then
      raise_application_error(-20000, 'Internal error: Not in SrgfeUpdate');
    end if;

    FInSrgfeUpdate:= False;
  end;
  
  
  function InSsfeUpdate return Boolean is
  begin
    return FInSsfeUpdate;
  end;

  procedure BeginSsfeUpdate is
  begin
    if FInSsfeUpdate then
      raise_application_error(-20000, 'Internal error: Already in SsfeUpdate');
    end if;

    FInSsfeUpdate:= True;
  end;

  procedure EndSsfeUpdate is
  begin
    if not FInSsfeUpdate then
      raise_application_error(-20000, 'Internal error: Not in SsfeUpdate');
    end if;

    FInSsfeUpdate:= False;
  end;
  
  
  function InSmvsfeUpdate return Boolean is
  begin
    return FInSmvsfeUpdate;
  end;

  procedure BeginSmvsfeUpdate is
  begin
    if FInSmvsfeUpdate then
      raise_application_error(-20000, 'Internal error: Already in SmvsfeUpdate');
    end if;

    FInSmvsfeUpdate:= True;
  end;

  procedure EndSmvsfeUpdate is
  begin
    if not FInSmvsfeUpdate then
      raise_application_error(-20000, 'Internal error: Not in SmvsfeUpdate');
    end if;

    FInSmvsfeUpdate:= False;
  end;
  
  
  function InTfeUpdate return Boolean is
  begin
    return FInTfeUpdate;
  end;

  procedure BeginTfeUpdate is
  begin
    if FInTfeUpdate then
      raise_application_error(-20000, 'Internal error: Already in TfeUpdate');
    end if;

    FInTfeUpdate:= True;
  end;

  procedure EndTfeUpdate is
  begin
    if not FInTfeUpdate then
      raise_application_error(-20000, 'Internal error: Not in TfeUpdate');
    end if;

    FInTfeUpdate:= False;
  end;

  
  function InMlmsfeUpdate return Boolean is
  begin
    return FInMlmsfeUpdate;
  end;

  procedure BeginMlmsfeUpdate is
  begin
    if FInMlmsfeUpdate then
      raise_application_error(-20000, 'Internal error: Already in MlmsfeUpdate');
    end if;

    FInMlmsfeUpdate:= True;
  end;

  procedure EndMlmsfeUpdate is
  begin
    if not FInMlmsfeUpdate then
      raise_application_error(-20000, 'Internal error: Not in MlmsfeUpdate');
    end if;

    FInMlmsfeUpdate:= False;
  end;
  
  
  function InSmvsofeUpdate return Boolean is
  begin
    return FInSmvsofeUpdate;
  end;

  procedure BeginSmvsofeUpdate is
  begin
    if FInSmvsofeUpdate then
      raise_application_error(-20000, 'Internal error: Already in SmvsofeUpdate');
    end if;

    FInSmvsofeUpdate:= True;
  end;

  procedure EndSmvsofeUpdate is
  begin
    if not FInSmvsofeUpdate then
      raise_application_error(-20000, 'Internal error: Not in SmvsofeUpdate');
    end if;

    FInSmvsofeUpdate:= False;
  end;

  
  function InSpcfeUpdate return Boolean is
  begin
    return FInSpcfeUpdate;
  end;

  procedure BeginSpcfeUpdate is
  begin
    if FInSpcfeUpdate then
      raise_application_error(-20000, 'Internal error: Already in SpcfeUpdate');
    end if;

    FInSpcfeUpdate:= True;
  end;

  procedure EndSpcfeUpdate is
  begin
    if not FInSpcfeUpdate then
      raise_application_error(-20000, 'Internal error: Not in SpcfeUpdate');
    end if;

    FInSpcfeUpdate:= False;
  end;
  
  
  function InSlfeUpdate return Boolean is
  begin
    return FInSlfeUpdate;
  end;

  procedure BeginSlfeUpdate is
  begin
    if FInSlfeUpdate then
      raise_application_error(-20000, 'Internal error: Already in SlfeUpdate');
    end if;

    FInSlfeUpdate:= True;
  end;

  procedure EndSlfeUpdate is
  begin
    if not FInSlfeUpdate then
      raise_application_error(-20000, 'Internal error: Not in SlfeUpdate');
    end if;

    FInSlfeUpdate:= False;
  end;

  
  function InSmvfeUpdate return Boolean is
  begin
    return FInSmvfeUpdate;
  end;

  procedure BeginSmvfeUpdate is
  begin
    if FInSmvfeUpdate then
      raise_application_error(-20000, 'Internal error: Already in SmvfeUpdate');
    end if;

    FInSmvfeUpdate:= True;
  end;

  procedure EndSmvfeUpdate is
  begin
    if not FInSmvfeUpdate then
      raise_application_error(-20000, 'Internal error: Not in SmvfeUpdate');
    end if;

    FInSmvfeUpdate:= False;
  end;

  
  function InSmvlfeUpdate return Boolean is
  begin
    return FInSmvlfeUpdate;
  end;

  procedure BeginSmvlfeUpdate is
  begin
    if FInSmvlfeUpdate then
      raise_application_error(-20000, 'Internal error: Already in SmvlfeUpdate');
    end if;

    FInSmvlfeUpdate:= True;
  end;

  procedure EndSmvlfeUpdate is
  begin
    if not FInSmvlfeUpdate then
      raise_application_error(-20000, 'Internal error: Not in SmvlfeUpdate');
    end if;

    FInSmvlfeUpdate:= False;
  end;
  
  function InEofeUpdate return Boolean is
  begin
    return FInEofeUpdate;
  end;

  procedure BeginEofeUpdate is
  begin
    if FInEofeUpdate then
      raise_application_error(-20000, 'Internal error: Already in EofeUpdate');
    end if;

    FInEofeUpdate:= True;
  end;

  procedure EndEofeUpdate is
  begin
    if not FInEofeUpdate then
      raise_application_error(-20000, 'Internal error: Not in EofeUpdate');
    end if;

    FInEofeUpdate:= False;
  end;
  
  function InOsfeUpdate return Boolean is
  begin
    return FInOsfeUpdate;
  end;

  procedure BeginOsfeUpdate is
  begin
    if FInOsfeUpdate then
      raise_application_error(-20000, 'Internal error: Already in OsfeUpdate');
    end if;

    FInOsfeUpdate:= True;
  end;

  procedure EndOsfeUpdate is
  begin
    if not FInOsfeUpdate then
      raise_application_error(-20000, 'Internal error: Not in OsfeUpdate');
    end if;

    FInOsfeUpdate:= False;
  end;
  
  function InScbfeUpdate return Boolean is
  begin
    return FInScbfeUpdate;
  end;

  procedure BeginScbfeUpdate is
  begin
    if FInScbfeUpdate then
      raise_application_error(-20000, 'Internal error: Already in ScbfeUpdate');
    end if;

    FInScbfeUpdate:= True;
  end;

  procedure EndScbfeUpdate is
  begin
    if not FInScbfeUpdate then
      raise_application_error(-20000, 'Internal error: Not in ScbfeUpdate');
    end if;

    FInScbfeUpdate:= False;
  end;
  
  function InEmovfeUpdate return Boolean is
  begin
    return FInEmovfeUpdate;
  end;

  procedure BeginEmovfeUpdate is
  begin
    if FInEmovfeUpdate then
      raise_application_error(-20000, 'Internal error: Already in EmovfeUpdate');
    end if;

    FInEmovfeUpdate:= True;
  end;

  procedure EndEmovfeUpdate is
  begin
    if not FInEmovfeUpdate then
      raise_application_error(-20000, 'Internal error: Not in EmovfeUpdate');
    end if;

    FInEmovfeUpdate:= False;
  end;
  
  function InEamfeUpdate return Boolean is
  begin
    return FInEamfeUpdate;
  end;

  procedure BeginEamfeUpdate is
  begin
    if FInEamfeUpdate then
      raise_application_error(-20000, 'Internal error: Already in EamfeUpdate');
    end if;

    FInEamfeUpdate:= True;
  end;

  procedure EndEamfeUpdate is
  begin
    if not FInEamfeUpdate then
      raise_application_error(-20000, 'Internal error: Not in EamfeUpdate');
    end if;

    FInEamfeUpdate:= False;
  end;
  
  function InEdefeUpdate return Boolean is
  begin
    return FInEdefeUpdate;
  end;

  procedure BeginEdefeUpdate is
  begin
    if FInEdefeUpdate then
      raise_application_error(-20000, 'Internal error: Already in EdefeUpdate');
    end if;

    FInEdefeUpdate:= True;
  end;

  procedure EndEdefeUpdate is
  begin
    if not FInEdefeUpdate then
      raise_application_error(-20000, 'Internal error: Not in EdefeUpdate');
    end if;

    FInEdefeUpdate:= False;
  end;
  
  function InPperfeUpdate return Boolean is
  begin
    return FInPperfeUpdate;
  end;

  procedure BeginPperfeUpdate is
  begin
    if FInPperfeUpdate then
      raise_application_error(-20000, 'Internal error: Already in PperfeUpdate');
    end if;

    FInPperfeUpdate:= True;
  end;

  procedure EndPperfeUpdate is
  begin
    if not FInPperfeUpdate then
      raise_application_error(-20000, 'Internal error: Not in PperfeUpdate');
    end if;

    FInPperfeUpdate:= False;
  end;
  
  function InOsafeUpdate return Boolean is
  begin
    return FInOsafeUpdate;
  end;

  procedure BeginOsafeUpdate is
  begin
    if FInOsafeUpdate then
      raise_application_error(-20000, 'Internal error: Already in OsafeUpdate');
    end if;

    FInOsafeUpdate:= True;
  end;

  procedure EndOsafeUpdate is
  begin
    if not FInOsafeUpdate then
      raise_application_error(-20000, 'Internal error: Not in OsafeUpdate');
    end if;

    FInOsafeUpdate:= False;
  end;
  
  function InPrperfeUpdate return Boolean is
  begin
    return (FInPrperfeUpdate > 0);
  end;

  procedure BeginPrperfeUpdate is
  begin
    FInPrperfeUpdate:= FInPrperfeUpdate + 1;
  end;

  procedure EndPrperfeUpdate is
  begin
    if (FInPrperfeUpdate <= 0) then
      raise_application_error(-20000, 'Internal error: Not in PrperfeUpdate');
    end if;

    FInPrperfeUpdate:= FInPrperfeUpdate - 1;
  end;
  
  function InProdperfeUpdate return Boolean is
  begin
    return (FInProdperfeUpdate > 0);
  end;

  procedure BeginProdperfeUpdate is
  begin
    FInProdperfeUpdate:= FInProdperfeUpdate + 1;
  end;

  procedure EndProdperfeUpdate is
  begin
    if (FInProdperfeUpdate <= 0) then
      raise_application_error(-20000, 'Internal error: Not in ProdperfeUpdate');
    end if;

    FInProdperfeUpdate:= FInProdperfeUpdate - 1;
  end;
  
  function InPrpfeUpdate return Boolean is
  begin
    return FInPrpfeUpdate;
  end;

  procedure BeginPrpfeUpdate is
  begin
    if FInPrpfeUpdate then
      raise_application_error(-20000, 'Internal error: Already in PrpfeUpdate');
    end if;

    FInPrpfeUpdate:= True;
  end;

  procedure EndPrpfeUpdate is
  begin
    if not FInPrpfeUpdate then
      raise_application_error(-20000, 'Internal error: Not in PrpfeUpdate');
    end if;

    FInPrpfeUpdate:= False;
  end;
  
  function InPrppfeUpdate return Boolean is
  begin
    return FInPrppfeUpdate;
  end;

  procedure BeginPrppfeUpdate is
  begin
    if FInPrppfeUpdate then
      raise_application_error(-20000, 'Internal error: Already in PrppfeUpdate');
    end if;

    FInPrppfeUpdate:= True;
  end;

  procedure EndPrppfeUpdate is
  begin
    if not FInPrppfeUpdate then
      raise_application_error(-20000, 'Internal error: Not in PrppfeUpdate');
    end if;

    FInPrppfeUpdate:= False;
  end;


  function InOtpfeUpdate return Boolean is
  begin
    return FInOtpfeUpdate;
  end;

  procedure BeginOtpfeUpdate is
  begin
    if FInOtpfeUpdate then
      raise_application_error(-20000, 'Internal error: Already in OtpfeUpdate');
    end if;

    FInOtpfeUpdate:= True;
  end;

  procedure EndOtpfeUpdate is
  begin
    if not FInOtpfeUpdate then
      raise_application_error(-20000, 'Internal error: Not in OtpfeUpdate');
    end if;

    FInOtpfeUpdate:= False;
  end;


  function InDetpfeUpdate return Boolean is
  begin
    return FInDetpfeUpdate;
  end;

  procedure BeginDetpfeUpdate is
  begin
    if FInDetpfeUpdate then
      raise_application_error(-20000, 'Internal error: Already in DetpfeUpdate');
    end if;

    FInDetpfeUpdate:= True;
  end;

  procedure EndDetpfeUpdate is
  begin
    if not FInDetpfeUpdate then
      raise_application_error(-20000, 'Internal error: Not in DetpfeUpdate');
    end if;

    FInDetpfeUpdate:= False;
  end;


  function InDetfeUpdate return Boolean is
  begin
    return FInDetfeUpdate;
  end;

  procedure BeginDetfeUpdate is
  begin
    if FInDetfeUpdate then
      raise_application_error(-20000, 'Internal error: Already in DetfeUpdate');
    end if;

    FInDetfeUpdate:= True;
  end;

  procedure EndDetfeUpdate is
  begin
    if not FInDetfeUpdate then
      raise_application_error(-20000, 'Internal error: Not in DetfeUpdate');
    end if;

    FInDetfeUpdate:= False;
  end;


  function InDeffeUpdate return Boolean is
  begin
    return FInDeffeUpdate;
  end;

  procedure BeginDeffeUpdate is
  begin
    if FInDeffeUpdate then
      raise_application_error(-20000, 'Internal error: Already in DeffeUpdate');
    end if;

    FInDeffeUpdate:= True;
  end;

  procedure EndDeffeUpdate is
  begin
    if not FInDeffeUpdate then
      raise_application_error(-20000, 'Internal error: Not in DeffeUpdate');
    end if;

    FInDeffeUpdate:= False;
  end;


  function InEefeUpdate return Boolean is
  begin
    return FInEefeUpdate;
  end;

  procedure BeginEefeUpdate is
  begin
    if FInEefeUpdate then
      raise_application_error(-20000, 'Internal error: Already in EefeUpdate');
    end if;

    FInEefeUpdate:= True;
  end;

  procedure EndEefeUpdate is
  begin
    if not FInEefeUpdate then
      raise_application_error(-20000, 'Internal error: Not in EefeUpdate');
    end if;

    FInEefeUpdate:= False;
  end;


  function InEetfeUpdate return Boolean is
  begin
    return FInEetfeUpdate;
  end;

  procedure BeginEetfeUpdate is
  begin
    if FInEetfeUpdate then
      raise_application_error(-20000, 'Internal error: Already in EetfeUpdate');
    end if;

    FInEetfeUpdate:= True;
  end;

  procedure EndEetfeUpdate is
  begin
    if not FInEetfeUpdate then
      raise_application_error(-20000, 'Internal error: Not in EetfeUpdate');
    end if;

    FInEetfeUpdate:= False;
  end;


  function InEedfeUpdate return Boolean is
  begin
    return FInEedfeUpdate;
  end;

  procedure BeginEedfeUpdate is
  begin
    if FInEedfeUpdate then
      raise_application_error(-20000, 'Internal error: Already in EedfeUpdate');
    end if;

    FInEedfeUpdate:= True;
  end;

  procedure EndEedfeUpdate is
  begin
    if not FInEedfeUpdate then
      raise_application_error(-20000, 'Internal error: Not in EedfeUpdate');
    end if;

    FInEedfeUpdate:= False;
  end;


  procedure SetSkipPeriodChecksProductCode(ProductCode in Number) is
  begin
    if (ProductCode <> 0) and (FSkipPeriodChecksProductCode <> 0) then
      raise_application_error(-20000, 'Internal error: SkipPeriodChecksProductCode not cleared');
    end if;
    
    FSkipPeriodChecksProductCode:= ProductCode;
  end;
  
  function SkipPeriodChecksProductCode return Number is
  begin
    return FSkipPeriodChecksProductCode;
  end;

  function InFcfeUpdate return Boolean is
  begin
    return FInFcfeUpdate;
  end;

  procedure BeginFcfeUpdate is
  begin
    if FInFcfeUpdate then
      raise_application_error(-20000, 'Internal error: Already in FcfeUpdate');
    end if;

    FInFcfeUpdate:= True;
  end;

  procedure EndFcfeUpdate is
  begin
    if not FInFcfeUpdate then
      raise_application_error(-20000, 'Internal error: Not in FcfeUpdate');
    end if;

    FInFcfeUpdate:= False;
  end;


  function InFofeUpdate return Boolean is
  begin
    return FInFofeUpdate;
  end;

  procedure BeginFofeUpdate is
  begin
    if FInFofeUpdate then
      raise_application_error(-20000, 'Internal error: Already in FofeUpdate');
    end if;

    FInFofeUpdate:= True;
  end;

  procedure EndFofeUpdate is
  begin
    if not FInFofeUpdate then
      raise_application_error(-20000, 'Internal error: Not in FofeUpdate');
    end if;

    FInFofeUpdate:= False;
  end;


  function InSfmfeUpdate return Boolean is
  begin
    return FInSfmfeUpdate;
  end;

  procedure BeginSfmfeUpdate is
  begin
    if FInSfmfeUpdate then
      raise_application_error(-20000, 'Internal error: Already in SfmfeUpdate');
    end if;

    FInSfmfeUpdate:= True;
  end;

  procedure EndSfmfeUpdate is
  begin
    if not FInSfmfeUpdate then
      raise_application_error(-20000, 'Internal error: Not in SfmfeUpdate');
    end if;

    FInSfmfeUpdate:= False;
  end;


  function InRfmlfeUpdate return Boolean is
  begin
    return FInRfmlfeUpdate;
  end;

  procedure BeginRfmlfeUpdate is
  begin
    if FInRfmlfeUpdate then
      raise_application_error(-20000, 'Internal error: Already in RfmlfeUpdate');
    end if;

    FInRfmlfeUpdate:= True;
  end;

  procedure EndRfmlfeUpdate is
  begin
    if not FInRfmlfeUpdate then
      raise_application_error(-20000, 'Internal error: Not in RfmlfeUpdate');
    end if;

    FInRfmlfeUpdate:= False;
  end;


  function InPkfeUpdate return Boolean is
  begin
    return FInPkfeUpdate;
  end;

  procedure BeginPkfeUpdate is
  begin
    if FInPkfeUpdate then
      raise_application_error(-20000, 'Internal error: Already in PkfeUpdate');
    end if;

    FInPkfeUpdate:= True;
  end;

  procedure EndPkfeUpdate is
  begin
    if not FInPkfeUpdate then
      raise_application_error(-20000, 'Internal error: Not in PkfeUpdate');
    end if;

    FInPkfeUpdate:= False;
  end;


  function InPffeUpdate return Boolean is
  begin
    return FInPffeUpdate;
  end;

  procedure BeginPffeUpdate is
  begin
    if FInPffeUpdate then
      raise_application_error(-20000, 'Internal error: Already in PffeUpdate');
    end if;

    FInPffeUpdate:= True;
  end;

  procedure EndPffeUpdate is
  begin
    if not FInPffeUpdate then
      raise_application_error(-20000, 'Internal error: Not in PffeUpdate');
    end if;

    FInPffeUpdate:= False;
  end;


  function InPbofeUpdate return Boolean is
  begin
    return FInPbofeUpdate;
  end;

  procedure BeginPbofeUpdate is
  begin
    if FInPbofeUpdate then
      raise_application_error(-20000, 'Internal error: Already in PbofeUpdate');
    end if;

    FInPbofeUpdate:= True;
  end;

  procedure EndPbofeUpdate is
  begin
    if not FInPbofeUpdate then
      raise_application_error(-20000, 'Internal error: Not in PbofeUpdate');
    end if;

    FInPbofeUpdate:= False;
  end;


  function InPcofeUpdate return Boolean is
  begin
    return FInPcofeUpdate;
  end;

  procedure BeginPcofeUpdate is
  begin
    if FInPcofeUpdate then
      raise_application_error(-20000, 'Internal error: Already in PcofeUpdate');
    end if;

    FInPcofeUpdate:= True;
  end;

  procedure EndPcofeUpdate is
  begin
    if not FInPcofeUpdate then
      raise_application_error(-20000, 'Internal error: Not in PcofeUpdate');
    end if;

    FInPcofeUpdate:= False;
  end;
  
  function InPafeUpdate return Boolean is
  begin
    return FInPafeUpdate;
  end;

  procedure BeginPafeUpdate is
  begin
    if FInPafeUpdate then
      raise_application_error(-20000, 'Internal error: Already in PafeUpdate');
    end if;

    FInPafeUpdate:= True;
  end;

  procedure EndPafeUpdate is
  begin
    if not FInPafeUpdate then
      raise_application_error(-20000, 'Internal error: Not in PafeUpdate');
    end if;

    FInPafeUpdate:= False;
  end;  
  
  function InVpfeUpdate return Boolean is
  begin
    return FInVpfeUpdate;
  end;

  procedure BeginVpfeUpdate is
  begin
    if FInVpfeUpdate then
      raise_application_error(-20000, 'Internal error: Already in vpfe update');
    end if;
  
    FInVpfeUpdate:= True;
  end;

  procedure EndVpfeUpdate is
  begin
    if not FInVpfeUpdate then
      raise_application_error(-20000, 'Internal error: Not in vpfe update');
    end if;

    FInVpfeUpdate:= False;
  end;  

  function InDfpfeUpdate return Boolean is
  begin
    return FInDfpfeUpdate;
  end;

  procedure BeginDfpfeUpdate is
  begin
    if FInDfpfeUpdate then
      raise_application_error(-20000, 'Internal error: Already in dfpfe update');
    end if;
  
    FInDfpfeUpdate:= True;
  end;

  procedure EndDfpfeUpdate is
  begin
    if not FInDfpfeUpdate then
      raise_application_error(-20000, 'Internal error: Not in dfpfe update');
    end if;

    FInDfpfeUpdate:= False;
  end;  

  function InCcfeUpdate return Boolean is
  begin
    return FInCcfeUpdate;
  end;

  procedure BeginCcfeUpdate is
  begin
    if FInCcfeUpdate then
      raise_application_error(-20000, 'Internal error: Already in ccfe update');
    end if;
  
    FInCcfeUpdate:= True;
  end;

  procedure EndCcfeUpdate is
  begin
    if not FInCcfeUpdate then
      raise_application_error(-20000, 'Internal error: Not in ccfe update');
    end if;

    FInCcfeUpdate:= False;
  end;  

  function InVcfeUpdate return Boolean is
  begin
    return FInVcfeUpdate;
  end;

  procedure BeginVcfeUpdate is
  begin
    if FInVcfeUpdate then
      raise_application_error(-20000, 'Internal error: Already in vcfe update');
    end if;
  
    FInVcfeUpdate:= True;
  end;

  procedure EndVcfeUpdate is
  begin
    if not FInVcfeUpdate then
      raise_application_error(-20000, 'Internal error: Not in vcfe update');
    end if;

    FInVcfeUpdate:= False;
  end;  


  function InNifeUpdate return Boolean is
  begin
    return FInNifeUpdate;
  end;

  procedure BeginNifeUpdate is
  begin
    if FInNifeUpdate then
      raise_application_error(-20000, 'Internal error: Already in NifeUpdate');
    end if;

    FInNifeUpdate:= True;
  end;

  procedure EndNifeUpdate is
  begin
    if not FInNifeUpdate then
      raise_application_error(-20000, 'Internal error: Not in NifeUpdate');
    end if;

    FInNifeUpdate:= False;
  end;


  function InPrppmfeUpdate return Boolean is
  begin
    return FInPrppmfeUpdate;
  end;

  procedure BeginPrppmfeUpdate is
  begin
    if FInPrppmfeUpdate then
      raise_application_error(-20000, 'Internal error: Already in PrppmfeUpdate');
    end if;

    FInPrppmfeUpdate:= True;
  end;

  procedure EndPrppmfeUpdate is
  begin
    if not FInPrppmfeUpdate then
      raise_application_error(-20000, 'Internal error: Not in PrppmfeUpdate');
    end if;

    FInPrppmfeUpdate:= False;
  end;

  function InParrelsfeUpdate return Boolean is
  begin
    return FInParrelsfeUpdate;
  end;

  procedure BeginParrelsfeUpdate is
  begin
    if FInParrelsfeUpdate then
      raise_application_error(-20000, 'Internal error: Already in ParrelsfeUpdate');
    end if;

    FInParrelsfeUpdate:= True;
  end;

  procedure EndParrelsfeUpdate is
  begin
    if not FInParrelsfeUpdate then
      raise_application_error(-20000, 'Internal error: Not in ParrelsfeUpdate');
    end if;

    FInParrelsfeUpdate:= False;
  end;

  procedure SetSkipPRPerCheckPartnerCode(PartnerCode in Number) is
  begin
    if (PartnerCode <> 0) and (FSkipPRPerCheckPartnerCode <> 0) then
      raise_application_error(-20000, 'Internal error: SkipPRPerCheckPartnerCode not cleared');
    end if;
    
    FSkipPRPerCheckPartnerCode:= PartnerCode;
  end;

  function SkipPRPerCheckPartnerCode return Number is
  begin
    return FSkipPRPerCheckPartnerCode;
  end;


  function InOwdpfeUpdate return Boolean is
  begin
    return FInOwdpfeUpdate;
  end;

  procedure BeginOwdpfeUpdate is
  begin
    if FInOwdpfeUpdate then
      raise_application_error(-20000, 'Internal error: Already in OwdpfeUpdate');
    end if;

    FInOwdpfeUpdate:= True;
  end;

  procedure EndOwdpfeUpdate is
  begin
    if not FInOwdpfeUpdate then
      raise_application_error(-20000, 'Internal error: Not in OwdpfeUpdate');
    end if;

    FInOwdpfeUpdate:= False;
  end;


  function InNfeUpdate return Boolean is
  begin
    return FInNfeUpdate;
  end;

  procedure BeginNfeUpdate is
  begin
    if FInNfeUpdate then
      raise_application_error(-20000, 'Internal error: Already in NfeUpdate');
    end if;

    FInNfeUpdate:= True;
  end;

  procedure EndNfeUpdate is
  begin
    if not FInNfeUpdate then
      raise_application_error(-20000, 'Internal error: Not in NfeUpdate');
    end if;

    FInNfeUpdate:= False;
  end;


  function InPpfeUpdate return Boolean is
  begin
    return FInPpfeUpdate;
  end;

  procedure BeginPpfeUpdate is
  begin
    if FInPpfeUpdate then
      raise_application_error(-20000, 'Internal error: Already in PpfeUpdate');
    end if;

    FInPpfeUpdate:= True;
  end;

  procedure EndPpfeUpdate is
  begin
    if not FInPpfeUpdate then
      raise_application_error(-20000, 'Internal error: Not in PpfeUpdate');
    end if;

    FInPpfeUpdate:= False;
  end;

  function InIfeUpdate return Boolean is
  begin
    return FInIfeUpdate;
  end;

  procedure BeginIfeUpdate is
  begin
    if FInIfeUpdate then
      raise_application_error(-20000, 'Internal error: Already in IfeUpdate');
    end if;

    FInIfeUpdate:= True;
  end;

  procedure EndIfeUpdate is
  begin
    if not FInIfeUpdate then
      raise_application_error(-20000, 'Internal error: Not in IfeUpdate');
    end if;

    FInIfeUpdate:= False;
  end;

  function InIngfeUpdate return Boolean is
  begin
    return FInIngfeUpdate;
  end;

  procedure BeginIngfeUpdate is
  begin
    if FInIngfeUpdate then
      raise_application_error(-20000, 'Internal error: Already in IngfeUpdate');
    end if;

    FInIngfeUpdate:= True;
  end;

  procedure EndIngfeUpdate is
  begin
    if not FInIngfeUpdate then
      raise_application_error(-20000, 'Internal error: Not in IngfeUpdate');
    end if;

    FInIngfeUpdate:= False;
  end;


  function InD_proffeUpdate return Boolean is
  begin
    return FInD_proffeUpdate;
  end;

  procedure BeginD_proffeUpdate is
  begin
    if FInD_proffeUpdate then
      raise_application_error(-20000, 'Internal error: Already in D_proffeUpdate');
    end if;

    FInD_proffeUpdate:= True;
  end;

  procedure EndD_proffeUpdate is
  begin
    if not FInD_proffeUpdate then
      raise_application_error(-20000, 'Internal error: Not in D_proffeUpdate');
    end if;

    FInD_proffeUpdate:= False;
  end;


  function InEetpfeUpdate return Boolean is
  begin
    return FInEetpfeUpdate;
  end;

  procedure BeginEetpfeUpdate is
  begin
    if FInEetpfeUpdate then
      raise_application_error(-20000, 'Internal error: Already in EetpfeUpdate');
    end if;

    FInEetpfeUpdate:= True;
  end;

  procedure EndEetpfeUpdate is
  begin
    if not FInEetpfeUpdate then
      raise_application_error(-20000, 'Internal error: Not in EetpfeUpdate');
    end if;

    FInEetpfeUpdate:= False;
  end;


  function InBoiofeUpdate return Boolean is
  begin
    return FInBoiofeUpdate;
  end;

  procedure BeginBoiofeUpdate is
  begin
    if FInBoiofeUpdate then
      raise_application_error(-20000, 'Internal error: Already in BoiofeUpdate');
    end if;

    FInBoiofeUpdate:= True;
  end;

  procedure EndBoiofeUpdate is
  begin
    if not FInBoiofeUpdate then
      raise_application_error(-20000, 'Internal error: Not in BoiofeUpdate');
    end if;

    FInBoiofeUpdate:= False;
  end;

end StateUtils;
/
