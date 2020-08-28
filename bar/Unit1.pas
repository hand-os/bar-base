unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.Win.ADODB;

type
  TForm1 = class(TForm)
    ADOQuery1: TADOQuery;
    Edit1: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
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
adoquery1.SQL.Clear;
adoquery1.SQL.Add('select * from types where type='+quotedstr(edit1.Text));
adoquery1.ExecSQL;
ADOQuery1.Active:=true;
if ADOQuery1.RecordCount=0 then
begin
  adoquery1.SQL.Clear;
  adoquery1.SQL.Add('insert into types (type) values ('+quotedstr(edit1.Text)+')');
  adoquery1.ExecSQL;
  form2.ADOTable1.Active:=false;
  form2.ADOTable1.Active:=true;
end
else
begin
  showmessage('Такой тип уже есть');
end;
end;

end.
