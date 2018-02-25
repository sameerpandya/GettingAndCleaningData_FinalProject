# Code Book


This is the code book for the **mean_data_set.txt** file. This file is the resulting file from the run_analysi.R script.
For more information on the project assignment please refer to the README.md of this repo.

## Overview of mean_data_set.txt
This file is the mean of each feature(or variable) for each activity and each subject. Therefore each row represents the
a subject and their activity. The columns to the rows include the subject and activity values, and the mean of each feature.
There are 30 subjects, with 6 activities each, thus there are 180 rows (181 with the additional header). There are 86 
variables of which we are concerned, plus subject and activity makes 88 variables in total.

## List of variables in mean_data_set.txt
* "subject" - ID of the subject of the experiment. This is an integer that ranges from [1,30] inclusive. In R it is 
                useful to cast this to a factor.
* "activity" - A descriptive indicator of the activity that the subject was performing while the corresponding 
                were taken. This is a string that can be one of the following "LAYING", "SITTING", "STANDING", "WALKING"
                , "WALKING_DOWNSTAIRS", or "WALKING_UPSTAIRS"
* "tBodyAcc-mean()-X" - The mean of the mean Time-domain signal for body acceleration in the X direction. This is a numeric 
                        value normalized within range [-1,1].
* "tBodyAcc-mean()-Y" - The mean of the mean Time-domain signal for body acceleration in the Y direction. This is a numeric 
                        value normalized within range [-1,1].
* "tBodyAcc-mean()-Z" - The mean of the mean Time-domain signal for body acceleration in the Z direction. This is a numeric 
                        value normalized within range [-1,1].                   
* "tBodyAcc-std()-X"  - The mean of the standard deviation Time-domain signal for body acceleration in the X direction. This is a numeric 
                        value normalized within range [-1,1].                   
* "tBodyAcc-std()-Y"  - The mean of the standard deviation Time-domain signal for body acceleration in the Y direction. This is a numeric 
                        value normalized within range [-1,1].                   
* "tBodyAcc-std()-Z"  - The mean of the standard deviation Time-domain signal for body acceleration in the Z direction. This is a numeric 
                        value normalized within range [-1,1].                  
* "tGravityAcc-mean()-X" - The mean of the mean Time-domain signal for gravitational acceleration in the X direction. This is a numeric 
                        value normalized within range [-1,1].
* "tGravityAcc-mean()-Y" - The mean of the mean Time-domain signal for gravitational acceleration in the Y direction. This is a numeric 
                        value normalized within range [-1,1].                
* "tGravityAcc-mean()-Z" - The mean of the mean Time-domain signal for gravitational acceleration in the Z direction. This is a numeric 
                        value normalized within range [-1,1].                
* "tGravityAcc-std()-X" - The mean of the standard deviation Time-domain signal for gravity acceleration in the X direction. This is a numeric 
                        value normalized within range [-1,1].                 
* "tGravityAcc-std()-Y" - The mean of the standard deviation Time-domain signal for gravity acceleration in the Y direction. This is a numeric 
                        value normalized within range [-1,1].                 
* "tGravityAcc-std()-Z" - The mean of the standard deviation Time-domain signal for gravity acceleration in the Z direction. This is a numeric 
                        value normalized within range [-1,1].                 
* "tBodyAccJerk-mean()-X" - The mean of the mean Time-domain jerk signal for body acceleration  in the X direction. This is a numeric 
                        value normalized within range [-1,1].               
* "tBodyAccJerk-mean()-Y" - The mean of the mean Time-domain jerk signal for body acceleration  in the Y direction. This is a numeric 
                        value normalized within range [-1,1].              
* "tBodyAccJerk-mean()-Z" - The mean of the mean Time-domain jerk signal for body acceleration  in the Z direction. This is a numeric 
                        value normalized within range [-1,1].               
* "tBodyAccJerk-std()-X" - The mean of the standard deviation Time-domain jerk signal for body acceleration  in the X direction. This is a numeric 
                        value normalized within range [-1,1].                
* "tBodyAccJerk-std()-Y" - The mean of the standard deviation Time-domain jerk signal for body acceleration  in the Y direction. This is a numeric 
                        value normalized within range [-1,1].                
* "tBodyAccJerk-std()-Z" - The mean of the standard deviation Time-domain jerk signal for body acceleration in the Z direction. This is a numeric 
                        value normalized within range [-1,1].               
