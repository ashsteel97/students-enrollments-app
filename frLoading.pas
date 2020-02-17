unit frLoading;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TFormLoading = class(TForm)
    ProgressBar1: TProgressBar;
    Timer1: TTimer;
    Timer2: TTimer;
    Timer3: TTimer;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLoading: TFormLoading;


implementation

{$R *.dfm}

uses Unit6;

procedure TFormLoading.FormCreate(Sender: TObject);
begin
Timer1.Enabled := false;
Timer2.Enabled := false;
Timer3.Enabled := false;
end;

procedure TFormLoading.Timer1Timer(Sender: TObject);
begin
ProgressBar1.Position:=ProgressBar1.Position+1;
if ProgressBar1.Position = 100 then
begin
ProgressBar1.Position:=0 ;
Timer1.Enabled:=false;
FormLoading.Hide;
MessageDlg('Database Telah Berhasil Di Back-Up', mtInformation, [mbOK], 0);
Form6.Enabled:=true;

end;
end;

procedure TFormLoading.Timer2Timer(Sender: TObject);
begin
ProgressBar1.Position:=ProgressBar1.Position+1;
if ProgressBar1.Position = 100 then
begin
ProgressBar1.Position:=0 ;
Timer2.Enabled:=false;
FormLoading.Hide;
MessageDlg('Database Telah Berhasil Di Restore', mtInformation, [mbOK], 0);
Form6.Enabled:=true;
end;
end;

procedure TFormLoading.Timer3Timer(Sender: TObject);
begin
ProgressBar1.Position:=ProgressBar1.Position+1;
if ProgressBar1.Position = 100 then
begin
ProgressBar1.Position:=0 ;
Timer3.Enabled:=false;
FormLoading.Hide;
MessageDlg('Database Telah Berhasil Di Kosongkan', mtInformation, [mbOK], 0);
Form6.Enabled:=true;
end;
end;

end.
