unit Finans_SchmallenbachYontemi;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmNetİsletmeSermayesi = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    btn1NetİsletmeSermayesi: TButton;
    btn2NetİsletmeSermayesi: TButton;
    Ed1NetİsletmeSermayesi: TEdit;
    Ed2NetİsletmeSermayesi: TEdit;
    Memo1NetİsletmeSermayesi: TMemo;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Ed1Schmallenbach: TEdit;
    Ed2Schmallenbach: TEdit;
    Ed3Schmallenbach: TEdit;
    Ed4Schmallenbach: TEdit;
    Ed5Schmallenbach: TEdit;
    Ed6Schmallenbach: TEdit;
    Ed7Schmallenbach: TEdit;
    btn1HesaplaSchmallenbach: TButton;
    btn2TemizleSchmallenbach: TButton;
    Memo1SonucSchmallenbach: TMemo;
    procedure btn1NetİsletmeSermayesiClick(Sender: TObject);
    procedure btn2NetİsletmeSermayesiClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn1HesaplaSchmallenbachClick(Sender: TObject);
    procedure btn2TemizleSchmallenbachClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNetİsletmeSermayesi: TfrmNetİsletmeSermayesi;

implementation

{$R *.dfm}

procedure TfrmNetİsletmeSermayesi.btn1HesaplaSchmallenbachClick(
  Sender: TObject);
  var
  sonuc:double;
begin
sonuc := (StrToFloat(Ed1Schmallenbach.Text))+(1-(StrToFloat(Ed2Schmallenbach.Text)/100))*(StrToFloat(Ed3Schmallenbach.Text)*((StrToFloat(Ed4Schmallenbach.Text)-StrToFloat(Ed5Schmallenbach.Text))/12))+(StrToFloat(Ed6Schmallenbach.Text)*(StrToFloat(Ed7Schmallenbach.Text)/12));
Memo1SonucSchmallenbach.Lines.Add(FloatToStr(sonuc));
end;

procedure TfrmNetİsletmeSermayesi.btn1NetİsletmeSermayesiClick(Sender: TObject);
var
sonuc:double;
begin
sonuc := StrToFloat(Ed1NetİsletmeSermayesi.Text)/StrToFloat(Ed2NetİsletmeSermayesi.Text);
Memo1NetİsletmeSermayesi.Lines.Add(FloatToStr(sonuc));
end;

procedure TfrmNetİsletmeSermayesi.btn2NetİsletmeSermayesiClick(Sender: TObject);
begin
Ed1NetİsletmeSermayesi.Clear;
Ed2NetİsletmeSermayesi.Clear;
Memo1NetİsletmeSermayesi.Clear;
end;

procedure TfrmNetİsletmeSermayesi.btn2TemizleSchmallenbachClick(
  Sender: TObject);
begin
Ed1Schmallenbach.Clear;
Ed2Schmallenbach.Clear;
Ed3Schmallenbach.Clear;
Ed4Schmallenbach.Clear;
Ed5Schmallenbach.Clear;
Ed6Schmallenbach.Clear;
Ed7Schmallenbach.Clear;
Memo1SonucSchmallenbach.Clear;
end;

procedure TfrmNetİsletmeSermayesi.FormCreate(Sender: TObject);
begin
frmNetİsletmeSermayesi.Position:=poScreenCenter;
frmNetİsletmeSermayesi.Ed1NetİsletmeSermayesi.MaxLength:=10;
frmNetİsletmeSermayesi.Ed2NetİsletmeSermayesi.MaxLength:=10;
frmNetİsletmeSermayesi.Ed1Schmallenbach.MaxLength:=10;
frmNetİsletmeSermayesi.Ed2Schmallenbach.MaxLength:=10;
frmNetİsletmeSermayesi.Ed3Schmallenbach.MaxLength:=10;
frmNetİsletmeSermayesi.Ed4Schmallenbach.MaxLength:=10;
frmNetİsletmeSermayesi.Ed5Schmallenbach.MaxLength:=10;
frmNetİsletmeSermayesi.Ed6Schmallenbach.MaxLength:=10;
frmNetİsletmeSermayesi.Ed7Schmallenbach.MaxLength:=10;
end;

end.
