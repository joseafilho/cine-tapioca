unit uSystemUtils;

interface

procedure ShowInformation(const Msg: string);
function ShowQuestion(const Msg: string): boolean;

implementation

uses
  Vcl.Forms, Winapi.Windows, Vcl.Controls;

procedure ShowInformation(const Msg: string);
begin
  Application.MessageBox(PWideChar(Msg), PWideChar(Application.Title),
    MB_ICONINFORMATION + MB_OK);
end;

function ShowQuestion(const Msg: string): boolean;
begin
  Result := Application.MessageBox(PWideChar(Msg), PWideChar(Application.Title),
    MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2) = mrYes;
end;

end.
