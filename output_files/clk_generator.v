module clk_generator(clk_1hz,clk);

input clk;
output clk_1hz;
reg clk_1hz = 1'b0;
reg [27:0] counter;

always@(posedge clk)
begin

counter <= counter + 1;

if(counter == 15000000)
   begin
    clk_1hz <= ~clk_1hz;
	 counter <= 0;
	end

end
endmodule
