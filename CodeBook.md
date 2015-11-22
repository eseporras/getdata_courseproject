# CodeBook

The "tidy_averages.txt" file contains 82 columns. The first three are reference columns and the remaining 79 are selected averaged features from the original dataset. 

## Reference columns

The first three columns of the "tidy_averages.txt" file contain reference information to allow identification of the subject, activity type and set (training or test) of data the subsequent features refer to. 

C1: activity_label: Name of one of six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) performed by the subjects of the experiment. 
C2: subject_nr: Subject number (1 to 30).
C3: set_type: Name of the set where the subject was assigned (train or test). 


## Feature columns

Original features are described in the "features_info.txt" file available with the original data. The "run_analysis.R" script selects only those features containing either mean or standard deviation transformations of the original measurements. The script provides the mean from all the sliding windows taken in the original dataset. 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

* mean(): Mean value
* std(): Standard deviation
 
## Full list of averaged feature columns

C4: tBodyAcc-mean()-X
C5: tBodyAcc-mean()-Y
C6: tBodyAcc-mean()-Z
C7: tBodyAcc-std()-X
C8: tBodyAcc-std()-Y
C9: tBodyAcc-std()-Z
C10: tGravityAcc-mean()-X
C11: tGravityAcc-mean()-Y
C12: tGravityAcc-mean()-Z
C13: tGravityAcc-std()-X
C14: tGravityAcc-std()-Y
C15: tGravityAcc-std()-Z
C16: tBodyAccJerk-mean()-X
C17: tBodyAccJerk-mean()-Y
C18: tBodyAccJerk-mean()-Z
C19: tBodyAccJerk-std()-X
C20: tBodyAccJerk-std()-Y
C21: tBodyAccJerk-std()-Z
C22: tBodyGyro-mean()-X
C23: tBodyGyro-mean()-Y
C24: tBodyGyro-mean()-Z
C25: tBodyGyro-std()-X
C26: tBodyGyro-std()-Y
C27: tBodyGyro-std()-Z
C28: tBodyGyroJerk-mean()-X
C29: tBodyGyroJerk-mean()-Y
C30: tBodyGyroJerk-mean()-Z
C31: tBodyGyroJerk-std()-X
C32: tBodyGyroJerk-std()-Y
C33: tBodyGyroJerk-std()-Z
C34: tBodyAccMag-mean()
C35: tBodyAccMag-std()
C36: tGravityAccMag-mean()
C37: tGravityAccMag-std()
C38: tBodyAccJerkMag-mean()
C39: tBodyAccJerkMag-std()
C40: tBodyGyroMag-mean()
C41: tBodyGyroMag-std()
C42: tBodyGyroJerkMag-mean()
C43: tBodyGyroJerkMag-std()
C44: fBodyAcc-mean()-X
C45: fBodyAcc-mean()-Y
C46: fBodyAcc-mean()-Z
C47: fBodyAcc-std()-X
C48: fBodyAcc-std()-Y
C49: fBodyAcc-std()-Z
C50: fBodyAcc-meanFreq()-X
C51: fBodyAcc-meanFreq()-Y
C52: fBodyAcc-meanFreq()-Z
C53: fBodyAccJerk-mean()-X
C54: fBodyAccJerk-mean()-Y
C55: fBodyAccJerk-mean()-Z
C56: fBodyAccJerk-std()-X
C57: fBodyAccJerk-std()-Y
C58: fBodyAccJerk-std()-Z
C59: fBodyAccJerk-meanFreq()-X
C60: fBodyAccJerk-meanFreq()-Y
C61: fBodyAccJerk-meanFreq()-Z
C62: fBodyGyro-mean()-X
C63: fBodyGyro-mean()-Y
C64: fBodyGyro-mean()-Z
C65: fBodyGyro-std()-X
C66: fBodyGyro-std()-Y
C67: fBodyGyro-std()-Z
C68: fBodyGyro-meanFreq()-X
C69: fBodyGyro-meanFreq()-Y
C70: fBodyGyro-meanFreq()-Z
C71: fBodyAccMag-mean()
C72: fBodyAccMag-std()
C73: fBodyAccMag-meanFreq()
C74: fBodyBodyAccJerkMag-mean()
C75: fBodyBodyAccJerkMag-std()
C76: fBodyBodyAccJerkMag-meanFreq()
C77: fBodyBodyGyroMag-mean()
C78: fBodyBodyGyroMag-std()
C79: fBodyBodyGyroMag-meanFreq()
C80: fBodyBodyGyroJerkMag-mean()
C81: fBodyBodyGyroJerkMag-std()
C82: fBodyBodyGyroJerkMag-meanFreq()