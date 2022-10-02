view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 4ns sim:/or_gate/a 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 1ns sim:/or_gate/a 
wave modify -driver freeze -pattern constant -value 0 -starttime 1ns -endtime 2ns Edit:/or_gate/a 
wave modify -driver freeze -pattern constant -value 1 -starttime 2ns -endtime 3ns Edit:/or_gate/a 
wave modify -driver freeze -pattern constant -value 1 -starttime 3ns -endtime 4ns Edit:/or_gate/a 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 1ns sim:/or_gate/b 
wave modify -driver freeze -pattern constant -value 1 -starttime 1ns -endtime 2ns Edit:/or_gate/b 
wave modify -driver freeze -pattern constant -value 1 -starttime 3ns -endtime 4ns Edit:/or_gate/b 
wave modify -driver freeze -pattern constant -value 0 -starttime 2ns -endtime 3ns Edit:/or_gate/b 
WaveCollapseAll -1
wave clipboard restore
