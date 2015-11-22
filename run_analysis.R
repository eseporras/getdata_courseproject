
# 1: Download the zipped folder with the accelerometer data.

if (!file.exists("dataset.zip")){
        download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile = "dataset.zip", method = "curl")
        download.date = date()
        unzip("dataset.zip")
}

# 2: Read test and training subjects data.  

library("readr")

data_test <- read_fwf(file="UCI HAR Dataset/test/X_test.txt", fwf_empty("UCI HAR Dataset/test/X_test.txt"))

labels_test <- read_fwf("UCI HAR Dataset/test//y_test.txt", fwf_empty("UCI HAR Dataset//test/y_test.txt"))

subjects_test <- read_fwf("UCI HAR Dataset//test/subject_test.txt", fwf_empty("UCI HAR Dataset//test/subject_test.txt"))

data_train <- read_fwf(file="UCI HAR Dataset/train/X_train.txt", fwf_empty("UCI HAR Dataset/train/X_train.txt"))

labels_train <- read_fwf("UCI HAR Dataset/train//y_train.txt", fwf_empty("UCI HAR Dataset//train/y_train.txt"))

subjects_train <- read_fwf("UCI HAR Dataset//train/subject_train.txt", fwf_empty("UCI HAR Dataset//train/subject_train.txt"))

# 3: Get the meaningful names of the features and the meaningful names of the different activities. 

act_names <- read.table("UCI HAR Dataset//activity_labels.txt", sep = " ", header = F)

feat_names <- read.table("UCI HAR Dataset//features.txt", sep = " ", header =F)

# 4: Give meaningful names to the features. 

colnames(data_test) <- feat_names$V2
colnames(data_train) <- feat_names$V2

# 5: Merge the test and train data frames.

subjects_test$set_type <- "test"
subjects_train$set_type <- "train"

data <- rbind(data_test,data_train)
labels <- rbind(labels_test,labels_train)
subjects <- rbind(subjects_test,subjects_train)

# 6: Select only those features with mean or std data. 

col_sel <- grep('-mean()|-std()',feat_names$V2, ignore.case=F)
 

data_sel <- data[,col_sel]

# 7: Merge all data.

colnames(labels) <- c("label_id")
colnames(subjects) <- c("subject_nr", "set_type")

full_ds <- cbind(subjects, labels, data_sel)

# 8: Give the activity labels meaningful names.  

full_ds_annot <- merge(act_names, full_ds, by.x= 1, by.y="label_id")

library(dplyr)

full_ds_annot <- rename(full_ds_annot, label_id = V1, activity_label=V2)
full_ds_annot <- full_ds_annot %>% select(-matches("label_id"))

# 9: Produce a tidy dataset with the averages of the selected features per subject and activity type.

full_ds_ave <- full_ds_annot %>% group_by(activity_label,subject_nr,set_type) %>% summarise_each(funs(mean))

write.table(full_ds_ave, "tidy_averages.txt", row.name=F, col.name=T, sep = "\t", quote = F)

