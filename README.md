# getdata_courseproject
### Getting and Cleaning Data course project

## Files

This repo contains the following files:

* README.md: This readme file. 

* run_analysis.R: R scripts producing a tidy data set. 

* CodeBook.md: Description of the features given in the tidy dataset. 

* tidy_averages.txt: Resulting tidy dataset, out of from running the R script. 

## Overview

The "run_analysis.R" script in this repo processes publicly available data collected from the accelerometers from the Samsung Galaxy S smartphone and fully described in the following link: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The original data represents 561 different features derived from accelerometer measurements taken over 30 subjects while performing different activities. The subjects were divided in two sets: one (70% subjects) was used for training purposes and the other (30% subjects) for testing. A full description of the features and activities is provided with the dataset itself, which can be accessed at this link: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

A general description of the dataset provided by the original authors is given here:

	"The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
	The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details." 

The "run_analysis.R" script processes all this data to provide a tidy dataset in which averaged features are given per subject and activity type, taking only those referred to mean and standard deviation from the original list of 561 features. The script provides the mean from all the sliding windows taken in the original dataset. More information on the averaged features can be found in the "CodeBook.md" file. 

## Script workflow

The script will take the following steps to produce the tidy dataset:

1. Download the zipped folder with the accelerometer data and unzip it in your working directory.
2. Read test and training subjects data files for features values ("X_test.txt" and "X_train.txt"), activity label identifiers ("y_test.txt" and "y_train.txt") and subject identifiers ("subject_test.txt" and "subject_train.txt"). It uses the readr package because is orders of magnitude faster than read.fwf and because its command fwf_empty allows to (correctly) guess the column separations without the need to figure out the intervals. 
3. Read the files holding the translation between the meaningful names of the features ("features.txt") and activities ("activity_labels.txt") to the corresponding identifiers. 
4. Uses the "features.txt" data to give meaningful names to the features in the test and train sets. 
5. Merges the test and train sets, along in the features, activity and subject data frames. The script also adds to the subjects an extra column called "set_type" so it is possible to distinguish if a subject was from the test or the train set. 
6. Selects only those features with mean or std data in them. See "CodeBook.md" for a complete list of variables selected. 
7. Brings together features, subject and activity labels in a single data frame, providing meaningful column names if needed.
8. Uses the "activity_labels.txt" data to give meaningful names to the activity labels in the table. 
9. Finally, it produces a tidy dataset with the averages of each selected feature per subject and activity and saves it as "tidy_averages.txt".

## Features description

- Features are normalized and bounded within [-1,1].
- Averaged feature vector values for each subject and each activity is a row on the text file.

Please see "CodeBook.md" for more details and an updated description of the features given in the tidy dataset. 
