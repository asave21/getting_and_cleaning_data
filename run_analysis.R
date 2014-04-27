
#Merges the training and the test sets to create one data set Part 1
subj <- rbind(read.table("~/UCI_HAR_Dataset/test/subject_test.txt",header = FALSE), read.table("~/UCI_HAR_Dataset/train/subject_train.txt",header = FALSE))
val <- rbind(read.table("~/UCI_HAR_Dataset/test/X_test.txt",header = FALSE), read.table("~/UCI_HAR_Dataset/train/X_train.txt",header = FALSE))
act <- rbind(read.table("~/UCI_HAR_Dataset/test/y_test.txt",header = FALSE), read.table("~/UCI_HAR_Dataset/train/y_train.txt",header = FALSE))
#final_data <- cbind(subj,act,val)
#Uses descriptive activity names to name the activities in the data set
act_labels <- read.table("~/UCI_HAR_Dataset/activity_labels.txt", header = FALSE)
act<- merge(act,act_labels)
col <- c("Activity_ID", "Activity_Name")
colnames(act)<-col

#Extracts only the measurements on the mean and standard deviation for each measurement. 
#Uses descriptive activity names to name the activities in the data set
#Appropriately labels the data set with descriptive activity names. 
#Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
