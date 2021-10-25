//---------------------------------------------------------------------------

// This software is Copyright (c) 2015 Embarcadero Technologies, Inc.
// You may only use this software if you are an authorized licensee
// of an Embarcadero developer tools product.
// This software is considered a Redistributable as defined under
// the software license agreement that comes with the Embarcadero Products
// and is subject to that software license agreement.

//---------------------------------------------------------------------------

program Ayotech;

uses
  System.StartUpCopy,
  FMX.Forms,
  MainFrm in 'MainFrm.pas' {BaseMainForm},
  FGX.Graphics in 'Lib\FGX.Graphics.pas',
  FGX.Toasts in 'Lib\FGX.Toasts.pas',
  FMX.ComponentsCommon in 'Lib\FMX.ComponentsCommon.pas',
  FMX.GesturePassword in 'Lib\FMX.GesturePassword.pas',
  Mobile.Component in 'Lib\Mobile.Component.pas',
  Container in 'Lib\Container.pas',
  ObjectBase in 'Lib\ObjectBase.pas',
  AD060C626 in 'AD060C626.pas' {fScreen},
  Network in 'Lib\Network.pas';

begin
  Application.Initialize;
  Application.CreateForm(TBaseMainForm, BaseMainForm);
  Application.Run;
end.

