#download data
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "dataset.zip")
unzip("dataset.zip")

library(dplyr)

# read in activity labels and change names of columns
activity_labels  <- read.table("UCI HAR Dataset/activity_labels.txt")
names(activity_labels) <- c("activity_id", "activity")

# read in feature lables and change names of columns
features_labels  <- read.table("UCI HAR Dataset/features.txt")
names(features_labels) <- c("feature_id", "feature")
# only mean or standard deviation 
good_features <- features_labels[grepl("mean|std", features_labels$feature, ignore.case = TRUE), ] 


#getting test data
test_subject <- read.table("UCI HAR Dataset/test/subject_test.txt")
names(test_subject) <- c("subject")
test_activity <- read.table("UCI HAR Dataset/test/y_test.txt")
names(test_activity) <- c("activity")
test_features <- read.table("UCI HAR Dataset/test/X_test.txt")
good_test_features <- test_features[, good_features$feature_id]
names(good_test_features) <- good_features$feature


#getting training data
training_subject <- read.table("UCI HAR Dataset/train/subject_train.txt")
names(training_subject) <- c("subject")
training_activity <- read.table("UCI HAR Dataset/train/y_train.txt")
names(training_activity) <- c("activity")
training_features <- read.table("UCI HAR Dataset/train/X_train.txt")
