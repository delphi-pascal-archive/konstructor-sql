unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TInf = class(TForm)
    BTN_OK: TButton;
    Disc: TEdit;
    Kol_Vop: TEdit;
    Kol_Var: TEdit;
    Time: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure BTN_OKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Inf: TInf;

implementation

uses Unit1, Unit5;

{$R *.dfm}

procedure TInf.Button1Click(Sender: TObject);
begin
Close;
end;

procedure TInf.BTN_OKClick(Sender: TObject);
label q1;
begin
if((Disc.Text='')or(Kol_Vop.Text ='')or(Kol_Var.Text ='')or(Time.Text =''))then
begin
ShowMessage('Не все поля заполнены');
end
else
begin
if((Kol_Var.Text='3')or(Kol_Var.Text='4')or(Kol_Var.Text='5')or(Kol_Var.Text='6'))then
begin
Konstryktor.ADOTable3.Insert;
Konstryktor.ADOTable3.FieldByName('Название дисциплины').AsString:=Disc.Text;
Konstryktor.ADOTable3.FieldByName('Количество вопросов').AsString:=Kol_Vop.Text;
Konstryktor.ADOTable3.FieldByName('Вариантов').AsString:=Kol_Var.Text;
Konstryktor.ADOTable3.FieldByName('Время').AsString:=Time.Text;
Konstryktor.ADOTable3.post;
Close;
q1:end else

begin
form5.showmodal;
Kol_Var.Clear;
goto q1;
end

end;
end;

end.
