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

/// <summary>
/// <para>Sets the background of the form to a random gradient from the assets folder.</para>
/// <para><c>formToUpdate</c> - the form for which the background will be changed</para>
/// </summary>
/// <remarks>If the specified form does not have a TImage component called imgBackground, the procedure will fail.</remarks>
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

/// <summary>
/// <para>Hides one form (usually itself), and shows another</para>
/// <para><c>formToShow</c> - the form that will be shown</para>
/// <para><c>formToHide</c> - the form that will be hidden</para>
/// </summary>
class procedure util.showFormHideSelf(formToShow: TForm; formToHide: TForm);
begin
  formToShow.Show;
  formToHide.Hide;
end;

/// <summary>
/// <para>Aligns the specified label horizontally and vertically.</para>
/// <para><c>lblToAlign</c> - the label that will be aligned</para>
/// </summary>
class procedure util.alignLabel(lblToAlign: TLabel);
begin
  // horizontal:
  lblToAlign.Alignment := taCenter;
  // vertical:
  lblToAlign.Layout := tlCenter;
end;

end.
