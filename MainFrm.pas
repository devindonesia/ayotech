// ---------------------------------------------------------------------------
// This software is Copyright (c) 2021 G7 Technologi, Inc.
// You may only use this software if you are an authorized licensee
// of an G7 Technologi developer tools product.
// This software is considered a Redistributable as defined under
// the software license agreement that comes with the G7 Technologi Products
// and is subject to that software license agreement.
// Create by Imposible Mission Force & powered by: misbahdino@gmail.com & arik.sofan.tohir@gmail.com
// ---------------------------------------------------------------------------

unit MainFrm;

interface

uses
  System.SysUtils,
  System.StrUtils,
  System.Types,
  System.UITypes,
  System.Classes,
  System.Variants,
  System.Permissions,
  System.IniFiles,
  System.IOUTils,
  FMX.Types,
  FMX.Controls,
  FMX.Forms,
  FMX.Dialogs,
  FMX.StdCtrls,
  FMX.Objects,
  System.Actions,
  FMX.ActnList,
  FMX.StdActns,
  FMX.MediaLibrary.Actions,
  FMX.Layouts,
  FMX.Effects,
  FMX.Filter.Effects,
  FMX.platform,
  FMX.Filter,
  FMX.Ani,
  FMX.Graphics,
  FMX.Controls.Presentation,
  FMX.GesturePassword,
  FMX.ListBox,
  FMX.Edit,
  FMX.TabControl,
  FGX.ProgressDialog,
  FGX.ProgressDialog.Types,
  IdHTTP,
  IdCoderMIME,
  System.Sensors,
  System.Sensors.Components,
  Data.DB,
  MemDS,
  DBAccess,
  Uni,
  UniProvider,
  MySQLUniProvider,
  Mobile.Component;

