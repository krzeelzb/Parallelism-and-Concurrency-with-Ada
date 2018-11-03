with Ada.Text_IO,Ada.Numerics.Discrete_Random, Ada.Float_Text_IO,Ada.Calendar;
use Ada.Text_IO,Ada.Float_Text_IO,Ada.Calendar;

package body lab2_help is
procedure Random(V:in out Wektor) is
    package Los_Liczby is new Ada.Numerics.Discrete_Random(Integer);
    use Los_Liczby;
    Gen: Generator;
begin
    Reset(Gen);
    for I of V loop
            I := Random(Gen);  
    end loop;
end Random;



procedure Print_wektor(V:in Wektor ) is
 begin
    for I of V loop
            Put_Line(I'Img);
    end loop;
end Print_wektor;




procedure Bubble_Sort(V:in out Wektor) is
tmp: Integer :=0;
begin
    for first of V loop
        for second of V loop
            if first>second then
                tmp:=first;
                first:=second;
                second:=tmp;
            end if;
        end loop;
    end loop;
end Bubble_Sort;

end lab2_help;