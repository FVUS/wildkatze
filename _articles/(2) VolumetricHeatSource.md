---
name: RegionsHeatSourceFeature
tools: [Model Feature]
image: https://live.staticflickr.com/65535/51908879836_d640907927_c.jpg
description:  Learning to apply heat source at some regions.
---

#   (1)  Defining Regions to Regions

```
region-to-regions    RegionsHeatSourceFeature-r2r-0 Lattice Lattice
```

Here Lattice  is the name for the region where we apply heat source.

Here RegionsHeatSourceFeature-r2r-0  is the name for the region-to-regions
 

#  Add RegionsHeatSourceFeature for it


```
model-feature-r2r  ConjugatedFlowModel flow-set    reg-set-1  RegionsHeatSourceFeature RegionsHeatSourceFeature-r2r-0
```

or 


```
model-feature-r2r  EnergyModel flow-set    reg-set-1  RegionsHeatSourceFeature RegionsHeatSourceFeature-r2r-0
```




# (3)   write the output file 

```
write-sim        outputFixedT.stree
```



# (4) Edit the outputFixedT.stree.  

 Search for RegionsHeatSourceFeature and set the heat source.



 
