#load  library used within the script

library(data.table)

## assume that the "UCI HAR Dataset" is the working directory

featuresRaw <-read.csv("features.txt", sep = " ", header = FALSE)

## rename columns
setnames(featuresRaw,"V1","FeatureColumnNumber")
setnames(featuresRaw,"V2","FeatureName")

## subset Features with std and mean in its name 

columnsName <- featuresRaw[grep("std()",featuresRaw$FeatureName,fixed=TRUE),]
columnsName <- rbind(columnsName,featuresRaw[grep("mean()",featuresRaw$FeatureName,fixed=TRUE),])

#remove "()" and "-" to be fully compliant with variable names in R
#replace "-" with "." to still maintain readable names

columnsName$FeatureName <- gsub("()","",columnsName$FeatureName,fixed=TRUE)
columnsName$FeatureName <- gsub("-",".",columnsName$FeatureName,fixed=TRUE)
row.names(columnsName) <- NULL

# add 2 more values for the "subject" and "activity" to the columnsName list
# this will be useful to rename the columns with one row of code
columnsName <- rbind(columnsName,data.frame(FeatureColumnNumber=562,FeatureName="subject")) #subject
columnsName <- rbind(columnsName,data.frame(FeatureColumnNumber=563,FeatureName="activity")) #activity

remove(featuresRaw)


#merge the TEST set (column bind)

        #load the data
        testSet <- read.table("./test/X_test.txt")
        testSubject <- read.table("./test/subject_test.txt",col.names="V562")
        testActivity <- read.table("./test/y_test.txt",col.names="V563")
        
        #merge into testSetMerged data.frame variable
        testSetMerged <- cbind(testSet,testSubject$V562) ; setnames(testSetMerged,"testSubject$V562","V562")
        testSetMerged <- cbind(testSetMerged,testActivity$V563) ; setnames(testSetMerged,"testActivity$V563","V563")

#merge the TRAIN set (column bind)
        trainSet <- read.table("./train/X_train.txt")
        trainSubject <- read.table("./train/subject_train.txt",col.names="V562")
        trainActivity <- read.table("./train/y_train.txt",col.names="V563")
        
        trainSetMerged <- cbind(trainSet,trainSubject$V562) ; setnames(trainSetMerged,"trainSubject$V562","V562")
        trainSetMerged <- cbind(trainSetMerged,trainActivity$V563) ; setnames(trainSetMerged,"trainActivity$V563","V563")

remove(testSet,testSubject,testActivity,trainSet,trainSubject,trainActivity)

#subsetting columns with the variable "mean" and "Std" using the featureNumber
# from the featureName list
# merge train & test dataset using the "columnNumber" to subset the data.frame

tidyDatasetTemp <- merge(testSetMerged[,columnsName[,"FeatureColumnNumber"]],trainSetMerged[,columnsName[,"FeatureColumnNumber"]],all=TRUE)
remove(testSetMerged,trainSetMerged)

#rename the columns using a vector coming from the list columnsName["FeatureName"]
setnames(tidyDatasetTemp,unlist(columnsName["FeatureName"],use.names = FALSE))

#trasform to a factor type, so we can use the level function to transform activity code to "activity label"

tidyDatasetTemp$activity <- as.factor(tidyDatasetTemp$activity)

#rename activity using a vector created from the "activity_label.txt" file
levels(tidyDatasetTemp$activity) <- unlist(read.table("activity_labels.txt")[,2])

# create the final tidydataset 
# a data.table is used to allow to "group by"
#.SD allow to retrieve all the columns where appy the mean function
# by parameter is a vector with the fields "to group by"

tidyDataset <- data.table(tidyDatasetTemp)[,lapply(.SD,mean),by=c("subject","activity")]

remove(tidyDatasetTemp)

#write a txt with the final result, remove rownames as they are not useful
write.csv(tidyDataset,file="tidyDataset.txt",row.names = FALSE)

