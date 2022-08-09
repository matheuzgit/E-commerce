unit frame.produto;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Controls.Presentation;

type
  TFrame1 = class(TFrame)
    Rectangle1: TRectangle;
    Image1: TImage;
    lblmarca: TLabel;
    lbvalor: TLabel;
    Label2: TLabel;
    imgfavorito: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

end.
