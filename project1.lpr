program upr;
var
a, b, z, x, c, z1, x1, c1, max, min, n, temp: integer;
x0, y0, R, x2, y2: real;
mass: array[1..100] of integer;
begin
  writeln('Zadanie 1');//1. Даны 2 целых числа. Вычислите их произведение.
  read(a, b);
  writeln(a*b);

  {Задание 2}
  writeln('Zadanie 2');//2. Даны 3 числа. Выведите числа в порядке возрастания.
  read(z, x, c);
  {max}
  if z > x then
     c1 := z
     else
         c1 := x;
  if c > c1 then
     c1 := c;
 {min}
    if z < x then
     z1 := z
     else
         z1 := x;
  if c < z1 then
     z1 := c;
  {mid}
     if (z <> z1) and (z <> c1) then
     x1 := z
     else
         if (x <> z1) and (x <> c1) then
            x1 := x
         else
             if (c <> z1) and (c <> c1) then
                x1 := c;
  writeln(z1, ' ', x1, ' ', c1);

  writeln('Zadanie 3');//3. Даны координаты центра и радиус круга. Определите, лежит ли точка с заданными координатами внутри круга
 // Ввод данных
  writeln('Vvedite koordinaty centra kruga (x0, y0): ');
  readln(x0, y0);
  writeln('Vvedite radius kruga (R): ');
  readln(R);
  writeln('Vvedite koordinaty tochki (x, y): ');
  readln(x2, y2);

  // Проверка на принадлежность
  if sqr(x2 - x0) + sqr(y2 - y0) < sqr(R) then
    writeln('Tochka lezhit vnutri kruga')
  else
    writeln('Tochka ne l1ezhit vnutri kruga');
writeln('Zadanie 4');//4. Без деления найдите целую часть частного и остаток от деления двух заданных целых чисел.
readln(a, b);
z := 0;
while a >= b do
  begin
  z := z+1;
  a := a-b;
  end;
writeln(z,' ', a);
 writeln('Zadanie 5');//5.  Поменяйте местами последний максимальный и первый минимальный элемент массива и выведите весь массив.
writeln('Vvedite razmer massiva');
readln(n);
if (n <= 0) or (n > 100) then
  writeln('Razmer massiva ukazan neverno')
else
begin
  writeln('Vvedite elementi massiva');
  for a := 1 to n do
    readln(mass[a]); //чтение массива
  writeln('massiv ');
  for a := 1 to n do write(mass[a], ' '); //вывод массива
  writeln();

  b := n;
  z := -10000;
  max := 1; // Индекс максимального элемента
  while b > 0 do // Цикл поиска максимального элемента
    if mass[b] >= mass[max] then begin
      max := b; // Индекс максимального элемента
      z := b;  // Индекс максимального элемента
      b := b - 1;
    end else begin
      b := b - 1;
    end;

  b := 1;
  min := 1; // Индекс минимального элемента
  x := 10000;
  while b < n do // Цикл поиска минимального элемента
    if mass[b] <= mass[min] then begin
      min := b; // Индекс минимального элемента
      x := b;  // Индекс минимального элемента
      b := b + 1;
    end else begin
      b := b + 1;
    end;

  temp := mass[max]; // Временная переменная для обмена значениями
  mass[max] := mass[min];
  mass[min] := temp;

  write('otvet ');
  for a := 1 to n do write(mass[a], ' '); //вывод массива
  readln()
end;
end.
