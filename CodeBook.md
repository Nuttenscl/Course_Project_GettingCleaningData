Code Book
=========


Each row of the tidy dataset correspond to an entry for each activity and each subject while the columns are the average of each of the 81 variables described bellow, except the two first ones. This average was taken from thethe two first variables allow to identify the activity and the subject:

### "activity" :
Determine the activity during which the measurement was proceeded.The possible values are:
- WALKING
- WALKING_UPSTAIRS
- WALKING_DOWNSTAIRS
- SITTING
- STANDING
- LAYING   

### "subject" :         
Identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

### tBodyAcc.*
The mean and the standard deviation of the body acceleration signals, for the 3 directions taken from the accelerometer
- "tBodyAcc.mean.X"  
- "tBodyAcc.mean.Y"             
- "tBodyAcc.mean.Z"              
- "tBodyAcc.std.X"               
- "tBodyAcc.std.Y"               
- "tBodyAcc.std.Z"  

### tGravityAcc.*
The mean and the standard deviation of the gravity acceleration signals, for the 3 directions taken from the accelerometer. 
- "tGravityAcc.mean.X" 
- "tGravityAcc.mean.Y"           
- "tGravityAcc.mean.Z"          
- "tGravityAcc.std.X"           
- "tGravityAcc.std.Y"          
- "tGravityAcc.std.Z"  
 
### tBodyGyro.* 
The mean and the standard deviation of the body triaxial angular velocity from the gyroscope signals
- "tBodyGyro.mean.X"          
- "tBodyGyro.mean.Y"             
- "tBodyGyro.mean.Z"         
- "tBodyGyro.std.X"             
- "tBodyGyro.std.Y"           
- "tBodyGyro.std.Z" 



### tBodyAccJerk.* and tBodyGyroJerk.*
The mean and the standard deviation of the Jerk signals obtained by deriving in time the body linear acceleration and angular velocity from the accelerometer and gyroscope
- "tBodyAccJerk.mean.X"        
- "tBodyAccJerk.mean.Y"         
- "tBodyAccJerk.mean.Z"        
- "tBodyAccJerk.std.X"       
- "tBodyAccJerk.std.Y"           
- "tBodyAccJerk.std.Z"  
- "tBodyGyroJerk.mean.X"        
- "tBodyGyroJerk.mean.Y"        
- "tBodyGyroJerk.mean.Z"         
- "tBodyGyroJerk.std.X"        
- "tBodyGyroJerk.std.Y"          
- "tBodyGyroJerk.std.Z" 
        

### tBodyAccMag.*, tGravityAccMag.*, tBodyAccJerkMag.*, tBodyGyroMag.*, tBodyGyroJerkMag.*
The mean and the standard deviation of the magnitude of the three-dimensional signals were calculated using the Euclidean norm.
- "tBodyAccMag.mean"            
- "tBodyAccMag.std"
- "tGravityAccMag.mean"   
- "tGravityAccMag.std"
- "tBodyAccJerkMag.mean"    
- "tBodyAccJerkMag.std" 
- "tBodyGyroMag.mean"    
- "tBodyGyroMag.std"  
- "tBodyGyroJerkMag.mean"  
- "tBodyGyroJerkMag.std"  


   
### fBodyAcc.*, fBodyAcc.* ,fBodyAccJerk.*, fBodyGyro.*, fBodyGyro.*, fBodyAccJerk.meanFreq.*, fBodyGyro.meanFreq.*, fBodyAccMag.*,  fBodyBodyAccJerkMag.*, fBodyBodyGyroMag.*, fBodyBodyGyroJerkMag.*
On some of the signals describded above where apply a Fast Fourier Transform (FFT) to produce the frequency domain signals associated variables:

- "fBodyAcc.mean.X"           
- "fBodyAcc.mean.Y"             
- "fBodyAcc.mean.Z"           
- "fBodyAcc.std.X"          
- "fBodyAcc.std.Y"   
- "fBodyAcc.std.Z"   
           
- "fBodyAcc.meanFreq.X"       
- "fBodyAcc.meanFreq.Y"         
- "fBodyAcc.meanFreq.Z"  
    
- "fBodyAccJerk.mean.X"         
- "fBodyAccJerk.mean.Y"       
- "fBodyAccJerk.mean.Z"        
- "fBodyAccJerk.std.X"        
- "fBodyAccJerk.std.Y"          
- "fBodyAccJerk.std.Z"  
       
- "fBodyAccJerk.meanFreq.X"    
- "fBodyAccJerk.meanFreq.Y"   
- "fBodyAccJerk.meanFreq.Z" 
    
- "fBodyGyro.mean.X"          
- "fBodyGyro.mean.Y"       
- "fBodyGyro.mean.Z"         
- "fBodyGyro.std.X"             
- "fBodyGyro.std.Y"           
- "fBodyGyro.std.Z"   
    
- "fBodyGyro.meanFreq.X"      
- "fBodyGyro.meanFreq.Y"        
- "fBodyGyro.meanFreq.Z"    
  
- "fBodyAccMag.mean"         
- "fBodyAccMag.std"           
- "fBodyAccMag.meanFreq"       
 
- "fBodyBodyAccJerkMag.mean"     
- "fBodyBodyAccJerkMag.std"     
- "fBodyBodyAccJerkMag.meanFreq" 

- "fBodyBodyGyroMag.mean"       
- "fBodyBodyGyroMag.std"        
- "fBodyBodyGyroMag.meanFreq"   

- "fBodyBodyGyroJerkMag.mean"    
- "fBodyBodyGyroJerkMag.std"    
- "fBodyBodyGyroJerkMag.meanFreq
