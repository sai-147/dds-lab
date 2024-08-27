module company_tb();
    reg [3:0]data;
    wire f;
    company c(data,f);
    initial
    begin
        data=4'b0000;
        repeat(15) #10 data=data+4'b0001;
        #10 $finish;
    end
    initial
    begin
    $dumpfile("company.vcd");
    $dumpvars(0,company_tb);
    $display("compnay resolution meet");
    $display("time\tA\tB\tC\tD\t\tF");
    $monitor("%1d\t%b\t%b\t%b\t%b\t\t%b",$time,data[3],data[2],data[1],data[0],f);
    end
endmodule