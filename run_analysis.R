require(data.table)

# Load and merge train and test data
trainTestData = rbind(read.table("train/X_train.txt"), 
                      read.table("test/X_test.txt"))

# Reduce trainTestData to only wanted features (mean and std variables)                
features = read.table("features.txt")
wanted.features = sort(c(grep(pattern="mean", x=features[,2]),
                         grep(pattern="std", x=features[,2])))
trainTestData = trainTestData[,wanted.features]

# Make Syntactically Valid Names
names(trainTestData) = make.names(names=features[wanted.features,2], unique=T)

# Add subject identifier to the dataset
trainTestData$subject = c(as.numeric(read.table("train//subject_train.txt")[,1]),
                          as.numeric(read.table("test//subject_test.txt")[,1]))

# Uses descriptive activity names to name the activities in the data set
trainTestData$activity = c(as.numeric(read.table("train//y_train.txt")[,1]),
                           as.numeric(read.table("test//y_test.txt")[,1]))
activityLabels = read.table("activity_labels.txt")
trainTestData = merge(trainTestData, activityLabels,
                      by.x="activity", by.y='V1')[,-1]
names(trainTestData)[ncol(trainTestData)] = "activity"
write.table(x=trainTestData, file="tidy_data_set_1.txt")


# Create a second, independent tidy data set with the average of each variable
# for each activity and each subject
trainTestDataSumarise = data.table(trainTestData)
setkey(trainTestDataSumarise, subject, activity)
trainTestDataSumarise = trainTestDataSumarise[, lapply(.SD, mean), by=list(subject,activity)]
write.table(x=trainTestDataSumarise, file="tidy_data_set_2.txt")


#### Reading data
# data = read.table("tidy_data_set_2.txt")
# dim(data)
# head(data)

