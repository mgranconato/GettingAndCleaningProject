CodeBook
=================

The data come from a subset of the the "UCI HAR Dataset""
[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

There are 180 observations of 68 variables.  
The variables are the mean by subject and activity of variables representing mean and standard deviation of signals captured from 
the accelerometer and gyroscope 3-axial of a Samsung S II and subsequent calculation.

Variable can be group in:
- Descriptive    
        - **subject**: a number between 1 to 30 representing the volunteer in the experiment   
        - **activity**: WALKING,WALKING_UPSTAIRS,WALKING_DOWNSTAIRS,SITTING,STANDING,LAYING  
        
- Time domain signal (number betwen -1,+1 ) (start with 't')  
        - **tBodyAcc-XYZ**: body acceleration signals  
        - **tGravityAcc-XYZ**: gravity acceleration signals  
        - **tBodyAccJerk-XYZ**: Jerk signals body linear acceleration  
        - **tBodyGyro-XYZ**: angular velocity  
        - **tBodyGyroJerk-XYZ**: Jerk signals angular velocity  
        - **tBodyAccMag**: magnitude of body acceleration signals     
        - **tGravityAccMag**: magnitude of gravity acceleration signals   
        - **tBodyAccJerkMag**: magnitude of Jerk signals body linear acceleration   
        - **tBodyGyroMag**: magnitude of angular velocity  
        - **tBodyGyroJerkMag**: magnitude of Jerk signals angular velocity  
        
- Frequency domain signal (number betwen -1,+1 ) (start with 'f')  
        - **fBodyAcc-XYZ**: body acceleration signals - Fast Fourier Transform (FFT)  
        - **fBodyAccJerk-XYZ**: Jerk signals body linear acceleration - Fast Fourier Transform (FFT)  
        - **fBodyGyro-XYZ**: angular velocity - Fast Fourier Transform (FFT)  
        - **fBodyAccMag**: magnitude of body acceleration signals - Fast Fourier Transform (FFT)  
        - **fBodyAccJerkMag**: magnitude of Jerk signals body linear acceleration  - Fast Fourier Transform (FFT)  
        - **fBodyGyroMag**: magnitude of angular velocity - Fast Fourier Transform (FFT)  
        - **fBodyGyroJerkMag**: magnitude of Jerk signals angular velocity - Fast Fourier Transform (FFT)   
        
For each Time and Frequency domain signal variable exists the mean and standard deviation  

Here the complete list of variables:
- ".std" = standard deviation  
- ".mean" = mean  
- ".X" or ".Y" or ".Z" = axis of the signal  

**about standard deviation**

tBodyAcc.std.X   
tBodyAcc.std.Y   
tBodyAcc.std.Z   
tGravityAcc.std.X   
tGravityAcc.std.Y   
tGravityAcc.std.Z   
tBodyAccJerk.std.X   
tBodyAccJerk.std.Y   
tBodyAccJerk.std.Z   
tBodyGyro.std.X   
tBodyGyro.std.Y   
tBodyGyro.std.Z   
tBodyGyroJerk.std.X   
tBodyGyroJerk.std.Y   
tBodyGyroJerk.std.Z   
tBodyAccMag.std   
tGravityAccMag.std   
tBodyAccJerkMag.std   
tBodyGyroMag.std   
tBodyGyroJerkMag.std   
fBodyAcc.std.X   
fBodyAcc.std.Y   
fBodyAcc.std.Z   
fBodyAccJerk.std.X   
fBodyAccJerk.std.Y   
fBodyAccJerk.std.Z   
fBodyGyro.std.X   
fBodyGyro.std.Y   
fBodyGyro.std.Z   
fBodyAccMag.std   
fBodyBodyAccJerkMag.std   
fBodyBodyGyroMag.std   
fBodyBodyGyroJerkMag.std   

**about Mean**  

tBodyAcc.mean.X   
tBodyAcc.mean.Y   
tBodyAcc.mean.Z   
tGravityAcc.mean.X   
tGravityAcc.mean.Y   
tGravityAcc.mean.Z   
tBodyAccJerk.mean.X   
tBodyAccJerk.mean.Y   
tBodyAccJerk.mean.Z   
tBodyGyro.mean.X   
tBodyGyro.mean.Y   
tBodyGyro.mean.Z   
tBodyGyroJerk.mean.X   
tBodyGyroJerk.mean.Y   
tBodyGyroJerk.mean.Z   
tBodyAccMag.mean   
tGravityAccMag.mean   
tBodyAccJerkMag.mean   
tBodyGyroMag.mean   
tBodyGyroJerkMag.mean   
fBodyAcc.mean.X   
fBodyAcc.mean.Y   
fBodyAcc.mean.Z   
fBodyAccJerk.mean.X   
fBodyAccJerk.mean.Y   
fBodyAccJerk.mean.Z   
fBodyGyro.mean.X   
fBodyGyro.mean.Y   
fBodyGyro.mean.Z   
fBodyAccMag.mean   
fBodyBodyAccJerkMag.mean   
fBodyBodyGyroMag.mean   
fBodyBodyGyroJerkMag.mean   


