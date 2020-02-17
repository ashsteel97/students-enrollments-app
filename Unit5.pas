unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.UITypes, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids,
  dxGDIPlusClasses, Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm5 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Panel4: TPanel;
    Panel9: TPanel;
    GroupBox1: TGroupBox;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Edit3: TEdit;
    Edit2: TEdit;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    GroupBox5: TGroupBox;
    BitBtn14: TBitBtn;
    BitBtn13: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn9: TBitBtn;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    Edit4: TEdit;
    Panel10: TPanel;
    Label5: TLabel;
    ComboBox8: TComboBox;
    Edit14: TEdit;
    Button3: TButton;
    Image1: TImage;
    ImageTK: TImage;
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn8Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure ComboBox8Change(Sender: TObject);
    procedure Edit14Change(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

uses udm, Unit1, Unit2, Unit3, Unit4, UnitLogin, Unit6, Unit7;

procedure TForm5.BitBtn10Click(Sender: TObject);
BEGIN

BitBtn9.Visible  := False;
BitBtn10.Visible := False;
BitBtn11.Visible := False;
BitBtn12.Visible := False;

BitBtn13.Visible := True;
BitBtn14.Visible := True;

Edit1.Enabled := True;
Edit2.Enabled := True;
Edit3.Enabled := True;
Edit4.Enabled := True;
ComboBox1.Enabled := True;

with dmtk.ZTUser do
begin
Edit1.Text := FieldByName('username').AsString;
Edit2.Text := FieldByName('password').AsString;
Edit3.Text := FieldByName('nama').AsString;
Edit4.Text := FieldByName('nuptk').AsString;
ComboBox1.Text := FieldByName('status').AsString;
end;


END;

procedure TForm5.BitBtn11Click(Sender: TObject);
var nama,usr,sts : string;
BEGIN

Begin
with dmtk.ZTUser do

  begin
  usr := dmtk.ZTUser.FieldValues['username'];
  nama := dmtk.ZTUser.FieldValues['nama'];
  sts := dmtk.ZTUser.FieldValues['status'];
  end;

End;

if MessageDlg('Yakin Anda Akan Hapus Data User Ini?' + #13+ #13 + 'Username : ' + usr + #13 +'Nama : ' + nama + #13 + 'Status : ' + sts, mtconfirmation,[mbYes,mbNo],0,mbNo)= mrYes then
Begin
with dmtk.ZTUser do

  begin
  dmtk.ZTUser.Delete;
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  ComboBox1.Text := '--Pilih Status--';

  Edit1.Enabled := True;
  Edit2.Enabled := True;
  Edit3.Enabled := True;
  Edit4.Enabled := True;
  ComboBox1.Enabled := True;

  BitBtn9.Enabled := True;
  BitBtn10.Enabled := False;
  BitBtn11.Enabled := False;

  end;

  MessageDlg('Data User Dengan Username : ' + usr + #13 +'Atas Nama : ' + nama + #13 + 'Telah Berhasil Dihapus!', mtinformation,[mbOk],0);
End;

END;

procedure TForm5.BitBtn12Click(Sender: TObject);
begin
Panel10.Visible := True;
Panel9.Enabled := False;
Panel10.BringToFront;
end;

procedure TForm5.BitBtn13Click(Sender: TObject);
BEGIN

with dmtk.ZTUser do

begin

  Edit;
  FieldByName('username').AsString := Edit1.Text;
  FieldByName('password').AsString := Edit2.Text;
  FieldByName('status').AsString := ComboBox1.Text;
  FieldByName('nama').AsString := Edit3.Text;
  FieldByName('nuptk').AsString := Edit4.Text;
  Post;

end;



  BitBtn13.Visible := False;
  BitBtn14.Visible := False;

  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  ComboBox1.Text := '--Pilih Status--';

  BitBtn9.Enabled := True;
  BitBtn10.Enabled := False;
  BitBtn11.Enabled := False;

  BitBtn9.Visible := True;
  BitBtn10.Visible := True;
  BitBtn11.Visible := True;
  BitBtn12.Visible := True;


END;

procedure TForm5.BitBtn14Click(Sender: TObject);
BEGIN

BitBtn13.Visible := False;
BitBtn14.Visible := False;

Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
Edit4.Clear;
ComboBox1.Text := '--Pilih Status--';

BitBtn9.Enabled := True;
BitBtn10.Enabled := False;
BitBtn11.Enabled := False;


BitBtn9.Visible := True;
BitBtn10.Visible := True;
BitBtn11.Visible := True;
BitBtn12.Visible := True;


END;

procedure TForm5.BitBtn1Click(Sender: TObject);
begin
Form1.Show;

Form2.Hide;
Form3.Hide;
Form4.Hide;
Form5.Hide;
Form6.Hide;
Form7.Hide;
end;

procedure TForm5.BitBtn2Click(Sender: TObject);
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

procedure TForm5.BitBtn3Click(Sender: TObject);
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

procedure TForm5.BitBtn4Click(Sender: TObject);
begin
Form4.Show;

Form1.Hide;
Form2.Hide;
Form3.Hide;
Form5.Hide;
Form6.Hide;
Form7.Hide;
end;

procedure TForm5.BitBtn5Click(Sender: TObject);
begin
Form7.Show;

Form1.Hide;
Form2.Hide;
Form3.Hide;
Form4.Hide;
Form5.Hide;
Form6.Hide;
end;

procedure TForm5.BitBtn6Click(Sender: TObject);
begin
Form6.Show;

Form1.Hide;
Form2.Hide;
Form3.Hide;
Form4.Hide;
Form5.Hide;
Form7.Hide;
end;

procedure TForm5.BitBtn7Click(Sender: TObject);
begin
Form5.Show;

Form1.Hide;
Form2.Hide;
Form3.Hide;
Form4.Hide;
Form6.Hide;
Form7.Hide;
end;

procedure TForm5.BitBtn8Click(Sender: TObject);
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

procedure TForm5.BitBtn9Click(Sender: TObject);
BEGIN

if Edit1.Text = '' then MessageDlg('Anda Belum Mengisi Username' + #13 + 'Silahkan Isi Terlebih Dahulu', mtinformation,[mbOk],0)
else if Edit2.Text = '' then MessageDlg('Anda Belum Mengisi Password' + #13 + 'Silahkan Isi Terlebih Dahulu', mtinformation,[mbOk],0)
else if Edit3.Text = '' then MessageDlg('Anda Belum Mengisi Nama' + #13 + 'Silahkan Isi Terlebih Dahulu', mtinformation,[mbOk],0)
else if Edit4.Text = '' then MessageDlg('Anda Belum Mengisi NUPTK' + #13 + 'Silahkan Isi Terlebih Dahulu', mtinformation,[mbOk],0)
else if ComboBox1.Text = '--Pilih Status--' then MessageDlg('Anda Belum Mengisi Status' + #13 + 'Silahkan Isi Terlebih Dahulu', mtinformation,[mbOk],0)

else 

Begin

  with dmtk.ZUser do
  begin
  Close;
  SQL.Clear;
  SQL.Add('Select * from user WHERE username LIKE ''%' + (Edit1.Text) + '%''');
  Open;
  end;

  if dmtk.ZUser.RecordCount >= 1 then 

      begin
      MessageDlg('Username Telah Ada!', mtWarning,[mbOK],0); 
      Edit1.Clear;
      Edit2.Clear;
      Edit3.Clear;
      Edit4.Clear;
      ComboBox1.Text := '--Pilih Status--';

      Edit1.Enabled := True;
      Edit2.Enabled := True;
      Edit3.Enabled := True;
      Edit4.Enabled := True;
      ComboBox1.Enabled := True;

      BitBtn9.Enabled := True;
      BitBtn10.Enabled := False;
      BitBtn11.Enabled := False;
      end
  

  else

      begin
      with dmtk.ZTUser do
        begin
        Append;
        FieldByName('username').AsString := Edit1.Text;
        FieldByName('password').AsString := Edit2.Text;
        FieldByName('status').AsString := ComboBox1.Text;
        FieldByName('nama').AsString := Edit3.Text;
        FieldByName('nuptk').AsString := Edit4.Text;
        Post;

        Edit1.Clear;
        Edit2.Clear;
        Edit3.Clear;
        Edit4.Clear;
        ComboBox1.Text := '--Pilih Status--';
        end;

      with dmtk.ZUser do
        begin
        Close;
        SQL.Clear;
        SQL.Add('Select * from user');
        Open;
        end;
        
      end;

End;

END;

procedure TForm5.Button3Click(Sender: TObject);
Begin

begin
if Edit14.Text = '' then
    begin
        with dmtk.ZTUser do
        begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT * FROM user');
        Open;
        end
    end

    else if ComboBox8.ItemIndex = (0) then
    with dmtk.ZTUser do
    begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM user WHERE username LIKE ''%' + (Edit14.Text) + '%''');
    Open;


    if dmtk.ZTUser.RecordCount = 0 then
    begin
    MessageDlg('Data Tidak Ditemukan!', mtWarning,[mbOK],0);
    Edit14.Clear;
    end
    end

    else if ComboBox8.ItemIndex = (1) then
    with dmtk.ZTUser do
    begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM user WHERE nama LIKE ''%' + (Edit14.Text) + '%''');
    Open;


    if dmtk.ZTUser.RecordCount = 0 then
    begin
    MessageDlg('Data Tidak Ditemukan!', mtWarning,[mbOK],0);
    Edit14.Clear;
    end
    end

    else if ComboBox8.ItemIndex = (2) then
    with dmtk.ZTUser do
    begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM user WHERE nuptk LIKE ''%' + (Edit14.Text) + '%''');
    Open;


    if dmtk.ZTUser.RecordCount = 0 then
    begin
    MessageDlg('Data Tidak Ditemukan!', mtWarning,[mbOK],0);
    Edit14.Clear;
    end
    end



end;
Panel9.Enabled := True;
Panel10.Visible := False;
Panel10.SendToBack;
End;


procedure TForm5.ComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
Key := #0;
end;

procedure TForm5.ComboBox8Change(Sender: TObject);
begin
Edit14.Enabled := True;
end;

procedure TForm5.DBGrid1CellClick(Column: TColumn);
begin

Edit1.Enabled := False;
Edit2.Enabled := False;
Edit3.Enabled := False;
Edit4.Enabled := False;
ComboBox1.Enabled := False;

BitBtn9.Enabled := False;
BitBtn10.Enabled := True;
BitBtn11.Enabled := True;


with dmtk.ZTUser do
begin
Edit1.Text := FieldByName('username').AsString;
Edit2.Text := FieldByName('password').AsString;
Edit3.Text := FieldByName('nama').AsString;
Edit4.Text := FieldByName('nuptk').AsString;
ComboBox1.Text := FieldByName('status').AsString;
end;

end;

procedure TForm5.DBGrid1DblClick(Sender: TObject);
begin
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
Edit4.Clear;
ComboBox1.Text := '--Pilih Status--';

Edit1.Enabled := True;
Edit2.Enabled := True;
Edit3.Enabled := True;
Edit4.Enabled := True;
ComboBox1.Enabled := True;

BitBtn9.Enabled := True;
BitBtn10.Enabled := False;
BitBtn11.Enabled := False;



end;

procedure TForm5.Edit14Change(Sender: TObject);
begin
if Edit14.Text = '' then
    begin
    Edit14.Enabled := False;
    ComboBox8.Text := '--Cari Berdasarkan--';

      with dmtk.ZTUser do
      begin
      Close;
      SQL.Clear;
      SQL.Add('Select * from user');
      Open;
      end;

    end;
end;

procedure TForm5.FormActivate(Sender: TObject);
begin
Form6.Refresh;
end;

end.
