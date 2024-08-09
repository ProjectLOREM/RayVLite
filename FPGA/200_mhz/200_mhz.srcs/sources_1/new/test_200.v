`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/28/2024 08:24:38 PM
// Design Name: 
// Module Name: test_200
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module test_200(
    input CLK100MHZ,
    output [0:3] led,
    output [0:3] ja,
    input  [0:3] jb,
    input [0:3] btn,
    input sw
    );
    
    
  clk_wiz_0 instance_name
   (
    // Clock out ports
    .clk_200(clk_200),     // output clk_200
    .clk_10(clk_10),     // output clk_10
    .clk_8(clk_8),     // output clk_8
    .clk_16(clk_16),     // output clk_16
    // Status and control signals
    .reset(reset), // input reset
    .locked(locked),       // output locked
   // Clock in ports
    .clk_in1(CLK100MHZ)      // input clk_in1
);




reg s1 = 1'b1;
reg s2 = 1'b0;
reg s3 = 1'b0;
reg s4 = 1'b0;
reg laser=1'b0;
reg clock_state=1'b0;
reg clock_running=1'b1;

reg button_prev;
reg reset_prev;
reg trigger_prev;
reg [8:0] shift;
reg [32:0] trigger_counter = 0;
reg [32:0] ticks = 0;

reg next_out_clk;
reg out_clk;

  // Debounce logic (assuming active low button press)
  always @(posedge clk_200) begin
  
  button_prev <= btn[0];
    if (button_prev & ~btn[0] & s1) begin
      trigger_counter <= 0;
      clock_running <= 1'b0;
      s1<=1'b0;
      s2<=1'b1;
    end  
    
    
      reset_prev <= btn[1];
    if (reset_prev & ~btn[1]) begin
      shift <= 0;
      trigger_counter <= 0;
      clock_running <= 1'b1;
      s1<=1'b1;
      s2<=1'b0;
      s3<=1'b0;
      s4<=1'b0;
      laser<=1'b0;
    end  
    
    if (s1) begin
              laser<=1'b0;
    end
   
  trigger_prev <= jb[0];
      if (~trigger_prev & jb[0] & s1) begin  // Rising edge (button press)
       trigger_counter <= 0;  // Reset counter on button press
       clock_running <= 1'b0;;
       s1<=1'b0;
       s2<=1'b1;
  end 
  
   if ( s2 ) begin
             laser<=1'b1;
      // if( trigger_counter == 100) begin  // 500ns
       //if( trigger_counter == 20000000) begin
        if( trigger_counter == 200000000) begin
          clock_running <= 1'b1;  
          s3<=1'b1;
          s2<=1'b0;
          trigger_counter <= 0;  // Reset counter
          shift<=6;  // slow the clock
          laser<=1'b1;
         end else begin
          trigger_counter <= trigger_counter + 1;  // Increment counter 
       end
    end 
    
    
    if(s3) begin
 //       if( trigger_counter == 750) begin
 //         if( trigger_counter == (25*64*30)) begin
  if( trigger_counter == ((1<<shift)*(25*30))) begin  //this is confusing. 25 cause 200mhz to 8mhz clock, "1 << shift" is for clock slowdown  30 is the number of nops and one muls in the target
          clock_running <= 1'b0;  
          s4<=1'b1;
          s3<=1'b0;
          trigger_counter <= 0;  // Reset counter
          laser<=1'b0;
         end else begin
          trigger_counter <= trigger_counter + 1;  // Increment counter 
       end
    end 

    if(s4) begin
  //  clock_running<=1'b0;
    shift<=0;
   clock_running<=1'b1;
   s4<=1'b0;
   s1<=1'b1;
   end
  
  end
  




  // Assign out_clk based on clock_running in a separate always block
 always @(posedge clk_16) begin
 
    ticks<=ticks+1;
    next_out_clk <= ticks[shift] & clock_running;
    //next_out_clk <= clock_running & clk_8 ;    
    
 end



 always @(posedge clk_200) begin
    out_clk <= next_out_clk;
  end

assign ja[0]=laser;
assign ja[1]=out_clk;
//assign ja[0]=pulse;  
assign led[0] = s1;
assign led[1] = s2;
assign led[2] = s3;
assign led[3] = s4;

endmodule
