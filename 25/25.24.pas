program m;

var
  i, k, j, s, max, prm: longint;

begin
  for i := 135743 to 135789 do
  begin
    prm := 0;
    max := 0;
    k := 0;
    for j := 1 to i do 
      if i mod j = 0 then
      begin
        k += 1;
        if k > 6 then break;
      end;
    if k = 6 then 
    begin
      for s := 1 to i do  
        if i mod s = 0 then 
        begin
          prm := max;
          max := s;
        end;  
      writeln(prm, ' ', max);  
    end;    
  end;
end.