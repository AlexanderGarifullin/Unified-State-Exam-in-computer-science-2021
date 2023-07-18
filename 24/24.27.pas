program m;

var
  count, mcount, i: integer;
  f: textfile;
  s: string;

begin
  assign(f, '24.txt');
  reset(f);
  read(f, s); i := 0;
  count := 0; mcount := 0;
  while i < length(s) - 2 do 
  begin
    if copy(s, i, 3) = 'КОТ' then begin
      count := count + 1;
      i := i + 3;
      if count > mcount then mcount := count;
    end
    else begin
      count := 0;
      i := i + 1;
    end;
  end;
  writeln(mcount);
end.