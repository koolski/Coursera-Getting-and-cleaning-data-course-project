# Getting and Cleaning Data Course Project

This project is focused on transforming raw data into a tidy dataset. The origial dataset and info can be found here:
[Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

The code in `run_analysis.R` does all the transformations, while `CodeBook.md` describes all the variables one can find in the final dataset. `tidydata.txt` is clean dataset ready for further analysis.

## The following steps were performed during pre-processing:
- training and testing data merged into one dataset
- columns with mean and standard deviation extracted from dataset
- activity labels matched with theirs descriptions
- the dataset columns renamed and the names cleaned from unwanted symbols
- new dataset containing average measures for each subject and activity was created
