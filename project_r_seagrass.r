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

      


