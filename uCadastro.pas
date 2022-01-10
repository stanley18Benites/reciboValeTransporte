unit uCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask;

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
    cbItens: TComboBox;
    edtFuncionario: TEdit;
    maskCPF_CNPJ: TMaskEdit;
    procedure Button1Click(Sender: TObject);
  private
    procedure EnviarInformacoes();
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CADASTRO: TCADASTRO;

implementation
uses uRecibo;
{$R *.dfm}

procedure TCADASTRO.Button1Click(Sender: TObject);
begin
  frmRecibo:= TfrmRecibo.Create(Application);
  try
    EnviarInformacoes();
    frmRecibo.RLReport1.Preview()
  finally
    frmRecibo.Free;
  end;
end;

procedure TCADASTRO.EnviarInformacoes();
begin
  try
    frmRecibo.lbNome_Empregado.Caption := edtFuncionario.Text ;
    frmRecibo.lbNome_Empregador.Caption := edtEmpregador.Text;
      if edtCargo_Empregador.Text <> null then
        frmRecibo.lbNome_Empregador.Caption := edtEmpregador.Text + ' - ' + edtCargo_Empregador.Text;
    frmRecibo.lbCidadeEstado.Caption := edtCidade.Text + ' - ' + edtEstado.Text;
  finally
    close;
  end;
  end;

end.
