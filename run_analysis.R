#download data
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "dataset.zip")
unzip("dataset.zip")

library(dplyr)
library(plyr)

# read in activity labels and change names of columns
activity_labels  <- read.table("UCI HAR Dataset/activity_labels.txt")
names(activity_labels) <- c("activity_id", "activity")

# read in feature lables and change names of columns
features_labels  <- read.table("UCI HAR Dataset/features.txt")
names(features_labels) <- c("feature_id", "feature")
# only mean or standard deviation 
good_features <- features_labels[grepl("mean|std", features_labels$feature, ignore.case = TRUE), ] 


#getting test subject data, label approriately, and conver to factor
test_subject <- read.table("UCI HAR Dataset/test/subject_test.txt")
names(test_subject) <- c("subject")
test_subject$subject <- as.factor(test_subject$subject)

#join the descriptive names of activites with the activity ids for test set
test_activity_ids <- read.table("UCI HAR Dataset/test/y_test.txt")
names(test_activity_ids) <- c("activity_id")
test_activity <- full_join(test_activity_ids, activity_labels, by="activity_id")

# get the testing features
test_features <- read.table("UCI HAR Dataset/test/X_test.txt")
# get only the mean and std deviation training features
good_test_features <- test_features[, good_features$feature_id]
# apply descriptve names
names(good_test_features) <- good_features$feature

#create combined testing data
testing <- cbind(test_subject, good_test_features, test_activity$activity)

#getting training subject data, label approriately, and conver to factor
training_subject <- read.table("UCI HAR Dataset/train/subject_train.txt")
names(training_subject) <- c("subject")
training_subject$subject <- as.factor(training_subject$subject)

#join the descriptive names of activites with the activity ids for training set
training_activity_ids <- read.table("UCI HAR Dataset/train/y_train.txt")
names(training_activity_ids) <- c("activity_id")
training_activity <- full_join(training_activity_ids, activity_labels, by="activity_id")

# get the training features
training_features <- read.table("UCI HAR Dataset/train/X_train.txt")
# get only the mean and std deviation training features
good_training_features <- training_features[, good_features$feature_id]
# apply descriptve names
names(good_training_features) <- good_features$feature
# create combined training data
training <- cbind(training_subject, good_training_features, training_activity$activity)


# combine training and testing
combined <- rbind(testing, training)
ordered <- combined[order(combined$subject),]
