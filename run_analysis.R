library(dplyr)

#reading in relevant data files from folder on computer

testset = read.table("test/X_test.txt")
testactivity = read.table("test/y_test.txt")
testIDs = read.table("test/subject_test.txt")

trainset = read.table("train/X_train.txt")
trainactivity = read.table("train/y_train.txt")
trainIDs = read.table("train/subject_train.txt")

features = read.table("features.txt")

# Step 1: Merge training and test sets
fulldata = rbind(trainset, testset)
fullactivity = rbind(trainactivity, testactivity)
fullIDs = rbind(trainIDs, testIDs)

# Step 2: Extract mean and std columns
mean_std_indices = grep("mean\\(\\)|std\\(\\)", features$V2)
meanstddata = fulldata[, mean_std_indices]

# Step 3 & 4: Add descriptive activity names and variable names
meanstddata$activity = factor(fullactivity$V1, 
                               levels = activity_labels$V1, 
                               labels = activity_labels$V2)
meanstddata$subjectID = fullIDs$V1

# Assign column names
colnames(meanstddata) = c(features$V2[mean_std_indices], "activity", "subjectID")

# Step 5: Create summary dataset
summarydataset = meanstddata %>%
  group_by(activity, subjectID) %>%
  summarise_all(mean)

# Step 6: save tidy dataset to text file
write.table(summarydataset, file = "tidy_data.txt", row.names = FALSE)
