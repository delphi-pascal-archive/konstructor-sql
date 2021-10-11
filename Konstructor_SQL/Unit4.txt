unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg;

type
  Tlogo = class(TForm)
    Timer2: TTimer;
    Image1: TImage;
    procedure Timer2Timer(Sender: TObject);
    procedure FormClick(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  logo: Tlogo;

implementation

{$R *.dfm}

procedure Tlogo.Timer2Timer(Sender: TObject);
begin
Close;
end;

procedure Tlogo.FormClick(Sender: TObject);
begin
close;
end;

procedure Tlogo.Image1Click(Sender: TObject);
begin
logo.Close;
end;

end.
