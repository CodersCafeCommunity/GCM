with Text_IO; use Text_IO;
with Ada.Text_IO;use Ada.Text_IO;
with Ada.Integer_Text_IO;use Ada.Integer_Text_IO;
with Ada.Strings.Unbounded;use Ada.Strings.Unbounded;
with Ada.Text_IO.Unbounded_IO;use Ada.Text_IO.Unbounded_IO;
with GNAT.String_Split;      use GNAT.String_Split;
with mq2; use mq2;

procedure read is
  Result: Slice_set;
  R0_air, SensorValue, PPM_CO,PPM_CH4, PPM_SMOKE : Float;
  PPM0,PPM1,PPM2 : Integer;
    begin
    R0_air := 1.22436;
    Put_Line("R0_air : " & Float'Image(R0_air));
    SensorValue := getSensorValue;
    Put_Line("SensorValue : " & Float'Image(SensorValue));
    PPM_CO := getPPM_CO(SensorValue, R0_air);
    PPM0 := Integer(PPM_CO);
    Put_Line("PPM_CO : " & Integer'Image(PPM0)); 
    PPM_CH4 := getPPM_CH4(SensorValue, R0_air);
    PPM1 := Integer(PPM_CH4);
    Put_Line("PPM_CH4 : " & Integer'Image(PPM1));
    PPM_SMOKE := getPPM_SMOKE(SensorValue, R0_air);
    PPM2 := Integer(PPM_SMOKE);
    Put_Line("PPM_SMOKE : " & Integer'Image(PPM2));
end read;