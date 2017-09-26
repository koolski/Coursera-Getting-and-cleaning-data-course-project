# Code Book
This codebook gives description on pre-processing steps and variables in `tidydata.txt`.

## The following steps were performed during pre-processing:
- training and testing data merged into one dataset
- columns with mean and standard deviation extracted from dataset
- activity labels matched with their description
- the dataset columns renamed and the names cleaned from unwanted symbols
- new dataset containing average measures for each subject and activity was created

## Description of the final dataset
- `subject` - id of a person who participated in the experiement. Integer ranging from `1` to `30`
- `activity` - type of activity performed by the person. Factor with levels `LAYING`, `SITTING`, `STANDING`, `WALKING`, `WALKING_DOWNSTAIRS`, `WALKING UPSTAIRS`

Other 66 numeric columns present measurements that were taken by accelerometer and gyroscope during the experiment:
- `tBodyAccMeanX`
- `tBodyAccMeanY`
- `tBodyAccMeanZ`
- `tBodyAccStdX`
- `tBodyAccStdY`
- `tBodyAccStdZ`
- `tGravityAccMeanX`
- `tGravityAccMeanY`
- `tGravityAccMeanZ`
- `tGravityAccStdX`
- `tGravityAccStdY`
- `tGravityAccStdZ`
- `tBodyAccJerkMeanX`
- `tBodyAccJerkMeanY`
- `tBodyAccJerkMeanZ`
- `tBodyAccJerkStdX`
- `tBodyAccJerkStdY`
- `tBodyAccJerkStdZ`
- `tBodyGyroMeanX`
- `tBodyGyroMeanY`
- `tBodyGyroMeanZ`
- `tBodyGyroStdX`
- `tBodyGyroStdY`
- `tBodyGyroStdZ`
- `tBodyGyroJerkMeanX`
- `tBodyGyroJerkMeanY`
- `tBodyGyroJerkMeanZ`
- `tBodyGyroJerkStdX`
- `tBodyGyroJerkStdY`
- `tBodyGyroJerkStdZ`
- `tBodyAccMagMean`
- `tBodyAccMagStd`
- `tGravityAccMagMean`
- `tGravityAccMagStd`
- `tBodyAccJerkMagMean`
- `tBodyAccJerkMagStd`
- `tBodyGyroMagMean`
- `tBodyGyroMagStd`
- `tBodyGyroJerkMagMean`
- `tBodyGyroJerkMagStd`
- `fBodyAccMeanX`
- `fBodyAccMeanY`
- `fBodyAccMeanZ`
- `fBodyAccStdX`
- `fBodyAccStdY`
- `fBodyAccStdZ`
- `fBodyAccJerkMeanX`
- `fBodyAccJerkMeanY`
- `fBodyAccJerkMeanZ`
- `fBodyAccJerkStdX`
- `fBodyAccJerkStdY`
- `fBodyAccJerkStdZ`
- `fBodyGyroMeanX`
- `fBodyGyroMeanY`
- `fBodyGyroMeanZ`
- `fBodyGyroStdX`
- `fBodyGyroStdY`
- `fBodyGyroStdZ`
- `fBodyAccMagMean`
- `fBodyAccMagStd`
- `fBodyBodyAccJerkMagMean`
- `fBodyBodyAccJerkMagStd`
- `fBodyBodyGyroMagMean`
- `fBodyBodyGyroMagStd`
- `fBodyBodyGyroJerkMagMean`
- `fBodyBodyGyroJerkMagStd`

