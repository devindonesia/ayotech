unit UMain;

interface

uses
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Classes,
  System.Variants,
  System.IniFiles,
  System.IOUTils,
  System.Permissions,
  FMX.Types,
  FMX.Controls,
  FMX.Forms,
  FMX.Graphics,
  FMX.Dialogs,
  FMX.DialogService,
  System.Actions,
  FMX.ActnList,
  FMX.Controls.Presentation,
  FMX.StdCtrls,
  FMX.Layouts,
  FMX.GesturePassword,
  FMX.platform,
  FMX.Objects,
  FMX.TabControl,
  FMX.ExtCtrls,
  FMX.Edit,
  UniProvider,
  MySQLUniProvider,
  Data.DB,
  DBAccess,
  Uni,
  MemDS,
  System.Sensors,
  System.Sensors.Components,
  FMX.Ani,
  FMX.StdActns,
  FMX.MediaLibrary.Actions;

type
  TForm1 = class(TForm)
    TC01: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    Image1: TImage;
    Layout1: TLayout;
    Button1: TButton;
    Button2: TButton;
    ActionList1: TActionList;
    Register: TAction;
    Login: TAction;
    NextRegister: TAction;
    TabItem3: TTabItem;
    TabItem4: TTabItem;
    UserProfile: TAction;
    UTP: TAction;
    Timer1: TTimer;
    F8A3BF17E: TUniConnection;
    F4FF75B8F: TMySQLUniProvider;
    HE9F29583: TUniStoredProc;
    TabItem5: TTabItem;
    M3ED9CA04: TLocationSensor;
    Button6: TButton;
    TabItem6: TTabItem;
    Baground: TBrushObject;
    BackSheet: TAction;
    Layout2: TLayout;
    CkAgree: TCheckBox;
    Button3: TButton;
    Rectangle2: TRectangle;
    Image2: TImage;
    Layout8: TLayout;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Nama_lengkap: TEdit;
    Label3: TLabel;
    Layout3: TLayout;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Layout4: TLayout;
    NoKode: TEdit;
    NoHP: TEdit;
    Button4: TButton;
    Rectangle3: TRectangle;
    Layout9: TLayout;
    Button8: TButton;
    Label16: TLabel;
    Label4: TLabel;
    Edit2: TEdit;
    TabItem7: TTabItem;
    Rectangle1: TRectangle;
    FMXGesturePassword1: TFMXGesturePassword;
    Layout7: TLayout;
    Button7: TButton;
    Label8: TLabel;
    Rectangle4: TRectangle;
    Label17: TLabel;
    Layout10: TLayout;
    Button5: TButton;
    Label18: TLabel;
    Layout11: TLayout;
    Edit1: TEdit;
    Rectangle5: TRectangle;
    Image3: TImage;
    Label5: TLabel;
    Label6: TLabel;
    Button9: TButton;
    TabItem8: TTabItem;
    Rectangle6: TRectangle;
    Layout6: TLayout;
    SA5E5DD05: TSwitch;
    VE948AFA2: TLabel;
    Label7: TLabel;
    ImageContainer: TImage;
    LayoutFilterSettings: TLayout;
    TopHelp: TLayout;
    Image4: TImage;
    Text1: TText;
    Rectangle7: TRectangle;
    Layout5: TLayout;
    ButtonRemovePhoto: TButton;
    RemoveBtnAnimation: TFloatAnimation;
    ButtonSendImage: TButton;
    ButtonTakePhotoFromCamera: TButton;
    Layout12: TLayout;
    ButtonTakePhotoFromLibrary: TButton;
    ActionTakePhotoFromLibrary: TTakePhotoFromLibraryAction;
    ActionTakePhotoFromCamera: TTakePhotoFromCameraAction;
    Button10: TButton;
    Button11: TButton;
    procedure CkAgreeChange(Sender: TObject);
    procedure RegisterExecute(Sender: TObject);
    procedure LoginExecute(Sender: TObject);
    procedure UserProfileExecute(Sender: TObject);
    procedure NextRegisterExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FMXGesturePassword1EnterCompleteEvent(Sender: TObject; const APassword: string);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure SA5E5DD05Switch(Sender: TObject);
    procedure M3ED9CA04LocationChanged(Sender: TObject; const OldLocation, NewLocation: TLocationCoord2D);
    procedure Button6Click(Sender: TObject);
    procedure BackSheetExecute(Sender: TObject);
    procedure ButtonRemovePhotoClick(Sender: TObject);
    procedure ButtonTakePhotoFromLibraryClick(Sender: TObject);
    procedure ButtonTakePhotoFromCameraClick(Sender: TObject);

    procedure DisplayRationale(Sender: TObject; const APermissions: TArray<string>; const APostRationaleProc: TProc);
    procedure LoadPicturePermissionRequestResult(Sender: TObject; const APermissions: TArray<string>; const AGrantResults: TArray<TPermissionStatus>);
    procedure TakePicturePermissionRequestResult(Sender: TObject; const APermissions: TArray<string>; const AGrantResults: TArray<TPermissionStatus>);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);

  private
    { Private declarations }
    LPassword, LocalString: string;
    BackValue             : integer;
    KeyLogin              : Boolean;

    FRawBitmap: TBitmap;
    FPermissionCamera, FPermissionReadExternalStorage, FPermissionWriteExternalStorage: string;

  public
    procedure OB4D33ECA;
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

