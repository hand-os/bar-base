unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  Data.DB, Data.Win.ADODB;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    RadioGroup1: TRadioGroup;
    Label1: TLabel;
    Label2: TLabel;
    UpDown1: TUpDown;
    ADOQuery1: TADOQuery;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit2;

procedure TForm1.Button1Click(Sender: TObject);
begin
form1.Close;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
chislo,karta:string;
begin
chislo:=StringReplace((datetostr((Date))), '.','/', [rfReplaceAll, rfIgnoreCase]);
case RadioGroup1.ItemIndex of
0:karta:=QuotedStr('Наличные');
1:karta:=QuotedStr('Карта');
end;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('insert into orders (tovar, [time], [comp], chislo, state, quantity, karta, price, full_price, client)');
ADOQuery1.SQL.Add(' values ('+QuotedStr(label1.Caption)+', :time, '+QuotedStr(ip)+', #'+chislo+'#, '+QuotedStr('В ожидании')+', '+Edit1.Text+', '+karta+', :price, :full_price, '+client+')');
ADOQuery1.Parameters.ParamValues['time']:=formatdatetime('hh:nn',now());
ADOQuery1.Parameters.ParamValues['price']:=form2.ADOQuery1.FieldByName('price').AsString;
ADOQuery1.Parameters.ParamValues['full_price']:=form2.ADOQuery1.FieldByName('full_price').AsString;
ADOQuery1.ExecSQL;
form2.resum;
form1.Close;
end;

end.
