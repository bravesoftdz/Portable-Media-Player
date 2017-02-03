unit uPMP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.OleCtrls, WMPLib_TLB,
  Vcl.ExtCtrls, Vcl.WinXCtrls, About, uFeatures, Vcl.FileCtrl, FolderDialog, uHowToCreatePls;

type
  TForm1 = class(TForm)
    spltvw1: TSplitView;
    wndwsmdplyr1: TWindowsMediaPlayer;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    edtplaylocation: TEdit;
    btn4: TButton;
    lbl1: TLabel;
    btn5: TButton;
    lbl2: TLabel;
    dlgOpen1: TOpenDialog;
    btn8: TButton;
    btn9: TButton;
    fllst1: TFileListBox;
    btn10: TButton;
    btn6: TButton;
    fldrdlg1: TFolderDialog;
    btnextend: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btn10Click(Sender: TObject);
    procedure fllst1DblClick(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btnextendClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mediapath : string;
    extended : Boolean;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn10Click(Sender: TObject);
begin
  if fldrdlg1.Execute then
    begin
      mediapath := fldrdlg1.Directory;
      fllst1.Directory := mediapath;
    end;

end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  if spltvw1.Opened then
    spltvw1.Close
  else
    spltvw1.Open;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  spltvw1.Close;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
  wndwsmdplyr1.URL := edtplaylocation.Text;
  spltvw1.Close;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
  if dlgOpen1.Execute then
    edtplaylocation.text := dlgOpen1.FileName;
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
  wndwsmdplyr1.fullScreen := True;
end;

procedure TForm1.btn6Click(Sender: TObject);
begin
  frmcreateplaylist.Show;
end;

procedure TForm1.btnextendClick(Sender: TObject);
begin
  if extended = False then
    begin
      spltvw1.Width := 700;
      btnextend.Caption := 'Reset';
      extended := True;
    end
  else
    begin
      spltvw1.Width := 400;
      btnextend.Caption := 'Extend';
      extended := False;
    end;
end;

procedure TForm1.btn8Click(Sender: TObject);
begin
  AboutBox.Show;
end;

procedure TForm1.btn9Click(Sender: TObject);
begin
  frmfeatures.Show;
end;

procedure TForm1.fllst1DblClick(Sender: TObject);
var
  fileplaypath : string;
begin
  fileplaypath := mediapath + '\' + fllst1.Items[fllst1.ItemIndex];
  wndwsmdplyr1.URL := fileplaypath;
  spltvw1.Close;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  AlphaBlendValue := alphablendval;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Application.Title := 'Portable Media Player';
  alphablendval := 255;
  extended := False;
end;

end.
