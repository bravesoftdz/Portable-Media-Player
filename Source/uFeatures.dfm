object frmfeatures: Tfrmfeatures
  Left = 0
  Top = 0
  AlphaBlend = True
  BorderIcons = [biSystemMenu]
  Caption = 'Extra Features'
  ClientHeight = 494
  ClientWidth = 607
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 23
  object lbl2: TLabel
    Left = 8
    Top = 463
    Width = 210
    Height = 23
    Caption = 'Made by Adriaan Boshoff'
  end
  object grp1: TGroupBox
    Left = 8
    Top = 8
    Width = 278
    Height = 137
    Caption = 'Theme Manager'
    TabOrder = 0
    object lbl1: TLabel
      Left = 16
      Top = 107
      Width = 120
      Height = 16
      Caption = 'Themes do not save!'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object btn1: TButton
      Left = 186
      Top = 93
      Width = 89
      Height = 41
      Caption = 'Apply'
      TabOrder = 0
      OnClick = btn1Click
    end
    object cbb1: TComboBox
      Left = 16
      Top = 48
      Width = 249
      Height = 31
      TabOrder = 1
      Text = 'cbb1'
    end
  end
  object grp2: TGroupBox
    Left = 8
    Top = 160
    Width = 278
    Height = 105
    Caption = 'Updater'
    TabOrder = 1
    object btn2: TButton
      Left = 42
      Top = 38
      Width = 177
      Height = 46
      Caption = 'Check for Update'
      TabOrder = 0
      OnClick = btn2Click
    end
  end
  object grp3: TGroupBox
    Left = 8
    Top = 280
    Width = 591
    Height = 156
    Caption = 'Transparency'
    TabOrder = 2
    object trckbr1: TTrackBar
      Left = 16
      Top = 40
      Width = 560
      Height = 45
      Max = 255
      Min = 150
      Position = 255
      TabOrder = 0
      OnChange = trckbr1Change
    end
    object btn4: TButton
      Left = 488
      Top = 104
      Width = 91
      Height = 41
      Caption = 'Apply'
      TabOrder = 1
      OnClick = btn4Click
    end
    object chk1: TCheckBox
      Left = 16
      Top = 120
      Width = 177
      Height = 17
      Caption = 'Enable Safe Mode'
      Checked = True
      State = cbChecked
      TabOrder = 2
      OnClick = chk1Click
    end
    object btn5: TButton
      Left = 199
      Top = 120
      Width = 34
      Height = 25
      Caption = '?'
      TabOrder = 3
      OnClick = btn5Click
    end
    object btn6: TButton
      Left = 360
      Top = 104
      Width = 107
      Height = 41
      Caption = 'Just Right'
      TabOrder = 4
      OnClick = btn6Click
    end
    object btn7: TButton
      Left = 264
      Top = 104
      Width = 75
      Height = 41
      Caption = 'Reset'
      TabOrder = 5
      OnClick = btn7Click
    end
  end
  object grp4: TGroupBox
    Left = 303
    Top = 8
    Width = 296
    Height = 257
    Caption = 'Changelog'
    TabOrder = 3
    object mmo1: TMemo
      Left = 13
      Top = 34
      Width = 268
      Height = 202
      Lines.Strings = (
        '- Added Extra Features form'
        '- Added Themes'
        '- Added Transparency'
        '- Added Updater'
        '- Added Changelog'
        '- Shows filename instead of '
        '  file path')
      ReadOnly = True
      TabOrder = 0
    end
  end
  object btn3: TButton
    Left = 512
    Top = 442
    Width = 87
    Height = 44
    Caption = 'Close'
    TabOrder = 4
    OnClick = btn3Click
  end
  object idhtp1: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 384
    Top = 448
  end
end
