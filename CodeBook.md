<b>Code Book for the Run Analysis Function, Used to Analyze Samsung Wearable Computing Data</b>

<b>Description of original data source:</b>

The experiments for the Samsung data have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 

Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). 
The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

The features in the original data come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 


<b>Description of changes made to original data source:</b>

Variables for both "train" and "test" data sets have been consolidated to one data set

Variables for the ID of the volunteer ("subject_id") and the activity being performed ("activity") have been included in the data set with the numerical results

Variable names for the numerical results have been fixed in the following ways:

		1. Duplicate column names have been renamed

		2. Variable names have been edited to remove characters such as "-", "(", and ")"

		3. Incorrect variable names, such as variables where the description "Body" was accidentally duplicated, have been fixed

Only variables calculating the "mean" (mean value) or "std" (standard deviation) were included in the tidy data set. This does not include means of additional vectors obtained by averaging the signals in a signal window sample (since these are used on the separate angle() variable)

The tidy data set itself has changed the units of observation from the original data sets - instead of individual observations, observations are now grouped (averaged) by subject_id and activity


<b>The complete list of variables of each feature vector is available below:</b>

subject_id: ID of respondent (ranges from 1 to 30)

activity: activity that respondent is performing

tBodyAcc_mean_X: Mean x-value for the body acceleration time

tBodyAcc_mean_Y: Mean y-value for the body acceleration time

tBodyAcc_mean_Z: Mean z-value for the body acceleration time

tBodyAcc_std_X: Standard deviation of the x-value for the body acceleration time

tBodyAcc_std_Y: Standard deviation of the y-value for the body acceleration time

tBodyAcc_std_Z: Standard deviation of the z-value for the body acceleration time

tGravityAcc_mean_X: Mean x-value for the gravity acceleration time

tGravityAcc_mean_Y: Mean y-value for the gravity acceleration time

tGravityAcc_mean_Z: Mean z-value for the gravity acceleration time

tGravityAcc_std_X: Standard deviation of the x-value for the gravity acceleration time

tGravityAcc_std_Y: Standard deviation of the y-value for the gravity acceleration time

tGravityAcc_std_Z: Standard deviation of the z-value for the gravity acceleration time

tBodyAccJerk_mean_X: Mean x-value for the time of the body acceleration jerk signal

tBodyAccJerk_mean_Y: Mean y-value for the time of the body acceleration jerk signal

tBodyAccJerk_mean_Z: Mean z-value for the time of the body acceleration jerk signal

tBodyAccJerk_std_X: Standard deviation of the x-value for the time of the body acceleration jerk signal

tBodyAccJerk_std_Y: Standard deviation of the y-value for the time of the body acceleration jerk signal

tBodyAccJerk_std_Z: Standard deviation of the z-value for the time of the body acceleration jerk signal

tBodyGyro_mean_X: Mean x-value for the time of the body gyroscope measurement

tBodyGyro_mean_Y: Mean y-value for the time of the body gyroscope measurement

tBodyGyro_mean_Z: Mean z-value for the time of the body gyroscope measurement

tBodyGyro_std_X: Standard deviation of the x-value for the time of the body gyroscope measurement

tBodyGyro_std_Y: Standard deviation of the y-value for the time of the body gyroscope measurement

tBodyGyro_std_Z: Standard deviation of the z-value for the time of the body gyroscope measurement

tBodyGyroJerk_mean_X: Mean x-value for the time of the body gyroscope jerk signal

tBodyGyroJerk_mean_Y: Mean y-value for the time of the body gyroscope jerk signal

tBodyGyroJerk_mean_Z: Mean z-value for the time of the body gyroscope jerk signal

tBodyGyroJerk_std_X: Standard deviation of the x-value for the time of the body gyroscope jerk signal

tBodyGyroJerk_std_Y: Standard deviation of the y-value for the time of the body gyroscope jerk signal

tBodyGyroJerk_std_Z: Standard deviation of the z-value for the time of the body gyroscope jerk signal

tBodyAccMag_mean: Mean time of the body acceleration magnitude

tBodyAccMag_std: Standard deviation of the time of the body acceleration magnitude

tGravityAccMag_mean: Mean time of the gravity acceleration magnitude

tGravityAccMag_std: Standard deviation of the time of the gravity acceleration magnitude

tBodyAccJerkMag_mean: Mean time of the body acceleration jerk magnitude

tBodyAccJerkMag_std: Standard deviation of the time of the body acceleration jerk magnitude

