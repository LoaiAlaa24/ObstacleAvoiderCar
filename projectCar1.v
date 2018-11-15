
module projectCar1(output reg motorFin1 , output reg motorFin2 ,output reg  motorFin3 ,  output reg	motorFin4  ,  input IR1 , input IR2,input IR3 , input IR4,input clk);

wire clk_1hz ;
clk_generator(clk_1hz , clk);
	
always@( clk )
 begin

 if(IR1 == 1  && IR2 == 1 && IR3==1 && IR4 == 1)
   begin
	   	
			motorFin1 <= 0;
			motorFin2 <= 1;
			motorFin3 <= 1;
			motorFin4 <= 0;

	   
	end
 else
 
 if( IR2 == 1 && IR3==1 && IR4 == 0)
   begin
	
			motorFin1 <= 1;
			motorFin2 <= 1;
			motorFin3 <= 0;
			motorFin4 <= 1;
		
			
	end
	else
	
 if(IR2 == 1 && IR3==0 && IR4 == 1)
   begin


			motorFin1 <= 1;
			motorFin2 <= 0;
			motorFin3 <= 1;
			motorFin4 <= 1;
				 
				 
	
	end
	else
	
	
 if( IR2 == 1 && IR3==0 && IR4 == 0)
   begin
	

			motorFin1 <= 1;
			motorFin2 <= 0;
			motorFin3 <= 1;
			motorFin4 <= 1;
				 
		
	end
	
	else 
	
 if( IR2 == 0 && IR3==1 && IR4 == 1)
   begin

			motorFin1 <= 1;
			motorFin2 <= 0;
			motorFin3 <= 1;
			motorFin4 <= 1;
				 
				
		
	end
	
	else
	
 if( IR2 == 0 && IR3==1 && IR4 == 0)
   begin
	
	
			motorFin1 <= 1;
			motorFin2 <= 1;
			motorFin3 <= 0;
			motorFin4 <= 1;
				 
	end
	else
 if(IR2 == 0 && IR3==0 && IR4 == 1)
   begin
	
			motorFin1 <= 1;
			motorFin2 <= 0;
			motorFin3 <= 1;
			motorFin4 <= 1;
				 
	
		
	end

		
	else

 if( clk_1hz == 0 && IR1 == 0  && IR2 == 1 && IR3==1 && IR4 == 1)
   begin
   
			motorFin1 <= 1;
			motorFin2 <= 1;
			motorFin3 <= 1;
			motorFin4 <= 1;
			
				 
			
		
	end
	else
	
 if( clk_1hz == 1 && IR1 == 0  && IR2 == 1 && IR3==1 && IR4 == 1)
   begin
   
			motorFin1 <= 0;
			motorFin2 <= 1;
			motorFin3 <= 1;
			motorFin4 <= 0;
			
				 
			
		
	end
	else
	begin
	
		
			motorFin1 <= 1;
			motorFin2 <= 0;
			motorFin3 <= 1;
			motorFin4 <= 1;
				 
	end
	
end
	
endmodule
	