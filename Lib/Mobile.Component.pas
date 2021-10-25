unit Mobile.Component;

interface

uses
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Classes,
  System.Variants,
  System.IniFiles,
  IdCoderMIME,
  FMX.Types,
  FMX.Controls,
  FMX.Forms,
  FMX.Graphics,
  FMX.Dialogs,
  FMX.StdCtrls,
  FMX.Controls.Presentation,
  FMX.ListBox,
  FMX.Objects,
  FMX.TabControl,
  FMX.ImgList,
  FMX.ListView.Types,
  FMX.ListView,
  FMX.Layouts,
  FMX.Media,
  FMX.Surfaces;

type
  TMobileComponent = class
    class procedure TabControlPicture(LTabControl: TTabControl; LocalBitmap: TImage);
    class procedure TabControlPictureStream(LTabControl: TTabControl; LocalStream: TBytesStream);
    class procedure ListBoxGroupHeaderDyn(LListBox: TListBox; value: string);
    class procedure ListBoxItemsDyn(LListBox: TListBox; Str1: string);
    class procedure ListBoxFooterDyn(LListBox: TListBox; fString: string);

    { ObjectList }
    class procedure OLHeaderDyn(LListBox: TListBox; value: string);
    class procedure OLItemDyn(LListBox: TListBox; value: string);
    class procedure OLFooterDyn(LListBox: TListBox; value: string);

    class procedure ListViewFavorite(LListView: TListView; LocalCounter: integer; IL: TImageList; ImageIndex: integer);

    class function Reverse(Str: string): string;
    class function IntToBin(value: cardinal): string;

    class function Encrypt(StrValue: string): string;

    { MultiMedia File }
    class function ImageToBase64(fImage: TImage): string;
    class procedure ImageSaveToPNG(PathImage: String; fImage: TImage);
    class function ImageBMPBase64(fImage: TImage): string;

  end;

const

  VarAcak = '===String Untuk MenEncrypt, ===' + 'Dapat Menggunakan String Sesuai keinginan anda' + 'Contoh : Lyric Lagu "My Sacrifice" dari Creed ' + 'Hello my friend we meet again ' + 'It"s been awhile where should we begin ' + 'Feels like forever ... ' + 'Within my heart are memories ' + 'Of perfect love that you gave to me ' + 'Oh I remember... ' +
                                        'CHORUS: ' + 'When you are with me ' + 'Im Free, Im Careless, I Believe .. ' + 'Above all the others We"ll fly This brings tears ' + 'To my eyes.., My sacrifice... ' + 'We"ve seen our share of ups and downs ' + 'Oh...how quickly life can turn around ' + 'In an instant It feels so good to reunite ' +
                                        'Within yourself and within your mind  ' + 'Let"s find peace there... ';

implementation

{ TMobileComponent }

uses Container,
  ObjectBase;

class function TMobileComponent.Encrypt(StrValue: string): string;
var
  i, j       : integer;
  CharFromStr: String;
  TempResult : string;
begin
  Result := '';
  // proses encrypt karakter
  for i := 1 to length(StrValue) do
  begin
    CharFromStr := copy(StrValue, i, 1);
    for j       := 1 to length(VarAcak) do
    begin
      CharFromStr := chr((ord(CharFromStr[1]) xor ord(VarAcak[j])));
      if j = length(VarAcak) then
        Result := Result + CharFromStr;
    end;
  end;
  TempResult := Result;
  Result     := '';
  for i      := 1 to length(TempResult) do
  begin
    // menjadikan karakter hasil encrypt menjadu biner,dan
    // dipisahkan dengan tanda |
    Result := Result + IntToBin(ord(TempResult[i])) + '|';
  end;
end;

class function TMobileComponent.ImageBMPBase64(fImage: TImage): string;
var
  Stream: TMemoryStream;
  Surf  : TBitmapSurface;
  aFile : string;
begin
  // Compress Image
  with fImage.Bitmap do
  begin
    if Width > 1024 then
    begin
      // ScaleFactor := ImageContainer.Width / 1024;
      // Resize(Round(Width / ScaleFactor), Round(Height / ScaleFactor));
      Resize(Round(Width / 2), Round(Height / 2));
    end;
  end;

  // Comparison save file as BMP
  Stream := TMemoryStream.Create;
  try
    Surf            := TBitmapSurface.Create;
    Stream.Position := 0;
    try
      Surf.Assign(fImage.Bitmap);
      // use the codec to save Surface to stream

      if not TBitmapCodecManager.SaveToStream(Stream, Surf, '.png') then
        raise EBitmapSavingFailed.Create('Error saving Bitmap to png');
    finally
      Surf.Free;
    end;
    // do something with the png stream image
    Stream.Position := 0;
    // Convert Stream to Base64
    Result := TIdEncoderMIME.EncodeStream(Stream);

  finally
    Stream.Free;
  end;
