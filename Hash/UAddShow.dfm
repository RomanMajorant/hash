object FormAdd: TFormAdd
  Left = 1385
  Top = 263
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #196#224#237#237#251#229' '#239#238#235#252#231#238#226#224#242#229#235#255
  ClientHeight = 379
  ClientWidth = 379
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lbl_FIO: TLabel
    Left = 0
    Top = 24
    Width = 37
    Height = 19
    Caption = #212#200#206
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl_Adres: TLabel
    Left = 0
    Top = 56
    Width = 51
    Height = 19
    Caption = #192#228#240#229#241
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl_Seria: TLabel
    Left = 0
    Top = 88
    Width = 139
    Height = 19
    Caption = #209#229#240#232#255' '#239#224#241#239#238#240#242#224':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 0
    Top = 128
    Width = 142
    Height = 19
    Caption = #205#238#236#229#240' '#239#224#241#239#238#240#242#224':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit_FIO: TEdit
    Left = 104
    Top = 24
    Width = 257
    Height = 21
    TabOrder = 0
    OnChange = Edit_Change
  end
  object Adres: TEdit
    Left = 104
    Top = 56
    Width = 257
    Height = 21
    TabOrder = 1
    OnChange = Edit_Change
  end
  object btn_Ok: TButton
    Left = 32
    Top = 336
    Width = 75
    Height = 25
    Caption = #206#234
    Default = True
    Enabled = False
    TabOrder = 2
    OnClick = btn_OkClick
  end
  object btn_Cancel: TButton
    Left = 264
    Top = 336
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 3
  end
  object Edit_PaspSeria: TEdit
    Left = 144
    Top = 88
    Width = 217
    Height = 21
    TabOrder = 4
    OnChange = Edit_Change
  end
  object PaspNumber: TEdit
    Left = 144
    Top = 128
    Width = 217
    Height = 21
    TabOrder = 5
  end
end
