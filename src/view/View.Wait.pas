unit View.Wait;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls, dxGDIPlusClasses, Vcl.WinXCtrls, Vcl.Samples.Gauges;

type
  TFrmWait = class(TForm)
    lblContent: TLabel;
    ActivityIndicator: TActivityIndicator;
    pbWait: TGauge;
  end;

implementation

{$R *.dfm}

end.
