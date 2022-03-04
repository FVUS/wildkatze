---
name: GUI and Main Concepts
tools: [Main Concepts of Wildkatze]
image: https://live.staticflickr.com/65535/51913553264_8125c1750a_z.jpg
description:  Core and Advanced Concepts of Wildkatze Solver
---



# Introduction

While setting up from command prompt is very fast and thanks to automated set up it is mostly possible to perform the simulation without ever opening GUI, it is useful to inform about the concepts of Wildkatze to utilize software to its fullest possibilities. There might be some small things that are not possible to set up from console. 

Since it is efficient to set up from console the end goal is to be able to set up everything from console. Note that advanced set up from console is done using configuration file. The explanation of this shall have its own dedicated article. 

The GUI mode or Client Server mode is two step process

-  Starting the server on some port (for example at port 5010) as ``` solver.sh -s 5010 ``` starts the server at port 5010
-  Launching the GUI by ``` solvergui.sh ``` or ``` java -jar  $HOME/dravvya/bin/WildkatzeGui.jar ``` with using appropiate location of jar file

We connect the client to server as

![install 02](https://live.staticflickr.com/65535/51910301998_91252a2894_c.jpg)

 <br/><br/>
 <br/><br/>
# Core Concept of Wildkatze Solver
 <br/><br/>

**Define Physics Model on Region Set +  Phase Set**
 <br/><br/>
- Create **Regions Sets** using **various combinations of regions** then define **Phase Sets** on **various Phases** (air, water etc etc) using the **Phases** that user has defined. 
- Ask **Wildkatze** solver to solve them. 
 <br/><br/>
 <br/><br/>


# Descretization
 
 Wildkatze supports both second order and third order descreization. In second order stencil there is one integration point for each of the faces of the control volume. Third order stencil needs more integration points. For example for a tetrahydral mesh for each face one would have 3 integration points. 
 The gradient computation for third order model is done with extended stencil ie it also now involves the second neighbor cells too. 
 
![learn 01](https://live.staticflickr.com/65535/51916523472_7ddb129722_b.jpg)

# Multi-Region 
 
 Wildkatze supports multi-region simulations
 
 ![learn 01](https://live.staticflickr.com/65535/51917492536_7b3e04ac43_b.jpg)
 
 ![learn 01](https://live.staticflickr.com/65535/51917818959_6c966e8e31_b.jpg)
 
 ![learn 01](https://live.staticflickr.com/65535/51918111225_828d61fdd4_b.jpg)
 
 ![learn 01](https://live.staticflickr.com/65535/51917492861_176b476dfb_b.jpg)
 
 ![learn 01](https://live.staticflickr.com/65535/51916523957_e4c48110b0_b.jpg)
 
