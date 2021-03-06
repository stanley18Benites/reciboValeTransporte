unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TMENU = class(TForm)
    lbNome: TLabel;
    btnEntrar: TButton;
    Button2: TButton;
    procedure btnEntrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MENU: TMENU;

implementation
  uses uCadastro;
{$R *.dfm}

procedure TMENU.btnEntrarClick(Sender: TObject);
begin
  cadastro := tCadastro.Create(Application);
  try
    CADASTRO.ShowModal;
  finally
    CADASTRO.Free;
  end;
end;

end.
