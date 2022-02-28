---
name: Download and Installation
tools: [Wildkatze,CFD, Multiphysics]
image: https://live.staticflickr.com/65535/51909287634_f45cf18115_b.jpg
description: Download and Installation
---

# Obtaining Wildkatze
 
 [Download Wildkatze]( https://github.com/FVUS/wildktaze/blob/main/release/y2022/WildkatzeCFD.zip)

## Installation

### Step 1 -- Basic Set Up
Unzipping Wildkatze.Gen.2019.11.30.x86_64.tar.gz we get:

![install 01](https://live.staticflickr.com/65535/51909427566_07a696e065_b.jpg)


- Make directory called dravvya in home ($HOME) directory.
- Copy the contents of Wildkatze.Gen.2019.11.30.x86_64.tar.gz in ``` $HOME/dravvya ``` folder.
- Copy the license file license.wildkatze.dat in the ``` $HOME/dravvya/license``` folder. This license file shall be provided by Digital Solution Inc. The license file provided with basic setup will not be identified by the solver.
- At this point ``` $HOME/dravvya``` folder has all relevant files along with a valid license.


### Step 2 -- Installing Openmpi

Wildkatze uses Openmpi, a typical setup shall go as follows:

```
sudo apt-get install libibnetdisc-dev
wget http://www.open-mpi.org/software/ompi/v1.10/downloads/openmpi-1.10.3.tar.gz
tar -xvzf openmpi-1.10.3.tar.gz
cd openmpi-1.10.3
./configure --prefix=$HOME/dravvya/openmpi110
make && sudo make install
```

### Step 3 -- VTK for Client GUI

We copied solver into ``` $HOME/dravvya/ ```
 
![install 02](https://live.staticflickr.com/65535/51908477227_e2c83d05d7_c.jpg)

 However this would mostly likely fail to launch the GUI for failing to load vtk
related classes.
To properly start GUI one need to set environment variable ```LD_LIBRARY_PATH``` to ```$HOME/dravvya/vtk```

![install 03](https://live.staticflickr.com/65535/51910073300_b8e7761a0a_c.jpg)

One can now launch Client GUI using

![install 04](https://live.staticflickr.com/65535/51909544203_76ea27480c_z.jpg)


#### Java

In case the GUI fails to load for absence of Java, one can install Java with following:

```
sudo apt-get install default-jdk
sudo apt-get install default-jre
sudo apt install openjdk-8-jdk
```

### Step 4 -- Solver Launch Scripts

We copied solver into ``` $HOME/dravvya/ ``` 

![install 05](https://live.staticflickr.com/65535/51910125470_ef8ffcb445_z.jpg)

There is a set of .sh or shell script files present in bin folder. After copying files to ``` $HOME/dravvya```  they shall be present in ```$HOME/dravvya``` .
These files are used to run the solver in various modes. 

#### Creating solver.sh file for launchig wildkatze solver

 

**Please edit the .sh files present in bin folder (int installation) with proper ``` $HOME ``` values.** 

 Example solver.sh to launch wildkatze with 4 processes
 
 ```
 /home/savya/dravvya/openmpi110/bin/mpirun -np 4 /home/savya/dravvya/bin/wildkatze -l  /home/savya/dravvya/license/license.wildkatze.dat "$@"
 ```
 We now set up the GUI script. 
 
#### GUI script  wildkatzeGUI.sh
 
 One shall replace the ``` $HOME ``` variable in **wildkatzeGUI.sh**.  This script is used to launch the GUI. 
 
### Step 5 -- Running the Solver

####   Solver in Console Mode
 
Once the solver.sh script is set up, starting solver in console mode is:

```
source solver.sh
```

This launches the solver in console mode:

![install 05](https://live.staticflickr.com/65535/51910108321_e1cc8a78cd_b.jpg)

####   Solver in Client Server Mode (with GUI)

To start the server at port 5010 we use

```
solver.sh -s 5010 
```
![install 07](https://live.staticflickr.com/65535/51910495349_febcb49e3b_b.jpg)

One can notice 5010 in above picture. This is the port on which server is listening for incoming connections from
GUI.  
Now user shall start GUI and connect the server on this port.

####   Client Mode

To start GUI or client 

```
solverGui.sh  
```

This runs GUI as
![install 08](https://live.staticflickr.com/65535/51910522329_6367c93264_c.jpg)

![install 09](https://live.staticflickr.com/65535/51910301998_91252a2894_c.jpg)