* "tBodyGyro-mean()-X" - The mean of the mean Time-domain gyroscope signal for body in the X direction. This is a numeric 
                        value normalized within range [-1,1].                   
* "tBodyGyro-mean()-Y" - The mean of the mean Time-domain gyroscope signal for body in the Y direction. This is a numeric 
                        value normalized within range [-1,1].                  
* "tBodyGyro-mean()-Z" - The mean of the mean dTime-domain gyroscope signal for body in the Z direction. This is a numeric 
                        value normalized within range [-1,1].                  
* "tBodyGyro-std()-X" - The mean of the standard deviation Time-domain gyroscope signal for body  in the X direction. This is a numeric 
                        value normalized within range [-1,1].                  
* "tBodyGyro-std()-Y" - The mean of the standard deviation Time-domain gyroscope signal for body  in the Y direction. This is a numeric 
                        value normalized within range [-1,1].                   
* "tBodyGyro-std()-Z" - The mean of the standard deviation Time-domain gyroscope signal for body  in the Z direction. This is a numeric 
                        value normalized within range [-1,1].                   
* "tBodyGyroJerk-mean()-X" - The mean of the mean Time-domain gyroscope jerk signal for body  in the X direction. This is a numeric 
                        value normalized within range [-1,1].               
* "tBodyGyroJerk-mean()-Y" - The mean of the mean Time-domain gyroscope jerk signal for body  in the Y direction. This is a numeric 
                        value normalized within range [-1,1].             

* "tBodyGyroJerk-mean()-Z" - The mean of the mean Time-domain gyroscope jerk signal for body  in the Z direction. This is a numeric 
                        value normalized within range [-1,1].              
* "tBodyGyroJerk-std()-X" - The mean of the standard deviation Time-domain gyroscope jerk signal for body  in the X direction. This is a numeric 
                        value normalized within range [-1,1].               
* "tBodyGyroJerk-std()-Y" - The mean of the standard deviation Time-domain gyroscope jerk signal for body  in the Y direction. This is a numeric 
                        value normalized within range [-1,1].               
* "tBodyGyroJerk-std()-Z" - The mean of the standard deviation Time-domain gyroscope jerk signal for body  in the Z direction. This is a numeric 
                        value normalized within range [-1,1].              

* "tBodyAccMag-mean()" - The mean of the mean Time-domain  signal for body acceleration magnitude. This is a numeric 
                        value normalized within range [-1,1].                  
* "tBodyAccMag-std()"  - The mean of the mean Time-domain  signal for body acceleration magnitude. This is a numeric 
                        value normalized within range [-1,1].                 
* "tGravityAccMag-mean()" - The mean of the mean Time-domain signal for gravity acceleration magnitude. This is a numeric value normalized within range [-1, 1].           
* "tGravityAccMag-std()" - The mean of the standard deviation Time-domain signal for gravity acceleration magnitude. This is a numeric value normalized within range [-1, 1].               
* "tBodyAccJerkMag-mean()" - The mean of the mean Time-domain jerk signal for body acceleration magnitude. This is a numeric value normalized within range [-1, 1].              
* "tBodyAccJerkMag-std()" - The mean of the standard deviation Time-domain jerk signal for body acceleration magnitude. This is a numeric value normalized within range [-1, 1].               
* "tBodyGyroMag-mean()" - The mean of the mean Time-domain magnitude for body gyroscope signal. This is a numeric value normalized within range [-1, 1]. 
* "tBodyGyroMag-std()" - The mean of the standard deviation Time-domain magnitude for body gyroscope signal. This is a numeric value normalized within range [-1, 1].                  
* "tBodyGyroJerkMag-mean()" - The mean of the mean magnitude of the Time-domain gyroscope jerk signal magnitude. This is a numeric value normalized within range [-1, 1].             
* "tBodyGyroJerkMag-std()" - The mean of the standard deviation magnitude of the Time-domain gyroscope jerk signal magnitude. This is a numeric value normalized within range [-1, 1].              
* "fBodyAcc-mean()-X" - The mean of the mean Frequency-domain signal for body acceleration in the X direction. This is a numeric 
                        value normalized within range [-1,1].                   
* "fBodyAcc-mean()-Y" - The mean of the mean Frequency-domain signal for body acceleration in the Y direction. This is a numeric 
                        value normalized within range [-1,1].                   
* "fBodyAcc-mean()-Z" - The mean of the mean Frequency-domain signal for body acceleration in the Z direction. This is a numeric 
                        value normalized within range [-1,1].                    
