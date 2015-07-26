Raw data:

The raw data is collected from a smartphone (Samsung Galaxy S II) when the a group of 30 volunteers(subject) performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING). It contains the same structure of data from train and test. For each observation, it includes the data as following:
1. subject from subject_train/subject_test.txt: the identifier of which subject carried out the experiment
2. activity that is performed
3. A 561-feature vector with time and frequency domain variables. 


Processed the data:
Dimension: 180x68

1. subject: integer, the identifier of which subject carried out the experiment. Range: [1,30]
2. activity: string, the activity that is performed. range {WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING}
3-68. average of measurements on the mean and standard deviation for each measurement num (range  [-1,1])

