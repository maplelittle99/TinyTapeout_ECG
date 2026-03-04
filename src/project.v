/*
 * Copyright (c) 2024 Yujin
 * SPDX-License-Identifier: Apache-2.0
 */

module tt_um_dec4to16 (
    input  wire        rst_n,
	input  wire        clk,
	input  wire [3:0]  ui,
	output reg  [15:0] dec_out,
);

	always @(posedge clk) begin
    if (!rst_n)
        dec_out = 16'b0;
    else
        dec_out = 16'b1 << ui;
end

endmodule
				
