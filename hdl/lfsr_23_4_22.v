///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Tyler Anderson Tue Aug 14 13:43:11 EDT 2018
//
// lfsr_23_4_22.v
//
// Pseudo random number generator based on "Bebop to the Boolean Boogie", Appendix E, Figure E.4. 
// This is a maximum length sequence. 
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////

module lfsr_23_4_22
  (
   input 	     clk,
   input [22:0]      seed,
   input 	     seed_wr, 
   output 	     y
   );

   parameter P_INIT_SEED=23'd4790770;
   reg [22:0] 	     sr = P_INIT_SEED; 
   
   assign y = sr[4] ^ sr[22]; 
   
   always @(posedge clk)
     if(seed_wr && (seed != 23'd0))
       sr <= seed;
     else
       sr <= {sr[21:0],y};
      
endmodule
