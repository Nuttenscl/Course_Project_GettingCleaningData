

## read all the files needed 
# read the training and test data sets, associating "y" as column name for the y_*.txt files 
x.test  <- read.table("test/X_test.txt")
x.train <- read.table("train/X_train.txt")
y.test  <- read.table("test/y_test.txt"  , col.names = c("y"))
y.train <- read.table("train/y_train.txt", col.names = c("y"))

# read the features file, and giving column names
features  <- read.table("features.txt",   col.names = c("id","feature"))

# read the files including the subjects, and giving column names
subject.train  <- read.table("train/subject_train.txt", col.names = c("subject"))
subject.test   <- read.table("test/subject_test.txt"  , col.names = c("subject"))

# read the file associating the activity to the y value
activity.label <- read.table("activity_labels.txt"    , col.names = c("id","activity"))


## Combining all data frame to build the full.data.frame containing all the information and data of interest
## Before extracting the mean and standard deviation for each measurement, I label/associate the variable 
## names to the data sets columns to make manipulations clearer (step 4 in the project description)

# 1: combine the test and train data sets  
x.test.and.train <- rbind(x.test, x.train) # merge x data sets
y.test.and.train <- rbind(y.test, y.train) # merge y data sets
subject.test.and.train <- rbind(subject.test, subject.train) # merge subject data sets

# 2: cleaning the labels names to create variable names matching the R identifiers conventions
# by removing parenthesis, and replacing commas and hyphens by points
features$feature <- sapply(features$feature, function(x) gsub("(-|,)", ".", gsub("\\(\\)", "", x)))
# add variable names to the merged x dataset 
colnames(x.test.and.train) <- features$feature

# 3: subset x to extracts only the measurements on the mean and standard deviation for each measurement
mean.and.std.subset<-x.test.and.train[c(grep("(mean|std)",names(x.test.and.train),value=T)) ]

# combine all the dataframes: the  data subets, the activity code (y) and the corresponding subject
full.data.frame <-cbind(mean.and.std.subset, y.test.and.train, subject.test.and.train )

# 4: Uses descriptive activity names to name the activities in the y data set
full.data.frame<-merge(full.data.frame, activity.label, by.x="y", by.y="id")
# remove the activity id column
full.data.frame<-subset(full.data.frame, select = -c(y))


# 5: tidy data set with the average of each variable for each activity and each subject.  
tidy.dataset<-aggregate(. ~ activity+subject, data=full.data.frame, FUN=mean)
# save the tidy.dataset to tidydataset.txt
write.table(tidy.dataset,"tidydataset.txt",row.name=F)	
