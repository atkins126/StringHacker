unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Unit1, Unit3, ExtCtrls;

type
  TSettingsForma = class(TForm)
    WordWrapCheck: TCheckBox;
    LangRadioGroup: TRadioGroup;
    ChgEditFontBtn: TButton;
    FontDlg: TFontDialog;
    procedure WordWrapCheckClick(Sender: TObject);
    procedure LangRadioGroupClick(Sender: TObject);
    procedure ChgEditFontBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SettingsForma: TSettingsForma;

implementation

{$R *.dfm}

procedure SwitchToEnglish;
begin
  MainForma.HackButton.Caption := 'Apply';
  MainForma.IntegerRadio.Caption := 'Integer';
  MainForma.StringRadio.Caption := 'String';
  MainForma.LoadButton.Caption := 'Load...';
  MainForma.SaveButton.Caption := 'Save';
  MainForma.SaveAsButton.Caption := 'Save as...';
  MainForma.SettingsButton.Caption := 'Settings';
  MainForma.AboutButton.Caption := 'About';
  MainForma.ExitButton.Caption := 'Exit';
  SettingsForma.Caption := 'Settings';
  SettingsForma.ChgEditFontBtn.Caption := 'Change editor font';
  SettingsForma.WordWrapCheck.Caption := 'Word wrap';
  SettingsForma.LangRadioGroup.Caption := 'Language:';
  AboutForma.Caption := 'About';
  AboutForma.VersionLbl.Caption := 'String Hacker, version 1.6L (June 12, 2022)';
  AboutForma.CopyrightLbl.Caption := 'Copyright (c) Ivan Movchan, 2022';
end;

procedure SwitchToRussian;
begin
  MainForma.HackButton.Caption := '���������';
  MainForma.IntegerRadio.Caption := '����� �����';
  MainForma.StringRadio.Caption := '������';
  MainForma.LoadButton.Caption := '���������...';
  MainForma.SaveButton.Caption := '��������';
  MainForma.SaveAsButton.Caption := '�������� �...';
  MainForma.SettingsButton.Caption := '���������';
  MainForma.AboutButton.Caption := '� �����';
  MainForma.ExitButton.Caption := '�����';
  SettingsForma.Caption := '���������';
  SettingsForma.ChgEditFontBtn.Caption := '������� ����� ���������';
  SettingsForma.WordWrapCheck.Caption := '������� ����';
  SettingsForma.LangRadioGroup.Caption := '����:';
  AboutForma.Caption := '� �����';
  AboutForma.VersionLbl.Caption := 'String Hacker, ������ 1.6L (������ 12 ���� 2022 ����)';
  AboutForma.CopyrightLbl.Caption := '�����: ���� ������. Copyright (c) 2022';
end;

procedure TSettingsForma.WordWrapCheckClick(Sender: TObject);
begin
MainForma.StuffMemo.WordWrap := WordWrapCheck.Checked;
if WordWrapCheck.Checked
then MainForma.StuffMemo.ScrollBars := ssVertical
else MainForma.StuffMemo.ScrollBars := ssBoth;
end;

procedure TSettingsForma.LangRadioGroupClick(Sender: TObject);
begin
if LangRadioGroup.ItemIndex = 0
then SwitchToEnglish
else if LangRadioGroup.ItemIndex = 1
then SwitchToRussian;
end;

procedure TSettingsForma.ChgEditFontBtnClick(Sender: TObject);
begin
if FontDlg.Execute then MainForma.StuffMemo.Font := FontDlg.Font;
end;

end.
