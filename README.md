# Clustering Images

#### Clustering Collection of Images as Vectors Using K-means clustering algorithm
##### There is database of binary images of handwritten numbers named "Hoda", and we are going to cluster these images so that members of each cluster are similar to each other and are different from other clusters.
##### There are two text files containing 0,1 that represents binary images.each image is 40 * 30 pixels, stored as 1 * 1200 vectors. In "TrainData.text" there are 20000 of 1 * 1200 vectors(each 0, 1 are seperated by ',') and we are going to cluster them by k-means algorithm in to the 10 clusters and then use Representative of Clusters to detect proper cluster for TestData.txt images.

#### Input :
##### K_means function get 1200 * 20000 matrix containing Training images and 1200 * 10 matrix as initial Representative of clusters

#### Output :
##### Returns 1200 * 10 matrix contianing final Representative of clusters


  

#### Run of code:
##### In each iteration choose proper Reoresentative for each image and update Representatives:
###### Below is test for K=10 clusters with 10 random initial Reprensentatives. as you can se below for K=10 clusters results are not exact. also final result depends on initial Representatives.

![Alt Text](https://raw.githubusercontent.com/AmirMansurian/Clustering-Images/master/Run_test.gif)





