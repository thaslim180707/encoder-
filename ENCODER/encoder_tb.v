`timescale 1ns / 1ps

module encoder_tb;

reg D0, D1, D2, D3;
wire Y1, Y0;

// Instantiate the Encoder
encoder uut (
    .D0(D0),
    .D1(D1),
    .D2(D2),
    .D3(D3),
    .Y1(Y1),
    .Y0(Y0)
);

initial begin

    $display("D3 D2 D1 D0 | Y1 Y0");
    $display("--------------------");

    D0=1; D1=0; D2=0; D3=0; #10;
    $display("%b  %b  %b  %b |  %b  %b", D3,D2,D1,D0,Y1,Y0);

    D0=0; D1=1; D2=0; D3=0; #10;
    $display("%b  %b  %b  %b |  %b  %b", D3,D2,D1,D0,Y1,Y0);

    D0=0; D1=0; D2=1; D3=0; #10;
    $display("%b  %b  %b  %b |  %b  %b", D3,D2,D1,D0,Y1,Y0);

    D0=0; D1=0; D2=0; D3=1; #10;
    $display("%b  %b  %b  %b |  %b  %b", D3,D2,D1,D0,Y1,Y0);

    $finish;

end

endmodule
