Program z25;
var 
    x, count, numDel, i, j: longint;
    d: array[1..4] of longint;
begin
    count := 0;
    for i := 210235 to 210300 
    do
    begin
        count := count + 1;
        numDel := 0;
        for j := 2 to (i div 2) do
        begin
            if i mod j = 0 then 
            begin
                numDel := numDel + 1;
                if numDel > 4 then break;
                d[numDel] := j;
            end;
        end;
        if numDel = 4 then writeln(d[1], ' ', d[2], ' ', d[3], ' ', d[4]);
    end;
end.