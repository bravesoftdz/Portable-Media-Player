program pPMP;

uses
  Vcl.Forms,
  uPMP in 'uPMP.pas' {Form1},
  Vcl.Themes,
  Vcl.Styles,
  about in 'about.pas' {AboutBox},
  uFeatures in 'uFeatures.pas' {frmfeatures},
  uHowToCreatePls in 'uHowToCreatePls.pas' {frmcreateplaylist};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Aqua Graphite');
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TAboutBox, AboutBox);
  Application.CreateForm(Tfrmfeatures, frmfeatures);
  Application.CreateForm(Tfrmcreateplaylist, frmcreateplaylist);
  Application.Run;
end.
