module pushbutton_led (
    input clk,          // clock signal
    input pushbutton,   // pushbutton input signal
    output reg led      // LED output signal
);

    always @(posedge clk) begin
        // detect pushbutton edge
        if (pushbutton && !led) begin
		  led <= 1; // turn on LED
        end else if (!pushbutton && led) begin
            led <= 0; // turn off LED
        end
    end
	 endmodule
