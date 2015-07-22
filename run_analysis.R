## This run_analysis.R-script will download the UCI HAR Dataset (if it is missing),
## merge the raw data into one dataset and then tidy it up to one clean, tidy dataset.
## The tidy dataset will be written to file as a table in plain text.

run_analysis <- function()
{
    #### First the required packages will be installed and loaded ####
    
    ## Packages used: data.table, dplyr, plyr, stringr, tidyr
    # Check&Install function for packages    
    packages<-function(x){
        x<-as.character(match.call()[[2]])
        if (!require(x,character.only=TRUE)){
            install.packages(pkgs=x,repos="http://cran.r-project.org")
            require(x,character.only=TRUE)
        }
    }
    # Installation of required packages, only if they are not installed yet.
    packages("data.table")
    packages("stringr")
    packages("plyr")
    packages("dplyr")
    packages("tidyr")
    
    # Load the required packages and suppress all messages
    suppressMessages(library(data.table))
    suppressMessages(library(stringr))
    suppressMessages(library(plyr))
    suppressMessages(library(dplyr))
    suppressMessages(library(tidyr))
    
    
    #### Secondly: Get the data & Read it all in  ####
    
    # Download data and extract it, unless all[!] 8 required files are already there
    required_files <- c("./UCI HAR Dataset/activity_labels.txt", "./UCI HAR Dataset/features.txt", 
                        "./UCI HAR Dataset/test/subject_test.txt", "./UCI HAR Dataset/train/subject_train.txt", "./UCI HAR Dataset/train/Y_train.txt",
                        "./UCI HAR Dataset/test/Y_test.txt", "./UCI HAR Dataset/train/X_train.txt", 
                        "./UCI HAR Dataset/test/X_test.txt")
    
    if (any(!file.exists(required_files))) {
        url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        target_file <- "./UCI_HAR_Dataset.zip"
            if (grepl("Windows", sessionInfo()$running)) download.file(url, target_file) else {
                download.file(url, target_file, method = "curl")
            }
        unzip(target_file)
    }
    
    # Create tables and keep string values as strings
    activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt", stringsAsFactors = FALSE)
    features <- read.table("./UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)
    subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
    subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
    activity_train <- read.table("./UCI HAR Dataset/train/Y_train.txt") 
    activity_test <- read.table("./UCI HAR Dataset/test/Y_test.txt")

    # Since there are a lot of columns in the features data, it would take quite long to read in.    
    # To speed up the process, first a small set of rows will be read in and used to determine the classes.
    # Then the rest of the data will be read in using that information.
    features_train <- read.table("./UCI HAR Dataset/train/X_train.txt", nrows=5)
    features_train.classes <- lapply(features_train, class)
    features_train <- read.table("./UCI HAR Dataset/train/X_train.txt", colClasses = features_train.classes)
    
    features_test <- read.table("./UCI HAR Dataset/test/X_test.txt", nrows=5)
    features_test.classes <- lapply(features_test, class)
    features_test <- read.table("./UCI HAR Dataset/test/X_test.txt", colClasses = features_test.classes)
    

    #### Next up: One dataset from all the data ####
    # Variable name of the subjects will be "subject"
    setnames(subject_test, "subject")
    setnames(subject_train, "subject")

    # Variable name of the activities will be "activityid" 
    setnames(activity_test, "activityid")
    setnames(activity_train, "activityid")
    
    # Creating the dataset with "subject", "actitivity" and the "features"
    # First a column bind is done for the test data and the training data, then this will be row bound to eachother
    dataSet <- rbind(cbind(subject_test, activity_test, features_test),
                     cbind(subject_train, activity_train, features_train))
    
    
    #### Only keep the Mean and Std deviation measurements ####
    # Setting column names 'features' to the datasets of features ###
    setnames(dataSet, 3:563, features[,2])

    # Columns with duplicate names need to be removed
    # and since they are also not containing mean/std this will not remove important measurements.
    dataSet <- dataSet[ !duplicated(names(dataSet)) ]
    
    # Convert the data.frames to data.table for convenience later on (and prevent possible unwanted behaviour)
    setDT(dataSet)
    
    # The regular expression in below matches-function will pick any, but also only mean or std measurements,
    # this will not match the derived Frequency means and Angular means
    dataSet <- select(dataSet, subject, activityid, matches("mean\\(\\)|std\\(\\)"))
    
    #### Step 3 ####
    # After making the dataset, then the descriptive activities needs to be added
    # Here the dataset is rearranged with sorting on activityid to allow for correct replacement to descriptive value
    # Setting the variable names of the activity_labels dataset
    setnames(activity_labels, c("activityid","activity"))
    
    # Using merge to add the activity column to the front of the dataset via the activityid as a key
    dataSet <- merge(activity_labels, dataSet, key="activityid")
    # Then remove the unnecessary activityid
    dataSet <- select(dataSet, -activityid)
    

    #### Step 4 ####
    # Changing the current variable names into more descriptive ones.
    # These will be as descriptive as possible, using '.' as word separator.
    # This will be three chains, one for each part of the variable names
    
    # Extract the columnnames to get ready for manipulation and split the current names at the '-'character
    columnnames <- names(dataSet[3:68]) %>% 
        str_split_fixed(., "-", 3) 
    
    # After that is it substitution time of the three parts
    # Let's start with part two and three as they are easiest on the eye
    columnnames[,2] <- sub("mean\\(\\)","mean.of", columnnames[,2]) %>%
        sub("std\\(\\)","standard.deviation.of", .) 
        
    columnnames[,3] <- sub("X","along.the.x.axis", columnnames[,3]) %>%
        sub("Y","along.the.y.axis", .) %>%
        sub("Z","along.the.z.axis", .)
    
    # Then finish off with the (very) long substition of the descriptions
    columnnames[,1] <- sub("^f","fourier.transformed.", columnnames[,1]) %>%
        sub("^t","", .) %>%
        sub("BodyBody","Body", .) %>%
        sub("BodyGyroJerkMag","magnitude.by.gyroscope.of.jerk.on.body.of.phone", .) %>%
        sub("BodyAccJerkMag","magnitude.of.acceleration.of.jerk.on.body.of.phone", .) %>%
        sub("BodyGyroMag","magnitude.by.gyroscope.on.body.of.phone", .) %>%
        sub("GravityAccMag","magnitude.of.gravity.acceleration.of.phone", .) %>%
        sub("BodyAccMag","magnitude.of.acceleration.on.body.of.phone", .) %>%
        sub("BodyGyroJerk","jerk.by.gyroscope.on.body.of.phone", .) %>%
        sub("BodyAccJerk","jerk.of.acceleration.on.body.of.phone", .) %>%
        sub("BodyGyro","gyroscope.measurement.on.body.of.phone", .) %>%
        sub("GravityAcc","gravity.acceleration.of.phone", .) %>%
        sub("BodyAcc","acceleration.of.body.of.phone", .)
    
    # Time to put the three parts in the right order and paste them together to one string, adding '.' as word separator
    columnnames <- paste(columnnames[,2],columnnames[,1],columnnames[,3], sep = ".")
    
    # Finally replace the non-descriptive names with the new variable names
    setnames(dataSet, 3:68, columnnames)
    
    
    #### Step 5: Tidying time! ####
    # The dataset is now ready to be tidied up and this will be done via a grouping by subject and activity
    # then using a summarize over each feature to calculate the mean per subject and activity pair.
    # This results in a wide, tidy dataset where every row has one observational set of a subject and an activity 
    # with the resulting averages for all the measurements.
    tidyDataSet <- group_by(dataSet, subject, activity) %>% summarise_each(funs(mean))
    
    # Writing the tidydataset to a textfile as table
    write.table(tidyDataSet, file = "./tidydataset_rprg30_project.txt", row.names = FALSE)
}