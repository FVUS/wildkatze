---
title: Pressure drop calculation in a turbulent pipe flow
tags: [Turbulence, SST K Omega]
style: 
color: 
description: Calculating pressure drop in a pipe is very good test problem for testing turbulence model implementations. 
---

# Pressure drop calculation in a turbulent pipe flow

This test cases consist of an air flow through a horizontal pipe with smooth walls. All material properties and model settings can be found in following table:

![pipe 01](https://live.staticflickr.com/65535/51911143203_4a9dc35baf_m.jpg)


Simulation is run in steady state mode up to converged state and the pressure drop is computed as presssure difference between inlet and outlet. The pressure drop is also calculated from analytical formula using friction factor (determined for Re = 1.37·10 4 from Moody diagram). Both pressure drops are presented in the table below:

![pipe 02](https://live.staticflickr.com/65535/51911665245_a337f5ae93_c.jpg)
