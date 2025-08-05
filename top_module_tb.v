module top_module_tb ();
    parameter MEM_DEPTH = 256;
    parameter ADDR_SIZE = 8;

    reg clk, rst_n, SS_n_tb, MOSI_tb, MISO_exp;
    wire MISO_dut;

    reg [ADDR_SIZE - 1 : 0] address;
    reg [ADDR_SIZE - 1 : 0] data;

    top_module dut (clk, rst_n, MOSI_tb, MISO_dut, SS_n_tb);

    initial begin
        clk = 0;
        forever begin
            #1 clk = ~clk;
        end
    end

    integer i;
    initial begin
        // check rst is working
        rst_n = 0;
        SS_n_tb = 1;
        MOSI_tb = 1;
        MISO_exp = 0;

        @(negedge clk);

        if (MISO_dut != MISO_exp) begin
            $display("Error in rst_n");
            $stop;
        end

        // start the process of saving an writing adress
        address = {(ADDR_SIZE / 2){2'b10}};
        rst_n = 1;
        SS_n_tb = 0;

        @(negedge clk);

        MOSI_tb = 0;

        @(negedge clk);

        MOSI_tb = 0;

        @(negedge clk);

        MOSI_tb = 0;

        @(negedge clk);

        for (i = ADDR_SIZE - 1; i >= 0; i = i - 1) begin
            MOSI_tb = address[i];

            @(negedge clk);
        end

        @(negedge clk);

        // stop communication

        SS_n_tb = 1;

        @(negedge clk);

        // start the process of writing data in this address
        SS_n_tb = 0;

        @(negedge clk);

        data = {(ADDR_SIZE / 2){2'b01}};
        MOSI_tb = 0;

        @(negedge clk);

        MOSI_tb = 0;

        @(negedge clk);

        MOSI_tb = 1;

        @(negedge clk);

        for (i = ADDR_SIZE - 1; i >= 0; i = i - 1) begin
            MOSI_tb = data[i];

            @(negedge clk);
        end

        @(negedge clk);

        // stop communication
        SS_n_tb = 1;

        @(negedge clk);

        // start the process of of saving the reading address
        SS_n_tb = 0;

        @(negedge clk);

        MOSI_tb = 1;

        @(negedge clk);

        MOSI_tb = 1;

        @(negedge clk);

        MOSI_tb = 0;

        @(negedge clk);

        for (i = ADDR_SIZE - 1; i >= 0; i = i - 1) begin
            MOSI_tb = address[i];

            @(negedge clk);
        end
        
        @(negedge clk);

        // stop communication
        SS_n_tb = 1;

        @(negedge clk);

        // start the process of of reading the data
        SS_n_tb = 0;

        @(negedge clk);

        MOSI_tb = 1;

        @(negedge clk);

        MOSI_tb = 1;

        @(negedge clk);

        MOSI_tb = 1;

        @(negedge clk);

        repeat (8) begin
            MOSI_tb = 0;

            @(negedge clk);
        end

        @(negedge clk);
        @(negedge clk);

        for (i = ADDR_SIZE - 1; i >= 0; i = i - 1) begin
            MISO_exp = data[i];

            @(negedge clk);

            if (MISO_dut != MISO_exp) begin
                $display("Error in design, dut: %b, exp: %b", MISO_dut, MISO_exp);
                $stop;
            end
        end

        $stop;
    end
endmodule