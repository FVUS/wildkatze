---
name:  Basic Usage of Wildkatze - Without GUI
tools: [Wildkatze, Set Up]
image: https://live.staticflickr.com/65535/51917369876_12971dce3f_m.jpg
description:  Basics of performing ultra fast simulations with Wildkatze Solver
---

 <br/><br/>
 <br/><br/>
 [**Download Files**](https://github.com/FVUS/wildkatze/blob/main/learning/basics01.zip)
<br/><br/>
<br/><br/>


**On Youtube**

[![Usage](https://img.youtube.com/vi/oDzat2gDp30/0.jpg)](https://youtu.be/oDzat2gDp30 "Usage")


# Converting Meshes to Wildkatze Format 

We start with mesh in Fluent format. It is also possible to convert the mesh from Starccm's ccm and openFoam format. Here we have TriVortexShed.msh file in Fluent format. 

 ![learn 01](https://live.staticflickr.com/65535/51916021422_83ec9405b7_n.jpg)
 
 To convert we use fluent2bmsh command where the meshFile is without ``` .msh ``` extension. So we have
 
 ```
 
 fluent2bmsh TriVortexShed
 
 ```
 
![learn 01](https://live.staticflickr.com/65535/51917315099_242391d07d_c.jpg)

This converts the mesh into ``` .info.bmsh ``` and ``` .bmsh ``` files. 

![learn 01](https://live.staticflickr.com/65535/51916021592_3bdbd6bdc9_z.jpg)

![learn 01](https://live.staticflickr.com/65535/51917315189_506c2008bc_z.jpg)

 We can check what ``` .info.bmsh ``` contains.

![learn 01](https://live.staticflickr.com/65535/51916989341_bc2efdd2ee_n.jpg)

It is importan to note that one can change the boundary types here to Wall, Inlet, Outlet and Symmetry.  
Also one can change Fluid to Solid types for Conjugated Heat Transfer simulations. 

# Flow Model Set Up

To make the set up of simulation easy Wildkatze provides various command line set up options. Once the basic set up is done then user can add further to the set up by using GUI (in Client - Server mode) or by simply opening the .stree file on text editor of choice. 


## Steady State

The first is to set up steady state flow model. This is done by 

```

solver.sh -lc flow meshFile -lc pf o.txt

```
What is happening here?
 -   ``` flow meshFile ``` generates a journal file  o.txt 
 -   ``` -lc ``` tells wildkatze that this is newline or new command starts here. Using multiple ``` -lc ``` can be used to provide multi-line commands as argument to wildkatze.
 -  ``` -lc pf o.txt ``` part tells wildkatze to process file (pf) o.txt and generate output.stree and run.txt  files.
 -  run.txt is journal file to run simulation using output.stree and meshFile

We set up flow with inlet velocity of 10 m/sec.  Note the ``` -vel 10 ``` option added to ``` flow meshFile ```.

![learn 01](https://live.staticflickr.com/65535/51916989476_8eb117fd8a_b.jpg)

This sets up the steady state flow model. 

![learn 01](https://live.staticflickr.com/65535/51916022022_7defb77bd2_z.jpg)

We can now see that output.stree and run.txt are produced along with some other files.

![learn 01](https://live.staticflickr.com/65535/51917315549_9c191028e1_b.jpg)



We now perform 200 iterations and also export the results in Ensight Gold format. Notice ``` -lc export-ensight result ```

![learn 01](https://live.staticflickr.com/65535/51917610880_2d0dcbdef3_h.jpg)

 After 200 iterations

![learn 01](https://live.staticflickr.com/65535/51917611100_c5a9da37e8_c.jpg)

We look at velocity contour. There is no steady profile because this problem is more transient in nature. 

![learn 01](https://live.staticflickr.com/65535/51917316224_e1a712f839_z.jpg)

## Unsteady Set Up

To set up as unsteady case

- ``` -dt 1E-3 ``` option here sets up constant timestep simulation
- ``` -vdt 1e-3 ```  sets up case with variable timestep simulation where the time step size is decided by velocity and Courant number setting. 
- ``` -pptr ``` options adds transient export of results as Ensight Gold files with default name zDataPP.case

![learn 01](https://live.staticflickr.com/65535/51916022997_d1b501bb12_h.jpg)

After 200 time steps by ``` solver.sh -lc pf run.txt -lc iterate 200 ``` we get velocity profile

![learn 01](https://live.staticflickr.com/65535/51916990556_e973f39e5f_z.jpg)

We can see that it produces transient data set as zDataPP.case
 
![learn 01](https://live.staticflickr.com/65535/51917086628_fc60f65f53_z.jpg)


We can edit PostProcessExportItem on text editor to change the time export frequency of default 1.0E-3 to 1.0E-2

![learn 01](https://live.staticflickr.com/65535/51917086803_8783be79d1_z.jpg)

# Turbulence and Forces Export

We can also add the turbulence and force reports from the command prompt. 

- ``` -wd ``` options adds Wall Distance model. **Do not forget to add Wall distance model with Turbulence**
- ``` -kw ``` adds K Omega SST model
- ``` -ke ``` adds K Epsilon model
- ``` -sa ``` adds Spalart Allmaras model

**Please check dedicated articles related to Turbulence for full options**


![learn 01](https://live.staticflickr.com/65535/51917087023_baa81af819_h.jpg)

We run it for 2000 time steps as

![learn 01](https://live.staticflickr.com/65535/51916023672_c59bd4b81f_c.jpg)

This finishes as

![learn 01](https://live.staticflickr.com/65535/51917316999_def79ce443_b.jpg)

Forces are exported as ``` .csv ``` and ``` .ps ``` formats. 

![learn 01](https://live.staticflickr.com/65535/51916991551_4ecb9c601e_b.jpg)

The velocity contour

![learn 01](https://live.staticflickr.com/65535/51916286322_5e307b79fe_c.jpg)

Turbulent Viscosity

![learn 01](https://live.staticflickr.com/65535/51917252861_5c382d87c5_z.jpg)

The kinetic energy from K Omega model

![learn 01](https://live.staticflickr.com/65535/51916991761_459b42f217_c.jpg)
