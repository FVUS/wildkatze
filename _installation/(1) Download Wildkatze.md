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
To properly start GUI one need to set environment variable ```LD_LIBRARY_PATH``` to
```$HOME/dravvya/vtk```

![install 03](https://live.staticflickr.com/65535/51910073300_b8e7761a0a_c.jpg)

One can now launch Client GUI using

![install 04](https://live.staticflickr.com/65535/51909544203_76ea27480c_z.jpg)




### Openmpi

Wildkatze uses openmpi

```
sudo apt-get install libibnetdisc-dev 
wget https://www.open-mpi.org/software/ompi/v1.10/downloads/openmpi-1.10.3.tar.gz 
tar -xvzf openmpi-1.10.3.tar.gz 
cd openmpi-1.10.3 
./configure --prefix="/home/$USER/.openmpi" 
sudo add-apt-repository ppa:ubuntu-toolchain-r/test 
make && sudo make install 
export PATH="$PATH:/home/$USER/.openmpi/bin" 
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/home/$USER/.openmpi/lib/" 
mpirun 

```

#### Add environment path into global profile. 
```
vim /etc/profile 
```

Another alternative is to edit the .bashrc file. This is useful if you install the openmpi for local user without messing up the global environment settings: 

#### (for local user profile) 

add 
```
PATH=”$PATH:/home/$USER/.openmpi/bin” 
```
and 
```
LD_LIBRARY_PATH=”$LD_LIBRARY_PATH:/home/$USER/.openmpi/lib/” 
```

into .bashrc file, then run source .bashrc 
 

 
