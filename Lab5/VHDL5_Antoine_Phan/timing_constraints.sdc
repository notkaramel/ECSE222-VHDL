set_max_delay -from [get_ports A[*]] -to [get_ports AgtBplusOne] 5
set_max_delay -from [get_ports A[*]] -to [get_ports AgteBplusOne] 5
set_max_delay -from [get_ports A[*]] -to [get_ports AltBplusOne] 5
set_max_delay -from [get_ports A[*]] -to [get_ports AlteBplusOne] 5
set_max_delay -from [get_ports A[*]] -to [get_ports AeqBplusOne] 5
set_max_delay -from [get_ports A[*]] -to [get_ports overflow] 5

set_max_delay -from [get_ports B[*]] -to [get_ports AgtBplusOne] 5
set_max_delay -from [get_ports B[*]] -to [get_ports AgteBplusOne] 5
set_max_delay -from [get_ports B[*]] -to [get_ports AltBplusOne] 5
set_max_delay -from [get_ports B[*]] -to [get_ports AlteBplusOne] 5
set_max_delay -from [get_ports B[*]] -to [get_ports AeqBplusOne] 5
set_max_delay -from [get_ports B[*]] -to [get_ports overflow] 5