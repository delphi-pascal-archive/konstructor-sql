program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Konstryktor},
  Unit2 in 'Unit2.pas' {Inf},
  Unit3 in 'Unit3.pas' {Edit_inf},
  Unit4 in 'Unit4.pas' {logo},
  Unit5 in 'Unit5.pas' {Form5},
  Unit6 in 'Unit6.pas' {Inf_pro};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Конструктор тестов';
  Application.CreateForm(TKonstryktor, Konstryktor);
  Application.CreateForm(TInf, Inf);
  Application.CreateForm(TEdit_inf, Edit_inf);
  Application.CreateForm(Tlogo, logo);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TInf_pro, Inf_pro);
  Application.Run;
end.


