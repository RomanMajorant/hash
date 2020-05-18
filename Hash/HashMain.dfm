object MainForm: TMainForm
  Left = 769
  Top = 290
  Width = 588
  Height = 321
  Caption = 'Hash-'#242#224#225#235#232#246#224
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object HashTableView: TStringGrid
    Left = 0
    Top = 0
    Width = 572
    Height = 262
    Align = alClient
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goRowMoving, goColMoving]
    TabOrder = 0
  end
  object MainMenu: TMainMenu
    Left = 488
    Top = 96
    object mniN1: TMenuItem
      Caption = #212#224#233#235
      object NNew: TMenuItem
        Caption = #205#238#226#251#233
        OnClick = NNewClick
      end
      object NOpen: TMenuItem
        Caption = #206#242#234#240#251#242#252
        OnClick = NOpenClick
      end
      object NSave: TMenuItem
        Caption = #209#238#245#240#224#237#232#242#252
        OnClick = NSaveClick
      end
      object NSaveAs: TMenuItem
        Caption = #209#238#245#240#224#237#232#242#252' '#234#224#234'...'
        OnClick = NSaveAsClick
      end
      object NClose: TMenuItem
        Caption = #199#224#234#240#251#242#252
        OnClick = NCloseClick
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object NExit: TMenuItem
        Caption = #194#251#245#238#228
      end
    end
    object mniN2: TMenuItem
      Caption = #196#224#237#237#251#229
      object NAdd: TMenuItem
        Caption = #196#238#225#224#226#232#242#252
        OnClick = NAddClick
      end
      object NDelete: TMenuItem
        Caption = #211#228#224#235#232#242#252
        OnClick = NDeleteClick
      end
      object NClear: TMenuItem
        Caption = #206#247#232#241#242#232#242#252
        OnClick = NClearClick
      end
    end
    object N1: TMenuItem
      Caption = #207#238#232#241#234
      object NFind: TMenuItem
        Caption = #205#224#233#242#232'...'
        OnClick = NFindClick
      end
    end
  end
  object dlgOpen: TOpenDialog
    Filter = '????????? ????? *.txt|*.txt|??? ?????|*'
    Left = 448
    Top = 96
  end
  object dlgSave: TSaveDialog
    Filter = #210#229#234#241#242#238#226#251#233' '#244#224#233#235' *.txt|*.txt|'#194#241#229' '#244#224#233#235#251'|*'
    Left = 408
    Top = 96
  end
end
