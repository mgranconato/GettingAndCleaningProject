Getting And Cleaning Data Course Project
-------------------------------------------------

This read me is about "run_analysis.R", a script that process the "UCI HAR Dataset"
Inside the script there is comment almost on each line of code to understand what's the purpose.

Here some general principle I follow:
- read carefully the readme.txt, features_info.txt to understand how the "UCI HAR Dataset" is structured 
- prepare the data so I can use the most "powerful" function to trasform the data
- trasform the "feature.txt" file to be "usable" as columns variable name (name human readable and compliant with R)
- merge test and train data to their "activities" and "subjects" and only at the end create a unique dataset and rename the columns
- remove the "intermediate" objects free memory and have a "clean" enviroment

The "main" steps within the script:

- prepare a list with all the names and "position" (column number) for the columns in the "tidyDataSet": (columnsName)  
        - load the 561 names and "column number" from features.txt
        - add 2 more rows for "activity" and "subject"
        - remove "()" from the data and replace "-" with "."
        - filter the list retrieving only features with inside "mean()" and "std()" 
        
- create a testDataSet merging: (testSetMerged)
        - test data
        - subject related to test data
        - activity relate to test data
        
- create a trainDataSet merging: (trainSetMerged)
        - train data
        - subject related to train data
        - activity relate to train data

- merge the test and train dataset subsetting the columns using the position stored in the columnsName list

- use a data.table object to group by activity and subject, calculating the mean using lapply
        - (the .SD parameter (lapply) allow to retrieve all the column names

- write the file tidyDataSet data.table object to a txt file




        