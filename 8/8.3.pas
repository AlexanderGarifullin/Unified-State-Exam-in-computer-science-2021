var a,b,c,d:char;
  s:string;
      i,k:integer;
      f:boolean;
begin
  s := '';
  for a := 'A' to 'D' do
     for b := 'A' to 'D' do
       for c := 'A' to 'D' do
         for d := 'A' to 'D' do
          begin
            s += a+b+c+d;
            f := true;
            for i := 1 to 3 do
              if  s[i] > s[i+1] then f := false;
            if f then k+=1;  
             s := ''; 
          end;
          writeln(k);
end.