README.md
---------
This file described how to successfully run the run_analysis.R file on this dataset:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The output file is tinyData.txt

Assumptions
-----------
- Installed dplyr package
- Data is downloaded and unzipped from link above and in original file/folder structure
- run_analysis.R needs to run in the same working directory as the main data root folder.
- the output file, tinyData.txt will appear in the same working directory

Script Execution
----------------
- Read in the training data.  The training observations, activity list, and subject lists were read in

- Read in the test data. The test observations, activity list, and subject lists were read in

- Read in the lookup data. The data for activity names and features read in

- Combine test and training observation data. The data from the test data was row binded to the training data

- Fix column names for observation data. Apply the column names to the data.frame

- Combine the person and activity training and test data. Row bind the activity infortmation and also the subject information for both test and training data

- Make complete dataset by adding in the features and person IDs. Add columns to data.frame for featureID and personID

- Extract the std and mean variables. Grep out only the rows that contain either std() or mean() - also keep the activity and person ID info in the dataset as well

- Map the activityIDs to the activiy names from the lookup table

- Rename variables following tidy data and R standard principles. Using gsub, replace shortened and abbreviated varibale name parts with full and understandable names

- Make new data set with average of each variable for each activity and each subject. Using the aggregate function, calculate the average (mean) for each person/activity across each variable.

- Write file. write.table the new "tidyData.txt"" file for future analysis

Understanding the Data
----------------------
Examine CodeBook.md for a description of the data


