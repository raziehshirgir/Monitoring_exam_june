# Monitoring_exam_june
base_path <- "/Users/alireza/Desktop/seagrass project/"
# command+shift+c to make a line as a comment.
# paste and 0 add two things together 
# set working directory=location of the folder of data
setwd(paste0(base_path,"data/"))
# read.delim is the function which is reading the txt folder
# absent is the name of folder
# header=TRUE which means i want to keep the first title 
# sep= abbreviation of separation and 

df_ <- read.delim("absence.txt", header = TRUE, sep = "\t", dec = ".")
df_

# Extract diffrent substrates type for absence data

# Extract diffrent substrates type for presence data

# Plot medeitraniean sea

# Trim the plot of mediteranian sea

# Plot diffrents substrate type for absence data


# Perform pca to reduce dimension 




# Plot diffrents substrate type for presence data


# Perform pca to reduce dimension 


# Correlation between presence and absence data









