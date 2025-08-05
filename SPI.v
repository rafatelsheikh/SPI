module SPI (clk, rst_n, SS_n, MOSI, tx_valid, tx_data, rx_valid, rx_data, MISO);
    parameter IDLE = 3'b000;
    parameter CHK_CMD = 3'b001;
    parameter WRITE = 3'b010;
    parameter READ_ADD = 3'b011;
    parameter READ_DATA = 3'b100;

    input clk, rst_n, SS_n, MOSI, tx_valid;
    input [7:0] tx_data;
    
    output reg rx_valid, MISO;
    output reg [9:0] rx_data;

    (* fsm_encoding = "gray" *)
    reg [2:0] cs, ns;

    reg is_read_data;

    reg [3:0] serial_to_parallel;
    reg [2:0] parallel_to_serial;

    // State Memory
    always @(posedge clk) begin
        if (~rst_n) begin
            cs <= IDLE;
        end else begin
            cs <= ns;
        end
    end

    // Next State Logic
    always @(*) begin
        case (cs)
            IDLE: begin
                if (~SS_n) begin
                    ns = CHK_CMD;
                end else begin
                    ns = IDLE;
                end
            end

            CHK_CMD: begin
                if (~SS_n) begin
                    if (~MOSI) begin
                        ns = WRITE;
                    end else if (~is_read_data) begin
                        ns = READ_ADD;
                    end else begin
                        ns = READ_DATA;
                    end
                end else begin
                    ns = IDLE;
                end
            end

            WRITE: begin
                if (~SS_n) begin
                    ns = WRITE;
                end else begin
                    ns = IDLE;
                end
            end

            READ_ADD: begin
                if (~SS_n) begin
                    ns = READ_ADD;
                end else begin
                    ns = IDLE;
                end
            end

            READ_DATA: begin
                if (~SS_n) begin
                    ns = READ_DATA;
                end else begin
                    ns = IDLE;
                end
            end

            default: begin
                ns = IDLE;
            end
        endcase
    end

    // Output Logic
    always @(posedge clk) begin
        if (~rst_n) begin
            is_read_data <= 0;
            serial_to_parallel <= 0;
            parallel_to_serial <= 0;
            rx_valid <= 0;
            rx_data <= 0;
            MISO <= 0;
        end else if (~SS_n) begin
            case (cs)
                WRITE: begin
                    if (serial_to_parallel < 10) begin
                        rx_data[9 - serial_to_parallel] <= MOSI;
                        serial_to_parallel <= serial_to_parallel + 1;
                    end else begin
                        rx_valid <= 1;
                        serial_to_parallel <= 0;
                    end
                end

                READ_ADD: begin
                    if (serial_to_parallel < 10) begin
                        rx_data[9 - serial_to_parallel] <= MOSI;
                        serial_to_parallel <= serial_to_parallel + 1;
                    end else begin
                        rx_valid <= 1;
                        serial_to_parallel <= 0;
                        is_read_data <= 1;
                    end
                end

                READ_DATA: begin
                    if (serial_to_parallel < 10) begin
                        rx_data[9 - serial_to_parallel] <= MOSI;
                        serial_to_parallel <= serial_to_parallel + 1;
                    end else begin
                        rx_valid <= 1;

                        if (tx_valid && parallel_to_serial < 8) begin
                            MISO <= tx_data[7 - parallel_to_serial];
                            parallel_to_serial <= parallel_to_serial + 1;
                        end else if (parallel_to_serial >= 8) begin
                            serial_to_parallel <= 0;
                            parallel_to_serial <= 0;
                            is_read_data <= 0;
                        end
                    end
                end

                default: begin
                    serial_to_parallel <= 0;
                    parallel_to_serial <= 0;
                    rx_valid <= 0;
                    rx_data <= 0;
                end
            endcase
        end else begin
            serial_to_parallel <= 0;
            parallel_to_serial <= 0;
            rx_valid <= 0;
            rx_data <= 0;
        end
    end
endmodule