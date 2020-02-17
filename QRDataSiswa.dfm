object FormQRDataSiswa: TFormQRDataSiswa
  Left = 0
  Top = 0
  ClientHeight = 749
  ClientWidth = 1117
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = -5
    Top = -8
    Width = 1123
    Height = 794
    ShowingPreview = False
    DataSet = dmtk.ZRptMrdOrtu
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poLandscape
    Page.PaperSize = A4
    Page.Continuous = False
    Page.Values = (
      127.000000000000000000
      2100.000000000000000000
      127.000000000000000000
      2970.000000000000000000
      127.000000000000000000
      127.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.MemoryLimit = 1000000
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PreviewWidth = 500
    PreviewHeight = 500
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stPDF
    PreviewLeft = 0
    PreviewTop = 0
    object QRBand1: TQRBand
      Left = 48
      Top = 48
      Width = 1027
      Height = 89
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        235.479166666666700000
        2717.270833333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRShape1: TQRShape
        Left = 0
        Top = 0
        Width = 1027
        Height = 74
        Size.Values = (
          195.791666666666700000
          0.000000000000000000
          0.000000000000000000
          2717.270833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel1: TQRLabel
        Left = 409
        Top = 14
        Width = 187
        Height = 20
        Size.Values = (
          52.916666666666670000
          1082.145833333333000000
          37.041666666666670000
          494.770833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'LAPORAN DATA MURID'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 12
      end
      object QRLabel3: TQRLabel
        Left = 425
        Top = 39
        Width = 148
        Height = 20
        Size.Values = (
          52.916666666666670000
          1124.479166666667000000
          103.187500000000000000
          391.583333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'TK PERMATA SARI'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 12
      end
    end
    object QRBand2: TQRBand
      Left = 48
      Top = 137
      Width = 1027
      Height = 568
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        1502.833333333333000000
        2717.270833333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRShape2: TQRShape
        Left = 0
        Top = 7
        Width = 1027
        Height = 522
        Size.Values = (
          1381.125000000000000000
          0.000000000000000000
          18.520833333333330000
          2717.270833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText10: TQRDBText
        Left = 268
        Top = 121
        Width = 254
        Height = 18
        Size.Values = (
          47.625000000000000000
          709.083333333333300000
          320.145833333333300000
          672.041666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = dmtk.ZRptMrdOrtu
        DataField = 'nama_anak_lengkap'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRDBText11: TQRDBText
        Left = 268
        Top = 161
        Width = 122
        Height = 18
        Size.Values = (
          47.625000000000000000
          709.083333333333300000
          425.979166666666700000
          322.791666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = dmtk.ZRptMrdOrtu
        DataField = 'kelompok'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRDBText16: TQRDBText
        Left = 268
        Top = 198
        Width = 146
        Height = 21
        Size.Values = (
          55.562500000000000000
          709.083333333333300000
          523.875000000000000000
          386.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = dmtk.ZRptMrdOrtu
        DataField = 'thn_pelajaran'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRDBText17: TQRDBText
        Left = 682
        Top = 81
        Width = 145
        Height = 18
        Size.Values = (
          47.625000000000000000
          1804.458333333333000000
          214.312500000000000000
          383.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = dmtk.ZRptMrdOrtu
        DataField = 'jns_klmn'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRDBText18: TQRDBText
        Left = 625
        Top = 121
        Width = 94
        Height = 18
        Size.Values = (
          47.625000000000000000
          1653.645833333333000000
          320.145833333333300000
          248.708333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = dmtk.ZRptMrdOrtu
        DataField = 'tmpt_lhr'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRDBText19: TQRDBText
        Left = 725
        Top = 121
        Width = 117
        Height = 18
        Size.Values = (
          47.625000000000000000
          1918.229166666667000000
          320.145833333333300000
          309.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = dmtk.ZRptMrdOrtu
        DataField = 'tgl_lhr'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRDBText20: TQRDBText
        Left = 625
        Top = 160
        Width = 270
        Height = 31
        Size.Values = (
          82.020833333333330000
          1653.645833333333000000
          423.333333333333300000
          714.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = dmtk.ZRptMrdOrtu
        DataField = 'almt_jln'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRDBText21: TQRDBText
        Left = 625
        Top = 197
        Width = 126
        Height = 22
        Size.Values = (
          58.208333333333330000
          1653.645833333333000000
          521.229166666666700000
          333.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = dmtk.ZRptMrdOrtu
        DataField = 'agama'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRDBText9: TQRDBText
        Left = 268
        Top = 81
        Width = 90
        Height = 18
        Size.Values = (
          47.625000000000000000
          709.083333333333300000
          214.312500000000000000
          238.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = dmtk.ZRptMrdOrtu
        DataField = 'nmr_induk_mrd'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRImage1: TQRImage
        Left = 912
        Top = 81
        Width = 97
        Height = 138
        Size.Values = (
          365.125000000000000000
          2413.000000000000000000
          214.312500000000000000
          256.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Center = True
        Stretch = True
      end
      object QRLabel16: TQRLabel
        Left = 48
        Top = 81
        Width = 103
        Height = 20
        Size.Values = (
          52.916666666666670000
          127.000000000000000000
          214.312500000000000000
          272.520833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'No. Induk : '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 12
      end
      object QRLabel17: TQRLabel
        Left = 48
        Top = 159
        Width = 83
        Height = 20
        Size.Values = (
          52.916666666666670000
          127.000000000000000000
          420.687500000000000000
          219.604166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Kelompok : '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 12
      end
      object QRLabel18: TQRLabel
        Left = 48
        Top = 199
        Width = 111
        Height = 20
        Size.Values = (
          52.916666666666670000
          127.000000000000000000
          526.520833333333300000
          293.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Thn. Pelajaran : '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 12
      end
      object QRLabel19: TQRLabel
        Left = 48
        Top = 119
        Width = 94
        Height = 20
        Size.Values = (
          52.916666666666670000
          127.000000000000000000
          314.854166666666700000
          248.708333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Nama Anak : '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 12
      end
      object QRLabel20: TQRLabel
        Left = 542
        Top = 81
        Width = 109
        Height = 20
        Size.Values = (
          52.916666666666670000
          1434.041666666667000000
          214.312500000000000000
          288.395833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Jenis Kelamin : '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 12
      end
      object QRLabel21: TQRLabel
        Left = 542
        Top = 121
        Width = 44
        Height = 20
        Size.Values = (
          52.916666666666670000
          1434.041666666667000000
          320.145833333333300000
          116.416666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'TTL : '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 12
      end
      object QRLabel22: TQRLabel
        Left = 542
        Top = 159
        Width = 62
        Height = 20
        Size.Values = (
          52.916666666666670000
          1434.041666666667000000
          420.687500000000000000
          164.041666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Alamat : '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 12
      end
      object QRLabel23: TQRLabel
        Left = 543
        Top = 199
        Width = 61
        Height = 20
        Size.Values = (
          52.916666666666670000
          1436.687500000000000000
          526.520833333333300000
          161.395833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Agama : '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 12
      end
      object QRShape3: TQRShape
        Left = 16
        Top = 16
        Width = 993
        Height = 49
        Size.Values = (
          129.645833333333300000
          42.333333333333330000
          42.333333333333330000
          2627.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel2: TQRLabel
        Left = 449
        Top = 30
        Width = 106
        Height = 20
        Size.Values = (
          52.916666666666670000
          1187.979166666667000000
          79.375000000000000000
          280.458333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'DATA MURID'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 12
      end
      object QRShape4: TQRShape
        Left = 16
        Top = 240
        Width = 993
        Height = 49
        Size.Values = (
          129.645833333333300000
          42.333333333333330000
          635.000000000000000000
          2627.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel4: TQRLabel
        Left = 382
        Top = 254
        Width = 259
        Height = 20
        Size.Values = (
          52.916666666666670000
          1010.708333333333000000
          672.041666666666700000
          685.270833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'DATA ORANG TUA / WALI MURID'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 12
      end
      object QRLabel6: TQRLabel
        Left = 48
        Top = 343
        Width = 54
        Height = 20
        Size.Values = (
          52.916666666666670000
          127.000000000000000000
          907.520833333333300000
          142.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Nama : '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 12
      end
      object QRLabel7: TQRLabel
        Left = 48
        Top = 383
        Width = 62
        Height = 20
        Size.Values = (
          52.916666666666670000
          127.000000000000000000
          1013.354166666667000000
          164.041666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Alamat : '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 12
      end
      object QRLabel8: TQRLabel
        Left = 48
        Top = 455
        Width = 82
        Height = 20
        Size.Values = (
          52.916666666666670000
          127.000000000000000000
          1203.854166666667000000
          216.958333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Pekerjaan : '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 12
      end
      object QRLabel10: TQRLabel
        Left = 48
        Top = 421
        Width = 61
        Height = 20
        Size.Values = (
          52.916666666666670000
          127.000000000000000000
          1113.895833333333000000
          161.395833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Agama : '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 12
      end
      object QRLabel11: TQRLabel
        Left = 48
        Top = 493
        Width = 113
        Height = 20
        Size.Values = (
          52.916666666666670000
          127.000000000000000000
          1304.395833333333000000
          298.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Alamat Kantor : '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 12
      end
      object QRLabel5: TQRLabel
        Left = 409
        Top = 343
        Width = 54
        Height = 20
        Size.Values = (
          52.916666666666670000
          1082.145833333333000000
          907.520833333333300000
          142.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Nama : '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 12
      end
      object QRLabel9: TQRLabel
        Left = 409
        Top = 383
        Width = 62
        Height = 20
        Size.Values = (
          52.916666666666670000
          1082.145833333333000000
          1013.354166666667000000
          164.041666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Alamat : '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 12
      end
      object QRLabel12: TQRLabel
        Left = 409
        Top = 421
        Width = 61
        Height = 20
        Size.Values = (
          52.916666666666670000
          1082.145833333333000000
          1113.895833333333000000
          161.395833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Agama : '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 12
      end
      object QRLabel13: TQRLabel
        Left = 409
        Top = 455
        Width = 82
        Height = 20
        Size.Values = (
          52.916666666666670000
          1082.145833333333000000
          1203.854166666667000000
          216.958333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Pekerjaan : '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 12
      end
      object QRLabel14: TQRLabel
        Left = 409
        Top = 493
        Width = 113
        Height = 20
        Size.Values = (
          52.916666666666670000
          1082.145833333333000000
          1304.395833333333000000
          298.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Alamat Kantor : '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 12
      end
      object QRLabel15: TQRLabel
        Left = 48
        Top = 303
        Width = 102
        Height = 20
        Size.Values = (
          52.916666666666670000
          127.000000000000000000
          801.687500000000000000
          269.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'DATA AYAH :'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 12
      end
      object QRLabel24: TQRLabel
        Left = 409
        Top = 303
        Width = 86
        Height = 20
        Size.Values = (
          52.916666666666670000
          1082.145833333333000000
          801.687500000000000000
          227.541666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'DATA IBU :'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 12
      end
      object QRDBText1: TQRDBText
        Left = 172
        Top = 342
        Width = 146
        Height = 21
        Size.Values = (
          55.562500000000000000
          455.083333333333300000
          904.875000000000000000
          386.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = dmtk.ZRptMrdOrtu
        DataField = 'nama_ayah'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRDBText2: TQRDBText
        Left = 172
        Top = 382
        Width = 146
        Height = 21
        Size.Values = (
          55.562500000000000000
          455.083333333333300000
          1010.708333333333000000
          386.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = dmtk.ZRptMrdOrtu
        DataField = 'alamatrmh_ayah'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRDBText3: TQRDBText
        Left = 172
        Top = 420
        Width = 146
        Height = 21
        Size.Values = (
          55.562500000000000000
          455.083333333333300000
          1111.250000000000000000
          386.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = dmtk.ZRptMrdOrtu
        DataField = 'agama_ayah'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRDBText4: TQRDBText
        Left = 172
        Top = 454
        Width = 146
        Height = 21
        Size.Values = (
          55.562500000000000000
          455.083333333333300000
          1201.208333333333000000
          386.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = dmtk.ZRptMrdOrtu
        DataField = 'pekerjaan_ayah'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRDBText5: TQRDBText
        Left = 172
        Top = 494
        Width = 146
        Height = 21
        Size.Values = (
          55.562500000000000000
          455.083333333333300000
          1307.041666666667000000
          386.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = dmtk.ZRptMrdOrtu
        DataField = 'alamatkntr_ayah'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRDBText6: TQRDBText
        Left = 533
        Top = 342
        Width = 146
        Height = 21
        Size.Values = (
          55.562500000000000000
          1410.229166666667000000
          904.875000000000000000
          386.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = dmtk.ZRptMrdOrtu
        DataField = 'nama_ibu'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRDBText7: TQRDBText
        Left = 533
        Top = 382
        Width = 146
        Height = 21
        Size.Values = (
          55.562500000000000000
          1410.229166666667000000
          1010.708333333333000000
          386.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = dmtk.ZRptMrdOrtu
        DataField = 'alamatrmh_ibu'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRDBText8: TQRDBText
        Left = 533
        Top = 420
        Width = 146
        Height = 21
        Size.Values = (
          55.562500000000000000
          1410.229166666667000000
          1111.250000000000000000
          386.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = dmtk.ZRptMrdOrtu
        DataField = 'agama_ibu'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRDBText12: TQRDBText
        Left = 533
        Top = 454
        Width = 146
        Height = 21
        Size.Values = (
          55.562500000000000000
          1410.229166666667000000
          1201.208333333333000000
          386.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = dmtk.ZRptMrdOrtu
        DataField = 'pekerjaan_ibu'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRDBText13: TQRDBText
        Left = 533
        Top = 494
        Width = 146
        Height = 21
        Size.Values = (
          55.562500000000000000
          1410.229166666667000000
          1307.041666666667000000
          386.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = dmtk.ZRptMrdOrtu
        DataField = 'alamatkntr_ibu'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRDBText14: TQRDBText
        Left = 869
        Top = 342
        Width = 146
        Height = 21
        Size.Values = (
          55.562500000000000000
          2299.229166666667000000
          904.875000000000000000
          386.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = dmtk.ZRptMrdOrtu
        DataField = 'nama_wali'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRDBText15: TQRDBText
        Left = 869
        Top = 382
        Width = 146
        Height = 21
        Size.Values = (
          55.562500000000000000
          2299.229166666667000000
          1010.708333333333000000
          386.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = dmtk.ZRptMrdOrtu
        DataField = 'hubungan_wali'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRDBText23: TQRDBText
        Left = 869
        Top = 420
        Width = 146
        Height = 21
        Size.Values = (
          55.562500000000000000
          2299.229166666667000000
          1111.250000000000000000
          386.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = dmtk.ZRptMrdOrtu
        DataField = 'pekerjaan_wali'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel26: TQRLabel
        Left = 745
        Top = 421
        Width = 82
        Height = 20
        Size.Values = (
          52.916666666666670000
          1971.145833333333000000
          1113.895833333333000000
          216.958333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Pekerjaan : '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 12
      end
      object QRLabel28: TQRLabel
        Left = 745
        Top = 383
        Width = 82
        Height = 20
        Size.Values = (
          52.916666666666670000
          1971.145833333333000000
          1013.354166666667000000
          216.958333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Hubungan : '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 12
      end
      object QRLabel29: TQRLabel
        Left = 745
        Top = 343
        Width = 54
        Height = 20
        Size.Values = (
          52.916666666666670000
          1971.145833333333000000
          907.520833333333300000
          142.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Nama : '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 12
      end
      object QRLabel30: TQRLabel
        Left = 745
        Top = 303
        Width = 100
        Height = 20
        Size.Values = (
          52.916666666666670000
          1971.145833333333000000
          801.687500000000000000
          264.583333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'DATA WALI :'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 12
      end
    end
  end
end
