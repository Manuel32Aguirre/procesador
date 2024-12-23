library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity dec_instruccion is
port(
	I : in STD_LOGIC_VECTOR(15 downto 0);
	sel_r_d, sel_r_r, sel_w_d : out STD_LOGIC_VECTOR (4 downto 0);
	sel_alu : out STD_LOGIC_VECTOR(2 downto 0);
	ld, ld_mov, sel_rel, br, bn, en_w, en_port, en_sreg, ret_s, s1, s0 : out STD_LOGIC
);

end dec_instruccion;

architecture Behavioral of dec_instruccion is
begin
	process(I)
	begin
	
	case I(15 downto 12) is
	
	when "0000" =>  -- ES ADD, LSL O NOP
	
		if(I(11 downto 0) = x"000") then -- ES NOP (No Operation)
		
		sel_r_d <= "00000";
		sel_r_r <= "00000";
		sel_w_d <= "00000";
		sel_alu <= "000";
		ld <= '0';
		ld_mov <= '0';
		sel_rel <= '0';
		br <= '0';
		bn <= '0';
		en_w <= '0';
		en_port <= '0';
		en_sreg <= '0';
		ret_s <= '0';
		s1 <= '0';
		s0 <= '0';
		
		elsif(I(8 downto 4) = I(9) & I(3 downto 0)) then -- ES LSL (Logical Shift Left)
		
		sel_r_d <= I(8 downto 4);
		sel_r_r <= "00000";
		sel_w_d <= I(8 downto 4); 
		sel_alu <= "110";
		ld <= '0';
		ld_mov <= '1';
		sel_rel <= '0';
		br <= '0';
		bn <= '0';
		en_w <= '1';
		en_port <= '0';
		en_sreg <= '1';
		ret_s <= '0';
		s1 <= '0';
		s0 <= '0';
		
		else -- ES ADD (Suma)
		
		sel_r_d <= I(8 downto 4);--
		sel_r_r <= I(9) & I(3 downto 0);--
		sel_w_d <= I(8 downto 4);-- 
		sel_alu <= "000";--
		ld <= '0';--
		ld_mov <= '1';--
		sel_rel <= '0';
		br <= '0';--
		bn <= '0';--
		en_w <= '1';--
		en_port <= '0';--
		en_sreg <= '1';--
		ret_s <= '0';--
		s1 <= '0';--
		s0 <= '0';--
		
		end if;
		
	when "0001" => -- ES SUB (Resta)
	
		sel_r_d <= I(8 downto 4);
		sel_r_r <= I(9) & I(3 downto 0);
		sel_w_d <= I(8 downto 4); 
		sel_alu <= "001";
		ld <= '0';
		ld_mov <= '1';
		sel_rel <= '0';
		br <= '0';
		bn <= '0';
		en_w <= '1';
		en_port <= '0';
		en_sreg <= '1';
		ret_s <= '0';
		s1 <= '0';
		s0 <= '0';
		
	when "0010" => -- ES AND, OR, EOR O MOV
	
	if(I(11 downto 10) = "00") then -- ES AND
	
		sel_r_d <= I(8 downto 4);
		sel_r_r <= I(9) & I(3 downto 0);
		sel_w_d <= I(8 downto 4); 
		sel_alu <= "010";
		ld <= '0';
		ld_mov <= '1';
		sel_rel <= '0';
		br <= '0';
		bn <= '0';
		en_w <= '1';
		en_port <= '0';
		en_sreg <= '1';
		ret_s <= '0';
		s1 <= '0';
		s0 <= '0';
		
	elsif(I(11 downto 10) = "10") then -- ES OR
		
		sel_r_d <= I(8 downto 4);
		sel_r_r <= I(9) & I(3 downto 0);
		sel_w_d <= I(8 downto 4); 
		sel_alu <= "011";
		ld <= '0';
		ld_mov <= '1';
		sel_rel <= '0';
		br <= '0';
		bn <= '0';
		en_w <= '1';
		en_port <= '0';
		en_sreg <= '1';
		ret_s <= '0';
		s1 <= '0';
		s0 <= '0';
		
	elsif(I(11 downto 10) = "01") then -- ES EOR (OR EXCLUSIVO)
		
		sel_r_d <= I(8 downto 4);
		sel_r_r <= I(9) & I(3 downto 0);
		sel_w_d <= I(8 downto 4); 
		sel_alu <= "100";
		ld <= '0';
		ld_mov <= '1';
		sel_rel <= '0';
		br <= '0';
		bn <= '0';
		en_w <= '1';
		en_port <= '0';
		en_sreg <= '1';
		ret_s <= '0';
		s1 <= '0';
		s0 <= '0';
		
	else -- ES MOV
	
		sel_r_d <= I(8 downto 4);--
		sel_r_r <= I(9) & I(3 downto 0);--
		sel_w_d <= I(8 downto 4);-- 
		sel_alu <= "000"; --No importa, no hace caso a la alu
		ld <= '1';--
		ld_mov <= '0';--
		sel_rel <= '0';
		br <= '0';--
		bn <= '0';--
		en_w <= '1';--
		en_port <= '0';--
		en_sreg <= '0';--
		ret_s <= '0';--
		s1 <= '0';--
		s0 <= '0';--
		
	end if;
	
	when "1001" => -- ES COM, LSR, RET
	
		if(I(3 downto 0) = "0000") then -- ES COM (Complemento a uno)
		
		sel_r_d <= I(8 downto 4);
		sel_r_r <= I(9) & I(3 downto 0);
		sel_w_d <= I(8 downto 4); 
		sel_alu <= "101";
		ld <= '0';
		ld_mov <= '1';
		sel_rel <= '0';
		br <= '0';
		bn <= '0';
		en_w <= '1';
		en_port <= '0';
		en_sreg <= '1';
		ret_s <= '0';
		s1 <= '0';
		s0 <= '0';
	
		elsif(I(3 downto 0) = "0110") then -- ES LSR (Logical Shift Right)
		
		sel_r_d <= I(8 downto 4);
		sel_r_r <= I(9) & I(3 downto 0);
		sel_w_d <= I(8 downto 4); 
		sel_alu <= "111";
		ld <= '0';
		ld_mov <= '1';
		sel_rel <= '0';
		br <= '0';
		bn <= '0';
		en_w <= '1';
		en_port <= '0';
		en_sreg <= '1';
		ret_s <= '0';
		s1 <= '0';
		s0 <= '0';
		
		else --ES RET
		
		sel_r_d <= I(8 downto 4); -- no importa
		sel_r_r <= I(9) & I(3 downto 0); -- no importa
		sel_w_d <= I(8 downto 4);  -- no importa
		sel_alu <= "111"; --no importa
		ld <= '0';
		ld_mov <= '1';
		sel_rel <= '0';
		br <= '0';
		bn <= '0';
		en_w <= '0';
		en_port <= '0';
		en_sreg <= '0';
		ret_s <= '1';
		s1 <= '1';
		s0 <= '0';
		
		end if;
		
		when "1110" => -- ES LDI
		
		sel_r_d <= "00000"; -- no importa
		sel_r_r <= I(9) & I(3 downto 0); -- no importa
		sel_w_d <= '1' & I(7 downto 4); 
		sel_alu <= "101"; -- no importa
		ld <= '0';
		ld_mov <= '0';
		sel_rel <= '0';
		br <= '0';
		bn <= '0';
		en_w <= '1';
		en_port <= '0';
		en_sreg <= '0';
		ret_s <= '0';
		s1 <= '0';
		s0 <= '0';
		
		when "1111" => -- ES BREQ O BRNE
		
		if(I(11 downto 10) = "00") then -- ES BREQ
		
		sel_r_d <= "00000"; -- no importa
		sel_r_r <= "00000"; -- no importa
		sel_w_d <= "00000"; -- no importa
		sel_alu <= "000"; -- no importa
		ld <= '0';
		ld_mov <= '0';
		sel_rel <= '0';
		br <= '1';
		bn <= '0';
		en_w <= '0';
		en_port <= '0';
		en_sreg <= '0';
		ret_s <= '0';
		s1 <= '0';
		s0 <= '0';
		
		else -- ES BRNE
		
		sel_r_d <= "00000"; -- no importa
		sel_r_r <= "00000"; -- no importa
		sel_w_d <= "00000"; -- no importa
		sel_alu <= "000"; -- no importa
		ld <= '0';
		ld_mov <= '0';
		sel_rel <= '0';
		br <= '0';
		bn <= '1';
		en_w <= '0';
		en_port <= '0';
		en_sreg <= '0';
		ret_s <= '0';
		s1 <= '0';
		s0 <= '0';
		
		end if;
		
		when "1100" => -- ES RJUMP
		
		sel_r_d <= "00000"; -- no importa
		sel_r_r <= "00000"; -- no importa
		sel_w_d <= "00000"; -- no importa
		sel_alu <= "000"; -- no importa
		ld <= '0';
		ld_mov <= '0';
		sel_rel <= '1';
		br <= '0';
		bn <= '0';
		en_w <= '0';
		en_port <= '0';
		en_sreg <= '0';
		ret_s <= '0';
		s1 <= '0';
		s0 <= '0';
		
		when "1101" => -- ES RCALL
		
		sel_r_d <= "00000"; -- no importa
		sel_r_r <= "00000"; -- no importa
		sel_w_d <= "00000"; -- no importa
		sel_alu <= "000"; -- no importa
		ld <= '0';
		ld_mov <= '0';
		sel_rel <= '1';
		br <= '0';
		bn <= '0';
		en_w <= '0';
		en_port <= '0';
		en_sreg <= '0';
		ret_s <= '0';
		s1 <= '0';
		s0 <= '1';
		
		when others => -- ES OUT
		
		sel_r_d <= "00000"; -- no importa
		sel_r_r <= I(8 downto 4);
		sel_w_d <= "00000"; -- no importa
		sel_alu <= "000"; -- no importa
		ld <= '0';
		ld_mov <= '1';
		sel_rel <= '0';
		br <= '0';
		bn <= '0';
		en_w <= '0';
		en_port <= '1';
		en_sreg <= '0';
		ret_s <= '0';
		s1 <= '0';
		s0 <= '0';
		
	end case;
	end process;
end Behavioral;