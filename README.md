This repository countain the script to produce a tidy data set from the raw data taken from the Human Activity Recognition Using Smartphones Data Set that can be found here:
[Raw data set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

In order to produce a tidy dataset gathering the time average all the variables associated to the mean and standard deviation for each raw measurement of this raw dataset, a few steps are necessary and done by the script `run_analysis.R`. The script as to be run in the directory including also the data directory (the "UCI HAR Dataset" folder). 

The description of the raw data can be found either on at the above link or in the downloaded data directory. Here we describe information associated to the production of the tidy data sets.

The description of the all the variables and transformations from raw data can be found in the CodeBook.md file.

Finally, The script `run_analysis.R` that outputs the tidy dataset to the `tidydataset.txt`, requires no arguments and run the following steps:

### Read all the files needed to produced the requested tidy dataset :
The below files short descriptions are found from the raw dataset description here:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#

#### Read the training and test data sets, associating "y" as column name for the y_*.txt files
- 'UCI HAR Dataset/train/X_train.txt': Training set.
- 'UCI HAR Dataset/train/y_train.txt': Training labels.
- 'UCI HAR Dataset/test/X_test.txt': Test set.
- 'UCI HAR Dataset/test/y_test.txt': Test labels.

#### Read the features file to get the labels to further produce the variable names:
- 'UCI HAR Dataset/features.txt': List of all features.

#### Read the files including the subjects:
- 'UCI HAR Dataset/train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
- 'UCI HAR Dataset/test/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

#### Read the file associating the activity to the y value:
- 'UCI HAR Dataset/activity_labels.txt': Links the class labels with their activity name.

### Data combination:
Combining all data frame to build the full.data.frame containing all the information and data of interest
but before extracting the mean and standard deviation for each measurement, it labels/associates the variables names to the data sets columns to make manipulations clearer.
Steps are the following:

1. combine the test and train data subsets for x, y and subjects 
2. clean the labels names to create variable names matching the R identifiers conventions by removing parenthesis, and replacing commas and hyphens by points
3. add variable names to the merged x dataset 
4. subset x to extracts only the measurements on the mean and standard deviation for each measurement
5. combine all the dataframes: the  data subets, the activity code (y) and the corresponding subject
6. Uses descriptive activity names to name the activities in the y data set
7. remove the activity id column to clean the coming dataset of recurring information

### Tidy data set production:

8. Create a tidy data set with the average of each variable for each activity and each subject.
9. save the tidy dataset to tidydataset.txt using write.table() with row.name=FALSE 
