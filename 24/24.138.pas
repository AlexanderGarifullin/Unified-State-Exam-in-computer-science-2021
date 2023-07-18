var
  a: array[65..90] of integer;
  s0, s: string;
  gmin, i, j, gnow, maxs, maxi: longint;
  f: text;

begin
  s0 := '';
  gmin := maxint;
  assign(f, 'C:\Users\User\Desktop\24.txt');
  reset(f);
  for i := 1 to 1000 do 
  begin
    readln(f, s);
    gnow := 0;
    for j := 1 to length(s) do if s[j] = 'G' then gnow += 1;
    if gnow < gmin then begin gmin := gnow;s0 := s; end;
  end;
  for i := 1 to length(s0) do 
    a[ord(s0[i])] += 1;      
  maxi := 0;maxs := 0;
  for i := 65 to 90 do
    if a[i] >= maxi then 
    begin
      maxi := a[i];
      maxs := i;
    end;
  writeln(chr(maxs));
end.