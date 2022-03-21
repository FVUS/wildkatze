---
name: Volume of Fluid (VOF)
tools: [VOF, Volume of Fluid, Multiphase]
image: https://live.staticflickr.com/65535/51952706569_b13c465b18_z.jpg
description:  VOF Model and Interface Tracking with Wildkatze solver
---

<br/><br/>
<br/><br/>

# Introduction 
<br/><br/>
 
[![Dambreak](https://img.youtube.com/vi/4vXZR9YO3qY/0.jpg)](https://youtu.be/4vXZR9YO3qY "Dambreak")


 

#  Basic Set up

```
solver.sh -lc vof dambreak -gr -vdt 1E-2 -pptr   -lc pf o.txt   
```

# Specialize the Set Up File output.stree

We edit  output.stree file on a text editor.

#### Maximum Iterations Per Time-Step


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

#### Initialize Water Column

We initialize the water column by editing VariableBoxPatchItem in output.stree.  

```
              (: 
              "VariableBoxPatchItem"  1  "volume-fraction(prim-phase,0.0,-1.0E+20,1.0E+20,-1.0E+20,1.0E+20,-1.0E+20,1.0E+20)"  "SimTreeBaseItem-plus-980-parent-FieldVariableItem978"    980  0  0

volume-fraction
prim-phase
1
-1e+20  -0.15
-1e+20  0.3
-1e+20  1e+20
```

#### Results Export Frequency

We edit PostProcessExportItem to set the results export frequency to 0.01 seconds. 


```
zDataPP  
Time-Step  
Ensight-Gold  
Time-frequency  
0  
1000000  
0  
1e+06  
100  
0.01 
```

#  Performing the Simulation

Performing the simulation is very easy. 

```
solver.sh -lc pf run.txt   -lc iterate 1000  
```

# Results

The results are exported in Ensight Gold format. 

We have:

#### At time =  0.25 sec
<p align="center">
  <img width="611" height="398" src="https://live.staticflickr.com/65535/51951412747_681d8b3a72_z.jpg">
</p>

#### At time =  0.525 sec
<p align="center">
  <img width="611" height="398" src="https://live.staticflickr.com/65535/51952706569_b13c465b18_z.jpg">
</p>

#### At time =  3.5 sec
<p align="center">
  <img width="611" height="398" src="https://live.staticflickr.com/65535/51952998255_3808bd1db6_z.jpg">
</p>


#### At time =  8.0 sec
<p align="center">
  <img width="611" height="398" src="https://live.staticflickr.com/65535/51952468598_b05dbc1351_z.jpg">
</p>
