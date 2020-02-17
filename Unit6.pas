unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids,
  dxGDIPlusClasses, Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls,ShellApi;

type
  TForm6 = class(TForm)
    Panel9: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Panel4: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    GroupBox1: TGroupBox;
    btBackup: TBitBtn;
    GroupBox2: TGroupBox;
    btRestore: TBitBtn;
    GroupBox3: TGroupBox;
    btKosong: TBitBtn;
    SaveDialog1: TSaveDialog;
    editPath: TEdit;
    OpenDialog1: TOpenDialog;
    Image1: TImage;
    ImageTK: TImage;
    procedure btBackupClick(Sender: TObject);
    procedure btKosongClick(Sender: TObject);
    procedure btRestoreClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure Refresh;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

uses udm, Unit1, Unit2, Unit3, Unit4, Unit5, UnitLogin, frLoading, Unit7;

procedure TForm6.BitBtn1Click(Sender: TObject);
begin
Form1.Show;

Form2.Hide;
Form3.Hide;
Form4.Hide;
Form5.Hide;
Form6.Hide;
Form7.Hide;


end;

procedure TForm6.BitBtn2Click(Sender: TObject);
begin
Form2.Show;

Form1.Hide;
Form3.Hide;
Form4.Hide;
Form5.Hide;
Form6.Hide;
Form7.Hide;


with dmtk.ZCek do
begin
Close;
SQL.Clear;
SQL.Add('SELECT * FROM murid WHERE NOT EXISTS  (SELECT * FROM orangtua WHERE orangtua.nmr_induk_mrd = murid.nmr_induk_mrd)');
Open;
end;

end;

procedure TForm6.BitBtn3Click(Sender: TObject);
begin
Form3.Show;

Form1.Hide;
Form2.Hide;
Form4.Hide;
Form5.Hide;
Form6.Hide;
Form7.Hide;

with dmtk.ZCekMutasi do
begin
Close;
SQL.Clear;
SQL.Add('SELECT * FROM murid WHERE NOT EXISTS  (SELECT * FROM mutasi WHERE mutasi.nmr_induk_mrd = murid.nmr_induk_mrd)');
Open;

end;




end;

procedure TForm6.BitBtn4Click(Sender: TObject);
begin
Form4.Show;

Form1.Hide;
Form2.Hide;
Form3.Hide;
Form5.Hide;
Form6.Hide;
Form7.Hide;
end;

procedure TForm6.BitBtn5Click(Sender: TObject);
begin
Form7.Show;

Form1.Hide;
Form2.Hide;
Form3.Hide;
Form4.Hide;
Form5.Hide;
Form6.Hide;
end;

procedure TForm6.BitBtn6Click(Sender: TObject);
begin
Form6.Show;

Form1.Hide;
Form2.Hide;
Form3.Hide;
Form4.Hide;
Form5.Hide;
Form7.Hide;
end;

procedure TForm6.BitBtn7Click(Sender: TObject);
begin
Form5.Show;

Form1.Hide;
Form2.Hide;
Form3.Hide;
Form4.Hide;
Form6.Hide;
Form7.Hide;
end;

procedure TForm6.BitBtn8Click(Sender: TObject);
BEGIN

with dmtk.ZUser do
begin
Close;
SQL.Clear;
SQL.Add('Select * from user');
Open;
end;

Form1.Hide;
Form2.Hide;
Form3.Hide;
Form4.Hide;
Form5.Hide;
Form6.Hide;
Form7.Hide;


FormLogin.Show;
FormLogin.Edit1.SetFocus;
END;


procedure TForm6.btBackupClick(Sender: TObject);
var user, pass, database, dir : String; buttonSelected: integer;
begin
  SaveDialog1.FileName:='Backup'+FormatDateTime('ddmmyy', now)+'.sql';
  if SaveDialog1.Execute then
  begin
    editPath.Text:=SaveDialog1.FileName;

  //MySQL user & MySQL Dump path
  user :='root';
  pass :='';
  database :='tkpermatasari';
  dir :='C:\xampp\mysql\bin';

  if pass<>'' then pass:=' -password='+pass;
  SetEnvironmentVariable(PChar('Path'), PChar(Dir));
  ShellExecute(Handle, 'open', PChar ('cmd.exe'),
  pchar('/c mysqldump --opt --user='+user+pass+' -B '+database+' >"'+editPath.Text+'"'), nil, sw_Hide);
  FormLoading.Timer1.Enabled:=true;
  FormLoading.Show;
  Form6.Enabled:=false;

  end;
