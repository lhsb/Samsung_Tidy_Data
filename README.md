Samsung tidy data
=====
 
Data
--------

### Human Activity Recognition Using Smartphones Dataset Version 1.0

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details.

A full description is available at the site where the data was obtained:

[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones][http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones]  

Here are the data for the project:  

[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip][https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip]

### For each record it is provided:

* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.

* Triaxial Angular velocity from the gyroscope. 

* A 561-feature vector with time and frequency domain variables. 

* Its activity label. 

* An identifier of the subject who carried out the experiment.

Goal
-------------

1. Merges the training and the test sets to create one data set.

2. Extracts only the measurements on the mean and standard deviation for each measurement. 

3. Uses descriptive activity names to name the activities in the data set

4. Appropriately labels the data set with descriptive variable names. 

5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 


Actions
------------

* Load and merge train and test data 

* Reduce trainTestData to only wanted features (mean and std variables) 

* Make Syntactically Valid Names

* Add subject identifier variable into the data set

* Add activity variable into the data set and convert numeric code to the text names

* Save this data set as tidy_data_set_1.txt

* Create a second, independent tidy data set with the average of each variable for each activity and each subject

* Save the second data set as tidy_data_set_2.txt