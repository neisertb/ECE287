LIBRARY ieee ;
USE ieee.std_logic_1164.all ; 
use ieee.numeric_std.all;
ENTITY lights IS
	PORT ( Clock, Resetn, r0,g0,b0,i0,i1,i2,i3,i4,i5,i6,i7,s: IN STD_LOGIC ;
				serial,a1,b1,c1,d1,e1,f1,g1: OUT STD_LOGIC ) ;
END lights ;

ARCHITECTURE Behavior OF lights IS 
	TYPE State_type IS (A, B, C, D,E,F,G) ; 
	SIGNAL x : State_type := A;
	SIGNAL count : integer :=0;
	SIGNAL timer1 : integer :=18;
	SIGNAL timer2 : integer :=40;
	SIGNAL timer3 : integer :=35;
	SIGNAL timer4 : integer :=30;
	SIGNAL timer5 : integer :=2500;
	SIGNAL cycle : integer :=0;
	SIGNAL bits : integer :=0;
	SIGNAL trace : integer :=0;
	Signal season : integer :=0;
	SIGNAl vectorR : STD_LOGIC_VECTOR(7 downto 0);
	SIGNAl vectorG : STD_LOGIC_VECTOR(7 downto 0);
	SIGNAl vectorB : STD_LOGIC_VECTOR(7 downto 0);
	SIGNAL trc : STD_LOGIC_VECTOR(7 downto 0);
	SIGNAL temp : integer :=0;
