unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Data.DB,
  Data.Win.ADODB;

type
  TForm4 = class(TForm)
    ADOQuery1: TADOQuery;
    ComboBox1: TComboBox;
    Label1: TLabel;
    ComboBox2: TComboBox;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Edit3: TEdit;
    Label5: TLabel;
    Edit4: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure updatetovar;
    procedure ComboBox1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure updatesum;
    procedure ComboBox2Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  list_types:TStringList;
  stock:integer;

implementation

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
var
check:boolean;
begin
check:=true;
if StrToInt(edit1.Text)<1 then
begin
  ShowMessage('Цена прихода не может быть меньше 1 сумма');
  check:=false;
end;
if StrToInt(edit2.Text)<1 then
begin
  ShowMessage('Цена продажи не может быть меньше 1 сумма');
  check:=false;
end;
if StrToInt(edit2.Text)<StrToInt(edit1.Text) then
begin
  ShowMessage('Цена продажи не может быть меньше цены закупки');
  check:=false;
end;
if check then
begin
 adoquery1.SQL.Clear;
 ADOQuery1.SQL.Add('insert into prihod (tovar, chislo, price, full_price, quantity) values '+
                    '('+QuotedStr(ComboBox2.Text)+', #'+Edit4.Text+'#, '+Edit1.Text+', '+
                    Edit2.Text+', '+Edit3.Text+')');
 ADOQuery1.ExecSQL;
 ADOQuery1.SQL.Clear;
 ADOQuery1.SQL.Add('update stock set price='+Edit1.text+', full_price='+Edit2.Text+', quantity='+IntToStr(stock+strtoint(Edit3.Text))+' where tovar='+quotedstr(combobox2.text));

 ADOQuery1.ExecSQL;
 form4.Close;
end;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
form4.Close;
end;

procedure TForm4.ComboBox1Change(Sender: TObject);
begin
updatetovar;
updatesum;
end;

procedure TForm4.ComboBox2Change(Sender: TObject);
begin
updatesum;
end;

procedure TForm4.Edit1KeyPress(Sender: TObject; var Key: Char);
begin if not (Key in ['0'..'9', #8])then Key:=#0;
end;

procedure TForm4.Edit2KeyPress(Sender: TObject; var Key: Char);
begin if not (Key in ['0'..'9', #8])then Key:=#0;
end;

procedure TForm4.Edit3KeyPress(Sender: TObject; var Key: Char);
begin if not (Key in ['0'..'9', #8])then Key:=#0;

end;

procedure TForm4.FormCreate(Sender: TObject);
var
i:integer;
begin
list_types:=TStringList.Create;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select * from types');
ADOQuery1.Active:=true;
ADOQuery1.ExecSQL;
ADOQuery1.First;
for I := 0 to ADOQuery1.Recordset.RecordCount-1 do
begin
ComboBox1.Items.Add(ADOQuery1.FieldByName('type').AsString);
list_types.Add(ADOQuery1.FieldByName('Код').AsString);
ADOQuery1.Next;
end;
ComboBox1.ItemIndex:=0;
updatetovar;
updatesum;
edit4.Text:= FormatDateTime('dd/mm/yyyy',Date);
edit4.Text:= StringReplace(edit4.Text, '.','/', [rfReplaceAll, rfIgnoreCase])

end;

procedure TForm4.updatesum;
begin
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select price, full_price, quantity from stock where tovar='+quotedstr(ComboBox2.Text));
ADOQuery1.ExecSQL;
ADOQuery1.Active:=true;
edit1.Text:=ADOQuery1.FieldByName('price').AsString;
edit2.Text:=ADOQuery1.FieldByName('full_price').AsString;
stock:=ADOQuery1.FieldByName('quantity').AsInteger;
end;

procedure TForm4.updatetovar;
var
i:integer;
begin
ComboBox2.Clear;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select tovar from stock where type='+list_types.Strings[ComboBox1.ItemIndex]);
ADOQuery1.ExecSQL;
ADOQuery1.Active:=true;
for I := 0 to ADOQuery1.Recordset.RecordCount-1 do
begin
ComboBox2.Items.Add(ADOQuery1.FieldByName('tovar').AsString);
ADOQuery1.Next;
end;
ComboBox2.ItemIndex:=0;
end;

end.
