unit uLocaleFix;

interface

implementation

uses
  Windows;

initialization
  // fix za riadak problem v Windows 7, sluchvasht se predimno na predvaritelno instalirani laptopi 
  // da se use-va na pyrwo mqsto ot vsichki units v proekta
  SetThreadLocale(LOCALE_USER_DEFAULT);
end.
