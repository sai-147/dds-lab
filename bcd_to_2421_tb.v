module bcd_to_2421_tb;
    reg [3:0]data;
    wire w,x,y,z;
    bcd_to_2421 g(data,w,x,y,z);
    initial
    begin
        data=4'b0000;
        repeat(9) #10 data=data+4'b0001;
        #10 $finish;
    end
    initial
    begin
        $dumpfile("bcd_to_2421.vcd");
        $dumpvars(0,bcd_to_2421_tb);
        $display("bcd to 2421 code");
        $display("time\tA\tB\tC\tD\|\tW\tX\tY\tZ");
        $monitor("%1d\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b",$time,data[3],data[2],data[1],data[0],w,x,y,z);
    end
endmodule

    