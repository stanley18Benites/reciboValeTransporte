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
    GroupBox1: TGroupBox;
    MaskEdit3: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label17: TLabel;
    Label9: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure cbItensClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure edtValPagoKeyUp(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure edtValPasseKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    procedure EnviarInformacoes();
    procedure RetirarPontos(s:String);
    procedure evento(Sender: TObject; var Key: Word; Shift: TShiftState);
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
    RetirarPontos(edtValPago.text);
    frmRecibo.RLReport1.Preview()
  finally
    frmRecibo.Free;
  end;
end;

procedure TCADASTRO.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TCADASTRO.cbItensClick(Sender: TObject);
begin
  if cbItens.ItemIndex = 0 then
    begin
      maskCPF_CNPJ.Enabled := False;
      maskCPF_CNPJ.EditMask := '';
    end;
  if cbItens.ItemIndex = 1 then
    begin
      maskCPF_CNPJ.Enabled := true;
      maskCPF_CNPJ.EditMask := '###.###.###-##;1;_';
    end;
  if cbItens.ItemIndex = 2 then
    begin
      maskCPF_CNPJ.Enabled := true;
      maskCPF_CNPJ.EditMask := '##.###.###/####-##;1;_'
    end;
end;

procedure TCADASTRO.edtValPagoKeyUp(Sender: TObject; var Key: Word;Shift: TShiftState);
var
  s: String;
begin
  if (Key in [96..107]) or (Key in [48..57]) then
     begin
      S := edtValPago.Text;
      S := StringReplace(S,',','',[rfReplaceAll]);
      S := StringReplace(S,'.','',[rfReplaceAll]);
      if Length(s) = 3 then
        begin
          s := Copy(s,1,1)+','+Copy(S,2,15);
          edtValPago.Text := S;
          edtValPago.SelStart := Length(S);
        end
      else
        if (Length(s) > 3) and (Length(s) < 6) then
          begin
            s := Copy(s,1,length(s)-2)+','+Copy(S,length(s)-1,15);
            edtValPago.Text := s;
            edtValPago.SelStart := Length(S);
          end
        else
          if (Length(s) >= 6) and (Length(s) < 9) then
            begin
              s := Copy(s,1,length(s)-5)+'.'+Copy(s,length(s)-4,3)+','+Copy(S,length(s)-1,15);
              edtValPago.Text := s;
              edtValPago.SelStart := Length(S);
            end
          else
            if (Length(s) >= 9) and (Length(s) < 12) then
              begin
                s := Copy(s,1,length(s)-8)+'.'+Copy(s,length(s)-7,3)+'.'+
                       Copy(s,length(s)-4,3)+','+Copy(S,length(s)-1,15);
                edtValPago.Text := s;
                edtValPago.SelStart := Length(S);
              end
            else
              if (Length(s) >= 12) and (Length(s) < 15)  then
                begin
                  s := Copy(s,1,length(s)-11)+'.'+Copy(s,length(s)-10,3)+'.'+
                          Copy(s,length(s)-7,3)+'.'+Copy(s,length(s)-4,3)+','+Copy(S,length(s)-1,15);
                  edtValPago.Text := s;
                  edtValPago.SelStart := Length(S);
                end;
      end;

end;

procedure TCADASTRO.edtValPasseKeyUp(Sender: TObject; var Key:Word;
  Shift: TShiftState);
begin
  evento(Sender,Key,Shift);
end;

procedure TCADASTRO.EnviarInformacoes();

begin
  try
    frmRecibo.lbNome_Empregado.Caption := edtFuncionario.Text ;
    frmRecibo.lbFuncionario.Caption := edtFuncionario.Text;
    frmRecibo.lbNome_Empregador.Caption := edtEmpregador.Text;
    frmRecibo.lbNomeEmpregador.Caption := edtEmpregador.Text;
      if edtCargo_Empregador.Text <> EmptyStr then
        frmRecibo.lbNome_Empregador.Caption := edtEmpregador.Text + ' - ' + edtCargo_Empregador.Text;
    frmRecibo.lbCidadeEstado.Caption := edtCidade.Text + ' - ' + edtEstado.Text;
    frmRecibo.lbQuantia.caption := edtValPago.Text;
    frmRecibo.lbReciboValeTransporte.Caption := frmRecibo.lbReciboValeTransporte.Caption + edtMes.Text;
  finally

  end;
  end;

procedure TCADASTRO.RetirarPontos(s : String);
var
 i:Integer;
 texto:String;
 tamanho:Integer;
begin
 Texto:= s;
 tamanho:=Length(texto);
 i:=1;
 while i <= tamanho do
 begin
   if (pos(Texto[i],'.') > 0)or
      (pos(Texto[i],'/') > 0) Then
     begin
      delete(texto,i,1);
      i:=i-1;
      tamanho:=tamanho-1;
     end;
   i:=i+1;
 end;
 edtValPago.Text:=Texto;
end;

procedure TCADASTRO.evento(Sender: TObject; var Key: Word;Shift: TShiftState);
var
  s: String;
begin
  if (Key in [96..107]) or (Key in [48..57]) then
     begin
      S := edtValPago.Text;
      S := StringReplace(S,',','',[rfReplaceAll]);
      S := StringReplace(S,'.','',[rfReplaceAll]);
      if Length(s) = 3 then
        begin
          s := Copy(s,1,1)+','+Copy(S,2,15);
          edtValPago.Text := S;
          edtValPago.SelStart := Length(S);
        end
      else
        if (Length(s) > 3) and (Length(s) < 6) then
          begin
            s := Copy(s,1,length(s)-2)+','+Copy(S,length(s)-1,15);
            edtValPago.Text := s;
            edtValPago.SelStart := Length(S);
          end
        else
          if (Length(s) >= 6) and (Length(s) < 9) then
            begin
              s := Copy(s,1,length(s)-5)+'.'+Copy(s,length(s)-4,3)+','+Copy(S,length(s)-1,15);
              edtValPago.Text := s;
              edtValPago.SelStart := Length(S);
            end
          else
            if (Length(s) >= 9) and (Length(s) < 12) then
              begin
                s := Copy(s,1,length(s)-8)+'.'+Copy(s,length(s)-7,3)+'.'+
                       Copy(s,length(s)-4,3)+','+Copy(S,length(s)-1,15);
                edtValPago.Text := s;
                edtValPago.SelStart := Length(S);
              end
            else
              if (Length(s) >= 12) and (Length(s) < 15)  then
                begin
                  s := Copy(s,1,length(s)-11)+'.'+Copy(s,length(s)-10,3)+'.'+
                          Copy(s,length(s)-7,3)+'.'+Copy(s,length(s)-4,3)+','+Copy(S,length(s)-1,15);
                  edtValPago.Text := s;
                  edtValPago.SelStart := Length(S);
                end;
      end;

end;
procedure TCADASTRO.FormCreate(Sender: TObject);
begin
  maskCPF_CNPJ.Enabled := false;
end;

end.
