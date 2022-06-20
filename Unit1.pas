unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, XPMan, ExtCtrls, Buttons;

type
  TMainForma = class(TForm)
    StuffMemo: TMemo;
    HackButton: TButton;
    JustXPManifest: TXPManifest;
    CtlPanel: TPanel;
    ANDRadio: TRadioButton;
    ORRadio: TRadioButton;
    XORRadio: TRadioButton;
    NOTRadio: TRadioButton;
    LoadButton: TButton;
    SaveButton: TButton;
    SaveAsButton: TButton;
    JustOpenDialog: TOpenDialog;
    JustSaveDialog: TSaveDialog;
    NANDRadio: TRadioButton;
    NORRadio: TRadioButton;
    SettingsButton: TBitBtn;
    AboutButton: TBitBtn;
    ExitButton: TBitBtn;
    StringRadio: TRadioButton;
    IntegerRadio: TRadioButton;
    KeyEdit: TEdit;
    SHLRadio: TRadioButton;
    SHRRadio: TRadioButton;
    RCLRadio: TRadioButton;
    RCRRadio: TRadioButton;
    procedure KeyEditKeyPress(Sender: TObject; var Key: Char);
    procedure HackButtonClick(Sender: TObject);
    procedure LoadButtonClick(Sender: TObject);
    procedure SaveButtonClick(Sender: TObject);
    procedure SaveAsButtonClick(Sender: TObject);
    procedure SettingsButtonClick(Sender: TObject);
    procedure AboutButtonClick(Sender: TObject);
    procedure ExitButtonClick(Sender: TObject);
    procedure KeyEditChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForma: TMainForma;
  fn: String;

implementation

uses Unit2, Unit3;

{$R *.dfm}

procedure TMainForma.KeyEditKeyPress(Sender: TObject; var Key: Char);
begin
if IntegerRadio.Checked
then begin
if not ((Key >= #48) and (Key <= #57)) and (Key <> '-') and (Key <> #13) and (Key <> #8)
then begin
Key := #0;
MessageBeep(MB_ICONERROR);
end;
end;
end;

procedure HackStringIK(key: Integer; opr: Integer);
var
i: Integer;
x, y: String;
begin
x := MainForma.StuffMemo.Text; y := '';
for i := 1 to Length(x)
do begin
case opr of
0: y := y + Chr(Ord(x[i]) and key);
1: y := y + Chr(Ord(x[i]) or key);
2: y := y + Chr(Ord(x[i]) xor key);
3: y := y + Chr(not (Ord(x[i]) and key));
4: y := y + Chr(not (Ord(x[i]) or key));
5: y := y + Chr(Ord(x[i]) shl key);
6: y := y + Chr(Ord(x[i]) shr key);
end;
end;
MainForma.StuffMemo.Text := y;
end;

procedure HackStringSK(key: String; opr: Integer);
var
i, k: Integer;
x, y: String;
begin
k := 1;
x := MainForma.StuffMemo.Text; y := '';
for i := 1 to Length(x)
do begin
case opr of
0: y := y + Chr(Ord(x[i]) and Ord(key[k]));
1: y := y + Chr(Ord(x[i]) or Ord(key[k]));
2: y := y + Chr(Ord(x[i]) xor Ord(key[k]));
3: y := y + Chr(not (Ord(x[i]) and Ord(key[k])));
4: y := y + Chr(not (Ord(x[i]) or Ord(key[k])));
5: y := y + Chr(Ord(x[i]) shl Ord(key[k]));
6: y := y + Chr(Ord(x[i]) shr Ord(key[k]));
end;
k := k + 1;
if k > Length(key) then k := 0;
end;
MainForma.StuffMemo.Text := y;
end;

procedure JustNOT;
var
i: Integer;
x, y: String;
begin
x := MainForma.StuffMemo.Text; y := '';
for i := 1 to Length(x)
do y := y + Chr(not Ord(x[i]));
MainForma.StuffMemo.Text := y;
end;

procedure TMainForma.HackButtonClick(Sender: TObject);
begin
if IntegerRadio.Checked then begin
if ANDRadio.Checked then HackStringIK(StrToInt(KeyEdit.Text), 0);
if ORRadio.Checked then HackStringIK(StrToInt(KeyEdit.Text), 1);
if XORRadio.Checked then HackStringIK(StrToInt(KeyEdit.Text), 2);
if NANDRadio.Checked then HackStringIK(StrToInt(KeyEdit.Text), 3);
if NORRadio.Checked then HackStringIK(StrToInt(KeyEdit.Text), 4);
if SHLRadio.Checked then HackStringIK(StrToInt(KeyEdit.Text), 5);
if SHRRadio.Checked then HackStringIK(StrToInt(KeyEdit.Text), 6);
end
else if StringRadio.Checked then begin
if ANDRadio.Checked then HackStringSK(KeyEdit.Text, 0);
if ORRadio.Checked then HackStringSK(KeyEdit.Text, 1);
if XORRadio.Checked then HackStringSK(KeyEdit.Text, 2);
if NANDRadio.Checked then HackStringSK(KeyEdit.Text, 3);
if NORRadio.Checked then HackStringSK(KeyEdit.Text, 4);
if SHLRadio.Checked then HackStringSK(KeyEdit.Text, 5);
if SHRRadio.Checked then HackStringSK(KeyEdit.Text, 6);
end;
end;

procedure TMainForma.LoadButtonClick(Sender: TObject);
begin
if JustOpenDialog.Execute then begin
StuffMemo.Lines.LoadFromFile(JustOpenDialog.FileName);
fn:=JustOpenDialog.FileName; MainForma.Caption := 'String Hacker ['+fn+']';
end;
end;

procedure TMainForma.SaveButtonClick(Sender: TObject);
begin
if fn <> ''
then StuffMemo.Lines.SaveToFile(fn)
else SaveAsButton.Click;
end;

procedure TMainForma.SaveAsButtonClick(Sender: TObject);
begin
if JustSaveDialog.Execute then begin
StuffMemo.Lines.SaveToFile(JustSaveDialog.FileName);
fn:=JustSaveDialog.FileName; MainForma.Caption := 'String Hacker ['+fn+']';
end;
end;

procedure TMainForma.SettingsButtonClick(Sender: TObject);
begin
SettingsForma.Show;
end;

procedure TMainForma.AboutButtonClick(Sender: TObject);
begin
AboutForma.Show;
end;

procedure TMainForma.ExitButtonClick(Sender: TObject);
begin
Close;
end;

procedure TMainForma.KeyEditChange(Sender: TObject);
begin
HackButton.Enabled := not (KeyEdit.Text = '');
end;

end.
