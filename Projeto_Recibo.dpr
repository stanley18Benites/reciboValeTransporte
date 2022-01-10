program Projeto_Recibo;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {MENU},
  uCadastro in 'uCadastro.pas' {CADASTRO};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMENU, MENU);
  Application.Run;
end.
