module comparator_tb;

reg [3:0] a, b;
reg AgtBplusOne, AgteBplusOne,
	AltBplusOne, AlteBplusOne,
	AeqBplusOne, overflow;

antoine_phan_comparator comparator(
    .a(a),
    .b(b),
    .AgtBplusOne(AgtBplusOne),
    .AgteBplusOne(AgteBplusOne),
    .AltBplusOne(AltBplusOne),
    .AlteBplusOne(AlteBplusOne),
    .AeqBplusOne(AeqBplusOne),
    .overflow(overflow)
);

initial begin
    begin
        // values for a and b
        a = 0;
        b = 0;
        #period; // wait for period 

        a = 0;
        b = 1;
        #period;

        a = 1;
        b = 0;
        #period;

        a = 1;
        b = 1;
        #period;
        end
end

endmodule

