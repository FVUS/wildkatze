---
name:  Main Concepts of Wildkatze Solver
tools: [Main Concepts of Wildkatze]
image: https://live.staticflickr.com/65535/51916523957_e4c48110b0_b.jpg
description:  Core and Advanced Concepts of Wildkatze Solver
---




# On Youtube 

**Watch it on Youtube Video**

[![Usage](https://img.youtube.com/vi/rqh7JFU0xJg/0.jpg)](https://youtu.be/rqh7JFU0xJg "Usage")


 <br/><br/>

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


# Discretization
 
 Wildkatze supports both second order and third order discretization. In second order stencil there is one integration point for each of the faces of the control volume. Third order stencil needs more integration points. For example for a tetrahydral mesh for each face one would have 3 integration points. 
 The gradient computation for third order model is done with extended stencil ie it also now involves the second neighbor cells too. 
 
![learn 01](https://live.staticflickr.com/65535/51916523472_7ddb129722_b.jpg)

# Multi-Region 
 
 Wildkatze supports multi-region simulations. Mesh file contains several regions (or just one). As explained above in order to define the Physics Model one need Region Set. There is no limitation on how many region sets one can define. There are no rigid rules about it. Usually they are defined based on what the simulation is trying to achieve. 
 
 For example if one is solving Conjugated Heat Transfer than it makes sense to create two Region Sets (a) one for Fluid regions and (b) for all regions ie for Solids and Fluids. 
 
 ![learn 01](https://live.staticflickr.com/65535/51917492536_7b3e04ac43_b.jpg)
 
### Partial Regions
 
 Some models require Physics Models to be applied to only the parts of certain regions. For them Partial regions could be defined. At the moment Immersed Boundary Models are using Partial regions where Solid marking algorithm creates a Partial region where velocities are enforced. 


 ![learn 01](https://live.staticflickr.com/65535/51917818959_6c966e8e31_b.jpg)
 
  
 <br/><br/>
 <br/><br/> 
# Phases and Phase Sets
 
 Phases are not already present so it is something user defines. Phase serves two purposes in context of wildkatze solver. First it serves as Phase of the medium ie it could represent the material properties of a Fluid or Solid. Second it serves as a basis on which Storage managers are defined. 
 
For example take variable velocity, now if the simulation is multiphase then there is need to differentiate velocities of mixture and of phases. Since for each phase a Storage manager is defined, user can request for velocities in mixture and for phases from their respective Storage manager. 

 ![learn 01](https://live.staticflickr.com/65535/51918111225_828d61fdd4_b.jpg)
 

### Phase-to-Phases 

Phase can be dependent on another phase. For example a two phase (air, water) simulation, one can define the mixture-phase and then air-phase and water-phase. Then mixture-phase properties are now dependent on air-phase and water-phase. 

Phase-to-Phases is used to create this mapping. For example mixture-phase is the main phase and then air-phase and water-phase could be two phases on which mixture-phase. 


 ![learn 01](https://live.staticflickr.com/65535/51917492861_176b476dfb_b.jpg)
 
   
 <br/><br/>
 <br/><br/> 
# Physics Models

Once Region-sets and Phase-Sets are defined, we can chose any combination of (Region-set, Phase-Set) to define a Physics Model. 

 
 ![learn 01](https://live.staticflickr.com/65535/51916523957_e4c48110b0_b.jpg)
 
