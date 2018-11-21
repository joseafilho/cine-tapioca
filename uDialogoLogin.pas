unit uDialogoLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfmDialogoLogin = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmDialogoLogin: TfmDialogoLogin;

implementation

{$R *.dfm}

procedure TfmDialogoLogin.Button1Click(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfmDialogoLogin.Button2Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

end.
