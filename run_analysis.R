library(dplyr)

# 1. Merging the training and the test sets to create one data set.
##############################################################################################

#Getting the actual data
setwd("~/Documents/R/Coursera/Cleaning data/UCI HAR Dataset")
fileurl <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
filename <- 'ProjectData.zip'
if (!file.exists(filename)) {
        download.file(fileurl, filename, method="curl")
}  
if (!file.exists("UCI HAR Dataset")) { 
        unzip(filename) 
}

#Reading test data
test <- read.table('./test/X_test.txt')
activities_test <- read.table('./test/y_test.txt')
subject_test <- read.table('./test/subject_test.txt')

#Reading train data
train <- read.table('./train/X_train.txt')
activities_train <- read.table('./train/y_train.txt')
subject_train <- read.table('./train/subject_train.txt')

#Reading features
features <- read.table('features.txt')

#Reading activity labels
activity_labels <- read.table('activity_labels.txt')

#Merging
data_all <- rbind(train, test)

activities_all <- rbind(activities_train, activities_test)

subject_all <- rbind(subject_train, subject_test)


# 2. Extracting only the measurements on the mean and standard deviation for each measurement.
##############################################################################################
data_all <- data_all[, grep("-(mean|std)\\(\\)", features[, 2])]


# 3.Using descriptive activity names to name the activities in the data set 
##############################################################################################
activities_all[, 1] <- activity_labels[activities_all[, 1], 2]

colnames(activities_all) <- 'activity'


# 4. Appropriately labeling the data set with descriptive variable names.
##############################################################################################
colnames(subject_all) <- 'subject'

#Cleaning column names
features_names <- features[grep("-(mean|std)\\(\\)", features[, 2]), 2]
features_names <- gsub('-mean', 'Mean', features_names)
features_names <- gsub('-std', 'Std', features_names)
features_names <- gsub('[-()]', '', features_names)
colnames(data_all) <- features_names

#Merging everything into one final dataset
data_final <- cbind(subject_all, activities_all, data_all)

# 5. Creating a data set with the average of each variable for each activity and each subject.
##############################################################################################

#We'll use some functions from dplyr package
data_averages <- data_final %>% group_by(subject, activity) %>%
        summarise_all(funs(mean))

#Creating the final averages tidy dataset
write.table(data_averages, "tidydata.txt", row.names = FALSE, quote = FALSE) 
