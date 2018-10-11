unit uCadastroSessoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroBase, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Mask;

type
  TfmCadastroSessoes = class(TfmCadastroBase)
    qrDadosNOME: TStringField;
    qrDadosHORA: TTimeField;
    qrDadosFILME: TIntegerField;
    qrDadosSALA: TIntegerField;
    qrDadosID: TFDAutoIncField;
    Id: TLabel;
    edId: TDBEdit;
    Label1: TLabel;
    edNome: TDBEdit;
    Label2: TLabel;
    tpHora: TDateTimePicker;
    DBLookupComboBox1: TDBLookupComboBox;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    FDQuery1ID: TIntegerField;
    FDQuery1NOME: TStringField;
    FDQuery1CAPACIDADE: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  protected
    function ValidarDados: boolean; override;
  public
    { Public declarations }
  end;

var
  fmCadastroSessoes: TfmCadastroSessoes;

implementation

{$R *.dfm}

uses uDmConn;

{ TfmCadastroSessoes }

procedure TfmCadastroSessoes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  fmCadastroSessoes := nil;
end;

procedure TfmCadastroSessoes.FormShow(Sender: TObject);
begin
  inherited;
  FDQuery1.Open;
end;

function TfmCadastroSessoes.ValidarDados: boolean;
begin
  Result := true;
end;

end.
