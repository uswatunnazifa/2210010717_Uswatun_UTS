object DataModule3: TDataModule3
  OldCreateOrder = False
  Left = 192
  Top = 125
  Height = 150
  Width = 313
  object ds1: TDataSource
    DataSet = zqry1
    Left = 176
    Top = 24
  end
  object Zconnection1: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'db_penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\Users\User\Downloads\libmysql (1).dll'
    Left = 24
    Top = 24
  end
  object zqry1: TZQuery
    Connection = Zconnection1
    Active = True
    SQL.Strings = (
      'select*from satuan')
    Params = <>
    Left = 104
    Top = 24
  end
end
