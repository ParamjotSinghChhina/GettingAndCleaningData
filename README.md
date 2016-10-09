## Description of run_analysis.R script

The script used the following data set as a starting point and organizes/cleans the variables and observations per the steps that follow the link.

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

### Actions performed by the script:

1. It loads the 'dplyr' and 'data.table' libraries for later use and clears up the workspace.

2. It then reads the provided 'features.txt' file  and stores into Feature.Names as a data frame. 

3. It then reads the provided 'activity_labels.txt' file  and stores into Activity.Labels as a data frame. The variable names are also added to the columns for clarity.

4. Training data set is read in the next step. subject_train.txt and y_train.txt are read as data frames whereas X_train.txt is read as data table since data table is more memory efficient. Variable names are changed using Feature.Names created in Step (2). These three data sets are combined to form one data frame using cbind.

5. Similar procedure is used to read test data.

6. Test and training data are combined then into one data using rbind and stored in All.Data

7. Descriptive activity labels are then added to All.Data using merge.

8. Variable names containing 'mean' and 'std' in their names are then selected. Columns containing subject, activity id and activity labels are added to this data and finally rows are ordered using subject and activity id just make the data look more organized. This is stored in All.Data.MeanSD data frame.

9. Second data set is then created first by grouping the data as per subject and activity and then  computing means for all variables. This is stored in All.Data.Summary data frame. Wrok space is then cleared of all other variables except 'All.Data.Summary' and'All.Data.MeanSD' data frames.

10. Finally, these data frames are exported to text files in the working directory using write.table
