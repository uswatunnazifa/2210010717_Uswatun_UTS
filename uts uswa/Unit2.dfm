object Form2: TForm2
  Left = 306
  Top = 257
  Width = 870
  Height = 450
  Caption = 'Form2'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 64
    Top = 40
    Width = 29
    Height = 13
    Caption = 'NAMA'
  end
  object lbl2: TLabel
    Left = 64
    Top = 72
    Width = 52
    Height = 13
    Caption = 'DESKRIPSI'
  end
  object lbl3: TLabel
    Left = 64
    Top = 304
    Width = 80
    Height = 13
    Caption = 'MASUKAN NAMA'
  end
  object edt1: TEdit
    Left = 160
    Top = 40
    Width = 241
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 160
    Top = 72
    Width = 241
    Height = 21
    TabOrder = 1
  end
  object btn1: TButton
    Left = 160
    Top = 112
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 256
    Top = 112
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 3
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 352
    Top = 112
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 4
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 448
    Top = 112
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 5
    OnClick = btn4Click
  end
  object dbgrd1: TDBGrid
    Left = 160
    Top = 160
    Width = 361
    Height = 129
    DataSource = DataModule3.ds1
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'name'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'diskripsi'
        Visible = True
      end>
  end
  object edt3: TEdit
    Left = 160
    Top = 304
    Width = 233
    Height = 21
    TabOrder = 7
  end
end
