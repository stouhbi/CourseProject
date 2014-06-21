##Cook Book
===========================================================

The Output Data for the course project represent average of mean and standard features for each subject for each activity

#each record provides : 
-----------------------------

1. subject_id (number): identifier of the subject who carried out the experiment, it is between 1 and 30
2. activity (character) : The activity label that the subject performed (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
3. the other records are the average of each variable that was estimated by mean or standard deviation. Each of these variable is designed by the original feature label and added `.avg`in the end$

=======================================
List of estimated variables : 

- tBodyAcc.mean...X.avg
- tBodyAcc.mean...Y.avg
- tBodyAcc.mean...Z.avg
- tGravityAcc.mean...X.avg
- tGravityAcc.mean...Y.avg
- tGravityAcc.mean...Z.avg
- tBodyAccJerk.mean...X.avg
- tBodyAccJerk.mean...Y.avg
- tBodyAccJerk.mean...Z.avg
- tBodyGyro.mean...X.avg
- tBodyGyro.mean...Y.avg
- tBodyGyro.mean...Z.avg
- tBodyGyroJerk.mean...X.avg
- tBodyGyroJerk.mean...Y.avg
- tBodyGyroJerk.mean...Z.avg
- tBodyAccMag.mean...avg
- tGravityAccMag.mean...avg
- tBodyAccJerkMag.mean...avg
- tBodyGyroMag.mean...avg
- tBodyGyroJerkMag.mean...avg
- fBodyAcc.mean...X.avg
- fBodyAcc.mean...Y.avg
- fBodyAcc.mean...Z.avg
- fBodyAccJerk.mean...X.avg
- fBodyAccJerk.mean...Y.avg
- fBodyAccJerk.mean...Z.avg
- fBodyGyro.mean...X.avg
- fBodyGyro.mean...Y.avg
- fBodyGyro.mean...Z.avg
- fBodyAccMag.mean...avg
- fBodyBodyAccJerkMag.mean...avg
- fBodyBodyGyroMag.mean...avg
- fBodyBodyGyroJerkMag.mean...avg
- tBodyAcc.std...X.avg
- tBodyAcc.std...Y.avg
- tBodyAcc.std...Z.avg
- tGravityAcc.std...X.avg
- tGravityAcc.std...Y.avg
- tGravityAcc.std...Z.avg
- tBodyAccJerk.std...X.avg
- tBodyAccJerk.std...Y.avg
- tBodyAccJerk.std...Z.avg
- tBodyGyro.std...X.avg
- tBodyGyro.std...Y.avg
- tBodyGyro.std...Z.avg
- tBodyGyroJerk.std...X.avg
- tBodyGyroJerk.std...Y.avg
- tBodyGyroJerk.std...Z.avg
- tBodyAccMag.std...avg
- tGravityAccMag.std...avg
- tBodyAccJerkMag.std...avg
- tBodyGyroMag.std...avg
- tBodyGyroJerkMag.std...avg
- fBodyAcc.std...X.avg
- fBodyAcc.std...Y.avg
- fBodyAcc.std...Z.avg
- fBodyAccJerk.std...X.avg
- fBodyAccJerk.std...Y.avg
- fBodyAccJerk.std...Z.avg
- fBodyGyro.std...X.avg
- fBodyGyro.std...Y.avg
- fBodyGyro.std...Z.avg
- fBodyAccMag.std...avg
- fBodyBodyAccJerkMag.std...avg
- fBodyBodyGyroMag.std...avg
- fBodyBodyGyroJerkMag.std...avg

#Notes: 
-------------
- estimated variable are bounded within [-1,1].
