module wallace(
    input  [7:0] a,
    input  [7:0] b,
    output [15:0] p
);

    wire [15:0] pp[7:0];

    genvar i;
    generate
        for (i = 0; i < 8; i = i + 1) begin
            assign pp[i] = b[i] ? ({8'd0, a} << i) : 16'd0;
        end
    endgenerate

    wire [15:0] s1_0, c1_0, s1_1, c1_1;
    csa #(16) csa1(pp[0], pp[1], pp[2], s1_0, c1_0);
    csa #(16) csa2(pp[3], pp[4], pp[5], s1_1, c1_1);

    wire [15:0] r1_0 = s1_0;
    wire [15:0] r1_1 = {c1_0[14:0], 1'b0};
    wire [15:0] r1_2 = s1_1;
    wire [15:0] r1_3 = {c1_1[14:0], 1'b0};
    wire [15:0] r1_4 = pp[6];
    wire [15:0] r1_5 = pp[7];

    wire [15:0] s2_0, c2_0, s2_1, c2_1;
    csa #(16) csa3(r1_0, r1_1, r1_2, s2_0, c2_0);
    csa #(16) csa4(r1_3, r1_4, r1_5, s2_1, c2_1);

    wire [15:0] r2_0 = s2_0;
    wire [15:0] r2_1 = {c2_0[14:0], 1'b0};
    wire [15:0] r2_2 = s2_1;
    wire [15:0] r2_3 = {c2_1[14:0], 1'b0};

    wire [15:0] s3_0, c3_0;
    csa #(16) csa5(r2_0, r2_1, r2_2, s3_0, c3_0);

    wire [15:0] r3_0 = s3_0;
    wire [15:0] r3_1 = {c3_0[14:0], 1'b0};
    wire [15:0] r3_2 = r2_3;

    wire [15:0] s4_0, c4_0;
    csa #(16) csa6(r3_0, r3_1, r3_2, s4_0, c4_0);

    assign p = s4_0 + {c4_0[14:0], 1'b0};

endmodule
