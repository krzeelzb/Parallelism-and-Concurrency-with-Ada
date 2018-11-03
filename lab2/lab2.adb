with Ada.Text_IO,lab2_help,Ada.Numerics.Discrete_Random, Ada.Float_Text_IO,Ada.Calendar;
use Ada.Text_IO,lab2_help,Ada.Float_Text_IO,Ada.Calendar;



procedure lab2 is

W1: Wektor(1 .. 20);
T1, T2: Time; -- czasy bezwzgledne
D: Duration;

function Check_If_Sorted_Asc(V:in out Wektor) return Boolean is
    (for all I in V'Range => V(I)<=V(I+1));


begin
T1 := Clock;
Random(W1);
Bubble_Sort(W1);
Print_wektor(W1);
Put_Line(Check_If_Sorted(W1)'Img);
T2 := Clock;
D := T2 - T1;
Put_Line("Czas obliczen = " & D'Img & "[s]"); -- atrybut 'Img
end lab2;
