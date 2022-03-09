---
name: FixedTemperatureFeature
tools: [Model Feature]
image: https://live.staticflickr.com/65535/51913250998_93c535b0ce_z.jpg
description:  Learning to fix Temperature at some regions and cells.
---

#   (1)  Adding XYZPoints

```
add-xyz-dataset    title_xyz    fileName.txt
```

Here title_xyz  is the tag for the XYZPointsItem

fileName.txt is input file of points

Contents of fileName.txt (Example)

```
3

-0.35   0   0.05
-0.35   0   0.1
-0.35   0   0.15

```



# (2)   write the output file 

```
write-sim        outputFixedT.stree
```



# (3) Edit the outputFixedT.stree.  

Add FixedTemperatureFeature without Region-to-Regions (since we fix the temperature on Points)

 Let the FixedTemperatureFeature know about it  ``` xyz-points  	title_xyz 	1 	0 	0 User ```

Example:

```

          "FeatureItem"  1  "FixedTemperatureFeature"  "SimTreeBaseItem-plus-1455-parent-ModelItem825"    1455  0  1

     1  Noname
     4
       is-active    	Integer 	1 	1.00000000000000e+00 	0 User
       temperature    	Real 	1 	450 	0 User
       is-init-only    	Integer 	1 	0.00000000000000e+00 	0 User
       xyz-points  	title_xyz 	1 	0 	0 User
       
```

This fixes the Temperature to  450K at xyz points





 
