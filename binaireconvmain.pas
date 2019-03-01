unit BinaireConvMain;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Spin, ExtCtrls, ConvBinaire;

type

  { TForm1 }

  TForm1 = class(TForm)
    Label3: TLabel;
    nbrHexa: TEdit;
    Quitter: TButton;
    ConvertirBin: TButton;
    RHexa: TRadioButton;
    RAZ: TButton;
    Label1: TLabel;
    Label2: TLabel;
    nbrDeci: TEdit;
    nbrBin: TEdit;
    RDecimal: TRadioButton;
    RBinaire: TRadioButton;
    ConvertSens: TRadioGroup;
    procedure ConvertirBinClick(Sender: TObject);
    procedure RAZClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QuitterClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.ConvertirBinClick(Sender: TObject);
begin
  if ( RBinaire.checked ) then
     begin                
      nbrDeci.caption:=inttoStr(BinToDec(strtoInt(nbrBin.caption)));
      nbrHexa.Caption:=BinToHex(strToInt(NbrBin.caption));
     end
  else
      if ( RDecimal.checked ) then
         begin
      nbrBin.Caption:=inttoStr(DecToBin(strToInt(NbrDeci.caption)));
      nbrHexa.Caption:=BinToHex(DecToBin(strToInt(NbrDeci.caption)))
      end
      else
      nbrBin.Caption:= inttostr(HexToBin(nbrHexa.caption));
      nbrDeci.caption:=inttostr(BinToDec(HextoBin(NbrHexa.caption)));

end;

procedure TForm1.RAZClick(Sender: TObject);
begin
  nbrBin.caption:='0';
  nbrDeci.caption:='0';
  nbrHexa.caption:='0';
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  nbrBin.caption:='0';
  nbrDeci.caption:='0';  
  nbrHexa.caption:='0';
end;

procedure TForm1.QuitterClick(Sender: TObject);
begin
  if MessageDlg('Quitter', 'Quitter le programme?', mtConfirmation, [mbYes, mbNo],0) = mrYes then
     close;
end;




end.

