unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Data.Win.ADODB, IniFiles, Vcl.ComCtrls,
  Vcl.CategoryButtons, System.Win.TaskbarCore, Vcl.Taskbar, WinSock,  Registry;

type
  TForm2 = class(TForm)
    ADOConnection1: TADOConnection;
    CategoryButtons1: TCategoryButtons;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    ADOQuery1: TADOQuery;
    Edit1: TEdit;
    Label2: TLabel;
    ADOQuery2: TADOQuery;
    DataSource1: TDataSource;
    Button1: TButton;
    ADOQuery3: TADOQuery;
    Label3: TLabel;
    ti: TDataSource;
    ADOQuery3ID: TAutoIncField;
    ADOQuery3tovar: TWideStringField;
    ADOQuery3time: TDateTimeField;
    ADOQuery3client: TWideStringField;
    ADOQuery3comp: TWideStringField;
    ADOQuery3chislo: TDateTimeField;
    ADOQuery3state: TWideStringField;
    ADOQuery3quantity: TIntegerField;
    ADOQuery3karta: TWideStringField;
    ADOQuery3price: TIntegerField;
    ADOQuery3full_price: TIntegerField;
    Panel1: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure ref(text:string);
    procedure CategoryButtons1SelectedCategoryChange(Sender: TObject;
      const Category: TButtonCategory);
    procedure Edit1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    function GetLocalIp: string;
    procedure ref_ord;
    procedure resum;
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Timer1Timer(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  addr:string;
  list:TStringList;
    ip:string;
    client:string;

implementation

{$R *.dfm}

uses Unit1;

procedure TForm2.Button1Click(Sender: TObject);
begin
form1.show;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select * from stock where tovar='+QuotedStr(DBGrid1.Fields[1].AsString));
ADOQuery1.ExecSQL;
ADOQuery1.Active:=True;
form1.UpDown1.Max:=ADOQuery1.FieldByName('quantity').AsInteger;
form1.Label1.Caption:=ADOQuery1.FieldByName('tovar').AsString;

end;

procedure TForm2.CategoryButtons1SelectedCategoryChange(Sender: TObject;
  const Category: TButtonCategory);
begin
 ref(CategoryButtons1.SelectedItem.Caption);
end;

procedure TForm2.DBGrid1DblClick(Sender: TObject);
begin
Button1Click(self);
end;

procedure TForm2.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
if (Adoquery3.FieldByName('state').Value='В ожидании') then begin
with  DBGrid2.Canvas do begin
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
if (Adoquery3.FieldByName('state').Value='Отменён') then begin
with  DBGrid2.Canvas do begin
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

procedure TForm2.Edit1Change(Sender: TObject);
begin
  ref(CategoryButtons1.SelectedItem.Caption);
end;

procedure TForm2.FormCreate(Sender: TObject);
var
  Ini: Tinifile;
  I: Integer;
  reg: TRegistry;
  HM: THandle;
begin
HM := OpenMutex(MUTEX_ALL_ACCESS, false, 'CdpApp');
if (HM <> 0) then
begin
ShowMessage('Уже запушено');
Application.Terminate;
end;
if HM = 0 then

  HM := CreateMutex(nil, false, 'CdpApp');


  list:=TStringList.Create;
  Ini:=TiniFile.Create(extractfilepath(paramstr(0))+'addres.ini');
  addr:=Ini.ReadString('addres','addres','');
  Ini.Free;
   ADOConnection1.ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source='+addr+';Mode=ReadWrite;Persist Security Info=False;Jet OLEDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:New Database Password="";';

  ADOConnection1.Connected:=true;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('select * from types');
  ADOQuery1.ExecSQL;
  ADOQuery1.Active:=true;
  list.Clear;
  client:='Ara';
  reg:=TRegistry.Create;
  reg.RootKey:=HKEY_CURRENT_USER;
  reg.OpenKey('software\gameclass\clientinfo', true);
  client:=reg.ReadString('login');
  client:=QuotedStr(client);
  for I := 0 to ADOQuery1.Recordset.RecordCount-1 do
  begin
    list.Add(ADOQuery1.FieldByName('Код').AsString);
    CategoryButtons1.Categories.Add;
    CategoryButtons1.Categories.Items[i].Caption:=ADOQuery1.FieldByName('type').AsString;
    ADOQuery1.Next;
  end;
  CategoryButtons1.SelectedItem:=CategoryButtons1.Categories.Items[0];
  ref(CategoryButtons1.SelectedItem.Caption);
  ip:=GetLocalIp;
  ip:=ip[Length(ip)-1]+ip[Length(ip)];
  TDrawGrid(DBGrid1).ScrollBars :=ssVertical;
  TDrawGrid(DBGrid2).ScrollBars :=ssVertical;
  resum;
end;

function TForm2.GetLocalIp: string;
const WSVer = $101;
var
  wsaData: TWSAData;
  P: PHostEnt;
  Buf: array [0..127] of Char;
begin
  Result := '';
  if WSAStartup(WSVer, wsaData) = 0 then begin
    if GetHostName(@Buf, 128) = 0 then begin
      P := GetHostByName(@Buf);
      if P <> nil then Result := iNet_ntoa(PInAddr(p^.h_addr_list^)^);
    end;
    WSACleanup;
  end;
end;



procedure TForm2.ref(text: string);
begin
 ADOQuery2.Close;
 ADOQuery2.SQL.Clear;
 ADOQuery2.SQL.Add('select * from stock where ( quantity>0 ) and (tovar like '+QuotedStr('%'+Edit1.Text+'%')+')and type='+list.Strings[CategoryButtons1.Categories.ItemIndex(text)]);
 ADOQuery2.ExecSQL;
 ADOQuery2.Active:=true;

end;

procedure TForm2.ref_ord;
begin
 ADOQuery3.SQL.Clear;
 ADOQuery3.SQL.Add('select * from orders where (comp='+quotedstr(ip)+') and (chislo=#'+StringReplace((datetostr((Date))), '.','/', [rfReplaceAll, rfIgnoreCase])+'#) and (client='+client+')');
 ADOQuery3.ExecSQL;
 ADOQuery3.Active:=true;
end;

procedure TForm2.resum;
var
i:integer;
begin
ref_ord;
label5.Caption:='0';
ADOQuery3.First;
 for I := 0 to ADOQuery3.Recordset.RecordCount-1 do
begin
   label5.Caption:=IntToStr((ADOQuery3.FieldByName('quantity').AsInteger*ADOQuery3.FieldByName('full_price').AsInteger)+StrToInt(label5.Caption));
   ADOQuery3.Next
   end;
end;

procedure TForm2.Timer1Timer(Sender: TObject);
begin
resum;
end;

end.