end;

class procedure TMobileComponent.ImageSaveToPNG(PathImage: String; fImage: TImage);
var
  Stream: TMemoryStream;
  Surf  : TBitmapSurface;
begin

  Stream := TMemoryStream.Create;
  try
    Stream.Position := 0;
    Surf            := TBitmapSurface.Create;
    try
      Surf.Assign(fImage.Bitmap);
      // use the codec to save Surface to stream
      if not TBitmapCodecManager.SaveToStream(Stream, Surf, '.png') then
        raise EBitmapSavingFailed.Create('Error saving Bitmap to png');

    finally
      Surf.Free;
    end;
    // do something with the png stream image
    Stream.Position := 0;
    Stream.SaveToFile(PathImage + '.png');
  finally
    Stream.Free;
  end;
end;

class function TMobileComponent.ImageToBase64(fImage: TImage): string;
var
  A4198E65D  : TMemoryStream;
  ScaleFactor: Single;
begin
  try
    with fImage.Bitmap do
    begin
      // if Width > 1024 then
      // begin
      // ScaleFactor := fImage.Width / 1024;
      // Resize(Round(Width / ScaleFactor), Round(Height / ScaleFactor));
      Resize(Round(Width / 2), Round(Height / 2));
      // end;
    end;

    A4198E65D := TMemoryStream.Create;
    fImage.Bitmap.SaveToStream(A4198E65D);
    A4198E65D.Position := 0;

    Result := TIdEncoderMIME.EncodeStream(A4198E65D);

  finally
    A4198E65D.Free;
  end;
end;

class function TMobileComponent.IntToBin(value: cardinal): string;
var
  i: integer;
begin
  SetLength(Result, 32);
  for i := 1 to 32 do
  begin
    if ((value shl (i - 1)) shr 31) = 0 then
      Result[i] := '0' { do not localize }
    else
      Result[i] := '1'; { do not localize }
  end;
end;

class procedure TMobileComponent.ListBoxFooterDyn(LListBox: TListBox; fString: string);
var
  LocalListBoxItem: TListBoxItem;
begin
  LListBox.BeginUpdate;
  LocalListBoxItem                          := TListBoxGroupFooter.Create(LListBox);
  LocalListBoxItem.Parent                   := LListBox;
  LocalListBoxItem.TextSettings.Font.Family := 'Calibri';
  LocalListBoxItem.TextSettings.Font.Style  := [TFontStyle.fsBold];
  LocalListBoxItem.TextSettings.FontColor   := TalphaColors.Blue;
  LocalListBoxItem.TextSettings.WordWrap    := True;
  LocalListBoxItem.TextSettings.HorzAlign   := TTextAlign(1);
  LocalListBoxItem.Text                     := fString;
  LListBox.EndUpdate;
end;

class procedure TMobileComponent.ListBoxGroupHeaderDyn(LListBox: TListBox; value: string);
var
  LocalListBoxGroupHeader: TListBoxGroupHeader;
begin
  LListBox.BeginUpdate;
  LocalListBoxGroupHeader        := TListBoxGroupHeader.Create(LListBox);
  LocalListBoxGroupHeader.Parent := LListBox;
  // LocalListBoxGroupHeader.Name   := 'LLBGH';
  LocalListBoxGroupHeader.Text := value;
  LListBox.EndUpdate;
end;

class procedure TMobileComponent.ListBoxItemsDyn(LListBox: TListBox; Str1: string);
var
  LocalListBoxItem: TListBoxItem;
begin
  LListBox.BeginUpdate;
  LocalListBoxItem                          := TListBoxItem.Create(LListBox);
  LocalListBoxItem.Parent                   := LListBox;
  LocalListBoxItem.TextSettings.Font.Family := 'Calibri';
  LocalListBoxItem.TextSettings.Font.Size   := 14;
  LocalListBoxItem.TextSettings.WordWrap    := True;
  LocalListBoxItem.TextSettings.HorzAlign   := TTextAlign(2);
  LocalListBoxItem.Text                     := Str1;
  LListBox.EndUpdate;
end;

class procedure TMobileComponent.ListViewFavorite(LListView: TListView; LocalCounter: integer; IL: TImageList; ImageIndex: integer);
var
  LImage: TListItemImage;
begin
  with LListView do
  begin
    BeginUpdate;

    LImage               := TListItemImage.Create(LListView.Items.Item[LocalCounter]);
    LImage.Name          := 'IL' + IntToStr(LocalCounter);
    LImage.Align         := TListItemAlign.Leading;
    LImage.VertAlign     := TListItemAlign.Center;
    LImage.PlaceOffset.Y := -25;
    LImage.PlaceOffset.X := 295;
    LImage.Width         := 20;
    LImage.Height        := 20;
    LImage.OwnsBitmap    := False;

    Images            := IL;
    LImage.ImageIndex := ImageIndex;

    EndUpdate;
  end;
