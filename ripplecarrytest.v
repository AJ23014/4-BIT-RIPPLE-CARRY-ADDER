// Simulation Testbench for rca_4bit
`timescale 1ns / 1ps

module tb_rca_4bit();

    reg [3:0] n1;
    reg [3:0] n2;
    reg cin;
    wire [3:0] sum;
    wire cout;

    rca_4bit uut (
        .num1(n1), 
        .num2(n2), 
        .carry_in(cin), 
        .sum_out(sum), 
        .carry_out(cout)
    );

    initial begin
        n1 = 4'b0000; n2 = 4'b0000; cin = 0; #10;
        
        // 5 + 3 = 8
        n1 = 4'd5; n2 = 4'd3; cin = 0; #10;
        
        // 15 + 1 = 16 (should overflow to carry_out)
        n1 = 4'b1111; n2 = 4'b0001; cin = 0; #10;
        
        // 7 + 7 + 1 = 15
        n1 = 4'd7; n2 = 4'd7; cin = 1; #10;

        $display("RCA simulation done.");
        $finish;
    end

endmodule
