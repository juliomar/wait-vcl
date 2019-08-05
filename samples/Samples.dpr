program Samples;

uses
  Vcl.Forms,
  Providers.Main in 'src\providers\Providers.Main.pas' {FrmMain},
  VCL.Wait in '..\src\VCL.Wait.pas',
  View.Wait in '..\src\view\View.Wait.pas' {FrmWait},
  Providers.ProgressBar.Default in '..\src\providers\Providers.ProgressBar.Default.pas',
  Providers.ProgressBar.Intf in '..\src\providers\Providers.ProgressBar.Intf.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
