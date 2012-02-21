//-----------------------------------------------------------------------------
// Title         : Maquina de estados de Mealy
// Project       : Laboratorios de Digitales I
//-----------------------------------------------------------------------------
// File          : fsm.v
// Author        : Mauricio Velasquez mvelasquez@glud.udistrital.edu.co
// Created       : 02.11.2004
// Last modified : 02.11.2004
//-----------------------------------------------------------------------------
// Description :
// Implementacion de una mAquina de estados finitos
//-----------------------------------------------------------------------------
// Copyright (c) 2004 by Electronix This model is the confidential and
// proprietary property of Electronix and the possession or use of this
// file requires a written license from Electronix.
//------------------------------------------------------------------------------
// Modification history :
// 02.11.2004 : created
//-----------------------------------------------------------------------------


module mealy (data_in, data_out, reset, clock);
   output data_out;
   input [1:0] data_in;
   input       reset, clock;
   reg 	       data_out;
   reg [2:0]   pres_state, next_state;
   parameter   st0=3'd0, st1=3'd1, st2=3'd2, st3=3'd3, st4=3'd4;
   
   // registro de FSM
   always @ (posedge clock or negedge reset)
     begin: statereg
	if(!reset)// asynchronous
	  pres_state = st0;
	else
	  pres_state = next_state;
     end // statereg
   
   // Bloque combinacional de FSM
   always @(pres_state or data_in)
     begin: fsm
	case (pres_state)
          st0:     case(data_in)
		     2'b00:        next_state=st0;
		     2'b01:        next_state=st4;
		     2'b10:        next_state=st1;
		     2'b11:        next_state=st2;
		   endcase
          st1:     case(data_in)
		     2'b00:        next_state=st0;
		     2'b10:        next_state=st2;
		     default:      next_state=st1;
		   endcase
          st2:     case(data_in)
		     2'b0x:        next_state=st1;
		     2'b1x:        next_state=st3;
		   endcase
          st3:     case(data_in)
		     2'bx1:        next_state=st4;
		     default:      next_state=st3;
		   endcase
          st4:     case(data_in)
		     2'b11:        next_state=st4;
		     default:      next_state=st0;
		   endcase
	  default:                       next_state=st0;
	endcase
     end // fsm
   
   /* definiciOn de las salidas de la mAquina Mealy  usando estado
    presente y los datos de entrada*/
   always @(data_in or pres_state)
     begin: outputs
	case(pres_state)
	  st0:     case(data_in)
		     2'b00:       data_out=1'b0;
		     default:      data_out=1'b1;
		   endcase
	  
	  st1:        data_out=1'b0;
	  st2:        case(data_in) 
			2'b0x:       data_out=1'b0;
			default:      data_out=1'b1;
			
		      endcase
	  st3:        data_out=1'b1;
	  st4:     case(data_in)
		 2'b1x:       data_out=1'b1;
		 default:      data_out=1'b0;
	       endcase
	  
	  default: data_out=1'b0;
	  
	endcase
     end // outputs
   
   initial begin
      $dumpfile ("fsm.vcd");
      $dumpvars;
   end
endmodule // mealy

