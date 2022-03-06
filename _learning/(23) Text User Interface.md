---
name:  Text User Interface
tools: [Turbulence]
image: https://live.staticflickr.com/65535/51910108321_e1cc8a78cd_b.jpg
description:  Text User Interface provides a very efficient workflow to perform simulations.
---

 <br/><br/>
 <br/><br/> 
 
# User Guide to Text User Interface

Please download the full version of document to learn how to use TUI efficiently.
 <br/><br/>
 <br/><br/>
 [**Guide to Text User Interface**](https://github.com/FVUS/wildkatze/blob/main/learning/WildkatzeTUI.pdf )
<br/><br/>
<br/><br/>


# Launching the Solver 

We create a script solver.sh.  This allows to launch the solver with simple solver.sh on linux terminal.

```
mpirun -np 4 /Path_To_Executable/wildkatze -l /Path_To_License/license.wildkatze.dat "$@"
```


# Loading the Mesh and Simulation Tree

Ones the solver is launched in console mode using solver.sh script, we can then load the Simulation Tree and Mesh using simple run.txt text input file. 

The run.txt looks like 

```
# set the simulation directory and mesh name. 
setdir ./ 
setmesh    sample
setsim     output 
readsimtree

```

Once the run.txt is present

```
pf run.txt
```
loads the Mesh and Simulation Tree

<br/><br/>
# Performing Iterations

```
iterate 10
```

Performs 10 iterations

<br/><br/>
# Pausing the Simulation

In order to pause a running simulation create a file called ``` wildkatze.pause ``` in the folder where Simulation is running. Then wait for solver to stop the iterations.  For Transient calculations this will be at the end of the time step.

To resume the iterations one shall remove the ``` wildkatze.pause ``` and then ``` iterate 10 ``` (runs 10 iterations).

<br/><br/>
# Changing Simulation Options

Check WildkatzeTUI.pdf from above download link.

<br/><br/>
# Changing Model Options

Check WildkatzeTUI.pdf from above download link.

<br/><br/>
# Changing Boundary Conditions

Check WildkatzeTUI.pdf from above download link.

<br/><br/>
# Saving Restart File

``` save-restart-bin Restb ```  saves the restart file with name **Restb**

To load the restart file after loading the Mesh and Simulation file to resume the Simulation

``` read-restart-bin Restb ``` 

After this if ``` iterate 10 ``` then Wildkatze performs 10 iteration from last saved state.


<br/><br/>
# Exporting Results for Post Processing

``` export-ensight result ``` 

Exports the results in Ensight Gold format

<br/><br/>
# Exporting Monitors and Residuals

``` export-monitors ``` 

Exports forces and other monitors to various files.  When Wildkatze exits it writes all these files by default. 

 
