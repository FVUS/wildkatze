---
name:  No GUI Basic Usage of Wildkatze
tools: [Wildkatze, Set Up]
image: https://live.staticflickr.com/65535/51908026852_4ee149a839_c.jpg
description:  Basics of performing ultra fast simulations with Wildkatze
---

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

![learn 01](https://live.staticflickr.com/65535/51917610880_2d0dcbdef3_h.jpg)

![learn 01](https://live.staticflickr.com/65535/51917610960_e01f910982_c.jpg)

![learn 01](https://live.staticflickr.com/65535/51917611100_c5a9da37e8_c.jpg)

![learn 01](https://live.staticflickr.com/65535/51917316224_e1a712f839_z.jpg)

![learn 01](https://live.staticflickr.com/65535/51916022997_d1b501bb12_h.jpg)

![learn 01](https://live.staticflickr.com/65535/51916990556_e973f39e5f_z.jpg)

 
![learn 01](https://live.staticflickr.com/65535/51917086628_fc60f65f53_z.jpg)

![learn 01](https://live.staticflickr.com/65535/51917086803_8783be79d1_z.jpg)

![learn 01](https://live.staticflickr.com/65535/51917087023_baa81af819_h.jpg)

![learn 01](https://live.staticflickr.com/65535/51916023672_c59bd4b81f_c.jpg)

![learn 01](https://live.staticflickr.com/65535/51917316999_def79ce443_b.jpg)

![learn 01](https://live.staticflickr.com/65535/51916991551_4ecb9c601e_b.jpg)


![learn 01](https://live.staticflickr.com/65535/51917087403_d95ae9377a_m.jpg)

![learn 01](https://live.staticflickr.com/65535/51917087483_d4ebbd5357_m.jpg)

![learn 01](https://live.staticflickr.com/65535/51916991761_459b42f217_c.jpg)
