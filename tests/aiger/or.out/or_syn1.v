/* Generated by Yosys 0.8+498 (git sha1 296ecde6, gcc 7.4.0-1ubuntu1~18.04 -fPIC -Os) */

module \../or.aig (n1, n2, n3_inv);
  wire _0_;
  wire _1_;
  wire _2_;
  input n1;
  wire n1_inv;
  input n2;
  wire n2_inv;
  wire n3;
  output n3_inv;
  \$_OR_  _3_ (
    .A(_0_),
    .B(_1_),
    .Y(_2_)
  );
  assign _0_ = n1;
  assign _1_ = n2;
  assign n3_inv = _2_;
endmodule