object frmcreateplaylist: Tfrmcreateplaylist
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'How to make a playlist'
  ClientHeight = 367
  ClientWidth = 544
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object mmo1: TMemo
    Left = 0
    Top = 0
    Width = 544
    Height = 367
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'How to create a playlist?'
      ''
      '- It is really simple. All you need to do is '
      '  create a new folder and copy all the '
      '  videos and/or music you want to be apart '
      '  of it in that folder.'
      ''
      '- Another way you can do it is by just '
      '  selecting a folder that already has the '
      '  music/videos in it.')
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 185
    ExplicitHeight = 89
  end
end
