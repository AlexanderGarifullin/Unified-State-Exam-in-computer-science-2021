var i,c,m:integer;
s:string;

begin
assign(input,'24_demo.txt');
readln(s);
c:=0;
m:=0;
for i:=1 to Length(s) do
  begin
  if ((s[i]='X') and ( c mod 3 = 0))or 
  ((s[i]='Y') and ( c mod 3 = 1))or
  ((s[i]='Z') and ( c mod 3 = 2))
  then  begin c:=c+1; if c>m then m:=c end 
  
  else if s[i]='X' then c:=1
  else c:=0;
  end;
writeln(m);
end.