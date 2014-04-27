
#Merges the training and the test sets to create one data set Partial
subj <- rbind(read.table("~/UCI_HAR_Dataset/test/subject_test.txt",header = FALSE), read.table("~/UCI_HAR_Dataset/train/subject_train.txt",header = FALSE))
val <- rbind(read.table("~/UCI_HAR_Dataset/test/X_test.txt",header = FALSE), read.table("~/UCI_HAR_Dataset/train/X_train.txt",header = FALSE))
act <- rbind(read.table("~/UCI_HAR_Dataset/test/y_test.txt",header = FALSE), read.table("~/UCI_HAR_Dataset/train/y_train.txt",header = FALSE))
colnames(subj)<- c("Subject")
#final_data <- cbind(subj,act,val)
#Uses descriptive activity names to name the activities in the data set
act_labels <- read.table("~/UCI_HAR_Dataset/activity_labels.txt", header = FALSE)
act<- merge(act,act_labels)
col <- c("Activity_ID", "Activity_Name")
colnames(act)<-col
rm(col)
act_final <- data.frame(act$Activity_Name)
rm(act)
rm(act_labels)
#Appropriately labels the data set with descriptive activity names. 
val_labels <- read.table("~/UCI_HAR_Dataset/features.txt", header = FALSE)
colnames(val) <- val_labels$V2
rm(val_labels)
#Merges the training and the test sets to create one data set Final Merge
final_data <- cbind(subj,act_final,val)
rm(subj)
rm(act_final)
#Extracts only the measurements on the mean and standard deviation for each measurement. 
final_data_mean<-sapply(val,mean,na.rm=TRUE)
final_data_sd<-sapply(val_data,sd,na.rm=TRUE)
rm(val)
#Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
