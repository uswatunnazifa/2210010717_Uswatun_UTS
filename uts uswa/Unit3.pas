unit Unit3;

interface

uses
  SysUtils, Classes, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection;

type
  TDataModule3 = class(TDataModule)
    ds1: TDataSource;
    Zconnection1: TZConnection;
    zqry1: TZQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule3: TDataModule3;

implementation

uses
  Unit1, Unit2;

{$R *.dfm}

end.
