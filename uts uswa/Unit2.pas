unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm2 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    dbgrd1: TDBGrid;
    edt3: TEdit;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  a: string;

implementation


uses
  Unit3, Unit1;

{$R *.dfm}

procedure TForm2.btn1Click(Sender: TObject);
begin
if edt1.Text = '' then
  begin
  ShowMessage('Nama satuan Tidak Boleh Kosong!');
  end else
  if DataModule3.zqry1.Locate('name',edt1.Text,[]) then
  begin
  ShowMessage('Nama satuan '+edt1.Text+' Sudah Ada Didalam Sistem');
  end else
  Begin // simpan
    with DataModule3.zqry1 do
    begin
    SQL.Clear;
    SQL.Add('insert into satuan (name,diskripsi) values(:name, :diskripsi)');
    ParamByName('name').AsString := edt1.Text;
    ParamByName('diskripsi').AsString := edt2.Text;
    ExecSQL ;
    SQL.Clear;
    SQL.Add('select * from satuan');
    Open;
    end;
  ShowMessage('Data Berhasil Disimpan!');
  end;
end;

procedure TForm2.btn2Click(Sender: TObject);
begin
    // Update data
    with DataModule3.zqry1 do
    begin
      SQL.Clear;
      SQL.Add('update satuan set name = :name, diskripsi = :diskripsi where id = :id');
      ParamByName('name').AsString := edt1.Text;
      ParamByName('diskripsi').AsString := edt2.Text;
      ParamByName('id').AsString := a;
      ExecSQL;
      SQL.Clear;
      SQL.Add('select * from satuan');
      Open;
    end;
    ShowMessage('Data Berhasil Diedit!');
    Refresh;
  end;


procedure TForm2.btn3Click(Sender: TObject);
begin
      DataModule3.zqry1.SQL.Clear;
      DataModule3.zqry1.SQL.Add('delete from satuan where id = "'+a+'"');
      DataModule3.zqry1.ExecSQL;
      DataModule3.zqry1.SQL.Clear;
      DataModule3.zqry1.SQL.Add('select * from satuan');
      DataModule3.zqry1.Open;
    ShowMessage('Data Berhasil Dihapus!');
end;

procedure TForm2.btn4Click(Sender: TObject);
begin
begin
 edt1.Text := '';
 edt2.Text := '';
end;
end;

procedure TForm2.dbgrd1CellClick(Column: TColumn);
begin
edt1.Text := DataModule3.zqry1.Fields[1].AsString;
edt2.Text := DataModule3.zqry1.Fields[2].AsString;
a:= DataModule3.zqry1.Fields[0].AsString;
end;

end.
