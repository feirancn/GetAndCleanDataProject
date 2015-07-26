Readme.md

The aim of the run_analysis.R function is to combined the records of each observation to its corresponding volunteer(subject) who carried out the expericen and the activity label which subject perform and its all 561-feature vector collected from the smart phone. Then it picks out all the variables that contains the the mean and standard deviation for each measurement. 

The function readset is for following process:

The first step of the to read each raw file from test and train folder, including training label (y_train.txt and y_test.txt), subject (subject_train.txt and subject_test.txt) and variable set (x_train.txt and x_test.txt), full feature name(feature.txt) and descriptive activity label(activity_labels.txt)


Then it set the names for each measurement and extracts only the mean and stand deviation of each measurement.

The third step is to merge(cbind) three data set into one data set.

The fourt step is to merge the big data set with descriptive activity label, and delete the numbering label from the data set


With function readset reads both train and test data, merge the two data set together with rbind.

Melt the dataset with subject and activity as id and rest of them as measure variable.

And cast the data into mean of each variable for each subject and each activity.

Finally, print the tiny data set to result.txt file.

