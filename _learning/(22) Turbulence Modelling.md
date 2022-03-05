---
name: Turbulent Flow
tools: [Turbulence]
image: https://live.staticflickr.com/65535/51909308599_70f5f4c8ea_h.jpg
description:  Turbulence modeling with Wildkatze solver
---

<br/><br/>
<br/><br/>
# Turbulence Models  

When we set up simulation using console then the **Turbulence Model** is specified as arguments to **flow** command. 

<br/><br/>
### K Omega Turbulence Model

``` 
 solver.sh  -lc flow meshFile -wd -kw  -lc pf o.txt 
 
```
 
 **From GUI select KOmegaTurbulenceModel**
 

<br/><br/>
### K Epsilon Turbulence Model

``` 
 solver.sh  -lc flow meshFile -wd -ke  -lc pf o.txt 
 
```
 
  
 **From GUI select KEplsilonTurbulenceModel**
 
 
<br/><br/>
### Spalart Allmaras Turbulence Model

``` 
 solver.sh  -lc flow meshFile -wd -ka  -lc pf o.txt 
 
```
 
  
 **From GUI select SATurbulenceModel**
 
 
<br/><br/>
### Large Eddy Simulation Subgrid Model

``` 
 solver.sh  -lc flow meshFile -wd -sles  -lc pf o.txt 
 
```
 
  
 **From GUI select LesSubgridModel**
 
 


 
