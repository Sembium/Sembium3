unit uIdentity.Manager;

interface

uses
  uCommonApp;

const
  SIdentityManagerUrl = uCommonApp.SIdentityManagerUrl;
  SInviteUserUrl = SIdentityManagerUrl + '/Invitation/SendInvitation';
  SSignupUrl = SIdentityManagerUrl + '/Identity/Account/Register';
  SForgotPasswordUrl = SIdentityManagerUrl + '/Identity/Account/ForgotPassword';
  SUserIdentityProfileUrl = SIdentityManagerUrl + '/Identity/Account/Manage';

implementation

end.
