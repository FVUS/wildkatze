---
title: Rise of Bubble in High Density Fluid
tags: [VOF, Surface Tension, Interface Tracking]
style: 
color: 
description: A bubble is tracked by interface tracking algorithm called MaxGBCA. 
---

# Rise of Bubble in High Density Fluid

In this validation case, the rising of a bubble in a two-dimensional bubble column is simulated, where the density of the bubble (fluid 2) is smaller than the density of surrounding medium (fluid 1). Please see figure 5.1 for set-up description of initial configuration. It consists of a circular bubble of radius r=0.25, starting to rise at [0.5,0.5] coordinate, in a [1 x 2] rectangular column.


![install 01](https://live.staticflickr.com/65535/51911426504_c4924ec632_c.jpg)

The parameters of this validation case are: density fluid1 = 1000, density fluid2 = 100, viscosity fluid1 = 10, viscosity fluid2 = 0.1, gravity coefficient = 0.98, surface tension = 1.96, Reynolds number = 35, Eötvös number = 125, density ratio fluid1 /fluid2 = 100, viscosity ratio fluid1 /fluid2 = 100. For more details regarding this verification case, please consult reference



*S. Hysing1, S. Turek, D. Kuzmin, N. Parolini, E. Burman, S. Ganesan and L. Tobiska, Quantitative benchmark computations of two-dimensional bubble dynamics, INTERNATIONAL JOURNAL FOR NUMERICAL METHODS IN FLUIDS, 60: 1259 - 1288 (2009)* 


The result obtained for this test case by Wildkatze at various high Courant numbers are presented:

![install 01](https://live.staticflickr.com/65535/51911208218_575063a4ed_b.jpg)
