program m;

var
  i, curA, curB, maxA, maxB: longint;
  s: string;

begin
  assign(input, '24.txt');
  readln(s);
  curA := 0;
  curB := 0;
  maxA := 0;
  maxB := 0;
  for i := 1 to length(s) do
  begin
    if s[i] = 'A' then 
    begin
      curA := curA + 1;
      if curA > maxA then maxA := curA;
    end
    else if s[i] = 'B' then 
    begin
      curB := curB + 1;
      if curB > maxB then maxB := curB;
    end
    else 
    begin
      curA := 0;
      curB := 0; 
    end;
  end;
  writeln(abs(maxA - maxB)-1);
  writeln(maxA);
  writeln(maxB);
end.