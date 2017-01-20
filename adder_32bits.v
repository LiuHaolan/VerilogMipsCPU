module adder_32bits(a, b, ci, s, co);

 input [31:0] a;
 input [31:0] b;
 input ci;
 output [31:0] s;
 output co;

 wire c3, c7, c11, c15, c19, c23, c27;



 adder_4bits adder_4bits_0(.a(a[3:0]), .b(b[3:0]), .ci(ci), .s(s[3:0]), .co(c3));
 
 
 select_adder_4bits select_adder_4bits_1(.a(a[7:4]),   .b(b[7:4]),   .ci(c3),  .s(s[7:4]),   .co(c7));
 select_adder_4bits select_adder_4bits_2(.a(a[11:8]),  .b(b[11:8]),  .ci(c7),  .s(s[11:8]),  .co(c11));
 select_adder_4bits select_adder_4bits_3(.a(a[15:12]), .b(b[15:12]), .ci(c11), .s(s[15:12]), .co(c15));
 select_adder_4bits select_adder_4bits_4(.a(a[19:16]), .b(b[19:16]), .ci(c15), .s(s[19:16]), .co(c19));
 select_adder_4bits select_adder_4bits_5(.a(a[23:20]), .b(b[23:20]), .ci(c19), .s(s[23:20]), .co(c23));
 select_adder_4bits select_adder_4bits_6(.a(a[27:24]), .b(b[27:24]), .ci(c23), .s(s[27:24]), .co(c27));
 select_adder_4bits select_adder_4bits_7(.a(a[31:28]), .b(b[31:28]), .ci(c27), .s(s[31:28]), .co(co));



endmodule