* "fBodyAcc-std()-X" - The mean of the standard deviation Frequency-domain signal for body acceleration in the X direction. This is a numeric 
                        value normalized within range [-1,1].                    
* "fBodyAcc-std()-Y" - The mean of the standard deviation Frequency-domain signal for body acceleration in the Y direction. This is a numeric 
                        value normalized within range [-1,1].                    
* "fBodyAcc-std()-Z" - The mean of the standard deviation Frequency-domain signal for body acceleration in the Z direction. This is a numeric 
                        value normalized within range [-1,1].                   
* "fBodyAcc-meanFreq()-X" - The mean of the mean frequency Frequency-domain signal for body acceleration in the X direction. This is a numeric 
                        value normalized within range [-1,1].               
* "fBodyAcc-meanFreq()-Y" - The mean of the mean frequency Frequency-domain signal for body acceleration in the Y direction. This is a numeric 
                        value normalized within range [-1,1].               
* "fBodyAcc-meanFreq()-Z" - The mean of the mean frequency Frequency-domain signal for body acceleration in the Z direction. This is a numeric 
                        value normalized within range [-1,1].
                
                
* "fBodyAccJerk-mean()-X" - The mean of the mean  Frequency-domain jerk signal for body acceleration in the X direction. This is a numeric 
                        value normalized within range [-1,1].              
* "fBodyAccJerk-mean()-Y" - The mean of the mean Frequency-domain  jerk signal for body acceleration in the Y direction. This is a numeric 
                        value normalized within range [-1,1].               
* "fBodyAccJerk-mean()-Z" - The mean of the mean  Frequency-domain jerk signal for body acceleration in the Z direction. This is a numeric 
                        value normalized within range [-1,1].
                
* "fBodyAccJerk-std()-X" - The mean of the standard deviation Frequency-domain jerk signal for body acceleration in the X direction. This is a numeric 
                        value normalized within range [-1,1].                
* "fBodyAccJerk-std()-Y" - The mean of the standard deviation Frequency-domain jerk signal for body acceleration in the Y direction. This is a numeric 
                        value normalized within range [-1,1].               
* "fBodyAccJerk-std()-Z" - The mean of the standard deviation Frequency-domain jerk signal for body acceleration in the Z direction. This is a numeric 
                        value normalized within range [-1,1].
                 
* "fBodyAccJerk-meanFreq()-X" - The mean of the mean frequency Frequency-domain jerk signal for body acceleration in the X direction. This is a numeric 
                        value normalized within range [-1,1].            
* "fBodyAccJerk-meanFreq()-Y" - The mean of the mean frequency Frequency-domain jerk signal for body acceleration in the Y direction. This is a numeric 
                        value normalized within range [-1,1].           
* "fBodyAccJerk-meanFreq()-Z" - The mean of the mean frequency Frequency-domain jerk signal for body acceleration in the Z direction. This is a numeric 
                        value normalized within range [-1,1].
          
* "fBodyGyro-mean()-X" - The mean of the mean Frequency-domain signal for body gyroscope in the X direction. This is a numeric 
                        value normalized within range [-1,1].                  
* "fBodyGyro-mean()-Y" - The mean of the mean Frequency-domain signal for body gyroscope in the Y direction. This is a numeric 
                        value normalized within range [-1,1].                  
* "fBodyGyro-mean()-Z" - The mean of the mean Frequency-domain signal for body gyroscope in the Z direction. This is a numeric 
                        value normalized within range [-1,1].
                   
* "fBodyGyro-std()-X"  - The mean of the standard deviation Frequency-domain signal for body gyroscope in the X direction. This is a numeric 
                        value normalized within range [-1,1].                 
* "fBodyGyro-std()-Y"  - The mean of the standard deviation Frequency-domain signal for body gyroscope in the Y direction. This is a numeric 
                        value normalized within range [-1,1].                    
* "fBodyGyro-std()-Z"  - The mean of the standard deviation Frequency-domain signal for body gyroscope in the Z direction. This is a numeric 
                        value normalized within range [-1,1].
                    
* "fBodyGyro-meanFreq()-X" - The mean of the mean frequency Frequency-domain signal for body gyroscope in the X direction. This is a numeric 
                        value normalized within range [-1,1].              
* "fBodyGyro-meanFreq()-Y" - The mean of the mean frequency Frequency-domain signal for body gyroscope in the Y direction. This is a numeric 
                        value normalized within range [-1,1].              
