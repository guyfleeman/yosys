/* Generated by Yosys 0.8+498 (git sha1 296ecde6, gcc 7.4.0-1ubuntu1~18.04 -fPIC -Os) */

module \../toggle-re.aig (Q, clk, reset, \!Q , enable);
  output \!Q ;
  output Q;
  input clk;
  input enable;
  wire n1_inv;
  wire n4;
  wire n4_inv;
  wire n5;
  wire n5_inv;
  wire n6;
  wire n7;
  input reset;
  \$and  #(
    .A_SIGNED(32'd0),
    .A_WIDTH(32'd1),
    .B_SIGNED(32'd0),
    .B_WIDTH(32'd1),
    .Y_WIDTH(32'd1)
  ) _0_ (
    .A(Q),
    .B(enable),
    .Y(n4)
  );
  \$and  #(
    .A_SIGNED(32'd0),
    .A_WIDTH(32'd1),
    .B_SIGNED(32'd0),
    .B_WIDTH(32'd1),
    .Y_WIDTH(32'd1)
  ) _1_ (
    .A(\!Q ),
    .B(n1_inv),
    .Y(n5)
  );
  \$and  #(
    .A_SIGNED(32'd0),
    .A_WIDTH(32'd1),
    .B_SIGNED(32'd0),
    .B_WIDTH(32'd1),
    .Y_WIDTH(32'd1)
  ) _2_ (
    .A(n5_inv),
    .B(n4_inv),
    .Y(n6)
  );
  \$and  #(
    .A_SIGNED(32'd0),
    .A_WIDTH(32'd1),
    .B_SIGNED(32'd0),
    .B_WIDTH(32'd1),
    .Y_WIDTH(32'd1)
  ) _3_ (
    .A(n6),
    .B(reset),
    .Y(n7)
  );
  \$not  #(
    .A_SIGNED(32'd0),
    .A_WIDTH(32'd1),
    .Y_WIDTH(32'd1)
  ) _4_ (
    .A(enable),
    .Y(n1_inv)
  );
  \$not  #(
    .A_SIGNED(32'd0),
    .A_WIDTH(32'd1),
    .Y_WIDTH(32'd1)
  ) _5_ (
    .A(Q),
    .Y(\!Q )
  );
  \$not  #(
    .A_SIGNED(32'd0),
    .A_WIDTH(32'd1),
    .Y_WIDTH(32'd1)
  ) _6_ (
    .A(n4),
    .Y(n4_inv)
  );
  \$not  #(
    .A_SIGNED(32'd0),
    .A_WIDTH(32'd1),
    .Y_WIDTH(32'd1)
  ) _7_ (
    .A(n5),
    .Y(n5_inv)
  );
  \$dff  #(
    .CLK_POLARITY(1'h1),
    .WIDTH(32'd1)
  ) Q_reg /* _8_ */ (
    .CLK(clk),
    .D(n7),
    .Q(Q)
  );
  initial Q_reg.Q = 1'h0;
endmodule