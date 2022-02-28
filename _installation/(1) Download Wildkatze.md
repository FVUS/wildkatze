---
name: Download and Installation
tools: [Wildkatze,CFD, Multiphysics]
image: https://live.staticflickr.com/65535/51909287634_f45cf18115_b.jpg
description: Download and Installation
---

# Obtaining Wildkatze
 
 [Download Wildkatze]( https://github.com/FVUS/wildktaze/blob/main/release/y2022/WildkatzeCFD.zip)

## Installation

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
 

 
