### CodeBook for Analysis done on UCI HAR Dataset

## Overview
This CodeBook describes the dataset, what the variables mean plus its possible values and where the data comes from.
The description what transformations have been done to the original UCI HAR Dataset are mentioned under [Data Transformations](#data-transformations).


## Data
The original dataset (UCI HAR Dataset) comes from a study of human activity recognition using smartphones, which can found here: [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

The raw data used in this project can be found at this location: [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) 


## Variables
These are all the variables in the resulting tidy dataset after the analysis has been run.
Where it says `[-1,1] numeric`, it means a possible numeric range from -1 to 1.
The variables have been made descriptive according to Google's R Style Guide<sup>[1](#style)</sup>, so no spaces, `dots` as word separators and no capitals.


> subject     int
>    Subject Identifier
>        1..30   .Unique identifier assigned to a subject
>    
> activity    char
>    Descriptive name of the activity performed by subject
>        LAYING      
>        SITTING      
>        STANDING     
>        WALKING      
>        WALKING_DOWNSTAIRS
>        WALKING_UPSTAIRS


mean.of.acceleration.of.body.of.phone.along.the.x.axis
    Mean of the measurements of the total acceleration of the body of the phone along the x-axis
        [-1,1]  numeric
    
mean.of.acceleration.of.body.of.phone.along.the.y.axis
    Mean of the measurements of the total acceleration of the body of the phone along the y-axis
        [-1,1]  numeric

mean.of.acceleration.of.body.of.phone.along.the.z.axis                                          
    Mean of the measurements of the total acceleration of the body of the phone along the z-axis
        [-1,1]  numeric
 
standard.deviation.of.acceleration.of.body.of.phone.along.the.x.axis                            
    Standard deviation of the measurements of the total acceleration of the body of the phone along the x-axis
        [-1,1]  numeric

standard.deviation.of.acceleration.of.body.of.phone.along.the.y.axis                            
    Standard deviation of the measurements of the total acceleration of the body of the phone along the y-axis
        [-1,1]  numeric

standard.deviation.of.acceleration.of.body.of.phone.along.the.z.axis                            
    Standard deviation of the measurements of the total acceleration of the body of the phone along the z-axis
        [-1,1]  numeric

mean.of.gravity.acceleration.of.phone.along.the.x.axis                                          
    Mean of the measurements of the gravitational acceleration on the body of the phone along the x-axis
        [-1,1]  numeric

mean.of.gravity.acceleration.of.phone.along.the.y.axis                                          
    Mean of the measurements of the gravitational acceleration on the body of the phone along the y-axis
        [-1,1]  numeric
        
mean.of.gravity.acceleration.of.phone.along.the.z.axis                                         
    Mean of the measurements of the gravitational acceleration on the body of the phone along the z-axis
        [-1,1]  numeric
        
standard.deviation.of.gravity.acceleration.of.phone.along.the.x.axis
    Standard deviation of the measurements of the gravitational acceleration on the body of the phone along the x-axis
        [-1,1]  numeric
        
standard.deviation.of.gravity.acceleration.of.phone.along.the.y.axis                            
    Standard deviation of the measurements of the gravitational acceleration on the body of the phone along the y-axis
        [-1,1]  numeric

standard.deviation.of.gravity.acceleration.of.phone.along.the.z.axis                            
    Standard deviation of the measurements of the gravitational acceleration on the body of the phone along the z-axis
        [-1,1]  numeric

mean.of.jerk.of.acceleration.on.body.of.phone.along.the.x.axis                                  
    Mean of the jerk signal by linear acceleration on the body of the phone along the x-axis
        [-1,1]  numeric

mean.of.jerk.of.acceleration.on.body.of.phone.along.the.y.axis  
    Mean of the jerk signal by linear acceleration on the body of the phone along the y-axis
        [-1,1]  numeric
        
mean.of.jerk.of.acceleration.on.body.of.phone.along.the.z.axis   
    Mean of the jerk signal by linear acceleration on the body of the phone along the z-axis
        [-1,1]  numeric
        
standard.deviation.of.jerk.of.acceleration.on.body.of.phone.along.the.x.axis
    Standard deviation of the jerk signal by linear acceleration on the body of the phone along the x-axis
        [-1,1]  numeric
        
standard.deviation.of.jerk.of.acceleration.on.body.of.phone.along.the.y.axis
    Standard deviation of the jerk signal by linear acceleration on the body of the phone along the y-axis
        [-1,1]  numeric
        
standard.deviation.of.jerk.of.acceleration.on.body.of.phone.along.the.z.axis
    Standard deviation of the jerk signal by linear acceleration on the body of the phone along the z-axis
        [-1,1]  numeric
        
mean.of.gyroscope.measurement.on.body.of.phone.along.the.x.axis
    Mean of the angular velocity measured by gyroscope of the phone along the x-axis
        [-1,1]  numeric
        
mean.of.gyroscope.measurement.on.body.of.phone.along.the.y.axis
    Mean of the angular velocity measured by gyroscope of the phone along the y-axis
        [-1,1]  numeric
        
mean.of.gyroscope.measurement.on.body.of.phone.along.the.z.axis
    Mean of the angular velocity measured by gyroscope of the phone along the z-axis
        [-1,1]  numeric
        
standard.deviation.of.gyroscope.measurement.on.body.of.phone.along.the.x.axis  
    Standard deviation of the measurements of the angular velocity from gyroscope along the x-axis
        [-1,1]  numeric
        
standard.deviation.of.gyroscope.measurement.on.body.of.phone.along.the.y.axis
    Standard deviation of the measurements of the angular velocity from gyroscope along the y-axis
        [-1,1]  numeric
        
standard.deviation.of.gyroscope.measurement.on.body.of.phone.along.the.z.axis 
    Standard deviation of the measurements of the angular velocity from gyroscope along the z-axis
        [-1,1]  numeric
        
mean.of.jerk.by.gyroscope.on.body.of.phone.along.the.x.axis 
    Mean of the jerk signal by angular velocity on the body of the phone along the x-axis
        [-1,1]  numeric
        
mean.of.jerk.by.gyroscope.on.body.of.phone.along.the.y.axis 
    Mean of the jerk signal by angular velocity on the body of the phone along the y-axis
        [-1,1]  numeric
        
mean.of.jerk.by.gyroscope.on.body.of.phone.along.the.z.axis 
    Mean of the jerk signal by angular velocity on the body of the phone along the z-axis
        [-1,1]  numeric
        
standard.deviation.of.jerk.by.gyroscope.on.body.of.phone.along.the.x.axis
    Standard deviation of the jerk signal by angular velocity on the body of the phone along the x-axis
        [-1,1]  numeric
        
standard.deviation.of.jerk.by.gyroscope.on.body.of.phone.along.the.y.axis
    Standard deviation of the jerk signal by angular velocity on the body of the phone along the y-axis
        [-1,1]  numeric
        
standard.deviation.of.jerk.by.gyroscope.on.body.of.phone.along.the.z.axis 
    Standard deviation of the jerk signal by angular velocity on the body of the phone along the z-axis
        [-1,1]  numeric
        
mean.of.magnitude.of.acceleration.on.body.of.phone
    Mean of the magnitude of the total acceleration on the phone
        [-1,1]  numeric
        
standard.deviation.of.magnitude.of.acceleration.on.body.of.phone  
    Standard deviation of the magnitude of the total acceleration on body of phone
        [-1,1]  numeric
        
mean.of.magnitude.of.gravity.acceleration.of.phone  
    Mean of the magnitude of the gravitational acceleration on the phone
        [-1,1]  numeric
        
standard.deviation.of.magnitude.of.gravity.acceleration.of.phone
    Standard deviation of the magnitude of the gravitational acceleration on body of phone
        [-1,1]  numeric
        
mean.of.magnitude.of.acceleration.of.jerk.on.body.of.phone
    Mean of the magnitude of the jerk signal by angular velocity on the phone
        [-1,1]  numeric
        
standard.deviation.of.magnitude.of.acceleration.of.jerk.on.body.of.phone
    Standard deviation of the magnitude of the jerk signal from linear acceleration
        [-1,1]  numeric
        
mean.of.magnitude.by.gyroscope.on.body.of.phone
    Mean of magnitude of measurements of gyroscope on body of phone
        [-1,1]  numeric
        
standard.deviation.of.magnitude.by.gyroscope.on.body.of.phone
    Standard deviation of magnitude of measurements by gyroscope on body of phone
        [-1,1]  numeric
        
mean.of.magnitude.by.gyroscope.of.jerk.on.body.of.phone
    Mean of the magnitude of jerk signal measured by gyroscope
        [-1,1]  numeric
        
standard.deviation.of.magnitude.by.gyroscope.of.jerk.on.body.of.phone
    Standard deviation of the magnitude of jerk signal measured by gyroscope
        [-1,1]  numeric
        
mean.of.fourier.transformed.acceleration.on.body.of.phone.along.the.x.axis 
    Mean of Fast Fourier Transformation of total acceleration along x-axis
        [-1,1]  numeric
        
mean.of.fourier.transformed.acceleration.on.body.of.phone.along.the.y.axis
    Mean of Fast Fourier Transformation of total acceleration along y-axis
        [-1,1]  numeric
        
mean.of.fourier.transformed.acceleration.on.body.of.phone.along.the.z.axis 
    Mean of Fast Fourier Transformation of total acceleration along z-axis
        [-1,1]  numeric
        
standard.deviation.of.fourier.transformed.acceleration.on.body.of.phone.along.the.x.axis 
    Standard deviation of Fast Fourier Transformation of total acceleration along x-axis
        [-1,1]  numeric
        
standard.deviation.of.fourier.transformed.acceleration.on.body.of.phone.along.the.y.axis 
    Standard deviation of Fast Fourier Transformation of total acceleration along y-axis
        [-1,1]  numeric
        
standard.deviation.of.fourier.transformed.acceleration.on.body.of.phone.along.the.z.axis  
    Standard deviation of Fast Fourier Transformation of total acceleration along z-axis
        [-1,1]  numeric
        
mean.of.fourier.transformed.acceleration.of.jerk.on.body.of.phone.along.the.x.axis
    Mean of Fast Fourier Transformation of the jerk signal along the x-axis
        [-1,1]  numeric
mean.of.fourier.transformed.acceleration.of.jerk.on.body.of.phone.along.the.y.axis
    Mean of Fast Fourier Transformation of the jerk signal along the y-axis
        [-1,1]  numeric
mean.of.fourier.transformed.acceleration.of.jerk.on.body.of.phone.along.the.z.axis
    Mean of Fast Fourier Transformation of the jerk signal along the z-axis
        [-1,-1]
        
standard.deviation.of.fourier.transformed.acceleration.of.jerk.on.body.of.phone.along.the.x.axis
    Standard deviation of Fast Fourier Transformation of the jerk signal along the x-axis
        [-1,1]  numeric
        
standard.deviation.of.fourier.transformed.acceleration.of.jerk.on.body.of.phone.along.the.y.axis
    Standard deviation of Fast Fourier Transformation of the jerk signal along the y-axis
        [-1,1]  numeric
        
standard.deviation.of.fourier.transformed.acceleration.of.jerk.on.body.of.phone.along.the.z.axis
    Standard deviation of Fast Fourier Transformation of the jerk signal along the z-axis
        [-1,1]  numeric
        
mean.of.fourier.transformed.gyroscope.values.on.body.of.phone.along.the.x.axis   
    Mean of the Fast Fourier Transformation values measured by gyroscope along x-axis
        [-1,1]  numeric
        
mean.of.fourier.transformed.gyroscope.values.on.body.of.phone.along.the.y.axis 
    Mean of the Fast Fourier Transformation values measured by gyroscope along y-axis
        [-1,1]  numeric
        
mean.of.fourier.transformed.gyroscope.values.on.body.of.phone.along.the.z.axis  
    Mean of the Fast Fourier Transformation values measured by gyroscope along z-axis
        [-1,1]  numeric
        
standard.deviation.of.fourier.transformed.gyroscope.values.on.body.of.phone.along.the.x.axis  
    Standard deviation of the Fast Fourier Transformation values measured by gyroscope along x-axis
        [-1,1]  numeric
        
standard.deviation.of.fourier.transformed.gyroscope.values.on.body.of.phone.along.the.y.axis
    Standard deviation of the Fast Fourier Transformation values measured by gyroscope along y-axis
        [-1,1]  numeric
        
standard.deviation.of.fourier.transformed.gyroscope.values.on.body.of.phone.along.the.z.axis 
    Standard deviation of the Fast Fourier Transformation values measured by gyroscope along z-axis
        [-1,1]  numeric
        
mean.of.fourier.transformed.magnitude.of.acceleration.on.body.of.phone
    Mean of the Fast Fourier Transformation on the magnitude measurements of the total acceleration
        [-1,1]  numeric
        
standard.deviation.of.fourier.transformed.magnitude.of.acceleration.on.body.of.phone  
    Standard deviation of the Fast Fourier Transformation on the magnitude measurements of the total acceleration
        [-1,1]  numeric
        
mean.of.fourier.transformed.magnitude.of.acceleration.of.jerk.on.body.of.phone
    Mean of the Fast Fourier Transformation of the magnitude of acceleration from jerk signal on body of phone
        [-1,1]  numeric
        
standard.deviation.of.fourier.transformed.magnitude.of.acceleration.of.jerk.on.body.of.phone
    Standard deviation of the Fast Fourier Transformation of the magnitude of acceleration from jerk signal on body of phone
        [-1,1]  numeric
        
mean.of.fourier.transformed.magnitude.by.gyroscope.on.body.of.phone
    Mean of the Fast Fourier Transformation of magnitude measurements by gyroscope on phone
        [-1,1]  numeric
        
standard.deviation.of.fourier.transformed.magnitude.by.gyroscope.on.body.of.phone
    Standard deviation of the Fast Fourier Transformation of magnitude measurements by gyroscope on phone
        [-1,1]  numeric
        
mean.of.fourier.transformed.magnitude.by.gyroscope.of.jerk.on.body.of.phone
    Mean of the Fast Fourier Transformation on the magnitude measurement of jerk signal by the gyroscope
        [-1,1]  numeric
        
standard.deviation.of.fourier.transformed.magnitude.by.gyroscope.of.jerk.on.body.of.phone
    Standard deviation of the Fast Fourier Transformation on the magnitude measurement of jerk signal by the gyroscope
        [-1,1]  numeric


## Data transformations
All the steps which are performed in `run_analysis.R`:

1. Download the UCI HAR zip-file if not all 8 required text-files are in the expected path.
2. Read in the data files:

- Activity Labels into `activity_labels` as `data.table` and the strings as character variables
- Feature Labels into `features` as `data.table` and the strings as character variables
- Test subject IDs into `subject_test` as `data.table`
- Training subject IDs into `subject_train` as `data.table`
- Activity IDs training into `activity_train` as `data.table`
- Activity IDs test into `activity_test` as `data.table`
- Measurements of training into `features_train` as `data.table`
- Measurements of testing into `features_test` as `data.table`

3. Merge into one dataset: first variable names are set for `subject` and `activityid` to create keys, then column binds are done for the test datasets and also for the training datasets to create a set of 2947 objects of 563 variables and 7352 objects of 563 variables respectively, immediately after a row bind is done on those two datasets to make one dataset of 10299 objects of 563 variables.
4. Map the labels of the features to the appropriate variable names in the dataset.
5. Remove all features which are not a mean or standard deviation directly of a measurement. This means only features with `mean()` or `std()` in the name will be kept in the dataset. The resulting `dataSet` has 10299 rows and 68 variables.
6. Replace current variable names with more descriptive ones. This is done via a series of subsitutions and finally pasting the three parts together in a logical order. Then using `setnames` to set the descriptive labels to the variables of the features.
7. Finally this untidy `dataSet` needs to tidied. Tidying is done as described by Hadley Wickham<sup>[2](#wickham)</sup> to a wide, tidy dataset. A `group by` is done on `dataSet` grouping on variables `subject` and `activity` then the result is chained to the `summarise_each` function with `funs(mean)` as parameter to calculate the mean over every set of variables/measurements for a pair of `subject` and `activity`. The result is a `tidyDataSet` where each column is a variable, each observation set of a subject and activity with its measurements for the features are in a different row.
8. `tidyDataSet` is then written as a flat table to `tidydataset_rprg30_project.txt` in `current workdirectory`.


## References
<a name="style">[1]</a>: [Google's R Style Guide](https://google-styleguide.googlecode.com/svn/trunk/Rguide.xml)
<a name="wickham">[2]</a>: [Tidy Data, Hadley Wickham, Journal of Statistical Software,Vol. 59, Issue 10, Sep 2014](http://vita.had.co.nz/papers/tidy-data.pdf)
