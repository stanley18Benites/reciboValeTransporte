unit uRecibo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport;

type
  TfrmRecibo = class(TForm)
    RLReport1: TRLReport;
    RLPanel1: TRLPanel;
    lbNome: TRLLabel;
    lbCPF: TRLLabel;
    lbCidade: TRLLabel;
    lbEstado: TRLLabel;
    lbReciboValeTransporte: TRLLabel;
    RLPanel2: TRLPanel;
    lbCargo: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel9: TRLLabel;
    lbMes: TRLLabel;
    RLLabel1: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    lbCidade_: TRLLabel;
    lbFuncionario: TRLLabel;
    lbData: TRLLabel;
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