end;

procedure TForm6.btKosongClick(Sender: TObject);
var buttonSelected:integer;
BEGIN

  if MessageDlg('Anda Yakin Ingin Mongosongkan Database?', mtconfirmation,[mbYes,mbNo],0,mbNo)= mrYes then
  begin
    with dmtk.ZMurid do
    begin
    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM murid');
    ExecSQL;
    end;

    with dmtk.ZOrtu do
    begin
    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM orangtua');
    ExecSQL;
    end;

    with dmtk.ZMutasi do
    begin
    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM mutasi');
    ExecSQL;
    end;

    with dmtk.ZTUser do
    begin
    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM user');
    ExecSQL;
    end;


    FormLoading.Timer3.Enabled:=true;
    FormLoading.Show;
    Form6.Enabled:=false;


    with dmtk.Zmurid do
    begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM murid');
    Open;
    end;

    with dmtk.ZOrtu do
    begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM orangtua');
    Open;
    end;

    with dmtk.ZMutasi do
    begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM mutasi');
    Open;
    end;

    with dmtk.ZTUser do
    begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM user');
    Open;
    end;

    with dmtk.ZCek do
    begin
    Close;
    Open;
    end;


    with dmtk.ZCekMutasi do
    begin
    Close;
    Open;
    end;

  end;
END;

procedure TForm6.btRestoreClick(Sender: TObject);
var user, pass, database, dir :String;
BEGIN
  if OpenDialog1.Execute then
  begin

    editPath.Text:= OpenDialog1.FileName;

    //Belum memilih File
    if editPath.Text = '' then Exit;


    //MySQL user & MySQL path
    user :='root';
    pass :='';
    database:='tkpermatasari';
    dir:='C:\xampp\mysql\bin\mysql.exe';

    if pass<>'' then
    pass:=' -password='+pass;
    ShellExecute(Self.Handle, PChar('open'),
    PChar(dir),
    PChar('--user='+user+pass+' -h localhost -e "drop database if exists '+database+'; '+
    'create database '+database+' ; use '+database+';\. '+OpenDialog1.FileName+'"'),nil,SW_HIDE);


    FormLoading.Timer2.Enabled:=true;
    FormLoading.Show;
    Form6.Enabled:=false;

  //if Form6.Enabled = True then

   //and Form2 and Form3 and Form4 and Form5 and Form7 do

    Refresh;

end;


END;



procedure TForm6.Refresh;
Begin
  begin
  with dmtk.ZMurid do
  begin
  dmtk.ZMurid.Close;
  dmtk.ZMurid.SQL.Clear;
  dmtk.ZMurid.SQL.Add('SELECT * FROM murid');
  dmtk.ZMurid.Open;
  end;
  end;

  with dmtk.ZOrtu do
  begin
  dmtk.ZOrtu.Close;
  dmtk.ZOrtu.SQL.Clear;
  dmtk.ZOrtu.SQL.Add('SELECT * FROM orangtua');
  dmtk.ZOrtu.Open;
  end;

  with dmtk.ZMutasi do
  begin
  dmtk.ZMutasi.Close;
  dmtk.ZMutasi.SQL.Clear;
  dmtk.ZMutasi.SQL.Add('SELECT * FROM mutasi');
  dmtk.ZMutasi.Open;
  end;

  with dmtk.ZTUser do
  begin
  dmtk.ZTUser.Close;
  dmtk.ZTUser.SQL.Clear;
  dmtk.ZTUser.SQL.Add('SELECT * FROM user');
  dmtk.ZTUser.Open;
  end;


  with dmtk.ZCek do
  begin
  dmtk.ZCek.Close;
  dmtk.ZCek.Open;
  end;


  with dmtk.ZCekMutasi do
  begin
  dmtk.ZCekMutasi.Close;
  dmtk.ZCekMutasi.Open;
  end;

End;

end.
