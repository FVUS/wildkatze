---
layout: page
title:  Wildkatze Multiphysics Solver
permalink: /
---

![Wildkatze Logo](assets/images/logo80.png)

## Multiphyics Solver


Wildkatze is a general purpose three-dimensional CFD software package with robust Finite Volume and Finite Difference solvers, preprocessing module, and Multiphysics models for a wide range of industrial problems. Flexibility and advanced solver customization through user algorithms have been given paramount importance in the development of Wildkatze. Solver provides access to almost all the variables and internal settings through object oriented C++ code, empowering the user to take control and customize the solver for specific requirements. The flexibility to set up different physics models, utilizing different schemes, in different regions of flow enhances the reproducibility of physical phenomena and quality of analysis.

## Innovative approach in setting up physics models
Wildkatze package features a wide range of physics models. In general, the flow field is composed of various physical phenomena and it is difficult to capture all of them with one physics model. Wildkatze has the option to divide the analysis region and set up different physics models. For example, it is possible to set up LES model in one region and k-omega turbulence model in the other region.

## Flexibility in the selection of CFD schemes
When user selects a time stepping or gradient discretization scheme, generally in conventional solvers, the same scheme would be set for the entire simulation. In contrast, Wildkatze allows the user to select different time stepping and gradient discretization schemes for each physics model.

## Customize the Finite Volume solver
Wildkatze provides the user access to almost all variables and internal solver settings through C++ coding. This flexible customization option empower the user to take control of the solver and customers can incorporate their own physics models into Wildkatze for conducting advanced research. User can also enhance the capabilities of existing physics models through Add Feature option in Wildkatze.

## Immersed Boundary Method
Immersed Boundary model has been implemented in Wildkatze for solving transient and steady fluid-structure interaction problems like rotation, movement etc. The Immersed Region does not need to be moving, it could be stationary and marked once. This makes adding or removing objects from the simulation easy and also support various types of motions, which are difficult to simulate with other mesh motion techniques, like morphing or chimera grid methods. Fast and robust solid marking algorithm in Wildkatze allows the user to use this method without much penalty on simulation time.
