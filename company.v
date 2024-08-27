module company(data,f);
    input [3:0]data;
    output f;
    // //structural modelling
    // wire ab,ac,acd;
    // and(ab,data[3],data[2]);
    // and(ac,data[3],data[1]);
    // and(acd,data[2],data[1],data[0]);
    // or(f,ab,ac,acd);
    //dataflow
    assign f=(data[3]&data[2])|(data[3]&data[1])|(data[2]&data[1]&data[0]);
endmodule
