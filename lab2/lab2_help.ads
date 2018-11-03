package lab2_help is

type Wektor is array(Integer range <>) of Integer;

procedure Random(V:in out Wektor);
procedure Print_wektor(V:in Wektor );
procedure Bubble_Sort(V:in out Wektor);

end lab2_help;