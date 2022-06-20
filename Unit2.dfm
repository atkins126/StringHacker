object SettingsForma: TSettingsForma
  Left = 971
  Top = 165
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsToolWindow
  Caption = 'Settings'
  ClientHeight = 135
  ClientWidth = 240
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object WordWrapCheck: TCheckBox
    Left = 6
    Top = 48
    Width = 229
    Height = 13
    Caption = 'Word wrap'
    TabOrder = 0
    OnClick = WordWrapCheckClick
  end
  object LangRadioGroup: TRadioGroup
    Left = 6
    Top = 72
    Width = 229
    Height = 55
    Caption = 'Language:'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'English'
      #1056#1091#1089#1089#1082#1080#1081)
    TabOrder = 1
    OnClick = LangRadioGroupClick
  end
  object ChgEditFontBtn: TButton
    Left = 8
    Top = 8
    Width = 225
    Height = 25
    Caption = 'Change editor font'
    TabOrder = 2
    OnClick = ChgEditFontBtnClick
  end
  object FontDlg: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Left = 64
    Top = 40
  end
end
