# GettingAndCleaningData_FinalProject
Coursera's Getting And Cleaning Data Final Project

For this project, we are using the UCI HAR dataset provided from the following address:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The assignment is to clean the data found in the above link, and form it into a tidy data set. 
There are four tidy data principles ([as per Dr. Leek's Week 1 Lecture "Components of Tidy
Data"](https://www.coursera.org/learn/data-cleaning/lecture/FfV6P/components-of-tidy-data).)
Those four principles are as follows:

1. Each variable you measure should be in one column
2. Each different observation of that variable should be in a different row
3. There should be one table for each "kind" of variable
4. If you have multiple tables, they should include a column in the table
    that allows them to be linked.


For more information on tidy data, go [here](http://www.stat.wvu.edu/~jharner/courses/stat623/docs/tidy-dataJSS.pdf)

### Components
This project contains three main files:
1. **run_analysis.R** - This is the R script that will create the tidy data set described in the Final Assignment. 
2. **CodeBook.md** - This MarkDown file contains the description and lineage of the data found in the tidy data set.
3. **README.md** - This MarkDown file (which you are currently reading!) explains the files in this GitHub repo, and
    how they relate to one another.


### Running run_analysis.R
The **run_analysis.R** script will do the following in order:
1. Download data and unzip data
  * note: the download and unzip will take place in the working directory.
2. Check to see if "dplyr" package is installed. If not then the script will download it and load the package.
3. Activity labels are read from *activity_labels.txt* and a more readable name is applied to the data
4. Feature labels are read from *features.txt*.
  * Then, specific features are extracted, namely the features involving a mean or standard deviation.
5. Subject labels from the Test group (i.e.: the subjects of the experiment used for testing as opposed to training)
    are read from *test/subject_test.txt*
6. Test Activity values are read from *test/y_test.txt*. The values are joined with the Activity Labels data to get the 
    text values for the Activity (e.g.: "LAYING", "SITTING", etc.)
7. Test feature values are read from *test/X_test.txt* and only the features from Step 4 are included.
8. Combine the subject, features, and activity from Test into one data set.
9. Subject labels from the Training group (i.e.: the subjects of the experiment used for training as opposed to training)
    are read from *train/subject_train.txt*
10. Training Activity values are read from *train/y_train.txt*. The values are joined with the Activity Labels data to get the 
    text values for the Activity (e.g.: "LAYING", "SITTING", etc.)
11. Training feature values are read from *train/X_train.txt* and only the features from Step 4 are included.
12. Combine the subject, features, and activity from Training into one data set.
13. Combine the data sets from Step 11 and 12.
14. Order the combined data set by subject (i.e.: the first subject's readings are first in the data set)
15. An aggregate dataframe is made by grouping the data set by the subject and activity type, and then summarizing on all
    of the features by calculating the mean.
16. The aggregate dataframe is written out to a file called "*mean_data_set.txt*" which is a tab delimited file.

### Reading mean_data_set.txt
This is a tab separated file, with a header in the first row.

To view this data set as a data frame in R run the following code from your working directory.
`   tidy_data <- read.table("mean_data_set.txt", header = TRUE) 
    View(tidy_data)`