program hm;

var
  a, b, c: longint;
  x, x1, x2, d, t, t1, t2: real;

begin
  readln(a, b, c);
  if a = 0 then 
  begin
    if b = 0 then 
    begin
      if c = 0 then writeln('x-любое')
      else writeln('Нет корней');
    end
    else
    begin
      if c = 0 then writeln('x=0')
      else
      begin
        t := -c / b;
        if t > 0 then writeln('Корни уравнения: ', sqrt(t), ',', -sqrt(t))
        else writeln('Нет корней');
      end
    end
  end
  else
  begin
    if b = 0 then begin
      if c = 0 then writeln('x=0')
      else
      begin
        if (-c / a) > 0 then 
        begin
          x := sqrt(sqrt(-c / a));
          writeln('Корень уравнения: ', x, ',', -x);
        end
        else writeln('Нет корней');
      end;
    end
    else
    begin
      if c = 0 then 
      begin
        if (-b / a) > 0 then 
        begin
          t := sqrt(-b / a);
          writeln('Корни уравнения: 0,', t, ',', -t);
        end
        else writeln('Корень уравнения: 0');
      end
      else
      begin
        d := b * b - 4 * a * c;
        if d < 0 then writeln('Нет корней')
        else if d = 0 then 
        begin
          t := (-b / 2 / a);
          if t > 0 then writeln('Корни уравнения: ', sqrt(t), -sqrt(t))
        end
        else 
        begin
          t1 := (-b + sqrt(d)) / (2 * a);
          t2 := (-b - sqrt(d)) / (2 * a);
          if (t1 > 0) and (t2 > 0) then writeln('Корни уравнения: ', sqrt(t1), ',', -sqrt(t1), ',', sqrt(t2), ',', -sqrt(t2))
          else  if (t1 > 0) then writeln('Корни уравнения: ', sqrt(t1), ',', -sqrt(t1))
          else  if  (t2 > 0) then writeln('Корни уравнения: ', sqrt(t2), ',', -sqrt(t2))
          else  if (t1 < 0) and (t2 < 0) then writeln('Нет корней');
        end;
      end;
    end;
  end;
end.  