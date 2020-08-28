unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Data.DB,
  Data.Win.ADODB, Vcl.Mask;

type
  TForm3 = class(TForm)
    ADOQuery1: TADOQuery;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Button2: TButton;
    Edit2: TEdit;
    Edit3: TEdit;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  list: TStringList;

implementation

{$R *.dfm}

uses Unit2;

procedure TForm3.Button1Click(Sender: TObject);
var
check:boolean;
begin
check:=true;
if Edit1.Text='' then
begin
ShowMessage('Поле товара не может быть пустым');
check:=false;
end;

if StrToInt(edit2.Text)<1 then
begin
  ShowMessage('Цена прихода не может быть меньше 1 сумма');
  check:=false;
end;
if StrToInt(edit3.Text)<1 then
begin
  ShowMessage('Цена продажи не может быть меньше 1 сумма');
  check:=false;
end;
if StrToInt(edit3.Text)<StrToInt(edit2.Text) then
begin
  ShowMessage('Цена продажи не может быть меньше цены закупки');
  check:=false;
end;
if check then
begin
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('select * from stock where tovar='+quotedstr(edit1.Text));
  ADOQuery1.ExecSQL;
  ADOQuery1.Active:=true;
  if ADOQuery1.Recordset.RecordCount>0 then
  begin
    ShowMessage('Товар с таким именем уже существует');
    check:=false;
  end;
end;

if check then
begin
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('insert into stock (tovar, price, full_price, quantity, type)' +
                  ' values ('+QuotedStr(Edit1.Text)+', '+Edit2.Text+', ' +
                  Edit3.Text+', 0, '+list.Strings[ComboBox1.ItemIndex]+')');
ADOQuery1.ExecSQL;
form2.ADOTable2.Active:=false;
Form2.ADOTable2.Active:=true;
Edit1.Text:='';
Edit2.Text:='0';
Edit3.Text:='0';
form3.Close;
end;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
form3.close;
end;

procedure TForm3.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
 if not (Key in ['0'..'9', #8])then Key:=#0;
end;

procedure TForm3.Edit3Change(Sender: TObject);
begin
;
end;

procedure TForm3.Edit3KeyPress(Sender: TObject; var Key: Char);
begin if not (Key in ['0'..'9', #8])then Key:=#0;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
list:=TStringList.Create;
end;

procedure TForm3.FormShow(Sender: TObject);
var
i:integer;
begin
list.Clear;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select * from types');
ADOQuery1.ExecSQL;
ADOQuery1.Active:=true;
ComboBox1.Items.Clear;
ADOQuery1.Open;
ADOQuery1.First;
for I := 0 to (adoquery1.Recordset.RecordCount-1) do
begin
ComboBox1.Items.Add(ADOQuery1.FieldValues['type']);
list.Add(ADOQuery1.FieldByName('Код').AsString);
ADOQuery1.next;
end;
ComboBox1.ItemIndex:=0;
end;

end.
