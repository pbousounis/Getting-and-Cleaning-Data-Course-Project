DESCRIPTION
  Information about data, variables, files used by Pavlos B in Coursera's Getting and Cleaning Data Course Project 
  
DATA SOURCE PAGE
  http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
  
DATA URL
  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
  
EXPERIMENTAL/DATASET SUMMARY
  Experiments were carried out on 30 volunteers within 19-48 years of age. 
  Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone 
  (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial 
  angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. 
  The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training 
  data and 30% the test data. 
  
FILES INCLUDED
- 'README.txt'
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.

CHANGES MADE
- subject_text and subject_train values appear in the merged data frame in the column "Subject"
- activity_labels appear in the merged data frame in the column "Activities" (numeric ID) and "Description" (activity description)

OUTPUT
- The output of run_analysis.R is tidyData.txt, a text file containing the final labeled and merged data frame, in the folder ./data
