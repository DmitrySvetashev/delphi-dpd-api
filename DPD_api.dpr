program DPD_api;

uses
  Vcl.Forms,
  Main in 'Main.pas' {Form_main},
  geography2 in 'geography2.pas',
  calculator2 in 'calculator2.pas',
  common in 'common.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm_main, Form_main);
  Application.Run;
end.
