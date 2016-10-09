# Load libraries
library(dplyr)
library(data.table)

# clear workspace
rm(list=ls())

# Read feature names into a data frame
Feature.Names <- read.csv("features.txt", sep=" ", header = FALSE, stringsAsFactors = FALSE)

# Read activity labels into a data frame
Activity.Labels <- read.csv("activity_labels.txt", sep=" ", header = FALSE, stringsAsFactors = FALSE)
names(Activity.Labels) <- c("Activity_ID","Activity")

#Read Training Data Sets
Subject.Train <- read.csv("train/subject_train.txt", sep=" ", header = FALSE, stringsAsFactors = FALSE)
X.Train <- fread("train/X_train.txt") 
names(X.Train) <- Feature.Names[,2] # Adding descriptive variable names
Y.Train <- read.csv("train/y_train.txt", sep=" ", header = FALSE, stringsAsFactors = FALSE) 
Data.Train <- cbind(Subject.Train, Y.Train, X.Train)
names(Data.Train)[c(1,2)] <- c("Subject","Activity_ID") # Adding descriptive variable names

#Read Test Data Sets
Subject.Test <- read.csv("test/subject_test.txt", sep=" ", header = FALSE, stringsAsFactors = FALSE)
X.Test <- fread("test/X_test.txt") 
names(X.Test) <- Feature.Names[,2] # Adding descriptive variable names
Y.Test <- read.csv("test/y_test.txt", sep=" ", header = FALSE, stringsAsFactors = FALSE) 
Data.Test <- cbind(Subject.Test, Y.Test, X.Test)
names(Data.Test)[c(1,2)] <- c("Subject","Activity_ID") # Adding descriptive variable names

# Combine Train and Test Data Sets
All.Data <- rbind(Data.Train,Data.Test)

# Merge all data with activity labels to add column for activity labels
All.Data.L <- merge(Activity.Labels, All.Data, by = "Activity_ID")

# Select variables containing mean and standard deviation in their names
All.Data.MeanSD <- All.Data.L[,grepl("(mean)|(std)",names(All.Data.L))]
All.Data.MeanSD <- cbind(All.Data.L[,c(1:3)],All.Data.MeanSD) # Add first three columns from original data
All.Data.MeanSD <- arrange(All.Data.MeanSD,Subject,Activity_ID) # Just reordering the data first by Subject and then by Activity_ID

# Create Second data set to compute means by subject and activity
All.Data.Summary <- All.Data.MeanSD %>% group_by(Subject, Activity) %>% summarise_all(mean) %>% select(-Activity_ID)

# Clean work space of intermediate objects
rm(list= ls()[!(ls() %in% c('All.Data.Summary','All.Data.MeanSD'))])

# Write the two data sets into files
write.table(All.Data.MeanSD,file="All_Data_MeanSD.txt", row.names = FALSE)
write.table(All.Data.Summary,file="All_Data_Summary.txt", row.names = FALSE)
