---
name: Volume of Fluid (VOF)
tools: [VOF, Volume of Fluid, Multiphase]
image: https://live.staticflickr.com/65535/51952706569_b13c465b18_z.jpg
description:  VOF Model and Interface Tracking with Wildkatze solver
---

# Introduction 

 
[![Dambreak](https://img.youtube.com/vi/4vXZR9YO3qY/0.jpg)](https://youtu.be/4vXZR9YO3qY "Dambreak")



# Set Up 

####  Basic Set up

```
solver.sh -lc vof dambreak -gr -vdt 1E-2 -pptr   -lc pf o.txt   
```

#### Specialize the Set Up File output.stree

We edit  output.stree file on a text editor.


```
     1  Noname
     23
       simulation-type    	transient 	0 	2 	steady 	transient User
       iteration    	Integer 	1 	1 	0 User
       timeIteration    	Integer 	1 	1 	0 User
       current-inner-iteration    	Integer 	1 	0 	0 User
       max-iterations    	Integer 	1 	1 	0 User
       max-iteration-per-timestep    	Integer 	1 	9 	0 User
```
