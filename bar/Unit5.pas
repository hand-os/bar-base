unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, mmsystem;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
begin
Timer1.Enabled:=false;
PlaySound(0, 0, SND_PURGE);
Form5.Close;
end;

procedure TForm5.Timer1Timer(Sender: TObject);
begin
if Form5.Color=clBlack then
form5.Color:=clRed
else
form5.Color:=clblack;
end;

end.
