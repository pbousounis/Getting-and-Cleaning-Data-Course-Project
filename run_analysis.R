if(!dir.exists("./data")) {dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile="./data/dataset.zip")
unzip("./data/dataset.zip", exdir="./data")

actLabels <- read.table("./data/UCI HAR Dataset/activity_labels.txt",
                        col.names=c("Activity", "Description"))
feats <- read.table("./data/UCI HAR Dataset/features.txt")

Xtest <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
Ytest <- read.table("./data/UCI HAR Dataset/test/y_test.txt",
                    col.names="Activity")
testSub <- read.table("./data/UCI HAR Dataset/test/subject_test.txt", 
                      col.names="Subject")
names(Xtest) <- feats[,2]

Xtrain <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
Ytrain <- read.table("./data/UCI HAR Dataset/train/y_train.txt",
                     col.names="Activity")
trainSub <- read.table("./data/UCI HAR Dataset/train/subject_train.txt",
                       col.names="Subject")
names(Xtrain) <- feats[,2]

##1)Merge the training and test sets into one dataset.
Xtest <- cbind(testSub, Ytest, Xtest)
Xtrain <- cbind(trainSub, Ytrain, Xtrain)
merged <- rbind(Xtest, Xtrain)

##2)Extract only measurements on ave and stdev for each 
##measurement.
cNames <- colnames(merged)
mean_stdev <- (grepl("Subject" , cNames) | 
                grepl("Activity" , cNames) | 
                grepl("mean.." , cNames) | 
                grepl("std.." , cNames))
msMerge <- merged[ , mean_stdev==TRUE] 

##3)Give activities in the data set descriptive names.
amsMerge <- merge(msMerge, actLabels,
      by='Activity',
      all.x=TRUE)

##5)Create a 2nd, independent tidy dataset with 
##the ave of each var for each activity and each subject.
tidyData <- aggregate(. ~Subject + Activity, amsMerge, mean)
tidyData <- tidyData[order(tidyData$Subject, tidyData$Activity),]
tidyData <- merge(actLabels, tidyData)
tidyData <- tidyData[do.call(order, tidyData),]
write.table(tidyData, "tidyData.txt", row.name=FALSE)
