---
name:  Third Order Solver in Wildkatze
tools: [Higher Order, Third Order Method]
image: https://live.staticflickr.com/65535/51941411023_12b1679de3_m.jpg
description:  Development of Third Order Flow Model in Wildkatze Solver
---
 <br/><br/>
 <br/><br/>
 <br/><br/>
# Higher Order Methods Myths
Higher Order Methods  attractive as they  are always been shrouded in lot of myths about them. Most common of them are:
 <br/><br/>
### Higher Order Methods are only for Academia

This myth originates from the fact that there is no commercial software offering Third or Higher Order solver for finite volume forumulation. Indeed Wildkatze is first commercially available finite volume solver to offer Third Order SIMPLE solver. 

### Higher Order Methods are Unstable and Difficult to Converge

One of the reasons why no commercial software offers Higher Order Model is the reasons that so far it has been very difficult to have Higher Order method converge on unstructured meshes without giving up on accuracy. 

With Wildkatze we are able to demonstrate highly stable Third order solver on unstructured meshes even those including general polyhderals.  User does not have to worry about skew etc and it saves lot of time for the user.  Wildkatze’s Third Order solver is more stable than most CFD solvers available in the market. 

### Higher Order Methods are Costly

**Not anymore** 

The cost increase per iteration from Second Order to Third Order is typically between 40 to 70 percent. For unsteady problem the cost increase per time step could be kept around 30 to 40 percent. 

This off course comes with huge cost savings by using 10 times less coarse mesh. 

 <br/><br/>
 <br/><br/>
# Why Higher Order Methods
- Reduction of calculation cost by factor of 10 or more by using Third Order Flow model.
- A Third Order Flow model can achieve same level of accuracy as Second Order Flow model on meshes that are 10 times or less coarse. 
- Increase of accuracy from Second Order model even using the same fine mesh. 
 <br/><br/>
 <br/><br/>
 
# Third Order Flow Model on Unstructured Meshes
<br/><br/>
Finite Volume Descretization is achieved through more integration points per face as opposed to 1 integration point per face in Second Order methods. For example for a Tetrahydral mesh, for each face of control volume Third Order discretization will use 3 integration points as opposed to 1 for Second Order method. 

<p align="center">
  <img width="1000" height="333" src="https://live.staticflickr.com/65535/51941367356_095c784ef8_b.jpg">
</p> 

Also the gradients are computed from extended stencil of control volume neighbours involving second neighbours also. For this reason gradients are calculated from 12 to 200 neighbours. 

**For general polyhedral meshes this could be prohibitively expensive because we might have around 300 to 400 neighbours in computation stencil. For this reason Wildkatze restricts the maximum numbers to be around 30.**

Gradient computation is then followed by constructing various variables to control volume faces using Third Order expression. These two steps are the majority of computation costs.

 <br/><br/>
 <br/><br/>
# Challenges
### Cost

As mentioned above the computation of Third Order Model involves extended stencil of control volumes. This comes with a huge increase in computational cost. If not tackles properly the cost of computation could be as high as 10 times or more. 

In 2018 when Third Order was first introduced to Wildkatze cost and stability were major problems faced. This is why we did not suggest this model to our clients.

These two problems were finally solved in 2020 and now Third Order model is efficient and stable.

### Stability

CFD solvers use gradient limiters to make simulation stable. However gradient limiters and Higher order methods do not mix. The search for gradient limiters for Higher Order Methods is an active area of research. 

Wildkatze has been able to overcome this problem too. We have developed a novel method to keep solver stable without giving up on accuracy. This factor makes Wildkatze unique. 
 <br/><br/>
 <br/><br/>
##  SIMPLE Algorithm
 <br/><br/>
While there is a huge surge in research in Higher Order methods, they are mostly focused on Compressible High Speed and Density based methods.

Wildkatze is unique from the fact that it is the only one to offer Pressure based method in shape of most used algorithm in industry – SIMPLE.
 