BEGIN
	PROCESS ( Resetn, Clock )
		
		BEGIN
			
			
			if(resetn = '1')THEN
			serial <='0'; cycle<=0; bits <=0; count<=0;x<=A;
			ELSE
			if(Clock'EVENT AND Clock = '1')THEN
			if(cycle>=trace)THEN
			temp <= 255-(cycle-trace);
			ELSE
			temp <=255-(trace-cycle);
			END IF;
			trc <= std_LOGIC_VECTOR(to_unsigned(temp, 8));
			if s = '1'TheN
				if(((season< 120)AND((cycle) mod 2=1)) OR ((season > 120)AND(cycle mod 2=0)) )THEN
					vectorR(0)<='1'; vectorR(7)<='0'; vectorR(6)<='0';vectorR(5)<='0'; vectorR(4)<='0';vectorR(3)<='0'; vectorR(2)<='0';vectorR(1)<='0';
					vectorG(0)<='0'; vectorG(7)<='0'; vectorG(6)<='0';vectorG(5)<='0'; vectorG(4)<='0';vectorG(3)<='0'; vectorG(2)<='0';vectorG(1)<='0';
					vectorB(0)<='0'; vectorB(7)<='0'; vectorB(6)<='0';vectorB(5)<='0'; vectorB(4)<='0';vectorB(3)<='0'; vectorB(2)<='0';vectorB(1)<='0';
			
				ELsE
					vectorR(0)<='0'; vectorR(7)<='0'; vectorR(6)<='0';vectorR(5)<='0'; vectorR(4)<='0';vectorR(3)<='0'; vectorR(2)<='0';vectorR(1)<='0';
					vectorG(0)<='1'; vectorG(7)<='0'; vectorG(6)<='0';vectorG(5)<='0'; vectorG(4)<='0';vectorG(3)<='0'; vectorG(2)<='0';vectorG(1)<='0';
					vectorB(0)<='0'; vectorB(7)<='0'; vectorB(6)<='0';vectorB(5)<='0'; vectorB(4)<='0';vectorB(3)<='0'; vectorB(2)<='0';vectorB(1)<='0';
			
				END IF;
			ELSE
			if(r0='1')THEN
			vectorR(0)<=trc(7); vectorR(7)<=trc(0); vectorR(6)<=trc(1);vectorR(5)<=trc(2); vectorR(4)<=trc(3);vectorR(3)<=trc(4); vectorR(2)<=trc(5);vectorR(1)<=trc(6);
			ELSE
			vectorR(0)<='0'; vectorR(7)<='0'; vectorR(6)<='0';vectorR(5)<='0'; vectorR(4)<='0';vectorR(3)<='0'; vectorR(2)<='0';vectorR(1)<='0';
			END IF;
			if(g0='1')THEN
			vectorg(0)<=trc(7); vectorg(7)<=trc(0); vectorg(6)<=trc(1);vectorg(5)<=trc(2); vectorg(4)<=trc(3);vectorg(3)<=trc(4); vectorg(2)<=trc(5);vectorg(1)<=trc(6);
			
			ELSE
			vectorG(0)<='0'; vectorG(7)<='0'; vectorG(6)<='0';vectorG(5)<='0'; vectorG(4)<='0';vectorG(3)<='0'; vectorG(2)<='0';vectorG(1)<='0';
			END IF;
			if(b0='1')THEN
			vectorb(0)<=trc(7); vectorb(7)<=trc(0); vectorb(6)<=trc(1);vectorb(5)<=trc(2); vectorb(4)<=trc(3);vectorb(3)<=trc(4); vectorb(2)<=trc(5);vectorb(1)<=trc(6);
			
			ELSE
			vectorB(0)<='0'; vectorB(7)<='0'; vectorB(6)<='0';vectorB(5)<='0'; vectorB(4)<='0';vectorB(3)<='0'; vectorB(2)<='0';vectorB(1)<='0';
			END IF;
			END IF;
			count<=count+1;
				CASE x IS
					WHEN A =>
					
						serial<='1';
						if(vectorR(bits)='0')THEN
							if(count = timer1)THEN
							x<=B;count<=0;a1<='0';END IF;
						ELSE
							if(count = timer2)THEN
							x<=B;count<=0;a1<='0';END IF;
						END IF;
					WHEN B =>
						serial<= '0';
						if(vectorR(bits)='0')THEN
							if(count = timer3)THEN
								bits <=bits +1; 
								
								if(bits=7)THEN bits<=0;
									x<=d;b1<='0';
								ELSE x<=A;b1<='0';
								END IF;
							count<=0;
							END IF;
						ELSE
							if(count = timer4)THEN
								bits <=bits +1;
								
								if(bits=7)THEN bits<=0; x<=D;b1<='0';
								ELSE x<=A;b1<='0';
								END IF;
							count<=0;
							END IF;
						END IF;
							
					WHEN C =>
						serial<='0';
						if (cycle=240)THEN
							if(count = timer5)THEN
								x<=A;count<=0; cycle <= 0; c1<='0';season<=season +1;trace <= trace +1; if season = 240 then season<= 0; END IF; END IF;
						ELSE	x<=A; count<=0;c1<='0';END IF;
						
					WHEN D =>
						serial<='1';
						if(vectorG(bits)='0')THEN
							if(count = timer1)THEN
							x<=E;count<=0;d1<='0';END IF;
						ELSE
							if(count = timer2)THEN
							x<=E;count<=0;d1<='0';END IF;
						END IF;
					WHEN E =>
					e1<='1';
						serial<= '0';
						if(vectorG(bits)='0')THEN
							if(count = timer3)THEN
								bits <=bits +1; 
								
								if(bits=7)THEN bits<=0;
									x<=F;e1<='0';
								ELSE x<=D;e1<='0';
								END IF;
							count<=0;
							END IF;
						ELSE
							if(count = timer4)THEN
								bits <=bits +1;
								
								if(bits=7)THEN bits<=0; x<=F;e1<='0';
								ELSE x<=D;e1<='0';
								END IF;
							count<=0;
							END IF;
						END IF;
						
					WHEN F =>
					f1<='1';
						serial<='1';
						if(vectorB(bits)='0')THEN
							if(count = timer1)THEN
							x<=G;count<=0;END IF;f1<='0';
						ELSE
							if(count = timer2)THEN
							x<=G;count<=0;f1<='0';END IF;
						END IF;
					WHEN G =>
					g1<='1';
						serial<= '0';
						if(vectorB(bits)='0')THEN
							if(count = timer3)THEN
								bits <=bits +1; 
								
								if(bits=7)THEN bits<=0;
									x<=c;cycle <=cycle+1;g1<='0';
								ELSE x<=F;g1<='0';
								END IF;
							count<=0;
							END IF;
						ELSE
							if(count = timer4)THEN
								bits <=bits +1;
								
								if(bits=7)THEN bits<=0; x<=c;cycle <=cycle+1;g1<='0';
								ELSE x<=F;g1<='0';
								END IF;
							count<=0;
							END IF;
						END IF;
					END CASE;
				END IF;
				END IF;
		
		END PROCESS;
			
	END Behavior;