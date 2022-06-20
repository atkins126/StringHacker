unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ShellAPI;

type
  TAboutForma = class(TForm)
    VersionLbl: TLabel;
    CopyrightLbl: TLabel;
    WebsiteLbl: TLabel;
    procedure WebsiteLblMouseLeave(Sender: TObject);
    procedure WebsiteLblMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure WebsiteLblMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure WebsiteLblMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure WebsiteLblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutForma: TAboutForma;

implementation

{$R *.dfm}

procedure TAboutForma.WebsiteLblMouseLeave(Sender: TObject);
begin
WebsiteLbl.Font.Color := clBlack;
end;

procedure TAboutForma.WebsiteLblMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
WebsiteLbl.Font.Color := clRed;
end;

procedure TAboutForma.WebsiteLblMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
WebsiteLbl.Font.Color := clBlack;
end;

procedure TAboutForma.WebsiteLblMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
WebsiteLbl.Font.Color := clBlue;
end;

procedure TAboutForma.WebsiteLblClick(Sender: TObject);
begin
ShellExecute(0, 'open', 'https://nobootrecord.github.io', nil, nil, SW_SHOWNORMAL);
end;

end.
