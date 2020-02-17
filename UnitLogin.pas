unit UnitLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  dxGDIPlusClasses, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxClasses, cxLookAndFeels, dxSkinsForm;

type
  TFormLogin = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Edit1: TEdit;
    Image1: TImage;
    Label3: TLabel;
    Label4: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label5: TLabel;
    Image2: TImage;
    dxSkinController1: TdxSkinController;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLogin: TFormLogin;

implementation

{$R *.dfm}

uses udm, Unit1, Unit2, Unit3, Unit4, Unit5, Unit6, Unit7;

procedure TFormLogin.Button1Click(Sender: TObject);
BEGIN
with dmtk.ZUser do

begin
Close;
SQL.Clear;
SQL.Text := 'Select * From user where username =' + QuotedStr(Edit1.Text);
Open;
end;

if (Edit1.Text = '') or (Edit2.Text = '') then
    begin
    Application.MessageBox('Username / Password Belum Diisi!', 'Information',
      MB_OK or MB_IconInformation);
    Edit1.SetFocus;
    end

 else if dmtk.ZUser.RecordCount = 0 then
        begin
          Application.MessageBox('Username / Password Anda Salah!', 'Information',
            MB_OK or MB_ICONINFORMATION);
          Edit1.Clear;
          Edit2.Clear;
          Edit1.SetFocus;
        end

 else  if dmtk.ZUser.FieldByName('password').AsString <> Edit2.Text then
        begin
          Application.MessageBox('Username / Password Anda Salah!', 'Information',
            MB_OK or MB_ICONINFORMATION);
          Edit1.Clear;
          Edit2.Clear;
          Edit1.setfocus;
        end

else
        begin
        with dmtk.ZUser do
        begin
        Close;
        SQL.Clear;
        SQL.Add('Select username,status from user where password='''+(Edit2.text)+'''');
        Open;
        Label5.Caption := dmtk.ZUser.FieldByName('status').AsString;
        end;

        if Label5.Caption = 'ADMIN' then
        begin
        Form1.BitBtn7.Visible := True;
        Form2.BitBtn7.Visible := True;
        Form3.BitBtn7.Visible := True;
        Form4.BitBtn7.Visible := True;
        Form5.BitBtn7.Visible := True;
        Form6.BitBtn7.Visible := True;
        Form7.BitBtn7.Visible := True;

        Form1.Show;

        FormLogin.Hide;

        Form1.Label2.Caption := Edit1.Text;
        Form2.Label2.Caption := Edit1.Text;
        Form3.Label2.Caption := Edit1.Text;
        Form4.Label2.Caption := Edit1.Text;
        Form5.Label2.Caption := Edit1.Text;
        Form6.Label2.Caption := Edit1.Text;
        Form7.Label2.Caption := Edit1.Text;

        Edit1.Clear;
        Edit2.Clear;

        
        end

        else

        begin
        Form1.BitBtn7.Visible := False;
        Form2.BitBtn7.Visible := False;
        Form3.BitBtn7.Visible := False;
        Form4.BitBtn7.Visible := False;
        Form5.BitBtn7.Visible := False;
        Form6.BitBtn7.Visible := False;
        Form7.BitBtn7.Visible := False;

        Form1.Show;

        FormLogin.Hide;

        Form1.Label2.Caption := Edit1.Text;
        Form2.Label2.Caption := Edit1.Text;
        Form3.Label2.Caption := Edit1.Text;
        Form4.Label2.Caption := Edit1.Text;
        Form5.Label2.Caption := Edit1.Text;
        Form6.Label2.Caption := Edit1.Text;
        Form7.Label2.Caption := Edit1.Text;

        Edit1.Clear;
        Edit2.Clear;

       
        end;


        end;

END;

procedure TFormLogin.Button2Click(Sender: TObject);
begin
Application.Terminate;
end;



end.


