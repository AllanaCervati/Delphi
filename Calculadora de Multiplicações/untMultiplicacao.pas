unit untMultiplicacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TedtFim = class(TForm)
    edtInicio: TEdit;
    edtFim: TEdit;
    edtRes: TMemo;
    BitBtn3: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  edtFim: TedtFim;

implementation

{$R *.dfm}

procedure TedtFim.BitBtn3Click(Sender: TObject);
begin
  if Application.MessageBox('Deseja sair?','Confirme',
  MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2) = idyes then
      close;
end;

procedure TedtFim.BitBtn1Click(Sender: TObject);
var inicio,fim,cont,res: integer;
begin
   inicio := StrToInt(edtInicio.Text);
   fim := StrToInt(edtFim.Text);
   while (inicio <= fim) do
   begin
      cont := 0;
      while (cont < 11) do
      begin
        res := inicio * cont;
        edtRes.Lines.Add(IntToStr(inicio)+'x'+IntToStr(cont)+'='+IntToStr(res));
        cont := cont + 1;
      end;
      inicio := inicio + 1;
      edtRes.Lines.add('-------------');
   end;

end;

procedure TedtFim.BitBtn2Click(Sender: TObject);
begin
  edtInicio.Clear;
  edtFim.Clear;
  edtRes.Clear;
  edtInicio.SetFocus;
end;

procedure TedtFim.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f1 then
      BitBtn1.click;
   if key = vk_f2 then
      BitBtn2.click;
  if key = vk_escape then
      BitBtn3.click;


end;

end.
