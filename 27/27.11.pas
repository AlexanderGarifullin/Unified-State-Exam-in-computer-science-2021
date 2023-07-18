program z;

const
  m = 120;

var
  r: array[0..m - 1] of integer;
  n, a, i, p, left, right: integer;
  f: text;

begin
  assign(f, '28131_B.txt');
  reset(f);
  readln(f, n);
  for i := 0 to m - 1 do
    r[i] := 0;
  left := 0;
  right := 0;
  for i := 1 to n  do
  begin
    readln(f, a);
    p := a mod m;
    if p = 0 then
    begin
      if (r[0] > a) and (r[0] + a > right + left) then
      begin
        left := r[0];right := a;
      end;
    end
    else
    begin
      if (r[m - p] > a) and (r[m - p] + a > left + right) then
      begin
        left := r[m - p];right := a;
      end;
    end;
    if a > r[p] then r[p] := a;
  end;   
  writeln(left, ' ', right);
end.      
