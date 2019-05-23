unit Providers.ProgressBar.Default;

interface

uses Providers.ProgressBar.Intf, Vcl.ComCtrls;

type
  TProgressBarDefault = class(TInterfacedObject, IProgressBar)
  private
    FProgressBar: TProgressBar;
    procedure SetMax(const Value: Cardinal);
    procedure Step; overload;
    procedure Step(const Value: Cardinal); overload;
    function Position: Cardinal;
    procedure SetPosition(const Position: Cardinal);
  public
    constructor Create(const ProgressBar: TProgressBar);
    destructor Destroy; override;
  end;

implementation

uses System.Classes;

constructor TProgressBarDefault.Create(const ProgressBar: TProgressBar);
begin
  FProgressBar := ProgressBar;
end;

destructor TProgressBarDefault.Destroy;
begin
  FProgressBar := nil;
  inherited;
end;

procedure TProgressBarDefault.SetMax(const Value: Cardinal);
begin
  FProgressBar.Max := Value;
end;

procedure TProgressBarDefault.SetPosition(const Position: Cardinal);
begin
  TThread.Synchronize(TThread.Current,
    procedure
    begin
      FProgressBar.Position := Position;
    end);
end;

function TProgressBarDefault.Position: Cardinal;
begin
  Result := Round(Int(FProgressBar.Position));
end;

procedure TProgressBarDefault.Step(const Value: Cardinal);
begin
  TThread.Synchronize(TThread.Current,
    procedure
    begin
      FProgressBar.Position := FProgressBar.Position + Value;
    end);
end;

procedure TProgressBarDefault.Step;
begin
  Self.Step(1);
end;

end.
