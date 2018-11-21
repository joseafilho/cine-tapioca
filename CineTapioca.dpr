program CineTapioca;

uses
  Vcl.Forms,
  Vcl.Controls,
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
  uRelatorioVendasParametros in 'uRelatorioVendasParametros.pas' {fmRelatorioVendasParametros},
  uCadastroUsuarios in 'uCadastroUsuarios.pas' {fmCadastroUsuarios},
  uDialogoLogin in 'uDialogoLogin.pas' {fmDialogoLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Cine Tapioca';

  Application.CreateForm(TfmDialogoLogin, fmDialogoLogin);

  if fmDialogoLogin.ShowModal = mrOk then
  begin
    fmDialogoLogin.Free;
    Application.CreateForm(TdmConn, dmConn);
    Application.CreateForm(TfmPrincipal, fmPrincipal);
    Application.Run;
  end
  else
    Application.Terminate;
end.
