program DelphiTest;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  SysUtils,
  Vcl.Dialogs,
  Character,
  DateUtils,
  Math;

type
  IntArray = array [1..10] of Integer;
  DynArr = array of Integer;

function ReadNumber(): Integer;
var
  ageStr: string;

begin
  try
    Write('What is your age?: ');
    Readln(ageStr);

    if TryStrToInt(ageStr, Result) then
      Exit
    else
      Writeln('This is not a number.');
      Result := ReadNumber();

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);

  end;

end;

var
  MyDate: TDateTime;
  Age: Integer;

begin
  try
    MyDate := TDateTime.NowUTC;

    Writeln('Now is ' + DateToStr(MyDate));

    Age := ReadNumber();

    Writeln('You is ' + IntToStr(Age) + ' years old.');
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
  Readln;
end.