end;

class procedure TMobileComponent.OLFooterDyn(LListBox: TListBox; value: string);
var
  Element: TElement;
begin
  LListBox.BeginUpdate;
  Element            := TElement.Create(nil);
  Element.Left       := 5;
  Element.Right      := 5;
  Element.Width      := 2;
  Element.Height     := 2;
  Element.Fontsize   := 20;
  Element.Text       := value;
  Element.FontName   := 'Calibri';
  Element.ObjectName := 'Items' + random(10000).ToString + '_' + random(10000).ToString;
  Element.ObjectType := 'TListBoxGroupFooter';
  DataList.Add(Element);

  { CreateObject }
  Element.ObjectInstance := TListBoxGroupFooter.Create(LListBox);
  ObjectList.Add(Element.ObjectInstance);

  with TListBoxGroupFooter(Element.ObjectInstance) do
  begin
    Parent                  := LListBox;
    Text                    := Element.Text;
    OnClick                 := Element.GetObjectName;
    TextSettings.Font.Style := [TFontStyle.fsBold];
  end;

  LListBox.EndUpdate;
end;

class procedure TMobileComponent.OLHeaderDyn(LListBox: TListBox; value: string);
var
  Element: TElement;
begin
  LListBox.BeginUpdate;
  Element            := TElement.Create(nil);
  Element.Left       := 5;
  Element.Right      := 5;
  Element.Width      := 2;
  Element.Height     := 2;
  Element.Fontsize   := 14;
  Element.Text       := value;
  Element.FontName   := 'Cambria';
  Element.ObjectName := 'Items' + random(10000).ToString + '_' + random(10000).ToString;
  Element.ObjectType := 'TListBoxGroupHeader';
  DataList.Add(Element);

  { CreateObject }
  Element.ObjectInstance := TListBoxGroupHeader.Create(LListBox);
  ObjectList.Add(Element.ObjectInstance);

  with TListBoxGroupHeader(Element.ObjectInstance) do
  begin
    Parent                  := LListBox;
    Text                    := Element.Text;
    TextSettings.Font.Style := [TFontStyle.fsBold];
    OnClick                 := Element.GetObjectName;
  end;

  LListBox.EndUpdate;
end;

class procedure TMobileComponent.OLItemDyn(LListBox: TListBox; value: string);
var
  Element: TElement;
begin
  LListBox.BeginUpdate;
  Element            := TElement.Create(nil);
  Element.Left       := 5;
  Element.Right      := 5;
  Element.Width      := 2;
  Element.Height     := 2;
  Element.Fontsize   := 8;
  Element.Text       := value;
  Element.FontName   := 'Calibri';
  Element.ObjectName := 'Items' + random(10000).ToString + '_' + random(10000).ToString;
  Element.ObjectType := 'TListBoxItem';
  DataList.Add(Element);

  { CreateObject }
  Element.ObjectInstance := TListBoxItem.Create(LListBox);
  ObjectList.Add(Element.ObjectInstance);

  with TListBoxItem(Element.ObjectInstance) do
  begin
    Parent  := LListBox;
    Text    := Element.Text;
    OnClick := Element.GetObjectName;
    // TextSettings.Font.Style := [TFontStyle.fsBold];
  end;

  LListBox.EndUpdate;
end;

class function TMobileComponent.Reverse(Str: string): string;
var
  i: integer;
begin
  Result := '';
  for i  := length(Str) downto 1 do
  begin
    Result := Result + Str[i];
  end;
end;

class procedure TMobileComponent.TabControlPictureStream(LTabControl: TTabControl; LocalStream: TBytesStream);
var
  LocalTabItem: TTabItem;
  LocalImage  : TImage;
begin
  /// Item Image
  LocalTabItem        := TTabItem.Create(LTabControl);
  LocalTabItem.Parent := LTabControl;

  Sleep(1000);
  /// Image
  LocalImage       := TImage.Create(LocalTabItem);
  LocalImage.Align := TAlignLayout(9);

  LocalImage.Bitmap.LoadFromStream(LocalStream);
end;

class procedure TMobileComponent.TabControlPicture(LTabControl: TTabControl; LocalBitmap: TImage);
var
  LocalTabItem: TTabItem;
  LocalImage  : TImage;
begin
  /// Item Image
  LocalTabItem        := TTabItem.Create(LTabControl);
  LocalTabItem.Parent := LTabControl;

  Sleep(1000);
  /// Image
  LocalImage       := TImage.Create(LocalTabItem);
  LocalImage.Align := TAlignLayout(9);

  LocalImage.Bitmap := LocalBitmap.Bitmap;
end;

end.
