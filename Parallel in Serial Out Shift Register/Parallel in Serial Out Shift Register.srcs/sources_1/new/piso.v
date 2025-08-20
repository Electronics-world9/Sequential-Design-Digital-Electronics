module piso(input Rst,Clk,ld,
         [3:0]pin,
         output Sout
        );
         reg [3:0]q;
    always @(posedge Clk)
    begin
     if(!Rst)
       q<=4'b0000;
     else if(ld)
        q<=pin;
     else
     q<=(q<<1);
    end 
   assign Sout=q[3];
endmodule 