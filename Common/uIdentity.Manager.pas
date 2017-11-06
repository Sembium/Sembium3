unit uIdentity.Manager;

interface

uses
  uCommonApp;

const
  SIdentityManagerUrl = uCommonApp.SIdentityManagerUrl;
  SInviteUserUrl = SIdentityManagerUrl + '/Invitation/SendInvitation';
  SSignupUrl = SIdentityManagerUrl + '/Invitation/ReceiveInvitation';
  SForgotPasswordUrl = SIdentityManagerUrl + '/Account/ForgotPassword';
  SUserIdentityProfileUrl = SIdentityManagerUrl + '/Manage';

implementation

end.
