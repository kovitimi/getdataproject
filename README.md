# getdataproject

The run_analysis.R script creates two tidy datasets (total,average) from the Human Activity Recognition Using Smartphones Data Set.

The original dataset with descriptions is available at the website:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The script does read the Samsung data from the working directory provided that the individual txt files (features.txt, subject_test.txt, subject_train.txt, X_text.txt, X_train.txt, y_test.txt, y_train.txt) are available in the working directory.

The script then in steps:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. (I have included from the orginal set of measurements only those that had a variable name finishing with "mean()" or "std()". Other occurances within the name e.g "Mean" were not included in the selection.)
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. (The outcome is the "total" dataset.)
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. (The outcome is the "average" dataset.)

The getdataproject repository includes also a Codebook with further description of the variables. 
