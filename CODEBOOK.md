This file describes the variables in the original data as well as final data set.

Section 1 describes the original data set that was used for processing and getting a tidy data. Note that this is directly taken from the following link:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Section 2 describes the final processed data that was result of this assignment.

## Section 1: Description of Original Data Set (Human Activity Recognition Using Smartphones Data Set )
Abstract: Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.


###Source:
Jorge L. Reyes-Ortiz(1,2), Davide Anguita(1), Alessandro Ghio(1), Luca Oneto(1) and Xavier Parra(2)
1 - Smartlab - Non-Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova, Genoa (I-16145), Italy. 
2 - CETpD - Technical Research Centre for Dependency Care and Autonomous Living
Universitat Politècnica de Catalunya (BarcelonaTech). Vilanova i la Geltrú (08800), Spain
activityrecognition '@' smartlab.ws

###Data Set Information:
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Check the README.txt file for further details about this dataset. 

A video of the experiment including an example of the 6 recorded activities with one of the participants can be seen in the following link: [Web Link]

An updated version of this dataset can be found at [Web Link]. It includes labels of postural transitions between activities and also the full raw inertial signals instead of the ones pre-processed into windows.
###Attribute Information:
For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

###Relevant Papers:
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012 

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra, Jorge L. Reyes-Ortiz. Energy Efficient Smartphone-Based Activity Recognition using Fixed-Point Arithmetic. Journal of Universal Computer Science. Special Issue in Ambient Assisted Living: Home Care. Volume 19, Issue 9. May 2013

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. 4th International Workshop of Ambient Assited Living, IWAAL 2012, Vitoria-Gasteiz, Spain, December 3-5, 2012. Proceedings. Lecture Notes in Computer Science 2012, pp 216-223. 

Jorge Luis Reyes-Ortiz, Alessandro Ghio, Xavier Parra-Llanas, Davide Anguita, Joan Cabestany, Andreu Català. Human Activity and Motion Disorder Recognition: Towards Smarter Interactive Cognitive Environments. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.


###Citation Request:
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.


## Section 2: Description of Variables in Final Processed data

Out of the 561 variables in the original data, only features containing mean and Standard Deviation are extracted. These are listed below and are present in column 3 through column 81 of the final data (All_Data_Summary.txt). 

The first column refers to the variable 'Subject' that identified one of the 30 sujects who took part in the study.

The second column refers to the variable 'Activity'. This contains the six activities that the subject was performing (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).

Since there are 30 subjects each performing one of the 6 activities, there are 180 total observations. Each of these observation is a mean of several readings in the original data corresponding to each subject and activity they were performing.

1	"Subject" 
2	"Activity" 
3	"tBodyAcc-mean()-X" 
4	"tBodyAcc-mean()-Y" 
5	"tBodyAcc-mean()-Z" 
6	"tBodyAcc-std()-X" 
7	"tBodyAcc-std()-Y" 
8	"tBodyAcc-std()-Z" 
9	"tGravityAcc-mean()-X" 
10	"tGravityAcc-mean()-Y" 
11	"tGravityAcc-mean()-Z" 
12	"tGravityAcc-std()-X" 
13	"tGravityAcc-std()-Y" 
14	"tGravityAcc-std()-Z" 
15	"tBodyAccJerk-mean()-X" 
16	"tBodyAccJerk-mean()-Y" 
17	"tBodyAccJerk-mean()-Z" 
18	"tBodyAccJerk-std()-X" 
19	"tBodyAccJerk-std()-Y" 
20	"tBodyAccJerk-std()-Z" 
21	"tBodyGyro-mean()-X" 
22	"tBodyGyro-mean()-Y" 
23	"tBodyGyro-mean()-Z" 
24	"tBodyGyro-std()-X" 
25	"tBodyGyro-std()-Y" 
26	"tBodyGyro-std()-Z" 
27	"tBodyGyroJerk-mean()-X" 
28	"tBodyGyroJerk-mean()-Y" 
29	"tBodyGyroJerk-mean()-Z" 
30	"tBodyGyroJerk-std()-X" 
31	"tBodyGyroJerk-std()-Y" 
32	"tBodyGyroJerk-std()-Z" 
33	"tBodyAccMag-mean()" 
34	"tBodyAccMag-std()" 
35	"tGravityAccMag-mean()" 
36	"tGravityAccMag-std()" 
37	"tBodyAccJerkMag-mean()" 
38	"tBodyAccJerkMag-std()" 
39	"tBodyGyroMag-mean()" 
40	"tBodyGyroMag-std()" 
41	"tBodyGyroJerkMag-mean()" 
42	"tBodyGyroJerkMag-std()" 
43	"fBodyAcc-mean()-X" 
44	"fBodyAcc-mean()-Y" 
45	"fBodyAcc-mean()-Z" 
46	"fBodyAcc-std()-X" 
47	"fBodyAcc-std()-Y" 
48	"fBodyAcc-std()-Z" 
49	"fBodyAcc-meanFreq()-X" 
50	"fBodyAcc-meanFreq()-Y" 
51	"fBodyAcc-meanFreq()-Z" 
52	"fBodyAccJerk-mean()-X" 
53	"fBodyAccJerk-mean()-Y" 
54	"fBodyAccJerk-mean()-Z" 
55	"fBodyAccJerk-std()-X" 
56	"fBodyAccJerk-std()-Y" 
57	"fBodyAccJerk-std()-Z" 
58	“fBodyAccJerk-meanFreq()-X" 
59	"fBodyAccJerk-meanFreq()-Y" 
60	"fBodyAccJerk-meanFreq()-Z" 
61	"fBodyGyro-mean()-X" 
62	"fBodyGyro-mean()-Y" 
63	"fBodyGyro-mean()-Z" 
64	"fBodyGyro-std()-X" 
65	"fBodyGyro-std()-Y" 
66	"fBodyGyro-std()-Z" 
67	"fBodyGyro-meanFreq()-X" 
68	"fBodyGyro-meanFreq()-Y" 
69	"fBodyGyro-meanFreq()-Z" 
70	"fBodyAccMag-mean()" 
71	"fBodyAccMag-std()" 
72	"fBodyAccMag-meanFreq()" 
73	"fBodyBodyAccJerkMag-mean()" 
74	"fBodyBodyAccJerkMag-std()" 
75	"fBodyBodyAccJerkMag-meanFreq()" 
76	"fBodyBodyGyroMag-mean()"
77	"fBodyBodyGyroMag-std()" 
78	"fBodyBodyGyroMag-meanFreq()" 
79	"fBodyBodyGyroJerkMag-mean()" 
80	"fBodyBodyGyroJerkMag-std()" 
81	"fBodyBodyGyroJerkMag-meanFreq()"