type
  TFilterClass = class of TFilter;

  TBaseMainForm = class(TForm)
    ActionList: TActionList;
    ActionTakePhotoFromLibrary: TTakePhotoFromLibraryAction;
    ActionTakePhotoFromCamera: TTakePhotoFromCameraAction;
    ActionShowShareSheet: TShowShareSheetAction;
    ActionClearImage: TAction;
    ActionBlurEffect: TAction;
    ActionPixelateEffect: TAction;
    ActionSharpenEffect: TAction;
    ActionResetEffect: TAction;
    ActionWaveEffect: TAction;
    ActionContrastEffect: TAction;
    ActionPaperSketchEffect: TAction;
    TC01: TTabControl;
    TabItem1: TTabItem;
    Image3: TImage;
    Layout1: TLayout;
    Button1: TButton;
    Button2: TButton;
    TabItem2: TTabItem;
    Rectangle2: TRectangle;
    Layout2: TLayout;
    Button3: TButton;
    Layout8: TLayout;
    P02201F45: TImage;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    TabItem3: TTabItem;
    Rectangle3: TRectangle;
    Button4: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Layout3: TLayout;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Layout4: TLayout;
    NoKode: TEdit;
    NoHP: TEdit;
    Nama_lengkap: TEdit;
    Layout9: TLayout;
    Button8: TButton;
    Label16: TLabel;
    Label4: TLabel;
    U696CE84B: TEdit;
    TabItem4: TTabItem;
    TabItem5: TTabItem;
    Rectangle4: TRectangle;
    FMXGesturePassword1: TFMXGesturePassword;
    Layout10: TLayout;
    Button13: TButton;
    VFF57C64C: TLabel;
    TabItem6: TTabItem;
    Rectangle5: TRectangle;
    Label17: TLabel;
    Layout11: TLayout;
    Button14: TButton;
    Label18: TLabel;
    Layout13: TLayout;
    Y2F65D9BB: TEdit;
    TabItem7: TTabItem;
    Rectangle6: TRectangle;
    Image7: TImage;
    Label5: TLabel;
    Label6: TLabel;
    Button15: TButton;
    TabItem8: TTabItem;
    Rectangle8: TRectangle;
    Layout14: TLayout;
    SA5E5DD05: TSwitch;
    VE948AFA2: TLabel;
    Label7: TLabel;
    O91AD6D9A: TRectangle;
    ImageContainer: TImage;
    TopHelp: TLayout;
    LayoutFilterSettings: TLayout;
    Layout5: TLayout;
    ButtonTakePhotoFromLibrary: TButton;
    FilterComboBox: TComboBox;
    Layout6: TLayout;
    ButtonSendImage: TButton;
    ButtonRemovePhoto: TButton;
    RemoveBtnAnimation: TFloatAnimation;
    AL01: TActionList;
    Register: TAction;
    Login: TAction;
    NextRegister: TAction;
    UserProfile: TAction;
    UTP: TAction;
    Timer1: TTimer;
    F8A3BF17E: TUniConnection;
    F4FF75B8F: TMySQLUniProvider;
    HE9F29583: TUniStoredProc;
    M3ED9CA04: TLocationSensor;
    BackSheet: TAction;
    Button5: TButton;
    NextPola: TAction;
    BUploadPhoto: TButton;
    Layout7: TLayout;
    Button9: TButton;
    fgProgressDialog: TfgProgressDialog;
    fgActivityDialog: TfgActivityDialog;
    Layout12: TLayout;
    CkAgree: TCheckBox;
    VC84C27B9: TRoundRect;
    X8DA202AE: TCheckBox;
    Rectangle1: TRectangle;
    Text2: TText;
    Text4: TText;
    Text3: TText;
    Image1: TImage;
    J3A7F7AFA: TImage;
    Label8: TLabel;
    Label19: TLabel;
    Image4: TImage;
    Button6: TButton;
    TC02: TTabControl;
    TabItem9: TTabItem;
    TabItem10: TTabItem;
    TabItem11: TTabItem;
    TabItem12: TTabItem;
    Layout15: TLayout;
    Label20: TLabel;
    Layout16: TLayout;
    K61E45FC1: TRoundRect;
    ListBox1: TListBox;
    ListBoxGroupHeader1: TListBoxGroupHeader;
    LS3E0E02F1: TListBoxItem;
    ListBoxItem2: TListBoxItem;
    ListBoxGroupHeader2: TListBoxGroupHeader;
    LHF3D810B9: TListBoxItem;
    ListBoxGroupHeader3: TListBoxGroupHeader;
    LS4F1C1558: TListBoxItem;
    U1FA6A59C: TTimer;
    StyleBook1: TStyleBook;
    Rectangle7: TRectangle;
    Button10: TButton;
    S3E0E02F1: TLabel;
    HF3D810B9: TLabel;
    S4F1C1558: TLabel;
    Button11: TButton;
    Button12: TButton;
    Button16: TButton;
    Text1: TText;
    Button7: TButton;
    Button17: TButton;
    Button18: TButton;
    procedure ActionBlurEffectExecute(Sender: TObject);
    procedure ActionPixelateEffectExecute(Sender: TObject);
    procedure ActionSharpenEffectExecute(Sender: TObject);
    procedure ActionClearImageExecute(Sender: TObject);
    procedure ActionTakePhotoFromLibraryDidFinishTaking(Image: TBitmap);
    procedure ActionListUpdate(Action: TBasicAction; var Handled: Boolean);
    procedure ActionShowShareSheetBeforeExecute(Sender: TObject);
    procedure ActionResetEffectExecute(Sender: TObject);
    procedure ActionWaveEffectExecute(Sender: TObject);
    procedure ActionPaperSketchEffectExecute(Sender: TObject);
    procedure ActionContrastEffectExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FilterComboBoxChange(Sender: TObject);
    procedure ButtonTakePhotoFromLibraryClick(Sender: TObject);
    procedure RegisterExecute(Sender: TObject);
    procedure LoginExecute(Sender: TObject);
    procedure NextRegisterExecute(Sender: TObject);
    procedure UserProfileExecute(Sender: TObject);
    procedure BackSheetExecute(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
    procedure FMXGesturePassword1EnterCompleteEvent(Sender: TObject; const APassword: string);
    procedure Button9Click(Sender: TObject);
    procedure RadioButton1Change(Sender: TObject);
    procedure RadioButton2Change(Sender: TObject);
    procedure Y2F65D9BBChange(Sender: TObject);
    procedure X8DA202AEChange(Sender: TObject);
    procedure CkAgreeChange(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure U1FA6A59CTimer(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure U696CE84BValidating(Sender: TObject; var Text: string);
    procedure Button13Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure NextPolaExecute(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
  private
    FProgressDialogThread : TThread;
    FActivityDialogThread : TThread;
    R3C473933             : Char;
    LPassword, LocalString: string;
    X33610690             : string;
    CD9BACA4C             : String;
    BackValue             : integer;
    KeyLogin, LoginBack   : Boolean;
    PathPNGFile           : string;

    FEffect   : TFilter;
    FRawBitmap: TBitmap;
    FPermissionCamera, FPermissionReadExternalStorage, FPermissionWriteExternalStorage: string;
    procedure DisplayRationale(Sender: TObject; const APermissions: TArray<string>; const APostRationaleProc: TProc);
    procedure DoOnChangedEffectParam(Sender: TObject);
    procedure LoadFilterSettings(Rec: TFilterRec);
    procedure LoadPicturePermissionRequestResult(Sender: TObject; const APermissions: TArray<string>; const AGrantResults: TArray<TPermissionStatus>);
    procedure TakePicturePermissionRequestResult(Sender: TObject; const APermissions: TArray<string>; const AGrantResults: TArray<TPermissionStatus>);

    procedure LoadImageProfile(fImage: TBitmap);
    procedure SaveImageProfile(fImage: TImage);
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure SetEffect(const AFilterName: string);
    procedure UpdateEffect;

    { REST }
    function Base64Encoding(filename: string): string;
    Function vislightPhoto: string;
    Function CompressImage: string;

    Function A5091DF87: string;
    procedure K1D5149FC;
    procedure V60021B3C;
    procedure K2E6953CF;

    procedure RC921FE56;

  end;

var
  BaseMainForm: TBaseMainForm;

const
  IEE171B4D = 'isi dengan Server dan Token';

implementation

uses
{$IFDEF ANDROID}
  Androidapi.Helpers,
  Androidapi.JNI.JavaTypes,
  Androidapi.JNI.Os,
{$ENDIF}
  FMX.DialogService,
  FGX.Toasts,
  Network;

{$R *.fmx}

procedure TBaseMainForm.X8DA202AEChange(Sender: TObject);
begin
  VC84C27B9.Visible := X8DA202AE.IsChecked;
  Image1.Enabled    := X8DA202AE.IsChecked;
end;

procedure TBaseMainForm.CkAgreeChange(Sender: TObject);
begin
  Button3.Enabled := CkAgree.IsChecked;
end;

function TBaseMainForm.CompressImage: string;
var
  A4198E65D  : TMemoryStream;
  ScaleFactor: Single;
begin
  try
    with ImageContainer.Bitmap do
    begin
      // if Width > 1024 then
      // begin
      // ScaleFactor := ImageContainer.Width / 1024;
      // Resize(Round(Width / ScaleFactor), Round(Height / ScaleFactor));
      Resize(Round(Width / 2), Round(Height / 2));
      // end;
    end;

    A4198E65D := TMemoryStream.Create;
    ImageContainer.Bitmap.SaveToStream(A4198E65D);
    A4198E65D.Position := 0;

    result := TIdEncoderMIME.EncodeStream(A4198E65D);

  finally
    A4198E65D.Free;
  end;
end;

constructor TBaseMainForm.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FRawBitmap := TBitmap.Create(0, 0);
{$IFDEF ANDROID}
  FPermissionCamera               := JStringToString(TJManifest_permission.JavaClass.CAMERA);
  FPermissionReadExternalStorage  := JStringToString(TJManifest_permission.JavaClass.READ_EXTERNAL_STORAGE);
  FPermissionWriteExternalStorage := JStringToString(TJManifest_permission.JavaClass.WRITE_EXTERNAL_STORAGE);
{$ENDIF}
end;

destructor TBaseMainForm.Destroy;
begin
  FreeAndNil(FRawBitmap);
  inherited Destroy;
end;

// Optional rationale display routine to display permission requirement rationale to the user
procedure TBaseMainForm.DisplayRationale(Sender: TObject; const APermissions: TArray<string>; const APostRationaleProc: TProc);
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

function TBaseMainForm.Base64Encoding(filename: string): string;
var
  Base64   : TIdEncoderMIME;
  Stream   : TFileStream;
  hasil    : string;
  AD972FC6E: TImage;
  SA2ACBACD: TMemoryStream;
begin
  if FileExists(filename) then
  begin
    try
      Base64          := TIdEncoderMIME.Create(nil);
      Stream          := TFileStream.Create(filename, fmOpenRead);
      Stream.Position := 0;
      AD972FC6E       := TImage.Create(nil);
      AD972FC6E.Bitmap.LoadFromStream(Stream);

      if AD972FC6E.MultiResBitmap.Width > 1024 then
      begin
        AD972FC6E.Bitmap.Resize(Round(AD972FC6E.Width / 2), Round(AD972FC6E.Height / 2));
      end;

      SA2ACBACD := TMemoryStream.Create;
      AD972FC6E.Bitmap.SaveToStream(SA2ACBACD);
      SA2ACBACD.Position := 0;
      hasil              := TIdEncoderMIME.EncodeStream(SA2ACBACD);

      if not(hasil = '') then
        result := hasil
      else
        result := vislightPhoto;

    finally
      SA2ACBACD.Free;
      AD972FC6E.Free;
      Base64.Free;
      Stream.Free;
    end;
  end;
end;

procedure TBaseMainForm.ActionListUpdate(Action: TBasicAction; var Handled: Boolean);
begin
  LayoutFilterSettings.Visible    := not ActionResetEffect.Checked;
  ActionClearImage.Enabled        := not ImageContainer.Bitmap.IsEmpty;
  ActionShowShareSheet.Enabled    := not FRawBitmap.IsEmpty;
  ActionBlurEffect.Enabled        := not FRawBitmap.IsEmpty;
  ActionPixelateEffect.Enabled    := not FRawBitmap.IsEmpty;
  ActionSharpenEffect.Enabled     := not FRawBitmap.IsEmpty;
  ActionWaveEffect.Enabled        := not FRawBitmap.IsEmpty;
  ActionContrastEffect.Enabled    := not FRawBitmap.IsEmpty;
  ActionPaperSketchEffect.Enabled := not FRawBitmap.IsEmpty;
  TopHelp.Visible                 := FRawBitmap.IsEmpty and ActionWaveEffect.Visible;
end;

function TBaseMainForm.A5091DF87: string;
var
  EAAC0973A, XA72E88FA, N668B9207, DE23E0063: string;
begin

  if R3C473933 = 'M' then
    CD9BACA4C := ' TN'
  else
    CD9BACA4C := ' NY';

  X33610690 := TMobileComponent.ImageBMPBase64(ImageContainer);
  // TMobileComponent.ImageSaveToPNG(PathPNGFile, ImageContainer);
  // X33610690 := Base64Encoding(PathPNGFile);

  EAAC0973A := RightStr(NoHP.Text, 7);
  XA72E88FA := U696CE84B.Text;
  N668B9207 := NoHP.Text;

  Sleep(150);

  with TStringList.Create do
  begin

    with TStringList.Create do
    begin
      Add('{');
      Add('"accEndTime":"2022-07-14 08:56:00",');
      Add('"accLevelIds":"2c28808b79781014017978121a0903b6",');
      Add('"accStartTime":"2021-01-14 08:56:00",');
      Add('"birthday":"",');
      Add('"carPlate":"",');
      Add('"cardNo":"",');
      Add('"certNumber":"",');
      Add('"certType":"",');
      Add('"deptCode":"DP02",');
      Add('"email":"' + XA72E88FA + '",');
      Add('"gender":"' + R3C473933 + '",');
      Add('"hireDate":"",');
      Add('"isDisabled":false,');
      Add('"isSendMail":false,');
      Add('"lastName":"' + CD9BACA4C + '",');
      Add('"mobilePhone":"' + N668B9207 + '",');
      Add('"name":"' + Nama_lengkap.Text + '",');
      // Add('"personPhoto":"' + CompressImage + '",');
      Add('"personPhoto":"' + X33610690 + '",');
      Add('"personPwd":"",');
      Add('"pin":"' + EAAC0973A + '",');
      // Add('"pin":"'+FormatDateTime('yymmdd',Now)+'",');
      Add('"ssn":"",');
      Add('"supplyCards":"",');
      Add('"vislightPhoto":"' + vislightPhoto + '"');
      Add('}');
      result := Text.Trim;
      Free;
    end;

  end;
end;

procedure TBaseMainForm.ActionBlurEffectExecute(Sender: TObject);
begin
  SetEffect('GaussianBlur');
end;

procedure TBaseMainForm.ActionPaperSketchEffectExecute(Sender: TObject);
begin
  SetEffect('PaperSketch');
end;

procedure TBaseMainForm.ActionPixelateEffectExecute(Sender: TObject);
begin
  SetEffect('Pixelate');
end;

procedure TBaseMainForm.ActionResetEffectExecute(Sender: TObject);
begin
  FreeAndNil(FEffect);
  ImageContainer.Bitmap.Assign(FRawBitmap);
  ActionResetEffect.Checked := True;
end;

procedure TBaseMainForm.ActionSharpenEffectExecute(Sender: TObject);
begin
  SetEffect('Sharpen');
end;

procedure TBaseMainForm.ActionShowShareSheetBeforeExecute(Sender: TObject);
begin
  ActionShowShareSheet.Bitmap := ImageContainer.Bitmap;
end;

procedure TBaseMainForm.ActionClearImageExecute(Sender: TObject);
begin
  RemoveBtnAnimation.Start;
  FRawBitmap.SetSize(0, 0);
  ImageContainer.Bitmap.SetSize(0, 0);
  ImageContainer.Bitmap.Assign(FRawBitmap);
  ActionResetEffect.Execute;
end;

procedure TBaseMainForm.ActionContrastEffectExecute(Sender: TObject);
begin
  SetEffect('Contrast');
end;

procedure TBaseMainForm.SaveImageProfile(fImage: TImage);
var
  LStream: TMemoryStream;
begin
  try
    LStream := TMemoryStream.Create;
    with LStream do
    begin
      ImageContainer.Bitmap.SaveToStream(LStream);
      LStream.Position := 0;

      LStream.SaveToFile(PathPNGFile);
    end;

  finally
    LStream.Free;
  end;
end;

procedure TBaseMainForm.SetEffect(const AFilterName: string);
var
  Rec: TFilterRec;
begin
  ActionResetEffect.Checked := False;
  FreeAndNil(FEffect);
  FEffect := TFilterManager.FilterByName(AFilterName);
  if Assigned(FEffect) then
  begin
    // Create settings
    Rec := FEffect.FilterAttr;
    UpdateEffect;
    LoadFilterSettings(Rec);
  end;
end;

procedure TBaseMainForm.ActionTakePhotoFromLibraryDidFinishTaking(Image: TBitmap);
var
  ScaleFactor: Single;
begin
  if Image.Width > 1024 then
  begin
    ScaleFactor := Image.Width / 1024;
    Image.Resize(Round(Image.Width / ScaleFactor), Round(Image.Height / ScaleFactor));
  end;
  FRawBitmap.Assign(Image);
  ImageContainer.Bitmap.Assign(Image);
  UpdateEffect;
  FilterComboBox.ItemIndex := 0;
end;

procedure TBaseMainForm.ActionWaveEffectExecute(Sender: TObject);
begin
  SetEffect('Wave');
end;

procedure TBaseMainForm.BackSheetExecute(Sender: TObject);
begin
  if TC01.TabIndex > 0 then
    TC01.TabIndex := TC01.TabIndex - 1;
end;

procedure TBaseMainForm.Button10Click(Sender: TObject);
begin
  BaseMainForm.Close;
end;

procedure TBaseMainForm.Button11Click(Sender: TObject);
begin
  ShowMessage(BoolToStr(Network.IsConnected));
end;

procedure TBaseMainForm.Button12Click(Sender: TObject);
begin
  ShowMessage(BoolToStr(Network.IsWiFiConnected));
end;

procedure TBaseMainForm.Button13Click(Sender: TObject);
begin
  if LoginBack = True then
  begin
    TC01.TabIndex := 0;
    LoginBack     := False;
  end
  else
  begin
    if TC01.TabIndex > 0 then
      TC01.TabIndex := TC01.TabIndex - 1;
  end;
end;

procedure TBaseMainForm.Button15Click(Sender: TObject);
begin
  TC01.TabIndex := 7;
  // Profile;
  K2E6953CF;
end;

procedure TBaseMainForm.Button16Click(Sender: TObject);
begin
  ShowMessage(BoolToStr(Network.IsMobileConnected));
end;

procedure TBaseMainForm.Button17Click(Sender: TObject);
begin
  TC01.TabIndex := 0;
end;

procedure TBaseMainForm.Button18Click(Sender: TObject);
begin
  K2E6953CF;
  LoadImageProfile(K61E45FC1.Fill.Bitmap.Bitmap);
end;

procedure TBaseMainForm.Button6Click(Sender: TObject);
begin
  // GPS Panel Active

  // Hide Panel GPS Active
  J3A7F7AFA.Visible := False;
end;

procedure TBaseMainForm.Button7Click(Sender: TObject);
var
  filename: string;
begin
  // LogOut

  MessageDlg('Yakin Anda Ingin Keluar Akun? , Keluar Akun bukan berarti akun anda terhapus  ', System.UITypes.TMsgDlgType.mtInformation, [System.UITypes.TMsgDlgBtn.mbYes, System.UITypes.TMsgDlgBtn.mbNo], 0,
    procedure(const AResult: TModalResult)
    begin
      case AResult of
        { Detect which button was pushed and show a different message }
        mrYes:
          begin
            filename := System.IOUTils.TPath.GetDocumentsPath + System.SysUtils.PathDelim + 'LocalIni.ini';
            if FileExists(filename) then
              DeleteFile(filename);

            if FileExists(PathPNGFile) then
              DeleteFile(PathPNGFile);
          end;
        mrNo:
          begin

          end;
      end;
    end);

end;

procedure TBaseMainForm.Button9Click(Sender: TObject);
begin
  with ImageContainer do
  begin
    ShowMessage(IntToStr(Bitmap.Width) + '  ' + IntToStr(Bitmap.Height));
  end;
end;

procedure TBaseMainForm.ButtonTakePhotoFromLibraryClick(Sender: TObject);
begin
  PermissionsService.RequestPermissions([FPermissionReadExternalStorage, FPermissionWriteExternalStorage], LoadPicturePermissionRequestResult, DisplayRationale);
end;

procedure TBaseMainForm.DoOnChangedEffectParam(Sender: TObject);
var
  TrackBarTmp: TTrackBar;
begin
  if not(Sender is TTrackBar) then
    Exit;

  TrackBarTmp                                  := Sender as TTrackBar;
  FEffect.ValuesAsFloat[TrackBarTmp.TagString] := TrackBarTmp.Value;
  UpdateEffect;
end;

procedure TBaseMainForm.Y2F65D9BBChange(Sender: TObject);
begin
  if Length(Y2F65D9BB.Text) = 6 then
  begin
    with HE9F29583 do
    begin
      SQL.Clear;
      CreateProcCall('sp_utp');
      ParamByName('fNoHP').AsString := '+62' + NoHP.Text;
      ExecProc;

      if Y2F65D9BB.Text = Fields.Fields[0].AsString then
        TC01.TabIndex := 6
      else
        TfgToast.Show('Kode UTP Anda Salah');
    end;

  end;

end;

procedure TBaseMainForm.FilterComboBoxChange(Sender: TObject);
begin
  if FilterComboBox.Selected.Text = 'None' then
    ActionResetEffect.Execute
  else if FilterComboBox.Selected.Text = 'Blur' then
    ActionBlurEffect.Execute
  else if FilterComboBox.Selected.Text = 'Paper' then
    ActionPaperSketchEffect.Execute
  else if FilterComboBox.Selected.Text = 'Pixelate' then
    ActionPixelateEffect.Execute
  else if FilterComboBox.Selected.Text = 'Wave' then
    ActionWaveEffect.Execute
  else if FilterComboBox.Selected.Text = 'Contrast' then
    ActionContrastEffect.Execute
  else if FilterComboBox.Selected.Text = 'Sharpen' then
    ActionSharpenEffect.Execute;
end;

procedure TBaseMainForm.FMXGesturePassword1EnterCompleteEvent(Sender: TObject; const APassword: string);
var
  LIniFile: TIniFile;
  filename: String;
begin
  try
    /// Login
    if KeyLogin = True then
    begin
      /// Read Data Lpassword OnShow Setup Read IniFile
      if LPassword = FMXGesturePassword1.Password then
      begin
        TfgToast.Show('Pola Benar, Anda Berhasil Masuk');
        /// To Profile
        TC01.TabIndex := 7;

        // Profile;
        K2E6953CF;
      end
      else
        TfgToast.Show('Maaf Pola yang Anda Masukkan Salah');

    end
    else
    begin
      try
        LPassword := FMXGesturePassword1.Password;

        filename := System.IOUTils.TPath.GetDocumentsPath + System.SysUtils.PathDelim + 'LocalIni.ini';
        LIniFile := TIniFile.Create(filename);
        with LIniFile do
        begin
          WriteString('General', 'Password', LPassword);
          WriteString('General', 'User', CD9BACA4C + '. ' + Nama_lengkap.Text);
          WriteString('General', 'Email', U696CE84B.Text);
          WriteString('General', 'NoTelp', NoKode.Text + NoHP.Text);
        end;

        TfgToast.Show('POLA Berhasil dibuat ' + LPassword);

        /// Dialog Next Sheet
        MessageDlg('Yakin Menggunakan POLA tersebut?  ', System.UITypes.TMsgDlgType.mtInformation, [System.UITypes.TMsgDlgBtn.mbYes, System.UITypes.TMsgDlgBtn.mbNo], 0,
          procedure(const AResult: TModalResult)
          begin
            case AResult of
              { Detect which button was pushed and show a different message }
              mrYes:
                begin
                  // pressed yes
                  TC01.TabIndex := 5;
                  // Timer for SMS not Send
                  // RC921FE56;
                  U1FA6A59C.Enabled := True;
                  TfgToast.Show('Tunggu Kode OTP dikirim. Paling Lambat 2 Menit');
                end;
              mrNo:
                begin
                  // pressed no
                  TfgToast.Show('Silakan Masukkan POLA anda');
                end;
            end;
          end);

        // V60021B3C;

      finally
        LIniFile.Free;
      end;
    end;

  except
    on E: Exception do
  end;

end;

procedure TBaseMainForm.FormCreate(Sender: TObject);
var
  ScreenService: IFMXScreenService;
  OrientSet    : TScreenOrientations;

begin
  FilterComboBox.Items.Add('None');
  if TFilterManager.FilterByName('GaussianBlur') <> nil then
    FilterComboBox.Items.Add('Blur');
  if TFilterManager.FilterByName('Pixelate') <> nil then
    FilterComboBox.Items.Add('Pixelate');
  if TFilterManager.FilterByName('Wave') <> nil then
    FilterComboBox.Items.Add('Wave');
  if TFilterManager.FilterByName('Contrast') <> nil then
    FilterComboBox.Items.Add('Contrast');
  if TFilterManager.FilterByName('PaperSketch') <> nil then
    FilterComboBox.Items.Add('Paper');
  if TFilterManager.FilterByName('Sharpen') <> nil then
    FilterComboBox.Items.Add('Sharpen');

  { This defines the default active tab at runtime }
  TC01.TabIndex := 0;

  if TPlatformServices.Current.SupportsPlatformService(IFMXScreenService, IInterface(ScreenService)) then
  begin
    // OrientSet := [TScreenOrientation.Portrait];
    ScreenService.GetScreenOrientation.soPortrait;
    // ScreenService.SetScreenOrientation(OrientSet);
  end;


  // if FileExists(PathPNGFile) then
  // DeleteFile(PathPNGFile);

end;

procedure TBaseMainForm.FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
  if Key = vkHardwareBack then
  begin
    if (TC01.TabIndex <> 0) and (TC01.TabIndex <> 2) then
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

procedure TBaseMainForm.FormShow(Sender: TObject);
var
  LIniFile: TIniFile;
  filename: String;
begin
  // PNG Location
  PathPNGFile := System.IOUTils.TPath.GetDocumentsPath + System.SysUtils.PathDelim + 'Profile';

  // Read Password
  try
    filename := System.IOUTils.TPath.GetDocumentsPath + System.SysUtils.PathDelim + 'LocalIni.ini';
    LIniFile := TIniFile.Create(filename);

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
  // Gender
  R3C473933 := 'M';
end;

procedure TBaseMainForm.Image1Click(Sender: TObject);
begin
  try
    PermissionsService.RequestPermissions([FPermissionCamera, FPermissionReadExternalStorage, FPermissionWriteExternalStorage], TakePicturePermissionRequestResult, DisplayRationale);

    BUploadPhoto.Visible := True;
    VC84C27B9.Visible    := False;

  except
    on E: Exception do

  end;
end;

procedure TBaseMainForm.K1D5149FC;
var
  HTTP     : TIdHTTP;
  E35BE9C86: TStringStream;
  IB0DA060A: string;
begin
  HTTP := TIdHTTP.Create;
  try
    try
      E35BE9C86          := TStringStream.Create(A5091DF87, TEncoding.UTF8);
      E35BE9C86.Position := 0;

      HTTP.Request.CustomHeaders.Clear;
      HTTP.Request.Accept      := 'application/json';
      HTTP.Request.ContentType := 'application/json';

      // TfgToast.Show(HTTP.POST(IEE171B4D, E35BE9C86));
      IB0DA060A := LeftStr(HTTP.POST(IEE171B4D, E35BE9C86), 10);

      // ShowMessage(IB0DA060A);

      if IB0DA060A = '{"code":0,' then
      begin
        TC01.TabIndex := 4;
        TfgToast.Show('Photo berhasil diupdate');
      end
      else
        ShowMessage('AI Mendeteksi ada kesalahan, Mohon Lakukan Perekaman Data Ulang');

    except
      on E: EIdHTTPProtocolException do
      begin
        ShowMessage(E.Message);
        ShowMessage(E.ErrorMessage);
      end;
      on E: Exception do
      begin
        ShowMessage(E.Message);
      end;
    end;
  finally
    E35BE9C86.Free;
    HTTP.Free;
  end;

end;

procedure TBaseMainForm.K2E6953CF;
var
  H4BF72247: TIniFile;
  O84D8CEBA: String;
  filename : string;
begin
  // Read data profile

  try
    filename  := System.IOUTils.TPath.GetDocumentsPath + System.SysUtils.PathDelim + 'LocalIni.ini';
    H4BF72247 := TIniFile.Create(filename);

    with H4BF72247 do
    begin
      LPassword      := ReadString('General', 'Password', '');
      S3E0E02F1.Text := ReadString('General', 'User', CD9BACA4C + '. ' + Nama_lengkap.Text);
      HF3D810B9.Text := ReadString('General', 'Email', U696CE84B.Text);
      S4F1C1558.Text := ReadString('General', 'NoTelp', NoKode.Text + NoHP.Text);
    end;

  finally
    H4BF72247.Free;
  end;

  if FileExists(PathPNGFile) then
    LoadImageProfile(K61E45FC1.Fill.Bitmap.Bitmap)
  else
    K61E45FC1.Fill.Bitmap.Bitmap.Assign(ImageContainer.Bitmap);

end;

procedure TBaseMainForm.U1FA6A59CTimer(Sender: TObject);
begin
  TC01.TabIndex     := 6;
  U1FA6A59C.Enabled := False;
  TfgToast.Show('Beta Version, Kode OTP Terkirim');
end;

procedure TBaseMainForm.U696CE84BValidating(Sender: TObject; var Text: string);
begin
  if not Text.Contains('@') then
    TfgToast.Show('Masukkan Email dengan benar');
end;

procedure TBaseMainForm.UpdateEffect;
begin
  if Assigned(FEffect) then
  begin
    FEffect.ValuesAsBitmap['Input'] := FRawBitmap;
    ImageContainer.Bitmap           := FEffect.ValuesAsBitmap['Output'];
  end;
end;

procedure TBaseMainForm.UserProfileExecute(Sender: TObject);
var
  Q36EBE24B: string;
begin
  try
    /// function Database Save Profile when Succes  Kode 200
    /// if SC5E4C663 = '200' then

    // repeat
    // Q36EBE24B := Random(100);
    // until (Length(IntToStr(Q36EBE24B)) = 6);

    Q36EBE24B := FormatDateTime('hhnnss', Now);

    if (Length(Nama_lengkap.Text) > 0) and (Length(NoHP.Text) > 0) then
    begin

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

        ParamByName('fUser_create').AsString := Q36EBE24B;
        /// User_create=>char(50)
{$ENDREGION}
        Execute;
      end;

      TfgToast.Show('Registrasi Berhasil, Silakan Swa Foto Dengan Jelas');
      // F8A3BF17E.Close;

      TC01.TabIndex := 3;

    end
    else
      TfgToast.Show('Isikan Nama atau No HP Anda dengan Benar');

  except
    on E: Exception do
      // ShowMessage(E.Message);
  end;
end;

procedure TBaseMainForm.V60021B3C;
var
  H4BF72247: TIniFile;
  O84D8CEBA: String;
begin
  // Save data profile
  try
    O84D8CEBA := System.IOUTils.TPath.GetDocumentsPath + System.SysUtils.PathDelim + 'LocalIni.ini';
    H4BF72247 := TIniFile.Create(O84D8CEBA);

    with H4BF72247 do
    begin
      WriteString('Profile', 'User', CD9BACA4C + '. ' + Nama_lengkap.Text);
      WriteString('Profile', 'Email', U696CE84B.Text);
      WriteString('Profile', 'NoTelp', NoKode.Text + NoHP.Text);
    end;

  finally
    H4BF72247.Free;
  end;
end;

function TBaseMainForm.vislightPhoto: string;
var
  A4198E65D  : TMemoryStream;
  ScaleFactor: Single;
begin
  try
    with P02201F45.Bitmap do
    begin
      Resize(Round(Width / 3), Round(Height / 3));
    end;

    A4198E65D := TMemoryStream.Create;
    ImageContainer.Bitmap.SaveToStream(A4198E65D);
    A4198E65D.Position := 0;

    result := TIdEncoderMIME.EncodeStream(A4198E65D);

  finally
    A4198E65D.Free;
  end;
end;

procedure TBaseMainForm.LoadFilterSettings(Rec: TFilterRec);
var
  TB      : TTrackBar;
  RecValue: TFilterValueRec;
begin
  LayoutFilterSettings.DeleteChildren;
  for RecValue in Rec.Values do
  begin
    if RecValue.ValueType <> TFilterValueType.Float then
      Continue;
    TB             := TTrackBar.Create(Self);
    TB.Parent      := LayoutFilterSettings;
    TB.Orientation := TOrientation.Vertical;
    TB.Align       := TAlignLayout.Left;
    TB.Min         := RecValue.Min.AsExtended;
    TB.Max         := RecValue.Max.AsExtended;
    TB.Value       := RecValue.Value.AsExtended;
    TB.TagString   := RecValue.Name;
    TB.Tracking    := False;
    TB.OnChange    := DoOnChangedEffectParam;
  end;
end;

procedure TBaseMainForm.LoadImageProfile(fImage: TBitmap);
var
  LStream: TMemoryStream;
begin
  try
    LStream := TMemoryStream.Create;
    LStream.LoadFromFile(PathPNGFile);
    LStream.Position := 0;

    fImage.LoadFromStream(LStream);
  finally
    LStream.Free;
  end;
end;

procedure TBaseMainForm.LoadPicturePermissionRequestResult(Sender: TObject; const APermissions: TArray<string>; const AGrantResults: TArray<TPermissionStatus>);
begin
  // 2 permissions involved: READ_EXTERNAL_STORAGE, WRITE_EXTERNAL_STORAGE
  if (Length(AGrantResults) = 2) and (AGrantResults[0] = TPermissionStatus.Granted) and (AGrantResults[1] = TPermissionStatus.Granted) then
    ActionTakePhotoFromLibrary.Execute
  else
    TDialogService.ShowMessage('Cannot do photo editing because the required permissions are not granted');
end;

procedure TBaseMainForm.LoginExecute(Sender: TObject);
begin
  VFF57C64C.Text := 'Masukkan POLA';
  TC01.TabIndex  := 4;
  KeyLogin       := True;
  LoginBack      := True;
end;

procedure TBaseMainForm.NextPolaExecute(Sender: TObject);
begin
  // K1D5149FC; // Sukses

  if not fgProgressDialog.IsShown then
  begin
    // Create separated thread for long operations
    FProgressDialogThread := TThread.CreateAnonymousThread(
      procedure
      begin
        try
          TThread.Synchronize(nil,
            procedure
            begin
              fgProgressDialog.ResetProgress;
              fgProgressDialog.Show;
              fgProgressDialog.Message := 'Preparing Profile Analysis';
              fgProgressDialog.Kind := TfgProgressDialogKind.Undeterminated;
            end);
          Sleep(1000);
          if TThread.CheckTerminated then
            Exit;

          TThread.Synchronize(nil,
            procedure
            begin
              fgProgressDialog.Kind := TfgProgressDialogKind.Determinated;
            end);
          Sleep(50);
          if TThread.CheckTerminated then
            Exit;

          TThread.Synchronize(nil,
            procedure
            begin
              fgProgressDialog.Message := 'Unggah dan Analisa Foto';
              fgProgressDialog.Progress := 30;
            end);
          Sleep(1000);
          if TThread.CheckTerminated then
            Exit;

          TThread.Synchronize(nil,
            procedure
            begin
              fgProgressDialog.Message := 'Mohon Tunggu, Finalisasi Unggah Foto...';
              fgProgressDialog.Progress := 80;
              SaveImageProfile(ImageContainer);
            end);
          Sleep(1000);
          if TThread.CheckTerminated then
            Exit;

          TThread.Synchronize(nil,
            procedure
            begin
              fgProgressDialog.Message := 'Foto Berhasil Disimpan di Server...';
              fgProgressDialog.Progress := 95;
              K1D5149FC;
            end);
          Sleep(1000);
          if TThread.CheckTerminated then
            Exit;

          TThread.Synchronize(nil,
            procedure
            begin
              fgProgressDialog.Message := 'Finishig';
              fgProgressDialog.Progress := 100;
            end);
          Sleep(1000);
          if TThread.CheckTerminated then
            Exit;

        finally
          if not TThread.CheckTerminated then
            TThread.Synchronize(nil,
              procedure
              begin
                fgProgressDialog.Hide;
              end);
        end;
      end);
    FProgressDialogThread.FreeOnTerminate := False;
    FProgressDialogThread.Start;
  end;

end;

procedure TBaseMainForm.NextRegisterExecute(Sender: TObject);
begin
  TC01.TabIndex := 2;
end;

procedure TBaseMainForm.RadioButton1Change(Sender: TObject);
begin
  R3C473933 := 'M';
end;

procedure TBaseMainForm.RadioButton2Change(Sender: TObject);
begin
  R3C473933 := 'F';
end;

procedure TBaseMainForm.RC921FE56;
begin
  /// Thread Time Send Again SMS OTP
end;

procedure TBaseMainForm.RegisterExecute(Sender: TObject);
begin
  TC01.TabIndex := 1;
end;

procedure TBaseMainForm.TakePicturePermissionRequestResult(Sender: TObject; const APermissions: TArray<string>; const AGrantResults: TArray<TPermissionStatus>);
begin
  // 3 permissions involved: CAMERA, READ_EXTERNAL_STORAGE, WRITE_EXTERNAL_STORAGE
  if (Length(AGrantResults) = 3) and (AGrantResults[0] = TPermissionStatus.Granted) and (AGrantResults[1] = TPermissionStatus.Granted) and (AGrantResults[2] = TPermissionStatus.Granted) then
    ActionTakePhotoFromCamera.Execute
  else
    TDialogService.ShowMessage('Cannot take picture because the required permissions are not granted');
end;

end.
