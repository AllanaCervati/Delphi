unit untListaCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons;

type
  TCidades = class(TForm)
    conexao: TADOConnection;
    cidades: TADODataSet;
    cidadesCódigo: TAutoIncField;
    cidadesNome: TWideStringField;
    cidadesEstado: TWideStringField;
    datCidade: TDataSource;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    Edit1: TEdit;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cidades: TCidades;

implementation

{$R *.dfm}

procedure TCidades.BitBtn1Click(Sender: TObject);
begin
   cidades.Locate('Nome',Edit1.Text,[loCaseInsensitive,loPartialKey]);
end;

end.
