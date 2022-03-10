---
name: Running First Simulation
tools: [Wildkatze,CFD, Multiphysics]
image: https://live.staticflickr.com/65535/51908830906_5712c5ec1c_m.jpg
description: Simple Tutorial to learn basics of Wildkatze Flow Solver
---

# Case Description

We have a sample mesh **sample.msh** is given which is in Fluent format. 

![install 01](https://live.staticflickr.com/65535/51908830906_5712c5ec1c_m.jpg)

 
First step is to convert the mesh from fluent to wildkatze bmsh format.

```
solver.sh -lc fluent2bmsh sample
```


This produces ``` sample.bmsh ``` and ``` sample.info.bmsh ``` files.  ``` .info.bmsh ``` is a text file that summarizes the mesh file information while ```.bmsh ``` file is binary file that contains mesh data.

## Set Up

Now the following command setup and iterates the simulation for 10 iterations. It also exports the results in results.case file for paraview.

```
solver.sh -lc flow sample   -lc pf o.txt  -lc iterate 10  -lc export-ensight results
```
 
![install 01](https://live.staticflickr.com/65535/51910345183_a83603ee7c_z.jpg)

 
