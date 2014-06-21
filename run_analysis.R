## This script is used to analyse a the data and do the following
##Merge the training and the test sets to create one data set.
##Extract only the measurements on the mean and standard deviation for each measurement. 
##Use descriptive activity names to name the activities in the data set
##Appropriately label the data set with descriptive variable names. 
##Create a second, independent tidy data set with the average of each variable for each activity and each subject. 

library(data.table)
library(plyr)

## Run the whole analysis
runAnalysis <- function(destination = "UCI HAR Dataset/"){
    
    ## get the features
    featureDestination <- paste(destination, "features.txt", sep="")
    features <- read.table(featureDestination)
    
    ## merge the training and test data
    trainingDestination <- paste(destination,"train/X_train.txt", sep="")
    testDestination <- paste(destination, "test/X_test.txt", sep="")
    globalData <- mergeRowData(trainingSetDestination = trainingDestination, testSetDestination = testDestination, col.names = features$V2)
    ## merge training subject and test subjects
    subjectTrainingDestination <- paste(destination, "train/subject_train.txt", sep="")
    subjectTestDestination <- paste(destination, "test/subject_test.txt", sep="")
    
    subjects <- mergeRowData(trainingSetDestination = subjectTrainingDestination, testSetDestination = subjectTestDestination, col.names = "subject_id")
    
    ## merge activities for training Data and test Data
    activityTrainingDestination <- paste(destination, "train/y_train.txt", sep="")
    activityTestDestination <- paste(destination, "test/y_test.txt", sep="")
    
    activities <- mergeRowData(trainingSetDestination = activityTrainingDestination, testSetDestination = activityTestDestination, col.names = "activity")
    
    
    
    
    ## extract the specific data for mean and standard deviation
    specificFeatues <- c(grep("mean\\(\\)", features$V2),grep("std\\(\\)", features$V2))
    
    newData <- extractData(globalData, specificFeatues)
    
    ## add subjects and activities to the global Data
    newData <- cbind(activities, newData)
    newData <- cbind(subjects, newData)
    
    
    ## change activity number with activity name
    activityLabelDest <- paste(destination, "activity_labels.txt", sep="")
    
    activityLabels <- read.table(activityLabelDest, col.names = c("id", "label"))
    
    newData$activity <- factor(newData$activity, labels = activityLabels$label)
    
    ## calculate the avrerage for each measurment for a subject and anactivity
    
    columns <- colnames(newData)
    columns <- columns[-c(1,2)]
    newColumns <- c("subject_id", "activity")
    tidyData <- data.frame(subject_id = numeric(180), activity=numeric(180))
    for(i in 1:length(columns)){
        newColumnName <- paste(columns[i], "avg", sep=".")
        newColumns[i+2] <- newColumnName
    }
    ## extract average for each column
    tidyData <- ddply(newData, .(subject_id, activity), .fun = function(x,col) colMeans(x[c(col)]), col=columns)
    ## change column names
    colnames(tidyData) <- newColumns
    tidyData
}



## function for merging both training set and test set according to their specific variable names
## trainingSetDestination : the destination for the training set
## testSetDestination : destination for the test set
mergeRowData <- function(trainingSetDestination, testSetDestination, col.names = NULL){
    training <- read.table(trainingSetDestination, col.names  =col.names)    
    test <- read.table(testSetDestination, col.names  =col.names)
    total <- rbind(training, test)
    total
}


## extracts specific columns from the dataset
## dataset : our data set
## columns : the columns that we would like to extract
extractData <- function(dataset, columns){
    
    extractedData <- dataset[, columns]
    
    extractedData
}


