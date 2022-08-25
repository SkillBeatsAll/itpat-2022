unit util_u;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.ExtCtrls, jpeg;

type
  util = class
  public
    class procedure setBackground(Sender: TForm);
    class procedure showFormHideSelf(formToShow: TForm; Sender: TForm);
  end;

implementation

uses authentication_u, authenticationHelp_u;

{ util }
class procedure util.setBackground(Sender: TForm);
var
  i: Integer;
  imgBackground: TImage;
begin
  i := Random(9) + 1;
  imgBackground := TImage(Sender.FindComponent('imgBackground'));
  try
    imgBackground.Picture.LoadFromFile('./assets/backgrounds/' + IntToStr(i)
      + '.jpeg');
  finally
    imgBackground.Visible := true;
  end;
end;

class procedure util.showFormHideSelf(formToShow: TForm; Sender: TForm);
begin
  formToShow.Show;
  Sender.Hide;
end;

end.
