module top(
    input  [15:0] sw,
    output [15:0] led
);

    wire [7:0] a = sw[7:0];       // A = SW0-SW7
    wire [7:0] b = sw[15:8];      // B = SW8-SW15
    wire [15:0] p;

    wallace uut(
        .a(a),
        .b(b),
        .p(p)
    );

    assign led = p;

endmodule
