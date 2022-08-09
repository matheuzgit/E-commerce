unit HeaderFooterTemplate;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Layouts, FMX.ListBox, FMX.Objects;

type
  THeaderFooterForm = class(TForm)
    Header: TToolBar;
    Footer: TToolBar;
    Label1: TLabel;
    Image1: TImage;
    Image2: TImage;
    lbprodutos: TListBox;
    procedure FormShow(Sender: TObject);
  private
    procedure listarprodutos(pagina: integer; clear_pg: boolean);

    { Private declarations }
  public
    { Public declarations }
  end;

var
  HeaderFooterForm: THeaderFooterForm;

implementation

{$R *.fmx}

uses frame.produto;

procedure THeaderFooterForm.listarprodutos(pagina: integer; clear_pg: boolean);
var
  t : Tthread;
begin
   //evitar processamento concorrente
   if lbprodutos.TagString = 'S' then
     Exit  ;

   //MARCAR EM PROCESSAMENTO
   lbprodutos.TagString := 'S';

   lbprodutos.BeginUpdate;

   //limpar lista

   if clear_pg then
   begin
     pagina := 1;
     lbprodutos.ScrollToItem(lbprodutos.ItemByIndex(0));
     lbprodutos.Items.clear;
   end;

   lbprodutos.Tag := pagina;




end;


procedure THeaderFooterForm.FormShow(Sender: TObject);
begin
    listarprodutos(1, true);
end;

end.
