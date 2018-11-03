-- wyjatki1.adb

with Ada.Text_IO, Ada.Calendar;
use Ada.Text_IO, Ada.Calendar;

procedure Wyjatki1 is
  Pl : File_Type;
  Nazwa: String(1..100) := (others => ' ');
  Dlugosc : Integer := 0;
  value         : Character;
  T1, T2: Time; -- czasy bezwzgledne
  D: Duration;  -- czas względny,

begin
T1 := Clock; -- odczytanie aktualnego czasu
-- obliczenia
  loop
	Put_Line("Podaj nazwe pliku do otwarcia: ");
	Get_Line(Nazwa, Dlugosc);
    begin
	  Open(Pl, In_File, Nazwa(1..Dlugosc));
	  exit;
	exception
	  when Name_Error => Put_Line("Bledna nazwa pliku <" & Nazwa(1..Dlugosc) & "> !");
	end;
  end loop;

  Put_Line("Otwieram plik: " & Nazwa(1..Dlugosc));
  while not End_OF_File (PL) loop
    Ada.Text_IO.Get (File => PL, Item => value);
    Ada.Text_IO.Put (Item => value);

 end loop;
 Ada.Text_IO.New_Line;
  Put_Line("Zamykam plik");
  Close(Pl);
  T2 := Clock;
  D := T2 - T1;
  Put_Line("Czas obliczen = " & D'Img & "[s]"); -- atrybut 'Img
end Wyjatki1;
