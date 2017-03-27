# Getting-and-Cleaning-Data-Course-Project
Final project for Coursera: Getting and Cleaning Data
* The run_analysis.R script will:
1) Download the "Human Activity Recognition Using Smartphones Data Set" from the UCI Machine Learning Repository to a folder called "data" (folder will be created if necessary)
2) Unzip dataset, read-in, process and merge the included datasets, features and labels:
  - X_test was labeled with features.txt (columns) and merged with y_test.txt (labels) and subject_test.txt to label rows 
  - X_train was labeled with features.txt (columns) and merged with y_train.txt (labels) and subject_train.txt to label rows
3) The processed "test" and "train" datasets were merged and a subset was made featuring only columns of the merged data with measurments on means and stdevs (using regex)
4) activity_labels.txt was used to identify observation activities and give descriptive names
5) A new, tidy dataset was created with the average of each variable for each activity and subject, and written to a text file in the "data" directory: "tidyData.txt".

