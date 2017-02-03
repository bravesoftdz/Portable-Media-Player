unit uFeatures;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Buttons, Vcl.Themes,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, WinInet, ShellAPI;

type
  Tfrmfeatures = class(TForm)
    grp1: TGroupBox;
    btn1: TButton;
    lbl1: TLabel;
    grp2: TGroupBox;
    btn2: TButton;
    grp3: TGroupBox;
    grp4: TGroupBox;
    btn3: TButton;
    lbl2: TLabel;
    mmo1: TMemo;
    trckbr1: TTrackBar;
    btn4: TButton;
    chk1: TCheckBox;
    btn5: TButton;
    cbb1: TComboBox;
    idhtp1: TIdHTTP;
    btn6: TButton;
    btn7: TButton;
    procedure btn3Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure chk1Click(Sender: TObject);
    procedure trckbr1Change(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmfeatures: Tfrmfeatures;
  alphablendval : Integer;

implementation

{$R *.dfm}

procedure Tfrmfeatures.btn1Click(Sender: TObject);
begin
  TStyleManager.SetStyle(cbb1.Text);
end;

procedure Tfrmfeatures.btn2Click(Sender: TObject);
var
  update : string;
begin
  update := idhtp1.Get('http://154.127.60.211/pmp/update.html');

  if (StrToInt(update) >= 4) then
    begin
      ShowMessage('There is a update avalible!');
      ShellExecute(Application.Handle, PChar('open'), PChar('https://github.com/Inforcer25/Portable-Media-Player'), nil, nil, SW_SHOW);
    end
  else
    ShowMessage('No Update was found!');
end;

procedure Tfrmfeatures.btn3Click(Sender: TObject);
begin
  Hide;
end;

procedure Tfrmfeatures.btn4Click(Sender: TObject);
begin
  Hide;
end;

procedure Tfrmfeatures.btn5Click(Sender: TObject);
begin
  ShowMessage('If enabled. It will limit the minimum transparency value');
end;

procedure Tfrmfeatures.btn6Click(Sender: TObject);
begin
  trckbr1.Position := 230;
end;

procedure Tfrmfeatures.btn7Click(Sender: TObject);
begin
  trckbr1.Position := 255;
  Hide;
end;

procedure Tfrmfeatures.chk1Click(Sender: TObject);
begin
  if chk1.Checked then
    trckbr1.Min := 150
  else
    trckbr1.Min := 0;
end;

procedure Tfrmfeatures.FormCreate(Sender: TObject);
var
  stylename : string;
begin
  for stylename in TStylemanager.StyleNames do
    cbb1.Items.Add(stylename);

  cbb1.ItemIndex := cbb1.Items.IndexOf(TStyleManager.ActiveStyle.Name);
end;

procedure Tfrmfeatures.trckbr1Change(Sender: TObject);
begin
  alphablendval := trckbr1.Position;
  AlphaBlendValue := alphablendval;
end;

end.
