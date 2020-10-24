# Clustering Images

#### Clustering Collection of Images as Vectors Using K-means clustering algorithm
##### There are database of binary image of handwritten numbers named "Hoda", and we are going to cluster these images to the groups so that members of each group are similar to each other and are different to other groups.
##### There is two text file containing 0,1 that represents binary images.each image is 40 * 30 pixels, stored as 1 * 1200 vectors. In "TrainData.text" there are 20000 of 1 * 1200 vectors(each 0, 1 are seperateed by ',') and we are going to cluster them by k-means algorithm in to the 10 groups and then use Representative of group to detect proper group for TestData.txt images.

#### Input :
##### K_means function get 1200 * 20000 matrix containing Training images and 1200 * 10 matrix as initial Representative of groups

#### OUT :
##### Returns 1200 * 10 matrix contianing final Representative of groups


  

#### Run of code:
##### In each iteration choose proper Reoresentative for each image and update Representatives:
###### Below is test for K=10 groups with 10 random initial Reprensentatives. as you can se below for K=10 groups results are not exact. also final result depends on initial Representatives.





