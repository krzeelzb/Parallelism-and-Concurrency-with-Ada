-- menup.adb

with Ada.Text_IO, Opcje, Ada.Calendar,Ada.Calendar.Formatting,Ada.Calendar.Time_Zones;
use Ada.Text_IO, Opcje, Ada.Calendar,Ada.Calendar.Time_Zones,Ada.Calendar.Formatting;

procedure MenuP is
Pl : File_Type;
  Zn: Character := ' ';
  Nazwa: String := "dziennik.txt";
  T1, T2: Time; -- czasy bezwzgledne
  D: Duration;  -- czas względny,

  procedure Pisz_Menu is
  begin
	New_Line;
	Put_Line("Menu:");
    Put_Line(" s - opcja s");
	Put_Line(" c - opcja c");
	Put_Line(" p - opcja p");
	Put_Line("ESC -Wyjscie");
	Put_Line("Wybierz (s,c,p, ESC-koniec):");
  end Pisz_Menu;

procedure System_Time(Pl:in out File_Type) is
   Now : Time := Clock;
begin
   Put_line(Pl,Image(Date => Now, Time_Zone => -7*60));
end System_Time;

begin
  Create(Pl, Out_File, Nazwa); -- Open

  T1 := Clock; -- odczytanie aktualnego czasu
-- obliczenia

System_Time(Pl);

  loop
    Pisz_Menu;
	Get_Immediate(Zn);
	exit when Zn = ASCII.ESC;
	case Zn is
	  when 's' => Opcja_S;
      Put_Line(Pl,"s");
	  when 'c' => Opcja_C;
      Put_Line(Pl,"c");
	  when 'p' => Opcja_P;
    Put_Line(Pl,"p");
      when others => Put_Line("Blad!!");
        Put_Line(Pl,"blad");
	end case;
  end loop;
  Put_Line("Koniec");
  Put_Line(Pl,"Koniec");
  T2 := Clock;
  D := T2 - T1;
  Put_Line(Pl, "Czas obliczen = " & D'Img & "[s]");
  Close(Pl);
end MenuP;
