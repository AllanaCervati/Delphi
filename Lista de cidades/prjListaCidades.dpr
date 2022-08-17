program prjListaCidades;

uses
  Vcl.Forms,
  untListaCidades in 'untListaCidades.pas' {Cidades};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TCidades, Cidades);
  Application.Run;
end.
