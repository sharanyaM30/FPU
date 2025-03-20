`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2025 09:28:18
// Design Name: 
// Module Name: hp_class
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module hp_class(
input [15:0] f,
output snan, qnan, infinity, zero, subnormal, normal
    );
    
    wire expOnes, expZeroes, sigZeroes;     //IEEE numbers have 3 fields namely sign[1], exponent[5] and signifiacand[10]. sig here is for significand
    and (expOnes, f[10], f[11], f[12], f[13]);  //if all exp bits are set to 1
    assign expZeroes = ~|f[14:10];      //if all exp bits set to 0
    assign sigZeroes = ~|f[9:0];        //if all sig bits set to 0
    
    assign infinity = expOnes & sigZeroes;      //infinity when X|11111|0000000000
    assign zero = expZeroes & sigZeroes;        //Zero when X|00000|0000000000
    assign snan = expOnes & ~sigZeroes & ~f[9]; //Snan when X|11111|0XXXXXXXXX atleast one in 9 of sig bits to be 1
    assign qnan = expOnes & f[9];               //qnan when X|11111|1XXXXXXXXX 9 sig bits be anything
    assign subnormal = expZeroes & ~sigZeroes;  //subnormal X|00000|XXXXXXXXXX atleast 1 of sig bits to be 1
    assign normal = ~expZeroes & ~expOnes;      //normal    X|XXXXX|XXXXXXXXXX exp bits neither all 1 nor all 0
    //totally 65536 numbers posiible
endmodule
