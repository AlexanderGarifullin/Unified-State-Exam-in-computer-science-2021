{(№ 2870) (Д.Ф. Муфаззалов) Определите количество простых чисел в диапазоне [2; 20000].}
  var count , now, j, i:integer;
  begin
    count := 0;
    for i := 2 to 20000 do
      begin
        now := 0;
        for j := 2 to i div 2 do 
          if i mod j = 0 then 
            begin
              now += 1;
              break;
            end;
        if now = 0 then count  += 1;   
      end;
    writeln(count);  
  end.