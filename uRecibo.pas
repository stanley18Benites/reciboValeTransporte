unit uRecibo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport;

type
  TfrmRecibo = class(TForm)
    RLReport1: TRLReport;
    RLPanel1: TRLPanel;
    lbNome_Empregador: TRLLabel;
    lbCidadeEstado: TRLLabel;
    lbReciboValeTransporte: TRLLabel;
    RLPanel2: TRLPanel;
    lbCargo: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    lbNome_Empregado: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel1: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel10: TRLLabel;
    lbQuantia: TRLLabel;
    RLLabel12: TRLLabel;
    lbValorExtenso: TRLLabel;
    lbFuncionario: TRLLabel;
    lbData: TRLLabel;
    RLLabel5: TRLLabel;
    lbNomeEmpregador: TRLLabel;
    lbMes: TRLLabel;
    lbPeriodo: TRLLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRecibo: TfrmRecibo;

implementation

{$R *.dfm}

end.
