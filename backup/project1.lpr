{$codepage UTF8}
program zd5;
var mass: array[1..100] of integer;
i, n, max, min, maxI, minI: integer;

begin
//5.  Поменяйте местами последний максимальный и первый минимальный элемент массива и выведите весь массив.
writeln('Задание 5');
writeln('Введите размер массива');
readln(n);
if (n <= 0) or (n > 100) then
    writeln('Размер массива указан неверно')
else
    writeln('Введите элементы массива');
    for i := 1 to n do
        readln(mass[i]); //чтение массива
        write('Введенный массив: ');//вывод массива
        for i := 1 to n do write(mass[i], ' '); //вывод массива
        writeln();
min := 2147483646;
max := -2147483646;
for i := 1 to n do
  begin
    if mass[i] < min then
    begin
      min := mass[i];
      minI := i;
    end;
  end;
i := n;
while i <> 1 do
//for i := n to 1 do
  begin
    i := i-1;
    if mass[i] > max then
    begin
      max := mass[i];
      maxI := i
    end;
  end;
mass[maxI] := min;
mass[minI] := max;
write('Введенный массив: ');//вывод массива
for i := 1 to n do write(mass[i], ' '); //вывод массива
writeln();
end.
