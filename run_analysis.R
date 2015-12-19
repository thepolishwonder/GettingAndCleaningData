library(dplyr)
## read in the training data
traindata<- read.table("./train/X_train.txt")
traindata_y <- read.table("./train/y_train.txt")
subjecttrain <- read.table("./train/subject_train.txt")

## read in the test data
testdata<- read.table("./test/X_test.txt")
testdata_y <- read.table("./test/y_test.txt")
subjecttest <- read.table("./test/subject_test.txt")

## read in the lookup data
features<-read.table("features.txt")
activities<-read.table("activity_labels.txt")

#combine test and training observation data
bothdata<- rbind(testdata, traindata) 

#add in the column names to the observation data
colnames(bothdata)<-features$V2

# combine the person and activity training and test data
bothActivities<-rbind(testdata_y,traindata_y)
bothPersons<-rbind(subjecttest,subjecttrain)

#add in the person and the activity data to the observation data making a complete dataset
bothdata$personID<-bothPersons$V1
bothdata$activityID<-bothActivities$V1

#extract the std and mean variables
x<-bothdata[,grep("std\\(|mean\\(|ID",colnames(bothdata))]

#map the activities
lookup <- activities$V2
x$activityID<-lookup[x$activityID]

#rename variables following tidy data and R standard principles
names(x) <- gsub("-mean()", "_Mean", names(x))
names(x) <- gsub("-std()", "_StdDev", names(x))
names(x) <- gsub("BodyBody", "Body", names(x))
names(x) <- gsub("Acc", "Accelerometer", names(x))
names(x) <- gsub("Gyro", "Gyroscope", names(x))
names(x) <- gsub("Mag", "Magnitude", names(x))
names(x) <- gsub("^f", "AverageFrequency_", names(x))
names(x) <- gsub("^t", "AverageTime_", names(x))
names(x) <- gsub("\\(\\)", "", names(x))

# Make new data set with average of each variable
tidyData = aggregate(x[1:66],by=list(activity=x$activityID, personID = x$personID),mean)

# Write file
write.table(tidyData, './tidyData.txt',row.names=FALSE)