tBodyGyroMag_mean: Mean time of the body gyroscope magnitude

tBodyGyroMag_std: Standard deviation of the time of the body gyroscope magnitude

tBodyGyroJerkMag_mean: Mean time of the body gyroscope jerk magnitude

tBodyGyroJerkMag_std: Standard deviation of the time of the body gyroscope jerk magnitude

fBodyAcc_mean_X: Mean x-value for the FFT of the body acceleration

fBodyAcc_mean_Y: Mean y-value for the FFT of the body acceleration

fBodyAcc_mean_Z: Mean z-value for the FFT of the body acceleration

fBodyAcc_std_X: Standard deviation of the x-value for the FFT of the body acceleration

fBodyAcc_std_Y: Standard deviation of the y-value for the FFT of the body acceleration

fBodyAcc_std_Z: Standard deviation of the z-value for the FFT of the body acceleration

fBodyAcc_meanFreq_X: Weighted average of the frequency for the x-value for the FFT body acceleration 

fBodyAcc_meanFreq_Y: Weighted average of the frequency for the y-value for the FFT body acceleration 

fBodyAcc_meanFreq_Z: Weighted average of the frequency for the z-value for the FFT body acceleration 

fBodyAccJerk_mean_X: Mean x-value for the FFT of the body acceleration jerk signal

fBodyAccJerk_mean_Y: Mean y-value for the FFT of the body acceleration jerk signal

fBodyAccJerk_mean_Z: Mean z-value for the FFT of the body acceleration jerk signal

fBodyAccJerk_std_X: Standard deviation of the x-value for the FFT of the body acceleration jerk signal

fBodyAccJerk_std_Y: Standard deviation of the y-value for the FFT of the body acceleration jerk signal

fBodyAccJerk_std_Z: Standard deviation of the z-value for the FFT of the body acceleration jerk signal

fBodyAccJerk_meanFreq_X: Weighted average of the frequency for the x-value for the FFT body acceleration jerk signal

fBodyAccJerk_meanFreq_Y: Weighted average of the frequency for the y-value for the FFT body acceleration jerk signal

fBodyAccJerk_meanFreq_Z: Weighted average of the frequency for the z-value for the FFT body acceleration jerk signal

fBodyGyro_mean_X: Mean x-value for the FFT of the body gyroscope measurement

fBodyGyro_mean_Y: Mean y-value for the FFT of the body gyroscope measurement

fBodyGyro_mean_Z: Mean z-value for the FFT of the body gyroscope measurement

fBodyGyro_std_X: Standard deviation of the x-value for the FFT of the body gyroscope measurement

fBodyGyro_std_Y: Standard deviation of the y-value for the FFT of the body gyroscope measurement

fBodyGyro_std_Z: Standard deviation of the z-value for the FFT of the body gyroscope measurement

fBodyGyro_meanFreq_X: Weighted average of the frequency for the x-value for the FFT body gyroscope measurement

fBodyGyro_meanFreq_Y: Weighted average of the frequency for the y-value for the FFT body gyroscope measurement

fBodyGyro_meanFreq_Z: Weighted average of the frequency for the z-value for the FFT body gyroscope measurement

fBodyAccMag_mean: Mean for the FFT of the body acceleration magnitude 

fBodyAccMag_std: Standard deviation for the FFT of the body acceleration magnitude 

fBodyAccMag_meanFreq: Weighted average of the frequency for the FFT body acceleration magnitude

fBodyAccJerkMag_mean: Mean for the FFT of the body acceleration jerk magnitude 

fBodyAccJerkMag_std: Standard deviation for the FFT of the body acceleration jerk magnitude 

fBodyAccJerkMag_meanFreq: Weighted average of the frequency for the FFT body acceleration jerk magnitude

fBodyGyroMag_mean: Mean for the FFT of the body gyroscope magnitude

fBodyGyroMag_std: Standard deviation for the FFT of the body gyroscope magnitude

fBodyGyroMag_meanFreq: Weighted average of the frequency for the FFT body gyroscope magnitude

fBodyGyroJerkMag_mean: Mean for the FFT of the body gyrscope jerk magnitude

fBodyGyroJerkMag_std: Standard deviation for the FFT of the body gyrscope jerk magnitude

fBodyGyroJerkMag_meanFreq: Weighted average of the frequency for the FFT body gyroscope jerk magnitude




Citations: Some descriptions taken from the Features Info file from the original Samsung data source

Data comes from the following site: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
