---
layout: page
title:  Wildkatze Multiphysics Solver
permalink: /
---
 
<p align="center">
  <img width="715" height="332" src="https://live.staticflickr.com/65535/51929832868_87bff4691f_z.jpg">
</p>

<p align="center">
  <img width="1000" height="197" src="https://live.staticflickr.com/65535/51929348241_3050fbfd2b_b.jpg">
</p> 

<p align="center">
  <img width="550" height="102" src="https://live.staticflickr.com/65535/51928766577_b3b082d75b_z.jpg">
</p>


<br/><br/>
## Innovation Wildkatze 
<br/><br/>
<table style="margin-left: auto; margin-right: auto;  border-spacing: 30px; padding-left: 15px; padding-right: 15px; border:1px solid blue;  th, td { padding: 15px; }">
  <tr>  <th  style="text-align:center" >Innovative approach in setting up physics models</th>  <th  style="text-align:center">Flexibility in the selection of CFD schemes</th> <th  style="text-align:center">Customize the Finite Volume solver</th>  <th  style="text-align:center" >Immersed Boundary Method</th>   </tr>   

<tr> <td style="text-align:left" >  Wildkatze package features a wide range of physics models. In general, the flow field is composed of various physical phenomena and it is difficult to capture all of them with one physics model. Wildkatze has the option to divide the analysis region and set up different physics models. For example, it is possible to set up LES model in one region and k-omega turbulence model in the other region. </td>   <td style="text-align:left"> When user selects a time stepping or gradient discretization scheme, generally in conventional solvers, the same scheme would be set for the entire simulation. In contrast, Wildkatze allows the user to select different time stepping and gradient discretization schemes for each physics model. </td>  <td style="text-align:left" > Wildkatze provides the user access to almost all variables and internal solver settings through C++ coding. This flexible customization option empower the user to take control of the solver and customers can incorporate their own physics models into Wildkatze for conducting advanced research. User can also enhance the capabilities of existing physics models through Add Feature option in Wildkatze.  </td>   <td style="text-align:left"> Immersed Boundary model has been implemented in Wildkatze for solving transient and steady fluid-structure interaction problems like rotation, movement etc. The Immersed Region does not need to be moving, it could be stationary and marked once. This makes adding or removing objects from the simulation easy and also support various types of motions, which are difficult to simulate with other mesh motion techniques, like morphing or chimera grid methods. Fast and robust solid marking algorithm in Wildkatze allows the user to use this method without much penalty on simulation time. </td> </tr>
 
</table>


<br/><br/>
<br/><br/>
## Applications 
<p align="center">
  <img width="1000" height="217" src="https://live.staticflickr.com/65535/51929928774_d2a30dd15b_b.jpg">
</p> 
<p align="center">
  <img width="1000" height="412" src="https://live.staticflickr.com/65535/51928751142_7e439f666a_b.jpg">
</p> 


<br/><br/>
