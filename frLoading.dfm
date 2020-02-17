object FormLoading: TFormLoading
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 102
  ClientWidth = 648
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 288
    Top = 8
    Width = 45
    Height = 13
    Caption = 'LOADING'
  end
  object ProgressBar1: TProgressBar
    Left = 8
    Top = 27
    Width = 625
    Height = 49
    TabOrder = 0
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 424
  end
  object Timer2: TTimer
    OnTimer = Timer2Timer
    Left = 472
  end
  object Timer3: TTimer
    OnTimer = Timer3Timer
    Left = 520
  end
end
