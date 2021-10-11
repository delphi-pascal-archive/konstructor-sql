unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask;

type
  TEdit_inf = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Discip: TDBText;
    KolVop: TDBText;
    TimeT: TDBText;
    KolVar: TDBText;
    Disc_edit: TDBEdit;
    KolVop_edit: TDBEdit;
    TimeT_edit: TDBEdit;
    KolVar_edit: TDBEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Edit_inf: TEdit_inf;

implementation

uses Unit1, Unit5;

{$R *.dfm}

procedure TEdit_inf.Button1Click(Sender: TObject);
begin
Discip.Visible:=false;
KolVop.Visible:=false;
TimeT.Visible:=false;
KolVar.Visible:=false;

Disc_edit.Visible:=true;
KolVop_edit.Visible:=true;
TimeT_edit.Visible:=true;
KolVar_edit.Visible:=true;

end;

procedure TEdit_inf.Button2Click(Sender: TObject);
label qq1;
begin
 if((Disc_edit.Text='')or(KolVop_edit.Text='')or(TimeT_edit.Text='')or(KolVar_edit.Text=''))then
  begin
   ShowMessage('Не все поля заполнены');
  end else

begin
 if((KolVar_edit.Text='3')or(KolVar_edit.Text='4')or(KolVar_edit.Text='5')or(KolVar_edit.Text='6'))then
  begin
   Konstryktor.ADOTable3.Edit;
   Konstryktor.ADOTable3.FieldByName('Название дисциплины').AsString:=Disc_edit.Text;
   Konstryktor.ADOTable3.FieldByName('Количество вопросов').AsString:=KolVop_edit.Text;
   Konstryktor.ADOTable3.FieldByName('Время').AsString:=TimeT_edit.Text;
   Konstryktor.ADOTable3.FieldByName('Вариантов').AsString:=KolVar_edit.Text;
   Konstryktor.ADOTable3.post;
   Close;
   qq1:
  end else

   begin
      form5.showmodal;
      KolVar_edit.Clear;
   goto qq1;
   end

end;

end;

procedure TEdit_inf.FormCreate(Sender: TObject);
begin
Discip.DataField:='Название дисциплины';
KolVop.DataField:='Количество вопросов';
TimeT.DataField:='Время';
KolVar.DataField:='Вариантов';

Disc_edit.DataField:='Название дисциплины';
KolVop_edit.DataField:='Количество вопросов';
TimeT_edit.DataField:='Время';
KolVar_edit.DataField:='Вариантов';

end;

end.
