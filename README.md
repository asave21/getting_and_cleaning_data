Getting and Cleaning Data Assignment
=========================

This is a repo for the peer review assignment of Getting and Cleaning Data course on Coursera

This assignment requires us to convert a untidy seperate data into a tidy merged dataset.

The data can be found at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Description of data can be found http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

There in all 5 requirements in this assignment :
1) Merges the training and the test sets to create one data set.
2) Extracts only the measurements on the mean and standard deviation for each measurement. 
3) Uses descriptive activity names to name the activities in the data set
4) Appropriately labels the data set with descriptive activity names. 
5) Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

These 5 tasks are done in a non linear fashion

1a.

Both training and testing sets have the following 3 files,
i)Subject(named subj)
ii)X_train/test(named val)
iii) y_train/test(named act)

At the first part of first step 1, The three files of training and testing sets are combined

3.
Activity labels are given in the file activity_labels.txt .
This file is read and then using the merge command activity labels are matched to the numbers. After that a data frame of only the labels is made(named act_final). 

4.
In this the column names of val dataset are to be applied. The labels are given in the file named features.txt.This file is read in . 
Using the colnames function, the columns names are applied to val dataset.

1b. 
Finally, the three individually tidy datasets are combined to create on tidy dataset. 
This tidy dataset is written to tidy.txt

2.

Once the tidy dataset is available, it is very easy to fulfill this step using sapply

5.

Once the tidy dataset is available, it is very easy to fulfill this step using sapply



Ps.

A few extra things are done

1) Unrequired data frames are removed from the environment. There is no need to needlessly have them
2) The final dataset is ordered by the subject
