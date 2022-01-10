unit uCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TCADASTRO = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edtEmpregador: TEdit;
    edtCargo_Empregador: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Panel2: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    edtDiasUteis: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    edtFuncionario: TEdit;
    edtCargo_Funcionario: TEdit;
    edtValPago: TEdit;
    edtMes: TEdit;
    edtPeriodo: TEdit;
    edtValPasse: TEdit;
    edtIdaVolta: TEdit;
    edtCidade: TEdit;
    edtEstado: TEdit;
    edtData: TEdit;
    Button1: TButton;
    Button2: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CADASTRO: TCADASTRO;

implementation

{$R *.dfm}

end.
