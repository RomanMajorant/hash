unit UAddShow;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, UInfo;

type
  TFormAdd = class(TForm)
    Edit_FIO: TEdit;
    Adres: TEdit;
    Edit_PaspSeria: TEdit;
    lbl_FIO: TLabel;
    lbl_Adres: TLabel;
    lbl_Seria: TLabel;
    btn_Ok: TButton;
    btn_Cancel: TButton;
    PaspNumber: TEdit;
    Label1: TLabel;

    procedure btn_OkClick(Sender: TObject);  //Студ билет = номер паспорта
    procedure Edit_Change(Sender: TObject);
  private
    FInfo: TInfo;
  public
    property Info:TInfo read FInfo;
  end;

implementation

{$R *.dfm}

procedure TFormAdd.btn_OkClick(Sender: TObject);

begin
  if Trim(Edit_FIO.Text)='' then
  begin
    MessageDlg('Не введен ключ/номер', mtError, [mbOK], 0);
    Edit_FIO.SetFocus;
    Exit;
  end;
  FInfo:=TInfo.Create(Edit_FIO.Text, Adres.Text, Edit_PaspSeria.Text, PaspNumber.Text);
  ModalResult:=mrOK;
end;

procedure TFormAdd.Edit_Change(Sender: TObject);
begin
  btn_Ok.Enabled:=(Edit_FIO.Text<>'') and (Adres.Text<>'') and (Edit_PaspSeria.Text <> '')
end;

end.
