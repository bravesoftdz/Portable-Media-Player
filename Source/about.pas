unit About;

interface

uses WinApi.Windows, System.SysUtils, System.Classes, Vcl.Graphics,
  Vcl.Forms, Vcl.Controls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, ShellAPI;

type
  TAboutBox = class(TForm)
    Panel1: TPanel;
    ProgramIcon: TImage;
    ProductName: TLabel;
    OKButton: TButton;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    procedure OKButtonClick(Sender: TObject);
    procedure lbl6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutBox: TAboutBox;

implementation

{$R *.dfm}

procedure TAboutBox.lbl6Click(Sender: TObject);
begin
  ShellExecute(Application.Handle, PChar('open'), PChar('https://github.com/Inforcer25/Portable-Media-Player'), nil, nil, SW_SHOW);
end;

procedure TAboutBox.OKButtonClick(Sender: TObject);
begin
  Close;
end;

end.
 
