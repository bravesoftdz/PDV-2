unit Menu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TFrmMenu = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Produtos1: TMenuItem;
    Fornecedores1: TMenuItem;
    Estoque1: TMenuItem;
    Movimentaes1: TMenuItem;
    Relatrios1: TMenuItem;
    Sair1: TMenuItem;
    Usurios1: TMenuItem;
    Funcionrios1: TMenuItem;
    Cargos1: TMenuItem;
    Sair2: TMenuItem;
    EntradasProdutos1: TMenuItem;
    SadasProdutos1: TMenuItem;
    Nvel1: TMenuItem;
    Vendas1: TMenuItem;
    Movimentaes2: TMenuItem;
    Gastos1: TMenuItem;
    Pagamentos1: TMenuItem;
    ConsultarVendas1: TMenuItem;
    procedure Usurios1Click(Sender: TObject);
    procedure Funcionrios1Click(Sender: TObject);
    procedure Cargos1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure Sair2Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure EntradasProdutos1Click(Sender: TObject);
    procedure SadasProdutos1Click(Sender: TObject);
    procedure Nvel1Click(Sender: TObject);
    procedure Vendas1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMenu: TFrmMenu;

implementation

{$R *.dfm}

uses Usuarios, Funcionarios, Cargos, Modulo, Fornecedores, Produtos,
  EntradasProdutos, SaidaProdutos, EstoqueBaixo, Vendas;

procedure TFrmMenu.Cargos1Click(Sender: TObject);
begin
  FrmCargos := TFrmCargos.Create(Self);
  FrmCargos.ShowModal;
end;

procedure TFrmMenu.EntradasProdutos1Click(Sender: TObject);
begin
  frmEntradaProdutos := TfrmEntradaProdutos.Create(Self);
  frmEntradaProdutos.ShowModal;
end;

procedure TFrmMenu.FormShow(Sender: TObject);
begin
  if (cargoUsuario = 'Admin') or (cargoUsuario = 'Gerente') then
  begin
    Usurios1.Enabled := True;
  end;

end;

procedure TFrmMenu.Fornecedores1Click(Sender: TObject);
begin
  frmFornecedor := TfrmFornecedor.Create(Self);
  frmFornecedor.ShowModal;
end;

procedure TFrmMenu.Funcionrios1Click(Sender: TObject);
begin
  FrmFuncionarios := TFrmFuncionarios.Create(Self);
  FrmFuncionarios.ShowModal;
end;

procedure TFrmMenu.Nvel1Click(Sender: TObject);
begin
  frmEstoqueBaixo := TfrmEstoqueBaixo.Create(Self);
  frmEstoqueBaixo.ShowModal;
end;

procedure TFrmMenu.Produtos1Click(Sender: TObject);
begin
  frmProdutos := TfrmProdutos.Create(Self);
  frmProdutos.ShowModal;
end;

procedure TFrmMenu.SadasProdutos1Click(Sender: TObject);
begin
  frmSaidaProdutos := TfrmSaidaProdutos.Create(Self);
  frmSaidaProdutos.ShowModal;
end;

procedure TFrmMenu.Sair2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmMenu.Usurios1Click(Sender: TObject);
begin
  FrmUsuarios := TFrmUsuarios.Create(Self);
  FrmUsuarios.ShowModal;
end;

procedure TFrmMenu.Vendas1Click(Sender: TObject);
begin
  frmVendas := TfrmVendas.Create(Self);
  frmVendas.ShowModal;
end;

end.
