
 add_fsm_encoding \
       {miim.state} \
       { }  \
       {{0000 0000} {0001 0001} {0010 0010} {0011 0011} {0100 0100} {0101 0101} {0110 0110} {0111 0111} {1000 1000} {1111 1001} }

 add_fsm_encoding \
       {ad9280_sample.state} \
       { }  \
       {{000 000} {001 001} {010 010} {011 011} {100 100} }

 add_fsm_encoding \
       {frame_fifo_write.state} \
       { }  \
       {{0000 000} {0001 001} {0010 010} {0011 011} {0100 100} {0101 101} }

 add_fsm_encoding \
       {aq_axi_master.wr_state} \
       { }  \
       {{000 000} {001 001} {010 010} {011 011} {100 100} {101 101} {110 110} }

 add_fsm_encoding \
       {aq_axi_master.rd_state} \
       { }  \
       {{000 000} {001 001} {010 010} {011 011} {100 100} {101 101} }
