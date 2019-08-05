unit Providers.Main;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, VCL.Wait, Vcl.StdCtrls;

type
  TFrmMain = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}

procedure TFrmMain.Button1Click(Sender: TObject);
var
  Waiting: TWait;
begin
  Waiting := TWait.Create('Wait...');
  Waiting.Start(
    procedure
    var
      I: Integer;
    begin
      Waiting.ProgressBar.SetMax(100);
      for I := 1 to 100 do
      begin
        Waiting.SetContent('Wait... ' + I.ToString + ' of 100').ProgressBar.Step();
        Sleep(100); // Your code here!!!
      end;
    end);
end;

procedure TFrmMain.Button2Click(Sender: TObject);
begin
  TWait.Create('Wait...').Start(
    procedure
    begin
      Sleep(1500); // Your code here!!!
    end);
end;

end.
