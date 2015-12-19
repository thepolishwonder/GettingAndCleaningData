CodeBook.md
-----------
This CodeBook is a modified version of the original CodeBook supplied with the data as seen in featire_info.txt.  This CodeBook describes the variables and how they came to be aggregated and averaged.

Activity and Person
-------------------
Identifes the unique person/activity combination measured the variables relate to:
"personID": the integer ID representing the subject.
"activity": the string activity name consiting of one of the following:
Laying
Sitting
Standing
Walking
Walking Upstairs
Walking Downstairs

Measurement Averages
--------------------

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ, and are then aggregated by activity/person and averaged. 

These averaged time domain signals (prefix 'AverageTime_' to denote time) were originally captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the average body linear acceleration and angular velocity were originally derived in time to obtain Jerk signals 

    (AverageTime_BodyAccelerometerJerk and AverageTime_BodyGyroscopeJerk). 
    
Also the magnitude of these three-dimensional signals were originally calculated using the Euclidean norm 
    (AverageTime_BodyAccelerometerMagnitude, AverageTime_GravityAccelerometerMagnitude, AverageTime_BodyAccelerometerJerkMagnitude, AverageTime_BodyGyroscopeMagnitude, AverageTime_BodyGyroscopeJerkMagnitude). 

Finally a Fast Fourier Transform (FFT) was originally applied to some of these signals producing

    (AverageFrequency_BodyAccelerometer, AverageFrequency_BodyAccelerometerJerk, AverageFrequency_BodyGyroscope, AverageFrequency_BodyAccelerometerJerkMagnitude, AverageFrequency_BodyGyroscopeMagnitude, AverageFrequency_BodyGyroscopeJerkMagnitude. (Note the prefix 'AverageFrequency_' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions, with the mean and standard deviation calculated.

They were then aggregated and averaged as described above, with the result being this tiny data set.

"AverageTime_BodyAccelerometer_Mean-X"                  
"AverageTime_BodyAccelerometer_Mean-Y"                  
"AverageTime_BodyAccelerometer_Mean-Z"                  
"AverageTime_BodyAccelerometer_StdDev-X"                
"AverageTime_BodyAccelerometer_StdDev-Y"                
"AverageTime_BodyAccelerometer_StdDev-Z"                
"AverageTime_GravityAccelerometer_Mean-X"               
"AverageTime_GravityAccelerometer_Mean-Y"               
"AverageTime_GravityAccelerometer_Mean-Z"               
"AverageTime_GravityAccelerometer_StdDev-X"             
"AverageTime_GravityAccelerometer_StdDev-Y"             
"AverageTime_GravityAccelerometer_StdDev-Z"             
"AverageTime_BodyAccelerometerJerk_Mean-X"              
"AverageTime_BodyAccelerometerJerk_Mean-Y"              
"AverageTime_BodyAccelerometerJerk_Mean-Z"              
"AverageTime_BodyAccelerometerJerk_StdDev-X"            
"AverageTime_BodyAccelerometerJerk_StdDev-Y"            
"AverageTime_BodyAccelerometerJerk_StdDev-Z"            
"AverageTime_BodyGyroscope_Mean-X"                      
"AverageTime_BodyGyroscope_Mean-Y"                      
"AverageTime_BodyGyroscope_Mean-Z"                      
"AverageTime_BodyGyroscope_StdDev-X"                    
"AverageTime_BodyGyroscope_StdDev-Y"                    
"AverageTime_BodyGyroscope_StdDev-Z"                    
"AverageTime_BodyGyroscopeJerk_Mean-X"                  
"AverageTime_BodyGyroscopeJerk_Mean-Y"                  
"AverageTime_BodyGyroscopeJerk_Mean-Z"                  
"AverageTime_BodyGyroscopeJerk_StdDev-X"                
"AverageTime_BodyGyroscopeJerk_StdDev-Y"                
"AverageTime_BodyGyroscopeJerk_StdDev-Z"                
"AverageTime_BodyAccelerometerMagnitude_Mean"           
"AverageTime_BodyAccelerometerMagnitude_StdDev"         
"AverageTime_GravityAccelerometerMagnitude_Mean"        
"AverageTime_GravityAccelerometerMagnitude_StdDev"      
"AverageTime_BodyAccelerometerJerkMagnitude_Mean"       
"AverageTime_BodyAccelerometerJerkMagnitude_StdDev"     
"AverageTime_BodyGyroscopeMagnitude_Mean"               
"AverageTime_BodyGyroscopeMagnitude_StdDev"             
"AverageTime_BodyGyroscopeJerkMagnitude_Mean"           
"AverageTime_BodyGyroscopeJerkMagnitude_StdDev"         
"AverageFrequency_BodyAccelerometer_Mean-X"             
"AverageFrequency_BodyAccelerometer_Mean-Y"             
"AverageFrequency_BodyAccelerometer_Mean-Z"             
"AverageFrequency_BodyAccelerometer_StdDev-X"           
"AverageFrequency_BodyAccelerometer_StdDev-Y"           
"AverageFrequency_BodyAccelerometer_StdDev-Z"           
"AverageFrequency_BodyAccelerometerJerk_Mean-X"         
"AverageFrequency_BodyAccelerometerJerk_Mean-Y"         
"AverageFrequency_BodyAccelerometerJerk_Mean-Z"         
"AverageFrequency_BodyAccelerometerJerk_StdDev-X"       
"AverageFrequency_BodyAccelerometerJerk_StdDev-Y"       
"AverageFrequency_BodyAccelerometerJerk_StdDev-Z"       
"AverageFrequency_BodyGyroscope_Mean-X"                 
"AverageFrequency_BodyGyroscope_Mean-Y"                 
"AverageFrequency_BodyGyroscope_Mean-Z"                 
"AverageFrequency_BodyGyroscope_StdDev-X"               
"AverageFrequency_BodyGyroscope_StdDev-Y"               
"AverageFrequency_BodyGyroscope_StdDev-Z"               
"AverageFrequency_BodyAccelerometerMagnitude_Mean"      
"AverageFrequency_BodyAccelerometerMagnitude_StdDev"    
"AverageFrequency_BodyAccelerometerJerkMagnitude_Mean"  
"AverageFrequency_BodyAccelerometerJerkMagnitude_StdDev"
"AverageFrequency_BodyGyroscopeMagnitude_Mean"          
"AverageFrequency_BodyGyroscopeMagnitude_StdDev"        
"AverageFrequency_BodyGyroscopeJerkMagnitude_Mean"      
"AverageFrequency_BodyGyroscopeJerkMagnitude_StdDev""

