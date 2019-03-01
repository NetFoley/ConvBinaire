unit ConvBinaire;

{$mode objfpc}{$H+}

interface



uses
  Classes, SysUtils,math;

function BinToDec(nbr: integer) : integer;
function DecToBin(nbr: integer) : integer;
function BinToHex(nbr: integer) : string;
function HexToBin(nbr : string) : integer;

implementation

function BinToDec(nbr: integer) : integer;

var i, binaryNbr, decimalNbr : integer;

begin
  i := 0;
  binaryNbr:=0;
  decimalNbr:=0;

  while nbr >= 1 do
        begin
        decimalNbr:= decimalNbr + (nbr mod 2) * round(power(2, i));
        nbr := nbr div 10;
        i:= i + 1;

        end;

  BinToDec:= decimalNbr;
end;

function DecToBin(nbr: integer) : integer;

var i, binaryNbr, decimalNbr : integer;

begin
  i:=0;
  binaryNbr:=0;
  decimalNbr:=0;

  while nbr >= 1 do
        begin
        decimalNbr:= decimalNbr + (nbr mod 2) * round(power(10,i));
        nbr := nbr div 2;
        i:= i + 1;

        end;


  DecToBin:= decimalNbr;
end;

function BinToHex(nbr:integer) : string;

var
  hexNbr : string;

begin
  hexNbr := '';

  while nbr >= 1 do
        begin
        case BinToDec(nbr mod 10000) of
        10: hexNbr := 'A' + hexNbr;
        11: hexNbr := 'B' + hexNbr;
        12: hexNbr := 'C' + hexNbr;
        13: hexNbr := 'D' + hexNbr;
        14: hexNbr := 'E' + hexNbr;
        15: hexNbr := 'F' + hexNbr;
        else
          hexNbr := inttoStr(BinToDec(nbr mod 10000)) + hexNbr;
            end;
        nbr := nbr div 10000;
        end;
BinToHex := hexNbr;
end;

function HexToBin(nbr:string) : integer;

var
  BinNbr : string;
  i : integer;

begin
BinNbr := '';

for i := 1 to length(nbr) do
      begin
      case ( nbr[length(nbr) - i + 1])  of
      '0' : binNbr := '0000' + binNbr;
      '1' : binNbr := '0001' + binNbr;
      '2' : binNbr := '0010' + binNbr;
      '3' : binNbr := '0011' + binNbr;
      '4' : binNbr := '0100' + binNbr;
      '5' : binNbr := '0101' + binNbr;
      '6' : binNbr := '0110' + binNbr;
      '7' : binNbr := '0111' + binNbr;
      '8' : binNbr := '1000' + binNbr;
      '9' : binNbr := '1001' + binNbr;
      'A' : binNbr := '1010' + binNbr;
      'B' : binNbr := '1011' + binNbr;
      'C' : binNbr := '1100' + binNbr;
      'D' : binNbr := '1101' + binNbr;
      'E' : binNbr := '1110' + binNbr;
      'F' : binNbr := '1111' + binNbr;
      end;

      end;

HexToBin := strtoInt(BinNbr);



end;

end.

