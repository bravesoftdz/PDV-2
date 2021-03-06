program PDV;

uses
  Vcl.Forms,
  Login in 'Login.pas' {FrmLogin},
  Menu in 'Menu.pas' {FrmMenu},
  Usuarios in 'Cadastros\Usuarios.pas' {FrmUsuarios},
  Funcionarios in 'Cadastros\Funcionarios.pas' {FrmFuncionarios},
  Cargos in 'Cadastros\Cargos.pas' {FrmCargos},
  Modulo in 'Modulo.pas' {dm: TDataModule},
  Fornecedores in 'Cadastros\Fornecedores.pas' {frmFornecedor},
  uValidaDcto in 'uValidaDcto.pas',
  Produtos in 'Cadastros\Produtos.pas' {frmProdutos},
  ImprimirBarras in 'Cadastros\ImprimirBarras.pas' {frmImprimirBarras},
  EntradasProdutos in 'Estoque\EntradasProdutos.pas' {frmEntradaProdutos},
  SaidaProdutos in 'Estoque\SaidaProdutos.pas' {frmSaidaProdutos},
  EstoqueBaixo in 'Estoque\EstoqueBaixo.pas' {frmEstoqueBaixo},
  Vendas in 'Financeiro\Vendas.pas' {frmVendas},
  CancelarItem in 'Financeiro\CancelarItem.pas' {frmCancelarItem},
  Movimentacoes in 'Financeiro\Movimentacoes.pas' {frmMovimentacoes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TfrmCancelarItem, frmCancelarItem);
  Application.CreateForm(TfrmMovimentacoes, frmMovimentacoes);
  Application.Run;
end.
