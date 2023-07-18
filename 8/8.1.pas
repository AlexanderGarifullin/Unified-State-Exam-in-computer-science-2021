var s,t :string;
    i , j , k , l , m, n :char;
    c, count : integer;
  begin
    s := 'КАНТ';
    c := 0;
    for i in s do 
       for j in s do 
         for k in s do 
           for l in s do 
             for m in s do 
               for n in s do 
                begin
                  t := i + j + k + l + m + n;
                  count := 0;
                  for  p := 1 to 6 do
                    begin
                    if t[p] = 'K' then count += 1;
                    end;
                  if count = 2 then c += 1;  
                end;
    writeln(c);            
  end.