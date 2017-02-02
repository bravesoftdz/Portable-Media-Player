unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.OleCtrls, WMPLib_TLB,
  Vcl.ExtCtrls, Vcl.WinXCtrls, About;

type
  TForm1 = class(TForm)
    spltvw1: TSplitView;
    wndwsmdplyr1: TWindowsMediaPlayer;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    edtplaylocation: TEdit;
    btn4: TButton;
    lst1: TListBox;
    lbl1: TLabel;
    btn5: TButton;
    lbl2: TLabel;
    btn6: TButton;
    btn7: TButton;
    dlgOpen1: TOpenDialog;
    btn8: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure lst1DblClick(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

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
  if wndwsmdplyr1.fullScreen = False then
    ShowMessage('Play a file to go full screen')
  else
    wndwsmdplyr1.fullScreen := True;
end;

procedure TForm1.btn6Click(Sender: TObject);
begin
  if dlgOpen1.Execute then
    lst1.Items.Add(dlgOpen1.Files.Text);

end;

procedure TForm1.btn7Click(Sender: TObject);
begin
  lst1.DeleteSelected;
end;

procedure TForm1.btn8Click(Sender: TObject);
begin
  AboutBox.Show;
end;

procedure TForm1.lst1DblClick(Sender: TObject);
begin
  wndwsmdplyr1.URL := lst1.Items[lst1.ItemIndex];
end;

end.
