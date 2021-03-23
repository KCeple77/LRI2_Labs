
-- Define a temporary signal that is of type std_logic_vector(<width>-1 downto 0).
-- Where width is the number of bits to shift

process (<clock>)
begin
   if <clock>'event and <clock>='1' then  
      for i in 0 to <width>-2 loop
         <tmp_sig>(i+1) <= <tmp_sig>(i);
      end loop;
      <tmp_sig>(0) <= <input>;
   end if;
end process;
<output> <= <tmp_sig>(<width>-1);
          

					