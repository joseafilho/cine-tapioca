unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.Menus, Vcl.ToolWin;

type
  TfmPrincipal = class(TForm)
    mmPrincipal: TMainMenu;
    Cadastros1: TMenuItem;
    Movimentos1: TMenuItem;
    Relatrios1: TMenuItem;
    Salas1: TMenuItem;
    Filmes1: TMenuItem;
    Produtos1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    stPrincipal: TStatusBar;
    tbPrincipal: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    Sesses1: TMenuItem;
    procedure Salas1Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure Filmes1Click(Sender: TObject);
    procedure Sesses1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPrincipal: TfmPrincipal;

implementation

{$R *.dfm}

uses
  uCadastroSalas, uCadastroProdutos, uCadastroFilmes, uCadastroSessoes;

procedure TfmPrincipal.Filmes1Click(Sender: TObject);
begin
  if fmCadastroFilmes = nil then
    fmCadastroFilmes := TfmCadastroFilmes.Create(Self);

  fmCadastroFilmes.Show;
end;

procedure TfmPrincipal.Produtos1Click(Sender: TObject);
begin
  if fmCadastroProdutos = nil then
    fmCadastroProdutos := TfmCadastroProdutos.Create(Self);

  fmCadastroProdutos.Show;
end;

procedure TfmPrincipal.Salas1Click(Sender: TObject);
begin
  if fmCadastroSalas = nil then
    fmCadastroSalas := TfmCadastroSalas.Create(Self);

  fmCadastroSalas.Show;
end;

procedure TfmPrincipal.Sesses1Click(Sender: TObject);
begin
  if fmCadastroSessoes = nil then
    fmCadastroSessoes := TfmCadastroSessoes.Create(Self);

  fmCadastroSessoes.Show;
end;

end.
