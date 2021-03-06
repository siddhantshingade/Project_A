entity gp_cal is
port (
	Ai,Bi : in bit; --ai and bi
	Gi,Pi  : out bit --ai*bi
	);
end entity gp_cal;

architecture struct of gp_cal is 
begin

Gi <= Ai AND Bi;
Pi <= Ai XOR Bi;
end struct;