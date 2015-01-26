#The specifics of the original dataset

The final dataset (average.txt) of this project was reached through manipulation of the Human Activity Recognition Using Smartphones Dataset
Version 1.0. 

The original dataset is the rsult of experiments that have been carried out with a group of 30 volunteers within an age bracket of 19-48 years (named as "subject" throughout the dataset). Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING - named as "activity" throughout the dataset) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ

tGravityAcc-XYZ

tBodyAccJerk-XYZ

tBodyGyro-XYZ

tBodyGyroJerk-XYZ

tBodyAccMag

tGravityAccMag

tBodyAccJerkMag

tBodyGyroMag

tBodyGyroJerkMag

fBodyAcc-XYZ

fBodyAccJerk-XYZ

fBodyGyro-XYZ

fBodyAccMag

fBodyAccJerkMag

fBodyGyroMag

fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value

std(): Standard deviation

mad(): Median absolute deviation

max(): Largest value in array

min(): Smallest value in array

sma(): Signal magnitude area

energy(): Energy measure. Sum of the squares divided by the number of values.

iqr(): Interquartile range 

entropy(): Signal entropy

arCoeff(): Autorregresion coefficients with Burg order equal to 4

correlation(): correlation coefficient between two signals

maxInds(): index of the frequency component with largest magnitude

meanFreq(): Weighted average of the frequency components to obtain a mean frequency

skewness(): skewness of the frequency domain signal

kurtosis(): kurtosis of the frequency domain signal

bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.

angle(): Angle between to vectors.

The original dataset and the original metadata is avalaible at:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

#The manipulated dataset

This part of the codebook gives information on the final variables.

The final data uses the same notations as the original dataset with respect to the name of the measurements (signals and the variables estimated from the signals).

From the large set of original features a subset was first created including from the original series of variables only the mean and the standard deviation of each signal, denoted by "mean()" and "std()" in the naming convention of each variable.

Later the dataset was aggregated, meaning the average of activity and each subject for all the variables respectively. 

(The readme.md file of this repositry repeats the steps of data manipulations in more details.)

The variables in the final dataset are:

"subject"
"activity"
"tBodyAcc-mean()-X"
tBodyAcc-mean()-Y"          
"tBodyAcc-mean()-Z"
"tGravityAcc-mean()-X"        
"tGravityAcc-mean()-Y"        
"tGravityAcc-mean()-Z"       
"tBodyAccJerk-mean()-X"       
"tBodyAccJerk-mean()-Y"       
"tBodyAccJerk-mean()-Z"       
"tBodyGyro-mean()-X"         
"tBodyGyro-mean()-Y"         
"tBodyGyro-mean()-Z"          
"tBodyGyroJerk-mean()-X"      
"tBodyGyroJerk-mean()-Y"     
"tBodyGyroJerk-mean()-Z"      
"tBodyAccMag-mean()"          
"tGravityAccMag-mean()"       
"tBodyAccJerkMag-mean()"     
"tBodyGyroMag-mean()"         
"tBodyGyroJerkMag-mean()"     
"fBodyAcc-mean()-X"           
"fBodyAcc-mean()-Y"          
"fBodyAcc-mean()-Z"           
"fBodyAccJerk-mean()-X"       
"fBodyAccJerk-mean()-Y"       
"fBodyAccJerk-mean()-Z"      
"fBodyGyro-mean()-X"          
"fBodyGyro-mean()-Y"          
"fBodyGyro-mean()-Z"          
"fBodyAccMag-mean()"         
"fBodyBodyAccJerkMag-mean()"  
"fBodyBodyGyroMag-mean()"     
"fBodyBodyGyroJerkMag-mean()" 
"tBodyAcc-std()-X"           
"tBodyAcc-std()-Y"            
"tBodyAcc-std()-Z"            
"tGravityAcc-std()-X"         
"tGravityAcc-std()-Y"        
"tGravityAcc-std()-Z"         
"tBodyAccJerk-std()-X"        
"tBodyAccJerk-std()-Y"        
"tBodyAccJerk-std()-Z"       
"tBodyGyro-std()-X"           
"tBodyGyro-std()-Y"           
"tBodyGyro-std()-Z"          
"tBodyGyroJerk-std()-X"      
"tBodyGyroJerk-std()-Y"       
"tBodyGyroJerk-std()-Z"       
"tBodyAccMag-std()"           
"tGravityAccMag-std()"       
"tBodyAccJerkMag-std()"      
"tBodyGyroMag-std()"          
"tBodyGyroJerkMag-std()"     
"fBodyAcc-std()-X"           
"fBodyAcc-std()-Y"            
"fBodyAcc-std()-Z"            
"fBodyAccJerk-std()-X"        
"fBodyAccJerk-std()-Y"       
"fBodyAccJerk-std()-Z"        
"fBodyGyro-std()-X"           
"fBodyGyro-std()-Y"          
"fBodyGyro-std()-Z"          
"fBodyAccMag-std()"           
"fBodyBodyAccJerkMag-std()"   
"fBodyBodyGyroMag-std()"      
"fBodyBodyGyroJerkMag-std()" 