uses FGX.Toasts,
  MainFrm;

procedure TForm1.BackSheetExecute(Sender: TObject);
begin
  if TC01.TabIndex > 0 then
    TC01.TabIndex := TC01.TabIndex - 1;
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
  // if Application.FindComponent('BaseMainForm') = nil then
  // begin
  // // Application.CreateForm(TBaseMainForm, BaseMainForm);
  // BaseMainForm := TBaseMainForm.Create(Application);
  // BaseMainForm.Show;
  // end
  // else
  // BaseMainForm.BringToFront;
  // BaseMainForm.Show;
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
  PermissionsService.RequestPermissions([FPermissionCamera, FPermissionReadExternalStorage, FPermissionWriteExternalStorage], TakePicturePermissionRequestResult, DisplayRationale);
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  ShowMessage('Form: ' + IntToStr(Self.Width) + '   ' + IntToStr(Height));
  ShowMessage('Image ' + IntToStr(Image1.Bitmap.Width) + '  ' + IntToStr(Image1.Bitmap.Height));
end;

procedure TForm1.ButtonRemovePhotoClick(Sender: TObject);
begin
  RemoveBtnAnimation.Start;
  FRawBitmap.SetSize(0, 0);
  ImageContainer.Bitmap.SetSize(0, 0);
  ImageContainer.Bitmap.Assign(FRawBitmap);
end;

procedure TForm1.ButtonTakePhotoFromCameraClick(Sender: TObject);
begin
  PermissionsService.RequestPermissions([FPermissionCamera, FPermissionReadExternalStorage, FPermissionWriteExternalStorage], TakePicturePermissionRequestResult, DisplayRationale);
end;

procedure TForm1.ButtonTakePhotoFromLibraryClick(Sender: TObject);
begin
  PermissionsService.RequestPermissions([FPermissionReadExternalStorage, FPermissionWriteExternalStorage], LoadPicturePermissionRequestResult, DisplayRationale);
end;

procedure TForm1.CkAgreeChange(Sender: TObject);
begin
  if CkAgree.IsChecked then
    NextRegister.Enabled := True
  else
    NextRegister.Enabled := False;
end;

procedure TForm1.DisplayRationale(Sender: TObject; const APermissions: TArray<string>; const APostRationaleProc: TProc);
var
  I           : integer;
  RationaleMsg: string;
begin
  for I := 0 to High(APermissions) do
  begin
    if APermissions[I] = FPermissionCamera then
      RationaleMsg := RationaleMsg + 'The app needs to access the camera to take a photo' + SLineBreak + SLineBreak
    else if APermissions[I] = FPermissionReadExternalStorage then
      RationaleMsg := RationaleMsg + 'The app needs to load photo files from your device';
  end;

  // Show an explanation to the user *asynchronously* - don't block this thread waiting for the user's response!
  // After the user sees the explanation, invoke the post-rationale routine to request the permissions
  TDialogService.ShowMessage(RationaleMsg,
    procedure(const AResult: TModalResult)
    begin
      APostRationaleProc;
    end)

