unit udm;

interface

uses
  System.SysUtils, System.Classes, ZAbstractConnection, ZConnection, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  Tdmtk = class(TDataModule)
    ZConnection1: TZConnection;
    ZMurid: TZQuery;
    DataSource1: TDataSource;
    ZOrtu: TZQuery;
    DataSource2: TDataSource;
    ZCek: TZQuery;
    DataSource3: TDataSource;
    ZUser: TZQuery;
    ZTUser: TZQuery;
    DataSource4: TDataSource;
    ZMutasi: TZQuery;
    DataSource5: TDataSource;
    ZRptMrdOrtu: TZQuery;
    DataSource6: TDataSource;
    ZCekMutasi: TZQuery;
    DataSource7: TDataSource;
    ZRptMuridAll: TZQuery;
    ZRptMutasiAll: TZQuery;
    ZRptSuratMutasi: TZQuery;
    DataSource8: TDataSource;
    DataSource9: TDataSource;
    DataSource10: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmtk: Tdmtk;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
