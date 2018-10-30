unit uMovimentoVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, Vcl.DBCtrls, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls,
  Vcl.Mask, Vcl.ButtonGroup, System.ImageList, Vcl.ImgList;

type
  TfmMovimentoVendas = class(TForm)
    pnTop: TPanel;
    qrSessoes: TFDQuery;
    dsSessoes: TDataSource;
    qrSessoesID: TIntegerField;
    qrSessoesNOME: TStringField;
    qrSessoesHORA: TTimeField;
    qrSessoesFILME: TIntegerField;
    qrSessoesSALA: TIntegerField;
    btIniciar: TButton;
    btCancelar: TButton;
    btFinalizar: TButton;
    pnDados: TPanel;
    Label1: TLabel;
    lkSessoes: TDBLookupComboBox;
    edHora: TDBEdit;
    Label2: TLabel;
    lkFilmes: TDBLookupComboBox;
    qrFilmes: TFDQuery;
    dsFilmes: TDataSource;
    Label3: TLabel;
    qrFilmesID: TIntegerField;
    qrFilmesNOME: TStringField;
    qrFilmesDUBLADO: TSmallintField;
    qrFilmesCLASSIFICADO: TSmallintField;
    qrFilmesTIPO: TSmallintField;
    Label4: TLabel;
    edSala: TDBEdit;
    qrSessoesNOME_SALA: TStringField;
    ilCadeiras: TImageList;
    bgCadeiras: TButtonGroup;
    Label5: TLabel;
    qrSessoesCAPACIDADE: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure qrFilmesAfterScroll(DataSet: TDataSet);
    procedure qrSessoesAfterScroll(DataSet: TDataSet);
    procedure bgCadeirasButtonClicked(Sender: TObject; Index: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMovimentoVendas: TfmMovimentoVendas;

implementation

{$R *.dfm}

uses uDmConn;

const
  CADEIRA_DESOCUPADA = 0;
  CADEIRA_OCUPADA = 1;

procedure TfmMovimentoVendas.bgCadeirasButtonClicked(Sender: TObject;
  Index: Integer);
begin
  if bgCadeiras.Items[Index].ImageIndex = CADEIRA_DESOCUPADA then
    bgCadeiras.Items[Index].ImageIndex := CADEIRA_OCUPADA
  else
    bgCadeiras.Items[Index].ImageIndex := CADEIRA_DESOCUPADA;
end;

procedure TfmMovimentoVendas.FormShow(Sender: TObject);
begin
  qrFilmes.Open;
end;

procedure TfmMovimentoVendas.qrFilmesAfterScroll(DataSet: TDataSet);
begin
  qrSessoes.Close;
  qrSessoes.ParamByName('FILME').AsInteger := qrFilmesID.AsInteger;
  qrSessoes.Open;
end;

procedure TfmMovimentoVendas.qrSessoesAfterScroll(DataSet: TDataSet);
var
  I: integer;
  Cadeira: TGrpButtonItem;
begin
  bgCadeiras.Items.Clear;

  for I := 0 to qrSessoesCAPACIDADE.AsInteger - 1 do
  begin
    Cadeira := bgCadeiras.Items.Add;
    Cadeira.ImageIndex := CADEIRA_DESOCUPADA;
  end;
end;

end.
