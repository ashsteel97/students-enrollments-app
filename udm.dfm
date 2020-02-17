object dmtk: Tdmtk
  OldCreateOrder = False
  Height = 384
  Width = 575
  object ZConnection1: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'tkpermatasari'
    User = 'root'
    Password = ''
    Protocol = 'mysql'
    LibraryLocation = 'C:\xampp\perl\vendor\lib\auto\DBD\mysql\libmysql.dll'
    Left = 48
    Top = 8
  end
  object ZMurid: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from murid;')
    Params = <>
    Left = 48
    Top = 88
  end
  object DataSource1: TDataSource
    DataSet = ZMurid
    Left = 104
    Top = 88
  end
  object ZOrtu: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from orangtua')
    Params = <>
    Left = 48
    Top = 152
  end
  object DataSource2: TDataSource
    DataSet = ZOrtu
    Left = 104
    Top = 152
  end
  object ZCek: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      
        'SELECT * FROM murid WHERE NOT EXISTS  (SELECT * FROM orangtua WH' +
        'ERE orangtua.nmr_induk_mrd = murid.nmr_induk_mrd);')
    Params = <>
    Left = 272
    Top = 80
  end
  object DataSource3: TDataSource
    DataSet = ZCek
    Left = 344
    Top = 80
  end
  object ZUser: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from user')
    Params = <>
    Left = 16
    Top = 8
  end
  object ZTUser: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from user')
    Params = <>
    Left = 48
    Top = 264
  end
  object DataSource4: TDataSource
    DataSet = ZTUser
    Left = 104
    Top = 264
  end
  object ZMutasi: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from mutasi')
    Params = <>
    Left = 48
    Top = 208
  end
  object DataSource5: TDataSource
    DataSet = ZMutasi
    Left = 104
    Top = 208
  end
  object ZRptMrdOrtu: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      
        'SELECT murid.nmr_induk_mrd, murid.kelompok, murid.thn_pelajaran,' +
        '  murid.img, murid.nama_anak_lengkap, murid.jns_klmn, murid.tmpt' +
        '_lhr, murid.tgl_lhr, murid.almt_jln, murid.almt_desa_kelurahan, ' +
        'murid.almt_kecamatan, murid.almt_kabupaten_kota, murid.agama, mu' +
        'rid.kwrgn, orangtua.nama_ayah, orangtua.alamatrmh_ayah, orangtua' +
        '.agama_ayah, orangtua.pend_ayah, orangtua.pekerjaan_ayah, orangt' +
        'ua.alamatkntr_ayah, orangtua.nama_ibu, orangtua.alamatrmh_ibu, o' +
        'rangtua.agama_ibu, orangtua.pend_ibu, orangtua.pekerjaan_ibu, or' +
        'angtua.alamatkntr_ibu, orangtua.nama_wali, orangtua.hubungan_wal' +
        'i, orangtua.pend_wali, orangtua.pekerjaan_wali FROM murid INNER ' +
        'JOIN orangtua ON orangtua.nmr_induk_mrd = murid.nmr_induk_mrd')
    Params = <>
    Left = 456
    Top = 24
  end
  object DataSource6: TDataSource
    DataSet = ZRptMrdOrtu
    Left = 520
    Top = 24
  end
  object ZCekMutasi: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      
        'SELECT * FROM murid WHERE NOT EXISTS  (SELECT * FROM mutasi WHER' +
        'E mutasi.nmr_induk_mrd = murid.nmr_induk_mrd)')
    Params = <>
    Left = 272
    Top = 136
  end
  object DataSource7: TDataSource
    DataSet = ZCekMutasi
    Left = 344
    Top = 136
  end
  object ZRptMuridAll: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from murid')
    Params = <>
    Left = 456
    Top = 80
  end
  object ZRptMutasiAll: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from mutasi')
    Params = <>
    Left = 456
    Top = 136
  end
  object ZRptSuratMutasi: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from mutasi')
    Params = <>
    Left = 456
    Top = 192
  end
  object DataSource8: TDataSource
    DataSet = ZRptMuridAll
    Left = 520
    Top = 80
  end
  object DataSource9: TDataSource
    DataSet = ZRptMutasiAll
    Left = 520
    Top = 144
  end
  object DataSource10: TDataSource
    DataSet = ZRptSuratMutasi
    Left = 520
    Top = 200
  end
end
