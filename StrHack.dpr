program StrHack;

uses
  Forms,
  Unit1 in 'Unit1.pas' {MainForma},
  Unit2 in 'Unit2.pas' {SettingsForma},
  Unit3 in 'Unit3.pas' {AboutForma};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'String Hacker';
  Application.CreateForm(TMainForma, MainForma);
  Application.CreateForm(TSettingsForma, SettingsForma);
  Application.CreateForm(TAboutForma, AboutForma);
  Application.Run;
end.
