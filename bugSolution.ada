procedure Example is
   subtype My_Sub is Integer range 1..10;
   X: My_Sub := 1;
begin
   X := X + 5;
   if X > 10 then
      Put_Line("X is greater than 10");
   else
      Put_Line("X is: " & Integer'Image(X));
   end if;
exception
   when Constraint_Error =>
      Put_Line("Constraint Error: X is out of range");
end Example;