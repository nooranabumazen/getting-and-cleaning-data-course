# Getting and Cleaning Data Course Project

## Overview
This project cleans and analyzes the UCI HAR Dataset containing smartphone accelerometer data.

## Files in this repo
- `run_analysis.R` - Main script that performs all data cleaning steps
- `CodeBook.md` - Describes the variables and transformations
- `tidy_data.txt` - The final output dataset

## How to run the script
1. Download the dataset from [link]
2. Set your working directory to the folder containing the data
3. Run `source("run_analysis.R")`
4. The script will create `tidy_data.txt` in your working directory

## What the script does
1. Merges training and test sets
2. Extracts mean and std deviation measurements
3. Applies descriptive activity names
4. Labels variables with descriptive names
5. Creates a summary dataset with averages by activity and subject
