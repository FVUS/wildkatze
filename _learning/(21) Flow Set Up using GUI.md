---
name: Flow Set Up using GUI
tools: [Main Concepts of Wildkatze]
image: https://live.staticflickr.com/65535/51913553264_8125c1750a_z.jpg
description:  Learning to use GUI to set up simulations
---

<br/><br/>
<br/><br/>

# GUI or Client Server Mode 

The GUI mode or Client Server mode is two step process

-  Starting the server on some port (for example at port 5010) as ``` solver.sh -s 5010 ``` starts the server at port 5010
-  Launching the GUI by ``` solvergui.sh ``` or ``` java -jar  $HOME/dravvya/bin/WildkatzeGui.jar ``` with using appropiate location of jar file

We connect the client to server as

![install 02](https://live.staticflickr.com/65535/51910301998_91252a2894_c.jpg)

<br/><br/>
<br/><br/>

# New Simulation

Once Client is connected to the Server, one can create new simulation by clicking on

![install 01](https://live.staticflickr.com/65535/51918026102_192236458f_s.jpg)

User shall then select the  ```  TriVortexShed.info.bmsh ``` file.  Note that the file to be selected is ``` .info.bmsh ``` and not the ``` .bmsh ``` file. 

This sets up the basic Simulation Tree.
  
![install 01](https://live.staticflickr.com/65535/51918933128_cd02ea9e8b_c.jpg)

The Mesh information is shown under the **Grid** node.

![install 01](https://live.staticflickr.com/65535/51918933223_bb2e04968a_n.jpg)
<br/><br/>
<br/><br/>

## Region Set
<br/><br/>
Once the mesh is loaded the next thing to do is to define the Region-set or Region-Sets.
To do this user shall right click on node **Region-Sets** and click on **Create**
<br/><br/>
![install 01](https://live.staticflickr.com/65535/51919213794_23499f7bef_n.jpg)

On the **Region Sets** dialog one then select the region in this case **fluid** then click on **select** button to add to the selection. 

Press on **Create** button to create the Region Set.


![install 01](https://live.staticflickr.com/65535/51919454995_f602ee8f32_n.jpg)

By default it is named **region-set** but user can change the name by double clicking on the name. 

![install 01](https://live.staticflickr.com/65535/51919503835_5228c231f6_m.jpg)

<br/><br/>
<br/><br/>
## Phase

Right click on node **Phase** and select **Create** to add the phase.

![install 01](https://live.staticflickr.com/65535/51917916897_59a06c6d50_m.jpg)

By default they are named **phase-1** , **phase-2** etc.

![install 01](https://live.staticflickr.com/65535/51919213964_ec7f3912b9_m.jpg)

User can double click on the name to change it. Here we change it to **air** to give it more meaningful name.

![install 01](https://live.staticflickr.com/65535/51918883606_67683bcd7e_m.jpg)


<br/><br/>
<br/><br/>
## Phase Set
 
 Right click on the node **Phase Sets** to open the **Phase Sets** dialog. 

![install 01](https://live.staticflickr.com/65535/51918983923_626bbb0b15_m.jpg)

Click on Phase **air** and press on button **Select**. This puts the phase into the selection list. 

![install 01](https://live.staticflickr.com/65535/51918834916_9d90e5c71c_n.jpg)

Press on button **Create** to create the **Phase Set**

![install 01](https://live.staticflickr.com/65535/51918835046_afd3c81f81_n.jpg)

By default the name of the **Phase Set** is **phase-set**. One can double click to change the name. Here we keep the default name **phase-set** in this case.

![install 01](https://live.staticflickr.com/65535/51918835121_97e1ba6916_n.jpg)


<br/><br/>
<br/><br/>
# Model Creation

The node **Models** gets **Model Sets** nodes once user **Pre-Initialize**. One can then add the sets of **Models** by adding **Model-Set** by right clicking **Model Sets** node.

Then on each of **Model-Set** node user can add **Physics Models** by right clicking on **Model Set-X**

#### Pre-Initialize

Right click **Model Sets** node and click pn **Pre-Initialize** .  This exposes **Model Sets** node. 

**At this point the Wildkatze allocates the Storage Manager for each Region and for each Phase. These Storage Managers are then used by Physics Models to allocate variables.**  This is very important aspect to understand for **Wildkatze** users specially those who want to use it at advanced level.

![install 01](https://live.staticflickr.com/65535/51917947402_97d870ed90_n.jpg)

#### Model Addition

Once solver is **Pre Initialized** and **Model Set** is added we can right click **Model-Set** in this case **Model-Set-1** to bring up the **Model Selection** dialog.

![install 01](https://live.staticflickr.com/65535/51919455820_a58c4fb573_n.jpg)

![install 01](https://live.staticflickr.com/65535/51918835486_e403b349dc_z.jpg)

![install 01](https://live.staticflickr.com/65535/51918934473_d0afc8d4d1_b.jpg)

![install 01](https://live.staticflickr.com/65535/51919165524_6ac7b638ae_n.jpg)

![install 01](https://live.staticflickr.com/65535/51918835731_4149975fbb_b.jpg)

# tweenty

![install 01](https://live.staticflickr.com/65535/51918835786_69ee8ea456_n.jpg)

![install 01](https://live.staticflickr.com/65535/51919456290_c2e3605c0a_b.jpg)

![install 01](https://live.staticflickr.com/65535/51918934788_f53c61869d_b.jpg)

![install 01](https://live.staticflickr.com/65535/51918836031_cf86f18850_c.jpg)

![install 01](https://live.staticflickr.com/65535/51918934903_5312b0945d_n.jpg)

# Tw25

![install 01](https://live.staticflickr.com/65535/51917869867_7e2b56cd4c_n.jpg)

![install 01](https://live.staticflickr.com/65535/51919456615_6fedd7117a_n.jpg)

![install 01](https://live.staticflickr.com/65535/51918836281_be80a514af_s.jpg)

![install 01](https://live.staticflickr.com/65535/51918935193_7b0b3d22cd_s.jpg)

![install 01](https://live.staticflickr.com/65535/51919456940_534ffb7a72_z.jpg)

# Thirty

![install 01](https://live.staticflickr.com/65535/51918935403_576a44f8bb_s.jpg)

![install 01](https://live.staticflickr.com/65535/51919457075_7dafe47046_z.jpg)

![install 01](https://live.staticflickr.com/65535/51918836696_1553b6004a_s.jpg)

![install 01](https://live.staticflickr.com/65535/51919166769_51a1b13f96_n.jpg)

![install 01](https://live.staticflickr.com/65535/51919457265_b80a2eede9_n.jpg)