* "fBodyGyro-meanFreq()-Z" - The mean of the mean frequency Frequency-domain signal for body gyroscope in the Z direction. This is a numeric 
                        value normalized within range [-1,1].
               
* "fBodyAccMag-mean()" - The mean of the mean frequency Frequency-domain signal for body acceleration magnitude. This is a numeric 
                        value normalized within range [-1,1].                  
* "fBodyAccMag-std()" - The mean of the standard deviation Frequency-domain signal for body acceleration magnitude. This is a numeric 
                        value normalized within range [-1,1].                   
* "fBodyAccMag-meanFreq()" - The mean of the mean Frequency-domain signal for body acceleration magnitude. This is a numeric 
                        value normalized within range [-1,1].             

* "fBodyBodyAccJerkMag-mean()" - The mean of the mean Frequency-domain signal for body acceleration magnitude due to jerk . This is a numeric 
                        value normalized within range [-1,1].          
* "fBodyBodyAccJerkMag-std()" - The mean of the standard deviation Frequency-domain signal for body acceleration magnitude due to jerk. This is a numeric 
                        value normalized within range [-1,1].           
* "fBodyBodyAccJerkMag-meanFreq()" - The mean of the mean frequency Frequency-domain signal for body acceleration magnitude due to jerk. This is a numeric 
                        value normalized within range [-1,1].
      
* "fBodyBodyGyroMag-mean()" - The mean of the mean Frequency-domain signal for body gyroscope magnitude. This is a numeric 
                        value normalized within range [-1,1].            
* "fBodyBodyGyroMag-std()" - The mean of the standard deviation Frequency-domain signal for body gyroscope magnitude. This is a numeric 
                        value normalized within range [-1,1].              
* "fBodyBodyGyroMag-meanFreq()" - The mean of the mean frequency Frequency-domain signal for body gyroscope magnitude. This is a numeric 
                        value normalized within range [-1,1].
          
* "fBodyBodyGyroJerkMag-mean()" - The mean of the mean frequency Frequency-domain signal for body gyroscope magnitude due to jerk. This is a numeric 
                        value normalized within range [-1,1].         
* "fBodyBodyGyroJerkMag-std()" - The mean of the mean frequency Frequency-domain signal for body gyroscope magnitude due to jerk. This is a numeric 
                        value normalized within range [-1,1].         

* "fBodyBodyGyroJerkMag-meanFreq()"      
* "angle(tBodyAccMean,gravity)" - Angle between tBodyAccMean and gravity vectors. This is a numeric value normalized within range [-1,1].         
* "angle(tBodyAccJerkMean),gravityMean)" - Angle between tBodyAccJerkMean and mean gravity vectors. This is a numeric value normalized within range [-1,1]. 
* "angle(tBodyGyroMean,gravityMean)" - Angle between tBodyGyroMean and mean gravity vectors. This is a numeric value normalized within range [-1,1].   
* "angle(tBodyGyroJerkMean,gravityMean)" - Angle between tBodyGyroJerkMean and mean gravity vectors. This is a numeric value normalized within range [-1,1].
* "angle(X,gravityMean)" - Angle between X and mean gravity vectors. This is a numeric value normalized within range [-1,1].                
* "angle(Y,gravityMean)" - Angle between Y and mean gravity vectors. This is a numeric value normalized within range [-1,1].                
* "angle(Z,gravityMean)" - Angle between Z and mean gravity vectors. This is a numeric value normalized within range [-1,1].



##Appendix
###Naming convention of the features
The following is the text from the features_info.txt file from the original data set. It explains the naming convention 
for the features.

---- features_info.txt -----

Feature Selection 

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
* mad(): Median absolute deviation 
* max(): Largest value in array
* min(): Smallest value in array
* sma(): Signal magnitude area
* energy(): Energy measure. Sum of the squares divided by the number of values. 
* iqr(): Interquartile range 
* entropy(): Signal entropy
* arCoeff(): Autorregresion coefficients with Burg order equal to 4
* correlation(): correlation coefficient between two signals
* maxInds(): index of the frequency component with largest magnitude
* meanFreq(): Weighted average of the frequency components to obtain a mean frequency
* skewness(): skewness of the frequency domain signal 
* kurtosis(): kurtosis of the frequency domain signal 
* bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
* angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

* gravityMean
* tBodyAccMean
* tBodyAccJerkMean
* tBodyGyroMean
* tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'