end;

procedure TForm1.FMXGesturePassword1EnterCompleteEvent(Sender: TObject; const APassword: string);
var
  LIniFile: TIniFile;
  fileName: String;
begin
  try
    /// Login
    if KeyLogin = True then
    begin
      /// Read Data Lpassword OnShow Setup Read IniFile
      if LPassword = FMXGesturePassword1.Password then
      begin
        TfgToast.Show('Pola Benar, Anda Berhasil Masuk');
        TC01.TabIndex := 4;
      end
      else
        TfgToast.Show('Maaf Pola yang Anda Masukkan Salah');

    end
    else
    begin
      try
        LPassword := FMXGesturePassword1.Password;

        fileName := System.IOUTils.TPath.GetDocumentsPath + System.SysUtils.PathDelim + 'LocalIni.ini';
        LIniFile := TIniFile.Create(fileName);
        with LIniFile do
        begin
          WriteString('General', 'Password', LPassword);
        end;

        TfgToast.Show('Setup Password Success ' + LPassword);
      finally
        LIniFile.Free;
      end;
    end;

  except
    on E: Exception do
  end;

end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  F8A3BF17E.Close;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  ScreenService: IFMXScreenService;
  OrientSet    : TScreenOrientations;

begin
  { This defines the default active tab at runtime }
  // TC01.TabIndex := 0;

  if TPlatformServices.Current.SupportsPlatformService(IFMXScreenService, IInterface(ScreenService)) then
  begin
    OrientSet := [TScreenOrientation.Portrait];
    ScreenService.SetScreenOrientation(OrientSet);
  end;
end;

procedure TForm1.FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
  if Key = vkHardwareBack then
  begin
    if TC01.TabIndex <> 0 then
    begin
      // TC01.Previous;
      TC01.TabIndex := 0;
      Key           := 0;
    end;
  end;

{$IFDEF ANDROID}
  if Key = vkHardwareBack then
  begin
    BackValue := BackValue + 1;
    if BackValue < 1 then
      TfgToast.Show('Tekan Sekali Lagi Untuk Keluar');

    Key := BackValue;

    Timer1.Enabled := True;
  end;
{$ENDIF}
end;

procedure TForm1.FormShow(Sender: TObject);
var
  LIniFile: TIniFile;
  fileName: String;
begin
  // Read Password
  try
    fileName := System.IOUTils.TPath.GetDocumentsPath + System.SysUtils.PathDelim + 'LocalIni.ini';
    LIniFile := TIniFile.Create(fileName);

    with LIniFile do
    begin
      LPassword := ReadString('General', 'Password', '');
    end;

  finally
    LIniFile.Free;
  end;
  // Connection
  F8A3BF17E.Close;
  F8A3BF17E.Open;
end;

procedure TForm1.LoadPicturePermissionRequestResult(Sender: TObject; const APermissions: TArray<string>; const AGrantResults: TArray<TPermissionStatus>);
begin
  // 2 permissions involved: READ_EXTERNAL_STORAGE, WRITE_EXTERNAL_STORAGE
  if (Length(AGrantResults) = 2) and (AGrantResults[0] = TPermissionStatus.Granted) and (AGrantResults[1] = TPermissionStatus.Granted) then
    ActionTakePhotoFromLibrary.Execute
  else
    TDialogService.ShowMessage('Cannot do photo editing because the required permissions are not granted');
end;

procedure TForm1.LoginExecute(Sender: TObject);
begin
  TC01.TabIndex := 2;
  KeyLogin      := True;
end;

procedure TForm1.M3ED9CA04LocationChanged(Sender: TObject; const OldLocation, NewLocation: TLocationCoord2D);
begin
  Label5.Text := NewLocation.Latitude.ToString(ffGeneral, 5, 2, TFormatSettings.Create('en-US'));
  Label6.Text := NewLocation.Longitude.ToString(ffGeneral, 5, 2, TFormatSettings.Create('en-US'));
end;

