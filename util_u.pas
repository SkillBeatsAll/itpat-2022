unit util_u;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.ExtCtrls, jpeg;

type
  util = class
  public
    class procedure setBackground(formToUpdate: TForm);
    class procedure showFormHideSelf(formToShow: TForm; formToHide: TForm);
    class procedure alignLabel(lblToAlign: TLabel);
  end;

implementation

uses authentication_u, authenticationHelp_u;

{ util }
class procedure util.setBackground(formToUpdate: TForm);
var
  i: Integer;
  imgBackground: TImage;
begin
  i := Random(9) + 1;
  imgBackground := TImage(formToUpdate.FindComponent('imgBackground'));
  try
    imgBackground.Picture.LoadFromFile('./assets/backgrounds/' + IntToStr(i)
      + '.jpeg');
  finally
    imgBackground.Visible := true;
  end;
end;

class procedure util.showFormHideSelf(formToShow: TForm; formToHide: TForm);
begin
  formToShow.Show;
  formToHide.Hide;
end;

class procedure util.alignLabel(lblToAlign: TLabel);
begin
  // horizontal:
  lblToAlign.Alignment := taCenter;
  // vertical:
  lblToAlign.Layout := tlCenter;
end;

end.
