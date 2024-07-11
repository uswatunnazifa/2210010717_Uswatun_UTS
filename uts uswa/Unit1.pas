unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TForm1 = class(TForm)
    mm1: TMainMenu;
    SATUAN1: TMenuItem;
    Satuan2: TMenuItem;
    procedure Satuan2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
uses Unit2;

{$R *.dfm}

procedure TForm1.Satuan2Click(Sender: TObject);
begin
Form2.Show;
end;

end.
