module bcd_to_2421(data,w,x,y,z);
    input [3:0]data;
    output w,x,y,z;
    //structural modelling
    wire bc,bd,not_b,not_d,not_c,b_cd,b_d,bnc;
    and (z,data[0],1'b1);
    and(bc,data[2],data[1]);
    and(bd,data[2],data[0]);
    not(not_b,data[2]);
    not(not_d,data[0]);
    not(not_c,data[1]);
    and(b_cd,data[2],not_c,data[0]);
    and(b_d,data[2],not_d);
    and(bnc,not_b,data[1]);
    or(w,data[3],bc,bd);
    or(x,data[3],b_d,bc);
    or(y,data[3],bnc,b_cd);
    
    // //dataflow modelling
    // assign w=data[3]|(data[2]&data[1])|(data[2]&data[0]);
    // assign x=data[3]|(data[2]&data[1])|(data[2]&(~data[0]));
    // assign y=data[3]|(data[1]&(~data[2]))|(data[2]&(~data[1])&data[0]);
    // assign z=data[0];
    // //behavioral model
    // reg w,x,y,z;
    // always @ *
    // begin
    //     if (data[3] || (data[1]&&data[2])||(data[2]&&data[0]))
    //         w=1;
    //     else 
    //         w=0;
        
    //     if (data[3] || (data[2]&&(~data[0]))||(data[2]&&data[1]))
    //         x=1;
    //     else 
    //         x=0;
        
    //     if (data[3] || (data[1]&&(~data[2]))||(data[2]&&data[0]&&(~data[1])))
    //         y=1;
    //     else 
    //         y=0;
        
    //     if (data[0])
    //         z=1;
    //     else 
    //         z=0;
        
    // end
endmodule


