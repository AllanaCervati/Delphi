program prjMultiplicacao;

uses
  Vcl.Forms,
  untMultiplicacao in 'untMultiplicacao.pas' {edtFim};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TedtFim, edtFim);
  Application.Run;
end.
