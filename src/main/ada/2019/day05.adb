with Ada.Text_IO;
with Intcode;

procedure Day05 is
   use Ada.Text_IO;
   use Intcode;
   
   Compiler : Intcode_Compiler := Compile ("src/main/resources/2019/day05.txt");
   
   function Run_Diagnostics (Input : Integer) return Integer is
      Instance : Intcode_Instance := Instantiate (Compiler);
   begin
      Instance.Inputs.Append (Input);
      Instance.Run;
      return Instance.Last_Output;
   end Run_Diagnostics;
begin
   Put_Line (Run_Diagnostics (1)'Image);
   Put_Line (Run_Diagnostics (5)'Image);
end Day05;
