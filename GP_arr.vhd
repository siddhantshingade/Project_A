entity GP_arr is

port(
	I0,I1 : in bit_vector(0 to 15);
	G,P   : out bit_vector(0 to 15)
	);

end entity GP_arr;

architecture calc of GP_arr is 

component gp_cal
	port (
		Ai,Bi : in bit;
		Gi,Pi   : out bit
	);
	end component;
	
begin

stage1 : for i in 0 to 15 generate
U0: gp_cal port map (Ai => I0(i), Bi => I1(i), Gi => G(i), Pi => P(i) );
end generate stage1;


end calc;