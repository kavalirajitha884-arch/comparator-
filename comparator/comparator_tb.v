`timescale 1ns/1ps

module comparator_tb;

reg  [1:0] A;
reg  [1:0] B;

wire A_gt_B;
wire A_eq_B;
wire A_lt_B;

comparator2bit uut (
    .A(A),
    .B(B),
    .A_gt_B(A_gt_B),
    .A_eq_B(A_eq_B),
    .A_lt_B(A_lt_B)
);

initial begin

    $dumpfile("comparator.vcd");
    $dumpvars(0, comparator_tb);

    A = 2'b00; B = 2'b00; #10;
    A = 2'b00; B = 2'b01; #10;
    A = 2'b01; B = 2'b00; #10;
    A = 2'b01; B = 2'b01; #10;
    A = 2'b10; B = 2'b11; #10;
    A = 2'b11; B = 2'b10; #10;
    A = 2'b11; B = 2'b11; #10;

    $finish;

end

endmodule