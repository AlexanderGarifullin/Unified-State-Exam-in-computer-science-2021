var//f : text;
  n, i, j, t: integer;
  s1, s2, m1, m2: real;
  a: array[1..20] of integer;

begin
  // assign(f,'26.txt');
   //reset(f);
   //readln(f,n);
  readln(n);
  for i := 1 to n do 
    // readln (f,a[i]);
    readln(a[i]);
  for i := 1 to n do 
    for j := i + 1 to n do 
      if a[i] > a[j] then
      begin
        t := a[i];
        a[i] := a[j];
        a[j] := t;
      end;
  //1
  s1 := 0;s2 := 0; 
  for i := 1 to 14 do 
    s1 += 0.7 * a[i];
  for i := 15 to n do 
    s1 += 0.6 * a[i];
  m1 := 0.6 * a[n];
  //2
  for i := 1 to 10 do 
    s2 += 0.6 * a[i];
  for i := 11 to n do 
    s2 += 0.65 * a[i];
  m2 := 0.65 * a[n];
  
  writeln(s1, ' ', s2, ' ', m1, ' ', m2);
  writeln(s1 - s2);
end.