procedure TForm1.NextRegisterExecute(Sender: TObject);
begin
  TC01.TabIndex := 3;
end;

procedure TForm1.OB4D33ECA;
begin
  // if not fgActivityDialog.IsShown then
  // begin
  // FActivityDialogThread := TThread.CreateAnonymousThread(
  // procedure
  // begin
  // try
  // TThread.Synchronize(nil,
  // procedure
  // begin
  // fgActivityDialog.Title := 'Call Counter';
  // fgActivityDialog.Message := 'Please, Wait ';
  // fgActivityDialog.Show;
  // end);
  // Sleep(1000);
  // if TThread.CheckTerminated then
  // Exit;
  //
  // TThread.Synchronize(nil,
  // procedure
  // begin
  // fgActivityDialog.Title := 'Loading';
  // fgActivityDialog.Message := 'Process';
  // with spex do
  // begin
  // SQL.Clear;
  // CreateProcCall('sp_call_next_mobile');
  // ParamByName('fNama_antri_group').AsString := fParam;
  // Execute;
  // end;
  // TfgToast.Show('Call Counter ' + fParam);
  // end);
  // Sleep(1000);
  // if TThread.CheckTerminated then
  // Exit;
  //
  // TThread.Synchronize(nil,
  // procedure
  // begin
  // fgActivityDialog.Title := 'Process';
  // fgActivityDialog.Message := 'Finish';
  // end);
  // Sleep(500);
  // if TThread.CheckTerminated then
  // Exit;
  //
  // finally
  // if not TThread.CheckTerminated then
  // TThread.Synchronize(nil,
  // procedure
  // begin
  // fgActivityDialog.Hide;
  // end);
  // end;
  // end);
  // FActivityDialogThread.FreeOnTerminate := False;
  // FActivityDialogThread.Start;
  // end;
end;

procedure TForm1.RegisterExecute(Sender: TObject);
begin
  TC01.TabIndex := 1;
end;

procedure TForm1.SA5E5DD05Switch(Sender: TObject);
begin
  if SA5E5DD05.IsChecked = True then
    VE948AFA2.Text := 'On Trip'
  else
    VE948AFA2.Text := 'Off Trip';

  M3ED9CA04.Active := SA5E5DD05.IsChecked;
end;

procedure TForm1.TakePicturePermissionRequestResult(Sender: TObject; const APermissions: TArray<string>; const AGrantResults: TArray<TPermissionStatus>);
begin
  // 3 permissions involved: CAMERA, READ_EXTERNAL_STORAGE, WRITE_EXTERNAL_STORAGE
  if (Length(AGrantResults) = 3) and (AGrantResults[0] = TPermissionStatus.Granted) and (AGrantResults[1] = TPermissionStatus.Granted) and (AGrantResults[2] = TPermissionStatus.Granted) then
    ActionTakePhotoFromCamera.Execute
  else
    TDialogService.ShowMessage('Cannot take picture because the required permissions are not granted');

end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  BackValue      := -1;
  Timer1.Enabled := False;
end;

procedure TForm1.UserProfileExecute(Sender: TObject);
var
  Q36EBE24B: integer;
begin
  try
    /// function Database Save Profile when Succes  Kode 200
    /// if SC5E4C663 = '200' then

    with HE9F29583 do
    begin
      SQL.Clear;
      CreateProcCall('ppi_sbi.ppi_register_insert');
{$REGION 'baris input data dari edit ke tabel'}
      ParamByName('fNama_lengkap').AsString := Nama_lengkap.Text;
      /// Nama_lengkap=>varchar(255)
      ParamByName('fJK').AsString := 'L';
      /// JK=>char(3)
      ParamByName('fNoHP').AsString := NoKode.Text + NoHP.Text;
      /// NoHP=>varchar(100)
      Q36EBE24B                            := Random(1000);
      ParamByName('fUser_create').AsString := IntToStr(Q36EBE24B);
      /// User_create=>char(50)
{$ENDREGION}
      Execute;
    end;

    TfgToast.Show('Registrasi Berhasil, Silakan Masukkan Kode SMS');

  except
    on E: Exception do
      ShowMessage(E.Message);
  end;

end;

end.
