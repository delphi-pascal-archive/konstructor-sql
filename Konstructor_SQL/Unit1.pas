unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Menus, ComCtrls, StdCtrls, Mask, DBCtrls, ExtCtrls,
  Grids, DBGrids, ADODB,  ShellApi, ImgList, FMTBcd, SqlExpr, SUISkinEngine;


type
  TKonstryktor = class(TForm)
    StatusBar1: TStatusBar;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    DBEdit7: TDBEdit;
    Label1: TLabel;
    Vvar1: TLabel;
    Vvar2: TLabel;
    Vvar3: TLabel;
    Vvar4: TLabel;
    Vvar5: TLabel;
    Vvar6: TLabel;
    Timer1: TTimer;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DataSource1: TDataSource;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    ADOTable2: TADOTable;
    DataSource2: TDataSource;
    OpenDialog1: TOpenDialog;
    N5: TMenuItem;
    Edit_BD: TButton;
    SaveDialog1: TSaveDialog;
    V_Var1: TEdit;
    V_Var2: TEdit;
    V_Var3: TEdit;
    V_Var4: TEdit;
    V_Var5: TEdit;
    V_Var6: TEdit;
    V_Vop: TEdit;
    Next: TButton;
    Prev: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    DBNavigator2: TDBNavigator;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    Label8: TLabel;
    Var_1: TLabel;
    Var_2: TLabel;
    Var_3: TLabel;
    Var_4: TLabel;
    Var_5: TLabel;
    Var_6: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Vvar11: TLabel;
    Label16: TLabel;
    DBEdit8: TDBEdit;
    N10: TMenuItem;
    Find_Vop: TEdit;
    Find_V: TButton;
    First: TButton;
    V_end: TButton;
    ImageList1: TImageList;
    DataSource3: TDataSource;
    ADOTable3: TADOTable;
    DBGrid3: TDBGrid;
    DBNavigator3: TDBNavigator;
    Index: TEdit;
    Nom: TButton;
    ADOQuery1: TADOQuery;
    DBGrid4: TDBGrid;
    DataSource4: TDataSource;
    ADOTable4: TADOTable;
    N11: TMenuItem;
    N12: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N21: TMenuItem;
    N31: TMenuItem;
    MSN1: TMenuItem;
    SteelBlue1: TMenuItem;
    DiamondBlue1: TMenuItem;
    DiamondGreen1: TMenuItem;
    suiSkinEngine1: TsuiSkinEngine;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    Button1: TButton;
    ADOQuery2: TADOQuery;
    DBGrid5: TDBGrid;
    ADOTable5: TADOTable;
    DataSource5: TDataSource;
    ADOConnection2: TADOConnection;
    sql_first: TButton;
    sql_prev: TButton;
    sql_next: TButton;
    sql_end: TButton;
    Edit_inform: TButton;
    R_edit: TButton;
    R_edit_end: TButton;
    procedure N4Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure Edit_BDClick(Sender: TObject);
    procedure NextClick(Sender: TObject);
    procedure PrevClick(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure FirstClick(Sender: TObject);
    procedure V_endClick(Sender: TObject);
    procedure Find_VClick(Sender: TObject);
    procedure NomClick(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure MSN1Click(Sender: TObject);
    procedure SteelBlue1Click(Sender: TObject);
    procedure DiamondBlue1Click(Sender: TObject);
    procedure DiamondGreen1Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure sql_nextClick(Sender: TObject);
    procedure sql_prevClick(Sender: TObject);
    procedure sql_firstClick(Sender: TObject);
    procedure sql_endClick(Sender: TObject);
    procedure Edit_informClick(Sender: TObject);
    procedure R_editClick(Sender: TObject);
    procedure R_edit_endClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Konstryktor: TKonstryktor;
  ndx  : Integer;
  pyt1 : String;
  nvp  : String;
  
  
implementation

uses Unit2, Unit3, Unit4, Unit6;

{$R *.dfm}

procedure TKonstryktor.N4Click(Sender: TObject);
begin
Application.Terminate;
end;


procedure TKonstryktor.Timer1Timer(Sender: TObject);
begin
StatusBar1.Panels[0].Text:='??????? ?????: ' + TimeToStr(Time);
end;

procedure TKonstryktor.N5Click(Sender: TObject);
var pyt:string;
begin
ADOConnection1.Connected:=false;
ADOConnection2.Connected:=false;

ADOTable1.Active:=false;
ADOTable2.Active:=false;
ADOTable3.Active:=false;

pyt:='';
OpenDialog1.Execute;
pyt:=OpenDialog1.FileName;
ADOConnection1.ConnectionString:=pyt;
ADOConnection2.ConnectionString:=pyt;

ADOConnection1.Connected:=true;
ADOConnection2.Connected:=true;

ADOTable1.Active:=true;
ADOTable2.Active:=true;
ADOTable3.Active:=true;

TabSheet1.Enabled:=True; 
TabSheet2.Enabled:=True;
TabSheet3.Enabled:=True;

N2.Enabled:=false;
N10.Enabled:=false;

Var_4.Enabled:=false;
Var_5.Enabled:=false;
Var_6.Enabled:=false;

DBText7.Visible:=true;
DBText1.Visible:=true;
DBText2.Visible:=true;
DBText3.Visible:=true;
DBText4.Visible:=true;

//-------------------------------------------------------
if (ADOTable2.FieldByName('??????? 4').AsString<>'') then
begin
Var_4.Enabled:=true;
Var_5.Enabled:=false;
Var_6.Enabled:=false;
DBText4.Visible:=true;
DBText5.Visible:=false;
DBText6.Visible:=false;
end;

if (ADOTable2.FieldByName('??????? 5').AsString<>'') then
begin
Var_4.Enabled:=true;
Var_5.Enabled:=true;
Var_6.Enabled:=false;
DBText4.Visible:=true;
DBText5.Visible:=true;
DBText6.Visible:=false;
end;

if (ADOTable2.FieldByName('??????? 6').AsString<>'') then
begin
Var_4.Enabled:=true;
Var_5.Enabled:=true;
Var_6.Enabled:=true;
DBText4.Visible:=true;
DBText5.Visible:=true;
DBText6.Visible:=true;
end;

//-----------------------
V_Var4.Enabled:=false;
Vvar4.Enabled:=false;
V_Var5.Enabled:=false;
Vvar5.Enabled:=false;
V_Var6.Enabled:=false;
Vvar6.Enabled:=false;

if (ADOTable3.FieldByName('?????????').AsString='4') then
begin
V_Var4.Enabled:=true;
Vvar4.Enabled:=true;
V_Var5.Enabled:=false;
Vvar5.Enabled:=false;
V_Var6.Enabled:=false;
Vvar6.Enabled:=false;
end;

if (ADOTable3.FieldByName('?????????').AsString='5') then
begin
V_Var4.Enabled:=true;
Vvar4.Enabled:=true;
V_Var5.Enabled:=true;
Vvar5.Enabled:=true;
V_Var6.Enabled:=false;
Vvar6.Enabled:=false;
end;

if (ADOTable3.FieldByName('?????????').AsString='6') then
begin
V_Var4.Enabled:=true;
Vvar4.Enabled:=true;
V_Var5.Enabled:=true;
Vvar5.Enabled:=true;
V_Var6.Enabled:=true;
Vvar6.Enabled:=true;
end;

end;



// ?????????? ???????? ? ??????? ? ??
procedure TKonstryktor.Edit_BDClick(Sender: TObject);
begin

ADOTable1.Last; // ??????? ?? ????????? ?????? ? ??????? ? ?????????
// ?????????? ????????
ADOTable1.Insert;
ADOTable1.FieldByName('??????').AsString:=V_Vop.Text;
ADOTable1.post;  // ?????????? ????????? ? ??
V_Vop.Clear;  // ??????? ???? ????? ??????? ????? ??? ????????? ? ??


ADOTable2.Last;  // ??????? ?? ????????? ?????? ? ??????? ? ?????????? ???????
// ?????????? ????????? ??????? ? ??
ADOTable2.Insert;
ADOTable2.FieldByName('??????? 1').AsString:=V_Var1.Text;
ADOTable2.FieldByName('??????? 2').AsString:=V_Var2.Text;
ADOTable2.FieldByName('??????? 3').AsString:=V_Var3.Text;
ADOTable2.FieldByName('??????? 4').AsString:=V_Var4.Text;
ADOTable2.FieldByName('??????? 5').AsString:=V_Var5.Text;
ADOTable2.FieldByName('??????? 6').AsString:=V_Var6.Text;
ADOTable2.post; // ?????????? ????????? ? ??

// ??????? ????? ????? ????????? ??????? ????? ?? ????????? ? ??
V_Var1.Clear;
V_Var2.Clear;
V_Var3.Clear;
V_Var4.Clear;
V_Var5.Clear;
V_Var6.Clear;

end;


procedure TKonstryktor.NextClick(Sender: TObject);
begin
ADOTable1.Next;
ADOTable2.Next;
end;

procedure TKonstryktor.PrevClick(Sender: TObject);
begin
ADOTable1.Prior;
ADOTable2.Prior;
end;

procedure TKonstryktor.N11Click(Sender: TObject);
begin
//N2.Enabled:=true;
N5.Enabled:=true;
N10.Enabled:=true;

Var_4.Visible:=false;
Var_5.Visible:=false;
Var_6.Visible:=false;

V_Var4.Visible:=false;
Vvar4.Visible:=false;
V_Var5.Visible:=false;
Vvar5.Visible:=false;
V_Var6.Visible:=false;
Vvar6.Visible:=false;

ADOTable1.ConnectionString:='';
ADOTable1.Active := false;

ADOTable2.ConnectionString:='';
ADOTable2.Active := false;

ADOTable3.ConnectionString:='';
ADOTable3.Active := false;

ADOConnection1.ConnectionString:='';
ADOConnection1.Connected:=false;

end;


procedure TKonstryktor.N2Click(Sender: TObject);
var nm:integer;
label x1;
begin
nm:=1;

N5.Enabled:=false;
TabSheet1.Enabled:=true;
TabSheet2.Enabled:=true;
TabSheet3.Enabled:=true;

//DeleteFile('base\dbx'); 

if Not CopyFile('base\db1.mdb','base\dbx',true)then
begin
x1:
  if Not CopyFile(Pchar('system\db1'), Pchar('base\db'+inttostr(nm)+'.mdb'), true) then
   begin
    nm:=nm+1;
    //ShowMessage('Error');
    goto x1;
    end
   else
end
else

ADOConnection1.Connected:=true;
ADOTable1.Active:=true;
ADOTable2.Active:=true;
ADOTable3.Active:=true;

inf.showmodal;

if (ADOTable3.FieldByName('?????????').AsString='4') then
begin
V_Var4.Enabled:=true;
Vvar4.Enabled:=true;
V_Var5.Enabled:=false;
Vvar5.Enabled:=false;
V_Var6.Enabled:=false;
Vvar6.Enabled:=false;
end;

if (ADOTable3.FieldByName('?????????').AsString='5') then
begin
V_Var4.Enabled:=true;
Vvar4.Enabled:=true;
V_Var5.Enabled:=true;
Vvar5.Enabled:=true;
V_Var6.Enabled:=false;
Vvar6.Enabled:=false;
end;

if (ADOTable3.FieldByName('?????????').AsString='6') then
begin
V_Var4.Enabled:=true;
Vvar4.Enabled:=true;
V_Var5.Enabled:=true;
Vvar5.Enabled:=true;
V_Var6.Enabled:=true;
Vvar6.Enabled:=true;
end;

end;


procedure TKonstryktor.FirstClick(Sender: TObject);
begin
ADOTable1.First;
ADOTable2.First;
end;

procedure TKonstryktor.V_endClick(Sender: TObject);
begin
ADOTable1.Last;
ADOTable2.Last;
end;

procedure TKonstryktor.Find_VClick(Sender: TObject);
begin

R_edit.Enabled:=false;
R_edit_end.Enabled:=false;

ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM ?????? WHERE ?????? like "%'+find_vop.Text+'%"');
adoQuery1.Active := true;

nvp:='';
nvp:=DBGrid1.Fields[0].AsString;
AdoQuery2.Active := false;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('SELECT * FROM ???????? WHERE ??? = '+nvp+'');
adoQuery2.Active := true;

Nom.Enabled:=false;
Index.Enabled:=false;
DBEdit8.Visible:=false;

First.Visible:=false;
Prev.Visible:=false;
Next.Visible:=false;
V_end.Visible:=false;
sql_first.Visible:=true;
sql_prev.Visible:=true;
sql_next.Visible:=true;
sql_end.Visible:=true;
                      
DataSource1.DataSet:=ADOQuery1;
ADOTable1.Active:=true;

DBText1.Visible:=false;
DBText2.Visible:=false;
DBText3.Visible:=false;
DBText4.Visible:=false;
DBText5.Visible:=false;
DBText6.Visible:=false;
DBText7.Visible:=false;

DBEdit7.Visible:=true;
DBEdit1.Visible:=true;
DBEdit2.Visible:=true;
DBEdit3.Visible:=true;

if (ADOTable2.FieldByName('??????? 4').AsString<>'') then
begin
Var_4.Visible:=true;
Var_5.Visible:=true;
Var_6.Visible:=true;
DBEdit4.Visible:=true;
DBEdit5.Enabled:=false;
DBEdit5.Visible:=true;
DBEdit6.Enabled:=false;
DBEdit6.Visible:=true;
end;

if (ADOTable2.FieldByName('??????? 5').AsString<>'') then
begin
Var_4.Visible:=true;
Var_5.Visible:=true;
Var_6.Visible:=true;
DBEdit4.Visible:=true;
DBEdit5.Enabled:=true;
DBEdit5.Visible:=true;
DBEdit6.Enabled:=false;
DBEdit6.Visible:=true;
end;

if (ADOTable2.FieldByName('??????? 6').AsString<>'') then
begin
Var_4.Visible:=true;
Var_5.Visible:=true;
Var_6.Visible:=true;
DBEdit4.Visible:=true;
DBEdit5.Enabled:=true;
DBEdit5.Visible:=true;
DBEdit5.Enabled:=true;
DBEdit6.Visible:=true;
end;

end;

procedure TKonstryktor.NomClick(Sender: TObject);
var inx,ind:integer;
begin
ADOTable1.First;
ADOTable2.First;
inx:=StrToInt(Index.text);
for ind:=1 to Inx-1 do
begin
ADOTable1.Next;
ADOTable2.Next;
end;

end;



procedure TKonstryktor.N21Click(Sender: TObject);
begin
suiSkinEngine1.Active:=false;
end;

procedure TKonstryktor.N15Click(Sender: TObject);
begin
suiSkinEngine1.Active:=false;
suiSkinEngine1.SkinFile := 'Theme\MP10.sui';
suiSkinEngine1.Active:=True;
end;

procedure TKonstryktor.N31Click(Sender: TObject);
begin
suiSkinEngine1.Active:=false;
suiSkinEngine1.SkinFile := 'Theme\MacOS.sui';
suiSkinEngine1.Active:=True;
end;

procedure TKonstryktor.MSN1Click(Sender: TObject);
begin
suiSkinEngine1.Active:=false;
suiSkinEngine1.SkinFile := 'Theme\MSN.sui';
suiSkinEngine1.Active:=True;
end;

procedure TKonstryktor.SteelBlue1Click(Sender: TObject);
begin
suiSkinEngine1.Active:=false;
suiSkinEngine1.SkinFile := 'Theme\SteelBlue.sui';
suiSkinEngine1.Active:=True;
end;

procedure TKonstryktor.DiamondBlue1Click(Sender: TObject);
begin
suiSkinEngine1.Active:=false;
suiSkinEngine1.SkinFile := 'Theme\DiamondBlue.sui';
suiSkinEngine1.Active:=True;
end;

procedure TKonstryktor.DiamondGreen1Click(Sender: TObject);
begin
suiSkinEngine1.Active:=false;
suiSkinEngine1.SkinFile := 'Theme\DiamondGreen.sui';
suiSkinEngine1.Active:=True;
end;

procedure TKonstryktor.N9Click(Sender: TObject);
begin
inf_pro.showmodal;
{ShowMessage(''+Konstryktor.Caption+#13+#10+
              ' '+#13+#10+
              '???????????: ??????? ?.?.'+#13+#10+
              ' '+#13+#10+
              '??????: ??-41'+#13+#10+
              ' '+#13+#10+
              '???? 2009');}
end;

procedure TKonstryktor.Button1Click(Sender: TObject);
begin
ADOTable1.First;
ADOTable2.First;

R_edit.Enabled:=true;
R_edit_end.Enabled:=true;

Nom.Enabled:=true;
Index.Enabled:=true;
DBEdit8.Visible:=true;

Find_Vop.Clear;
Index.Clear;

DataSource1.DataSet:=ADOTable1;

First.Visible:=true;
Prev.Visible:=true;
Next.Visible:=true;
V_end.Visible:=true;
sql_first.Visible:=false;
sql_prev.Visible:=false;
sql_next.Visible:=false;
sql_end.Visible:=false;


DBEdit7.Visible:=false;
DBEdit1.Visible:=false;
DBEdit2.Visible:=false;
DBEdit3.Visible:=false;
DBEdit4.Visible:=false;
DBEdit5.Visible:=false;
DBEdit6.Visible:=false;

DBText7.Visible:=true;
DBText1.Visible:=true;
DBText2.Visible:=true;
DBText3.Visible:=true;

if (ADOTable2.FieldByName('??????? 4').AsString<>'') then
begin
Var_4.Visible:=true;
Var_5.Visible:=true;
Var_6.Visible:=true;
DBText4.Visible:=true;
DBEdit5.Enabled:=false;
DBText5.Visible:=true;
DBEdit6.Enabled:=false;
DBText6.Visible:=true;
end;

if (ADOTable2.FieldByName('??????? 5').AsString<>'') then
begin
Var_4.Visible:=true;
Var_5.Visible:=true;
Var_6.Visible:=true;
DBText4.Visible:=true;
DBEdit5.Enabled:=true;
DBText5.Visible:=true;
DBEdit6.Enabled:=false;
DBText6.Visible:=true;
end;

if (ADOTable2.FieldByName('??????? 6').AsString<>'') then
begin
Var_4.Visible:=true;
Var_5.Visible:=true;
Var_6.Visible:=true;
DBText4.Visible:=true;
DBEdit5.Enabled:=true;
DBText5.Visible:=true;
DBEdit6.Enabled:=true;
DBText6.Visible:=true;
end;

end;

procedure TKonstryktor.sql_nextClick(Sender: TObject);
begin
ADOQuery1.Next;

nvp:='';
nvp:=DBGrid1.Fields[0].AsString;

AdoQuery2.Active := false;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('SELECT * FROM ???????? WHERE ??? = '+nvp+'');
adoQuery2.Active := true;

end;

procedure TKonstryktor.sql_prevClick(Sender: TObject);
begin
ADOQuery1.Prior;

nvp:='';
nvp:=DBGrid1.Fields[0].AsString;

AdoQuery2.Active := false;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('SELECT * FROM ???????? WHERE ??? = '+nvp+'');
adoQuery2.Active := true;
end;

procedure TKonstryktor.sql_firstClick(Sender: TObject);
begin
ADOQuery1.First;

nvp:='';
nvp:=DBGrid1.Fields[0].AsString;

AdoQuery2.Active := false;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('SELECT * FROM ???????? WHERE ??? = '+nvp+'');
adoQuery2.Active := true;
end;

procedure TKonstryktor.sql_endClick(Sender: TObject);
begin
ADOQuery1.Last;

nvp:='';
nvp:=DBGrid1.Fields[0].AsString;

AdoQuery2.Active := false;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('SELECT * FROM ???????? WHERE ??? = '+nvp+'');
adoQuery2.Active := true;
end;

procedure TKonstryktor.Edit_informClick(Sender: TObject);
begin
edit_inf.showmodal;
end;

procedure TKonstryktor.R_editClick(Sender: TObject);
begin
Find_V.Enabled:=false;
Find_Vop.Enabled:=false;

DBText1.Visible:=false;
DBText2.Visible:=false;
DBText3.Visible:=false;
DBText4.Visible:=false;
DBText5.Visible:=false;
DBText6.Visible:=false;
DBText7.Visible:=false;

DBEdit7.Visible:=true;
DBEdit1.Visible:=true;
DBEdit2.Visible:=true;
DBEdit3.Visible:=true;

DBEdit1.DataSource.DataSet:=ADOTable2;
DBEdit2.DataSource.DataSet:=ADOTable2;
DBEdit3.DataSource.DataSet:=ADOTable2;
DBEdit4.DataSource.DataSet:=ADOTable2;
DBEdit5.DataSource.DataSet:=ADOTable2;
DBEdit6.DataSource.DataSet:=ADOTable2;

if (ADOTable2.FieldByName('??????? 4').AsString<>'') then
begin
Var_4.Visible:=true;
Var_5.Visible:=true;
Var_6.Visible:=true;
DBEdit4.Visible:=true;
DBEdit5.Enabled:=false;
DBEdit5.Visible:=true;
DBEdit6.Enabled:=false;
DBEdit6.Visible:=true;
end;

if (ADOTable2.FieldByName('??????? 5').AsString<>'') then
begin
Var_4.Visible:=true;
Var_5.Visible:=true;
Var_6.Visible:=true;
DBEdit4.Visible:=true;
DBEdit5.Enabled:=true;
DBEdit5.Visible:=true;
DBEdit6.Enabled:=false;
DBEdit6.Visible:=true;
end;

if (ADOTable2.FieldByName('??????? 6').AsString<>'') then
begin
Var_4.Visible:=true;
Var_5.Visible:=true;
Var_6.Visible:=true;
DBEdit4.Visible:=true;
DBEdit5.Enabled:=true;
DBEdit5.Visible:=true;
DBEdit6.Enabled:=true;
DBEdit6.Visible:=true;
end;

end;

procedure TKonstryktor.R_edit_endClick(Sender: TObject);
begin

Find_V.Enabled:=true;
Find_Vop.Enabled:=true;

DBText1.Visible:=true;
DBText2.Visible:=true;
DBText3.Visible:=true;
DBText4.Visible:=true;
DBText5.Visible:=true;
DBText6.Visible:=true;
DBText7.Visible:=true;

DBEdit7.Visible:=false;
DBEdit1.Visible:=false;
DBEdit2.Visible:=false;
DBEdit3.Visible:=false;
DBEdit4.Visible:=false;
DBEdit5.Visible:=false;
DBEdit6.Visible:=false;

DBEdit1.DataSource:=DataSource5;
DBEdit2.DataSource:=DataSource5;
DBEdit3.DataSource:=DataSource5;
DBEdit4.DataSource:=DataSource5;
DBEdit5.DataSource:=DataSource5;
DBEdit6.DataSource:=DataSource5;

end;

procedure TKonstryktor.FormShow(Sender: TObject);
begin
logo.showmodal;
end;

end.
