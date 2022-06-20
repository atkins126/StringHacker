object MainForma: TMainForma
  Left = 276
  Top = 179
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'String Hacker'
  ClientHeight = 360
  ClientWidth = 640
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
  object StuffMemo: TMemo
    Left = 6
    Top = 6
    Width = 627
    Height = 271
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 0
  end
  object HackButton: TButton
    Left = 6
    Top = 324
    Width = 115
    Height = 31
    Caption = 'Hack!'
    Enabled = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = HackButtonClick
  end
  object CtlPanel: TPanel
    Left = 6
    Top = 282
    Width = 265
    Height = 37
    BevelOuter = bvNone
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 2
    object ANDRadio: TRadioButton
      Left = 6
      Top = 0
      Width = 85
      Height = 13
      Caption = 'AND'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object ORRadio: TRadioButton
      Left = 48
      Top = 0
      Width = 85
      Height = 13
      Caption = 'OR'
      TabOrder = 1
    end
    object XORRadio: TRadioButton
      Left = 84
      Top = 0
      Width = 85
      Height = 13
      Caption = 'XOR'
      TabOrder = 2
    end
    object NOTRadio: TRadioButton
      Left = 126
      Top = 0
      Width = 85
      Height = 13
      Caption = 'NOT'
      TabOrder = 3
    end
    object NANDRadio: TRadioButton
      Left = 168
      Top = 0
      Width = 85
      Height = 13
      Caption = 'NAND'
      TabOrder = 4
    end
    object NORRadio: TRadioButton
      Left = 216
      Top = 0
      Width = 85
      Height = 13
      Caption = 'NOR'
      TabOrder = 5
    end
    object SHLRadio: TRadioButton
      Left = 6
      Top = 18
      Width = 85
      Height = 13
      Caption = 'SHL'
      TabOrder = 6
    end
    object SHRRadio: TRadioButton
      Left = 48
      Top = 18
      Width = 85
      Height = 13
      Caption = 'SHR'
      TabOrder = 7
    end
    object RCLRadio: TRadioButton
      Left = 84
      Top = 18
      Width = 85
      Height = 13
      Caption = 'RCL'
      TabOrder = 8
    end
    object RCRRadio: TRadioButton
      Left = 126
      Top = 18
      Width = 85
      Height = 13
      Caption = 'RCR'
      TabOrder = 9
    end
  end
  object LoadButton: TButton
    Left = 126
    Top = 324
    Width = 79
    Height = 31
    Caption = 'Load...'
    TabOrder = 3
    OnClick = LoadButtonClick
  end
  object SaveButton: TButton
    Left = 210
    Top = 324
    Width = 85
    Height = 31
    Caption = 'Save'
    TabOrder = 4
    OnClick = SaveButtonClick
  end
  object SaveAsButton: TButton
    Left = 300
    Top = 324
    Width = 85
    Height = 31
    Caption = 'Save as...'
    TabOrder = 5
    OnClick = SaveAsButtonClick
  end
  object SettingsButton: TBitBtn
    Left = 388
    Top = 324
    Width = 79
    Height = 31
    Caption = 'Settings'
    ModalResult = 4
    TabOrder = 6
    OnClick = SettingsButtonClick
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333444444
      33333333333F8888883F33330000324334222222443333388F3833333388F333
      000032244222222222433338F8833FFFFF338F3300003222222AAAAA22243338
      F333F88888F338F30000322222A33333A2224338F33F8333338F338F00003222
      223333333A224338F33833333338F38F00003222222333333A444338FFFF8F33
      3338888300003AAAAAAA33333333333888888833333333330000333333333333
      333333333333333333FFFFFF000033333333333344444433FFFF333333888888
      00003A444333333A22222438888F333338F3333800003A2243333333A2222438
      F38F333333833338000033A224333334422224338338FFFFF8833338000033A2
      22444442222224338F3388888333FF380000333A2222222222AA243338FF3333
      33FF88F800003333AA222222AA33A3333388FFFFFF8833830000333333AAAAAA
      3333333333338888883333330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
  end
  object AboutButton: TBitBtn
    Left = 472
    Top = 324
    Width = 79
    Height = 31
    Caption = 'About'
    TabOrder = 7
    OnClick = AboutButtonClick
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333336633
      3333333333333FF3333333330000333333364463333333333333388F33333333
      00003333333E66433333333333338F38F3333333000033333333E66333333333
      33338FF8F3333333000033333333333333333333333338833333333300003333
      3333446333333333333333FF3333333300003333333666433333333333333888
      F333333300003333333E66433333333333338F38F333333300003333333E6664
      3333333333338F38F3333333000033333333E6664333333333338F338F333333
      0000333333333E6664333333333338F338F3333300003333344333E666433333
      333F338F338F3333000033336664333E664333333388F338F338F33300003333
      E66644466643333338F38FFF8338F333000033333E6666666663333338F33888
      3338F3330000333333EE666666333333338FF33333383333000033333333EEEE
      E333333333388FFFFF8333330000333333333333333333333333388888333333
      0000}
    NumGlyphs = 2
  end
  object ExitButton: TBitBtn
    Left = 556
    Top = 324
    Width = 79
    Height = 31
    Caption = 'Exit'
    TabOrder = 8
    OnClick = ExitButtonClick
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00388888888877
      F7F787F8888888888333333F00004444400888FFF444448888888888F333FF8F
      000033334D5007FFF4333388888888883338888F0000333345D50FFFF4333333
      338F888F3338F33F000033334D5D0FFFF43333333388788F3338F33F00003333
      45D50FEFE4333333338F878F3338F33F000033334D5D0FFFF43333333388788F
      3338F33F0000333345D50FEFE4333333338F878F3338F33F000033334D5D0FFF
      F43333333388788F3338F33F0000333345D50FEFE4333333338F878F3338F33F
      000033334D5D0EFEF43333333388788F3338F33F0000333345D50FEFE4333333
      338F878F3338F33F000033334D5D0EFEF43333333388788F3338F33F00003333
      4444444444333333338F8F8FFFF8F33F00003333333333333333333333888888
      8888333F00003333330000003333333333333FFFFFF3333F00003333330AAAA0
      333333333333888888F3333F00003333330000003333333333338FFFF8F3333F
      0000}
    NumGlyphs = 2
  end
  object StringRadio: TRadioButton
    Left = 276
    Top = 300
    Width = 125
    Height = 19
    Caption = 'String'
    TabOrder = 9
  end
  object IntegerRadio: TRadioButton
    Left = 276
    Top = 282
    Width = 125
    Height = 19
    Caption = 'Integer'
    Checked = True
    TabOrder = 10
    TabStop = True
  end
  object KeyEdit: TEdit
    Left = 406
    Top = 281
    Width = 229
    Height = 33
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 11
    OnChange = KeyEditChange
    OnKeyPress = KeyEditKeyPress
  end
  object JustXPManifest: TXPManifest
    Left = 416
    Top = 40
  end
  object JustOpenDialog: TOpenDialog
    DefaultExt = '*.txt'
    Filter = 'Text|*.txt|Anything|*.*'
    Options = [ofReadOnly, ofHideReadOnly, ofFileMustExist, ofEnableSizing]
    Left = 416
    Top = 72
  end
  object JustSaveDialog: TSaveDialog
    DefaultExt = '*.txt'
    Filter = 'Text|*.txt|Anything|*.*'
    Options = [ofReadOnly, ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 416
    Top = 104
  end
end
