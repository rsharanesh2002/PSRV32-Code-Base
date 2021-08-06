module execute(
  input clk_i,  // CLOCK
  input reset_i,  // RESET
  
  input pc_i, // PC
  input pcsrc_i,  // PC+4
  input instruction_i,  // INSTRUCTION
  
  input read_data1_i, // DATA READ FROM REGISTER SOURCE 1 - OP1
  input read_data2_i, // DATA READ FROM REGISTER SOURCE 2 - OP2
  input rs1_i,  // ADDRESS OF REGISTER SOURCE 1
  input rs2_i,  // ADDRESS OF REGISTER SOURCE 2
  input rd_i, // ADDRESS OF DESTINATION REGISTER
  input aluop_i,  // ALU OPCODE
  input offset_i, // IMMEDIATE/OFFSET
  
  input alusrc1_i,
  input alusrc2_i, // CONTROL SIGNAL TO SELECT OP2
  input reg_dst_i, // CONTROL SIGNAL TO SELECT DESTINATION REGISTER
  input isbranchtaken_i, // CONTROL SIGNAL FOR WHETHER THE BRANCH IS TAKEN OR NOT
  input jump_i,
  
  output alu_result_o,  // ALU RESULT 
  output read_data2_o,  // DATA READ FROM REGISTER SOURCE 2 IS PASSED TO MEM
  output write_reg_o, // REGISTER TO WRITE TO - PASSED TO MEM
  output pc_ifbranch  // PC IF BRANCH IS TAKEN
) 
  
  reg [31:0] op1, op2;
  reg [31:0] alu_result_r;
  
  assign op1 = alusrc1_i ? pc_i : read_data1_i;
  assign op2 = alusrc2_i ? offset_i : read_data2_i;
  
  assign pc_ifbranch = (isbranchtaken_i || jump_i) 
    
    always @(*)
      begin
        
  
  always(@posedge clk_i)
    begin
      if(reset_i)
        begin
          alu_result_o <= 'b0;
          write_reg_o <= 'b0;
          read_data2_o <= 'b0;
          pc_ifbranch <= 'b0;
        end
    else begin
      
      
      
  alu alu_inst(.op1_i(op1), .op2_i(op2), .aluop_i(aluop_i), .alu_result_o(alu_result_r));
      
      
      
        
          
          
          
          
  
  
  
  
