program RandomArray;

var
  count, i, minKey, maxKey: Integer;
  min, max: Integer;
  arr : array[1..1000] of Integer;  

begin
  readln(count);
  
  for i := 1 to count do
  begin
    readln(arr[i]);
  end;

  minKey := 0;
  maxKey := 0;

  for i := 1 to count do
  begin
    
    if (arr[i] >= max) or (maxKey = 0) then
    begin
      max := arr[i];
      maxKey := i;
    end;

    if (arr[i] < min) or (minKey = 0) then
    begin
      min := arr[i];
      minKey := i;
    end;
  end;
  
  for i := 1 to count do write(arr[i], ' ');
  writeln();

  arr[maxKey] := min;
  arr[minKey] := max;

  for i := 1 to count do write(arr[i], ' '); //вывод массива
end.

