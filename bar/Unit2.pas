unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DbxSqlite, Data.FMTBcd, Data.DB,
  Data.SqlExpr, Vcl.ComCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, FireDAC.Comp.DataSet,
  Vcl.StdCtrls, Data.Win.ADODB, Vcl.DBCtrls, Vcl.ExtCtrls, IniFiles, mmsystem;

type
  TForm2 = class(TForm)
    DataSource1: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    DBGrid1: TDBGrid;
    Button1: TButton;
    DataSource2: TDataSource;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    ADOTable2: TADOTable;
    Button2: TButton;
    Button3: TButton;
    ADOQuery1: TADOQuery;
    DBGrid2: TDBGrid;
    ADOTable2Код: TAutoIncField;
    ADOTable2tovar: TWideStringField;
    ADOTable2quantity: TIntegerField;
    ADOTable2price: TIntegerField;
    ADOTable2full_price: TIntegerField;
    ADOTable2type: TIntegerField;
    ADOTable2types: TStringField;
    Button4: TButton;
    ADOQuery2: TADOQuery;
    DBGrid3: TDBGrid;
    Button5: TButton;
    DataSource3: TDataSource;
    GroupBox1: TGroupBox;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    От: TLabel;
    До: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    ADOQuery3: TADOQuery;
    DBGrid4: TDBGrid;
    GroupBox2: TGroupBox;
    Button6: TButton;
    DataSource4: TDataSource;
    Button7: TButton;
    DateTimePicker3: TDateTimePicker;
    Edit3: TEdit;
    Edit2: TEdit;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    StatusBar1: TStatusBar;
    ADOQuery4: TADOQuery;
    Timer2: TTimer;
    ADOQuery5: TADOQuery;
    ComboBox2: TComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    Button8: TButton;
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure query_prihod;
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure DateTimePicker2Change(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure query_order;
    procedure DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure DateTimePicker3Change(Sender: TObject);
    procedure money;
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  addr:string;

implementation
                                                    {$R *.dfm}

uses Unit1, Unit3, Unit4, Unit5;
procedure TForm2.Button1Click(Sender: TObject);
begin
form3.show;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
form1.show;
end;

procedure TForm2.Button3Click(Sender: TObject);
var
item:integer;
begin
adoquery1.SQL.Clear;
adoquery1.SQL.Add('select * from types where type='+quotedstr(dbgrid2.Fields[1].asstring));
ADOQuery1.ExecSQL;
ADOQuery1.Active:=true;
item:=ADOQuery1.FieldByName('Код').AsInteger;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select tovar from stock where type='+IntToStr(item));
ADOQuery1.ExecSQL;
ADOQuery1.Active:=true;
if ADOQuery1.Recordset.RecordCount>0 then
  ShowMessage('Нельзя удалить тип товара, если на складе есть товар использующий его!')
else
  begin
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('delete from types where Код='+IntToStr(item));
  ADOQuery1.ExecSQL;
  ADOTable1.Active:=false;
  ADOTable1.Active:=true;
  end;
 end;

procedure TForm2.Button4Click(Sender: TObject);
var
item:string;
begin
adoquery1.SQL.Clear;
adoquery1.SQL.Add('select * from stock where Код='+dbgrid1.Fields[0].asstring);
ADOQuery1.ExecSQL;
ADOQuery1.Active:=true;
item:=ADOQuery1.FieldByName('tovar').AsString;
if adoquery1.FieldByName('quantity').AsInteger>0 then
ShowMessage('Остаток по '+ADOQuery1.FieldByName('tovar').AsString+' больше нуля, поэтому его нельзя удалить из базы.')
else
begin
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('delete from stock where tovar='+quotedstr(item));
ADOQuery1.ExecSQL;
ADOTable2.Active:=false;
ADOTable2.Active:=true;
end;
end;

procedure TForm2.Button5Click(Sender: TObject);
begin
form4.show;
end;

procedure TForm2.Button6Click(Sender: TObject);
var
va:integer;
begin
if ADOQuery3.FieldByName('state').AsString='В ожидании' then
begin
ADOQuery5.SQL.Clear;
ADOQuery5.SQL.Add('update orders set state = '+quotedstr('Завершён')+' where id='+ADOQuery3.FieldByName('id').AsString);
ADOQuery5.ExecSQL;
ADOQuery5.SQL.Clear;
ADOQuery5.SQL.Add('select quantity from stock where tovar='+quotedstr(ADOQuery3.FieldByName('tovar').AsString));
ADOQuery5.ExecSQL;
ADOQuery5.Active:=true;
va:=ADOQuery5.FieldByName('quantity').AsInteger;
ADOQuery5.SQL.Clear;
ADOQuery5.SQL.Add('update stock set quantity = '+IntToStr(va-ADOQuery3.FieldByName('quantity').AsInteger)+' where tovar='+QUOTEDstr(ADOQuery3.FieldByName('tovar').AsString));
ADOQuery5.ExecSQL;
query_order;
ADOTable2.Active:=false;
ADOTable2.Active:=true;
end
else
ShowMessage('Можно изменять заказы только со статусом ожидания');
end;

procedure TForm2.Button7Click(Sender: TObject);
begin
if ADOQuery3.FieldByName('state').AsString='В ожидании' then
begin
ADOQuery5.SQL.Clear;
ADOQuery5.SQL.Add('update orders set state = '+quotedstr('Отменён')+' where id='+ADOQuery3.FieldByName('id').AsString);
ADOQuery5.ExecSQL;
query_order;
end
else
ShowMessage('Можно изменять заказы только со статусом ожидания');
end;

procedure TForm2.Button8Click(Sender: TObject);
begin
DateTimePicker3.Date:=Date;
ComboBox1.ItemIndex:=1;
Edit1.Text:='';
Edit2.Text:='';
edit3.Text:='';
query_order;
end;

procedure TForm2.ComboBox1Change(Sender: TObject);
begin
query_order;
end;

procedure TForm2.ComboBox2Change(Sender: TObject);
begin
query_prihod;
end;

procedure TForm2.DateTimePicker1Change(Sender: TObject);
begin
query_prihod;
end;

procedure TForm2.DateTimePicker2Change(Sender: TObject);
begin
query_prihod;
end;

procedure TForm2.DateTimePicker3Change(Sender: TObject);
begin
query_order;
end;

procedure TForm2.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
 if Assigned(Column) then
  begin
   DBGrid1.Canvas.FillRect(Rect);
   DBGrid1.Canvas.TextRect(Rect, Rect.Left, Rect.Top, ' '+Column.Field.AsString);
  end;
end;

procedure TForm2.DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
if (Adoquery3.FieldByName('state').Value='В ожидании') then begin
with  DBGrid4.Canvas do begin
Brush.Color:=$73FFFF;
Font.Color:=clMenuText;
FillRect(Rect);
if (Column.Alignment=taRightJustify) then
 TextOut(Rect.Right-2-  TextWidth(Column.Field.Text),
  Rect.Top+2,StringReplace(Column.Field.Text, '30.12.1889', '',  [rfReplaceAll, rfIgnoreCase]))
else
 TextOut(Rect.Left+2,Rect.Top+2,StringReplace(Column.Field.Text, '30.12.1899', '',  [rfReplaceAll, rfIgnoreCase]));
end;
end;
if (Adoquery3.FieldByName('state').Value='Завершён') then begin
with  DBGrid4.Canvas do begin
Brush.Color:=$68f76e;
Font.Color:=clGreen;
FillRect(Rect);
if (Column.Alignment=taRightJustify) then
 TextOut(Rect.Right-2-  TextWidth(Column.Field.Text),
  Rect.Top+2,StringReplace(Column.Field.Text, '30.12.1889', '',  [rfReplaceAll, rfIgnoreCase]))
else
 TextOut(Rect.Left+2,Rect.Top+2,StringReplace(Column.Field.Text, '30.12.1899', '',  [rfReplaceAll, rfIgnoreCase]));
end;
end;
if (Adoquery3.FieldByName('state').Value='Отменён') then begin
with  DBGrid4.Canvas do begin
Brush.Color:=$7383ff;
Font.Color:=$0013a6;
FillRect(Rect);
if (Column.Alignment=taRightJustify) then
 TextOut(Rect.Right-2-  TextWidth(Column.Field.Text),
  Rect.Top+2,StringReplace(Column.Field.Text, '30.12.1889', '',  [rfReplaceAll, rfIgnoreCase]))
else
 TextOut(Rect.Left+2,Rect.Top+2,StringReplace(Column.Field.Text, '30.12.1899', '',  [rfReplaceAll, rfIgnoreCase]));
end;
end;
end;

procedure TForm2.DBLookupComboBox1Click(Sender: TObject);
var
i:integer;
begin
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select tovar from stock where type='+IntToStr(DBLookupComboBox1.KeyValue));
ADOQuery1.ExecSQL;
ADOQuery1.Active:=true;
ComboBox2.Clear;
for i := 0 to ADOQuery1.Recordset.RecordCount-1 do
begin
 ComboBox2.Items.Add(ADOQuery1.FieldByName('tovar').AsString);
 ADOQuery1.Next;
end;
end;

procedure TForm2.Edit1Change(Sender: TObject);
begin
query_order;
end;

procedure TForm2.Edit2Change(Sender: TObject);
begin
query_order;
end;

procedure TForm2.Edit3Change(Sender: TObject);
begin
query_order;
end;

procedure TForm2.FormCreate(Sender: TObject);
var
i:integer;
  Ini: Tinifile;
begin

ADOConnection1.Connected:=false;
  Ini:=TiniFile.Create(extractfilepath(paramstr(0))+'addres.ini');
  addr:=Ini.ReadString('addres','addres','');
  Ini.Free;
    ADOConnection1.ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source='+addr+';Mode=ReadWrite;Persist Security Info=False;Jet OLEDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:New Database Password="";';
  ADOConnection1.Connected:=true;
DateTimePicker1.MaxDate:=Date;
DateTimePicker3.date:=date;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select tovar from stock');
ADOQuery1.ExecSQL;
ADOQuery1.Active:=true;
ADOQuery4.SQL.Clear;
ADOQuery4.SQL.Add('select * from orders where chislo='+StringReplace((datetostr((Date))), '.','/', [rfReplaceAll, rfIgnoreCase]));
ADOQuery4.ExecSQL;
ADOQuery4.Active:=true;
ADOTable1.Active:=true;
ADOTable2.Active:=true;
ADOQuery2.Active:=true;
for I := 0 to ADOQuery1.Recordset.RecordCount-1 do
begin
ComboBox2.Items.Add(ADOQuery1.FieldByName('tovar').AsString);
ADOQuery1.Next;
end;
ComboBox2.Text:='';
query_order;
end;

procedure TForm2.money;
var
i,i1,i2,i3,i4:integer;
begin
 ADOQuery4.SQL.Clear;
ADOQuery4.SQL.Add('select * from orders where chislo=#'+StringReplace((datetostr((now))), '.','/', [rfReplaceAll, rfIgnoreCase])+'#');
ADOQuery4.ExecSQL;
ADOQuery4.Active:=true;
 i1:=0;
 i2:=0;
 i3:=0;
 i4:=0;
 StatusBar1.Panels[1].Text:='0';
 StatusBar1.Panels[3].Text:='0';
 StatusBar1.Panels[5].Text:='0';
 StatusBar1.Panels[7].Text:='0';
 ADOQuery4.First;
  ADOQuery3.First;
 for I := 0 to ADOQuery4.Recordset.RecordCount-1 do
 begin
 if ADOQuery4.FieldByName('state').AsString='Завершён' then
 begin
  if ADOQuery4.FieldByName('karta').AsString='Наличные' then
        i1:=(ADOQuery4.FieldByName('quantity').AsInteger*ADOQuery4.FieldByName('full_price').AsInteger)+i1
   else
        i2:=(ADOQuery4.FieldByName('quantity').AsInteger*ADOQuery4.FieldByName('full_price').AsInteger)+i2;
    end;
    ADOQuery4.Next
   end;


    for I := 0 to ADOQuery3.Recordset.RecordCount-1 do
      begin
     if ADOQuery3.FieldByName('state').AsString='Завершён' then

      begin
      if ADOQuery3.FieldByName('karta').AsString='Наличные' then
        i3:=(ADOQuery3.FieldByName('quantity').AsInteger*ADOQuery3.FieldByName('full_price').AsInteger)+i3
        else
        i4:=(ADOQuery3.FieldByName('quantity').AsInteger*ADOQuery3.FieldByName('full_price').AsInteger)+i4;
        end;
      ADOQuery3.Next
    end;
 StatusBar1.Panels[1].Text:=IntToStr(i1);
 StatusBar1.Panels[3].Text:=IntToStr(i2);
 StatusBar1.Panels[5].Text:=IntToStr(i3);
 StatusBar1.Panels[7].Text:=IntToStr(i4);

end;

procedure TForm2.query_order;
var
time1:string;
state:string;
begin
  case combobox1.ItemIndex of
   0:state:='';
   1:state:=' and state='+quotedstr('В ожидании');
   2:state:=' and state='+quotedstr('Завершён');
   3:state:=' and state='+quotedstr('Отменён');
  end;

  ADOQuery3.Close;
  ADOQuery3.SQL.Clear;
  ADOQuery3.SQL.Add('select * from orders where ( tovar like '+QuotedStr('%'+edit1.Text+'%')
                      +' ) and ( client like' + QuotedStr('%'+edit2.Text+'%')
                      +' ) and ( comp like '+QuotedStr('%'+edit3.Text+'%')+' ) and ( chislo=#'+StringReplace((datetostr((DateTimePicker3.Date))), '.','/', [rfReplaceAll, rfIgnoreCase])+'#) '+state);
  ADOQuery3.ExecSQL;
  ADOQuery3.Active:=true;
  money;
  if (edit1.Text='') and (edit2.Text='') and (edit3.Text='') and (ComboBox1.ItemIndex=1) then
  begin
    if ADOQuery3.Recordset.RecordCount>0 then
    begin
      PlaySound(0, 0, SND_PURGE);
      form5.show;
      form5.Timer1.Enabled:=true;
      form5.Label1.Caption:='Заказ за '+ADOQuery3.FieldByName('comp').AsString+' комп хотят '+ADOQuery3.FieldByName('tovar').AsString;
      PlaySound('1.wav',0, SND_ASYNC or SND_LOOP);
      Form5.WindowState:=wsMaximized;
Form5.Width:=Screen.Width;
Form5.height:=Screen.Height;
form5.FormStyle := fsStayOnTop;
    end;
  end;

end;

procedure TForm2.query_prihod;
var
time1,time2:string;
begin
  ADOQuery2.Close;
  ADOQuery2.SQL.Clear;
  ADOQuery2.SQL.Add('select * from prihod where (chislo>=:time1 and chislo<=:time2) and ' +
                    'tovar like '+QuotedStr('%'+ComboBox2.Text+'%'));
  time1:=StringReplace((datetostr((DateTimePicker1.Date))), '.','/', [rfReplaceAll, rfIgnoreCase]);
  time2:=StringReplace((datetostr((DateTimePicker2.Date))), '.','/', [rfReplaceAll, rfIgnoreCase]);
  ADOQuery2.Parameters.ParamValues['time1']:=time1;
  ADOQuery2.Parameters.ParamValues['time2']:=time2;
  ADOQuery2.Open;
  ADOQuery2.ExecSQL;
  ADOQuery2.Active:=true;
end;

procedure TForm2.Timer1Timer(Sender: TObject);
begin
money;
end;

procedure TForm2.Timer2Timer(Sender: TObject);
begin
query_order;
end;

end.
