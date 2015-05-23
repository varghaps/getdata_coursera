#Codebook for Getting and Cleaning Data Course Project
##Intro
This repo contains the codebook for the course project of the Getting and Cleaning Data Course on Coursera.

The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone.

A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

##Description of the tidy data created by the script called run_analysis.R

The tidy dataset is a 180-by-81 dataframe. This includes the average of the original variables for each activity (1-6) and each subject (1-30). Hence this dataset has 6X30=180 observations. 

The first two variables are the activity names (WALKING, STANDING, etc) and the subject codes (1-30).

The remaining variables are the means of the variables from the original dataset, labeled according to the original features. The original dataset included a lot more variables. From these only the means and standard deviations were selected. 


##What the run_analysis.R script does


In order to be able to replicate the work of the script, the original txt files should be in the same folder as the script.
 
The original data had been partitioned into training and test data. The script loads these data, as well as the subject and activity identifiers and labels for both subsets.

1) The script merges the two subsets (X_test.txt & X_train.txt) into a single dataset, by simply binding the rows together (this is possible because the data dimensions are the same).

2) extracts only the mean and std measurements from features,  

3) Uses the feature names from features.txt to label the variables

4) Adds activity names&subject codes to the dataset

5) Aggregates the dataset to get averages for each activity and subject 

  