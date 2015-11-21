# getdata_courseproject
### Getting and Cleaning Data course project

## Overview

The "run_analysis.R" script in this repo processes publicly available data collected from the accelerometers from the Samsung Galaxy S smartphone and fully described in the following link: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The original data represents 561 different features derived from accelerometer measurements taken over 30 subjects while performing different activities. The subjects were divided in two sets: one (70% subjects) was used for training purposes and the other (30% subjects) for testing. A full description of the features and activities is provided with the dataset itself, which can be accessed at this link: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The "run_analysis.R" script processes all this data to provide a tidy dataset in which averaged features are given per subject and activity type, taking only those referred to mean and standard deviation from the original list of 561 features. 

## Script workflow

The script will take the following steps to produce the tidy dataset:

* 1: Download the zipped folder with the accelerometer data.
* 2: Read test and training subjects data. I use the readr package because is orders of magnitude faster than read.fwf and because its command fwf_empty allows me to (correctly) guess the column separations without the need to figure out the intervals myself. 
* 3: I will also need the meaningful names of the features / variables (columns) for the data tables and the meaningful names of the different activities. 
* 4: I give meaningful names to the variables in the "data" data frames. 
* 5: I put together the test and subject data frames, adding subjects a column called "set_type" so I can distinguish where they came from. 
* 6: I need to select only those columns from the "data" data frame with mean or std data in them. 
* 7: I merge all data, subject and labels data frames together, after giving all meaningful column names.
* 8: I bring in the meaningful activity names as well. 
* 9: Finally I produce another dataset with the averages of each of the numeric columns.
