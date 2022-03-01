---
title: Viscous Power Law Fluid
tags: [Power Law Viscosity, Viscous Flow, Polymers]
style: 
color: 
description: High viscosity Power Law fluid flow is difficult to simulate. We verify the suitablity of Wildkatze solver for highly viscous flows.
---


# Power law flow

 The set-up of this validation case is very simple, we have a pipe with lenght dimension of 90 mm and 22.5 mm radius. The material used in this case is a polymer with desnity of 1000 kg/m 3 and the inlet velocity is set to 0.05 m/s. After simulation has reached a converged state, the velocity profile in the middle of the pipe (45mm) is evaluated. Due to flow symmetry, the velocity is determined along a line, from the center of pipe to the maximum radius. Simulation and mesh files, as well as analytical data are provided in the corresponding verification folder.
 
 
For the polymer viscosity, the power law is used:
**viscosity = k · ShearRate (n−1)
k = 407374.2
n = 0.17432**


In Figure 8.1, the velocity at middle of pipe is plotted with respect to radius. This is done for both, analytical and Wildkatze simulation data and we can see very good agreement. Additionaly, we have plot the velocity and viscosity profiles for this validation case in figure 8.2 and 8.3.




![pw 01](https://live.staticflickr.com/65535/51911687595_9666e0cdfa_c.jpg)

![pw 02](https://live.staticflickr.com/65535/51910102472_f284c14c3a_z.jpg)

![pw 01](https://live.staticflickr.com/65535/51910102552_910cf91fb5_z.jpg)

