## run analysis is a function that will take the file url of the wearable computing data set
## it will clean the data and return a tidy data set

run_analysis <- function(fileurl) {
    ## load necessary libraries
    library(reshape2)
    
    ## load necessary data files    
    if(!file.exists("/data")) {dir.create("./data")}
    download.file(fileurl, destfile="./data/progdata.zip")
    unzip("./data/progdata.zip", exdir="./data")
    
    activity_labels <- read.table("./data/UCI HAR Dataset/activity_labels.txt")
    features <- read.table("./data/UCI HAR Dataset/features.txt")
    alabels <- read.table("./data/UCI HAR Dataset/activity_labels.txt")
    X_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
    y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
    subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")
    X_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
    y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
    subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")
    
    ## merge test and train data sets
    test_data <- cbind(subject_test, y_test, X_test)
    train_data <- cbind(subject_train, y_train, X_train)
    full_data <- rbind(test_data, train_data)
    
    ## extract only the measurements on the mean and standard deviation
    col_names <- as.vector(features[,2])
    col_names <- gsub("(", "", col_names, fixed=TRUE)
    col_names <- gsub(")", "", col_names, fixed=TRUE)
    col_names <- gsub("-", "_", col_names, fixed=TRUE)
    col_names <- gsub("BodyBody", "Body", col_names, fixed=TRUE)
    col_names_uniq <- make.names(col_names, unique=TRUE)
    mean_names <- grep("mean", col_names_uniq)
    std_names <- grep("std", col_names_uniq)
    valid_names <- c(mean_names, std_names)
    valid_names_sort <- sort(valid_names)
    col_names_valid <- col_names_uniq[c(valid_names_sort)]
    valid_names_indata <- valid_names_sort +2
    valid_data <- full_data[,c(1,2,valid_names_indata)]
    
    ## add descriptive activity names
    activity_labels_list <- as.vector(activity_labels[,2])
    valid_data$V1.1[valid_data$V1.1 == 1] <- activity_labels_list[1]
    valid_data$V1.1[valid_data$V1.1 == 2] <- activity_labels_list[2]
    valid_data$V1.1[valid_data$V1.1 == 3] <- activity_labels_list[3]
    valid_data$V1.1[valid_data$V1.1 == 4] <- activity_labels_list[4]
    valid_data$V1.1[valid_data$V1.1 == 5] <- activity_labels_list[5]
    valid_data$V1.1[valid_data$V1.1 == 6] <- activity_labels_list[6]

    ## label data set with descriptive variable names
    names(valid_data) <- c("subject_id", "activity", col_names_valid)
    
    ## create tidy data set with the average of each variable for each activity and each subject
    prep_table <- melt(valid_data, id=c("subject_id", "activity"))
    tidy_data <- dcast(prep_table, subject_id + activity ~ variable, mean)
    write.table(tidy_data, file="./data/tidy_data.txt", row.name=FALSE)
    
    
}