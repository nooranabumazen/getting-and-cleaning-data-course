# Code Book

## Data Source
UCI HAR Dataset - Human Activity Recognition Using Smartphones

## Variables
- `subjectID` - ID of the subject (1-30)
- `activity` - Type of activity (WALKING, SITTING, etc.)
- `[measurement columns]` - Mean and standard deviation measurements from accelerometer and gyroscope

-All measurement variables are normalized and bounded within [-1, 1]
-Original accelerometer measurements were in standard gravity units (g)
-Original gyroscope measurements were in radians/second (rad/s)
-The normalization removes the units, making all values dimensionless

## Transformations
1. Merged training and test datasets
2. Extracted only mean() and std() measurements (66 variables)
3. Added and then renamed activity codes (1-6) with descriptive names (from activity_labels.txt)
4. Added and then renamed variables to be more descriptive (from features_info.txt)
5. Created summary dataset with average of each variable for each activity-subject combination

## Summary Dataset
- 180 observations (30 subjects × 6 activities)
- 68 columns (activity, subjectID, and 66 measured variables)
- Each row contains the average of each measurement for that subject-activity combination
