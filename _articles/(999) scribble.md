---
name:  scribble
tools: [Rough Work]
image: 
description:  Gathering various notes here
---

 
 ----------------------------------
You will need to follow this:

1.  Edit the stree to set Cp to 1, solver checks only this to add the variables you want.

Cp    	Integer 	1 	1 	0 User


2.   Set the reference velocity and reference density

       reference-velocity    	Real 	1 	40.00 	0 User
       reference-density    	Real 	1 	1.225 	0 User


3.   Now after the restart file is loaded, you can export the partial ensight export and this will have these values.

