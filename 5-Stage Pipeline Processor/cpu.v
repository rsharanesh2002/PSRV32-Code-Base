module cpu(
    input clk_i, // clock input
    input reset_i, // reset input

    output [31:0] pc_o, // program counter
);

wire clk; // clock input
wire reset; // reset input

// from fetch_pipeline
wire pc_select; // program counter select
wire [31:0] pc_branch; // program counter branch from ex stage
wire [31:0] instruction; // instruction word
wire [31:0] pc; // program counter
wire [31:0] pc_src; // program counter source

//from decode_pipeline
wire [4:0] write_addr_reg; // write address register
wire [31:0] write_data_reg; // write data register
wire reg_write; // write register control signal
wire [6:0] opcode; // instruction opcode
wire [2:0] funct3; // instruction funct3
wire [31:0] read_data1; // read data1
wire [31:0] read_data2; // read data2
wire [4:0] rs1; // rs1
wire [4:0] rs2; // rs2
wire [4:0] rd; // rd
wire [31:0] offset; // offset

//from exceute_pipeline
wire [5:0] alu_op; // alu operation
wire alu_src1; // alu source1 control signal
wire alu_src2; // alu source2 control signal
wire reg_dst; // reg destination control signal
wire isbranchtaken; // branch taken control signal
wire jump; // jump control signal
wire [31:0] alu_result; // alu result
wire 