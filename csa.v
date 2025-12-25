module csa #(parameter W = 16)(
    input  [W-1:0] a,
    input  [W-1:0] b,
    input  [W-1:0] c,
    output [W-1:0] s,
    output [W-1:0] carry
);

    assign s     = a ^ b ^ c;
    assign carry = (a & b) | (b & c) | (a & c);

endmodule
