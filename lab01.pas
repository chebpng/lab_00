program RandomArray;

uses
  SysUtils;

var
  count, i, minKey, maxKey: Integer;
  min, max: Integer;
  arr: array of Integer;

begin
  count := StrToInt(ParamStr(1)); // Assuming the count is passed as a command line argument
  SetLength(arr, count + 1); // Using 1-based indexing

  Randomize;
  for i := 1 to count do
  begin
    arr[i] := Random(991) + 10; // Generates a random number between 10 and 1000
  end;

  minKey := -1;
  min := MaxInt;
  maxKey := -1;
  max := 0;

  for i := 1 to count do
  begin
    if (arr[i] >= max) or (maxKey = -1) then
    begin
      max := arr[i];
      maxKey := i;
    end;

    if (arr[i] < min) or (minKey = -1) then
    begin
      min := arr[i];
      minKey := i;
    end;
  end;

  arr[maxKey] := min;
  arr[minKey] := max;

  // Uncomment the following line to display the array
  // for i := 1 to count do WriteLn(arr[i]);
end.

