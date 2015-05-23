# Repo for Coursera Getting and Cleaning Data Course
##Intro
This repo contains the files for the course project of the Getting and Cleaning Data Course on Coursera.

##Description of the original data
The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. 

The experiments were carried out with a group of 30 volunteers. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, this acceleration and velocity data were recorded, and from these, a set of variables were calculated. The obtained dataset had been partitioned into two sets, where 70% was selected for generating the training data and 30% the test data.

A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

##Description of the script
I created an R script called run_analysis.R that does the following. 

    1) Merges the training and the test sets to create one data set.
    2) Extracts only the measurements on the mean and standard deviation for each measurement. 
    3) Uses descriptive activity names to name the activities in the data set.
    4) Appropriately labels the data set with descriptive variable names. 
    5) From the data set in step 4, creates a second, independent tidy data set with 
    the average of each variable for each activity and each subject.

For more details, see the Codebook and the script comments in the repo.
