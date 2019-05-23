unit Providers.ProgressBar.Intf;

interface

type
  IProgressBar = interface
    ['{167DEF94-F49D-4FBA-A274-771A1F4A1656}']
    procedure SetMax(const Value: Cardinal);
    procedure Step; overload;
    procedure Step(const Value: Cardinal); overload;
    function Position: Cardinal;
    procedure SetPosition(const Position: Cardinal);
  end;

implementation

end.
