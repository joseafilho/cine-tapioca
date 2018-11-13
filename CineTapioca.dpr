program CineTapioca;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {fmPrincipal},
  uCadastroBase in 'uCadastroBase.pas' {fmCadastroBase},
  uDmConn in 'uDmConn.pas' {dmConn: TDataModule},
  uCadastroSalas in 'uCadastroSalas.pas' {fmCadastroSalas},
  uSystemUtils in 'uSystemUtils.pas',
  uCadastroProdutos in 'uCadastroProdutos.pas' {fmCadastroProdutos},
  uCadastroFilmes in 'uCadastroFilmes.pas' {fmCadastroFilmes},
  uCadastroSessoes in 'uCadastroSessoes.pas' {fmCadastroSessoes},
  uMovimentoVendas in 'uMovimentoVendas.pas' {fmMovimentoVendas},
  uRelatorioVendas in 'uRelatorioVendas.pas' {fmRelatorioVendas},
  uRelatorioVendasParametros in 'uRelatorioVendasParametros.pas' {fmRelatorioVendasParametros};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Cine Tapioca';
  Application.CreateForm(TdmConn, dmConn);
  Application.CreateForm(TfmPrincipal, fmPrincipal);
  Application.CreateForm(TfmRelatorioVendas, fmRelatorioVendas);
  Application.CreateForm(TfmRelatorioVendasParametros, fmRelatorioVendasParametros);
  Application.Run;

end.
