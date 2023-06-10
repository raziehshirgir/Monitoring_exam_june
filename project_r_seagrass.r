
base_path <- "/Users/alireza/Desktop/seagrass project/"
# command+shift+c to make a line as a comment.
# paste and 0 add two things together 
# set working directory=location of the folder of data
setwd(paste0(base_path,"data/"))
# read.delim is the function which is reading the txt folder
# absent is the name of folder
# header=TRUE which means i want to keep the first title 
# sep= abbreviation of separation and 
#df=data frame
df_absence <- read.delim("absence.txt", header = TRUE, sep = "\t", dec = ".")
df_presence <- read.delim("presence.txt", header = TRUE, sep = "\t", dec = ".")


# Extract diffrent substrates type for absence data
# Extract diffrent substrates type for presence data

# Extract 9 substrates 
# Filter the specific part of data (learn it from statistic)
# This symbol $ when I want choose feature from dataset
# == to check the condition

# Adding the package for function filter(it doesnt work without this so i find it in google)
library(dplyr)

absence_Sand <- filter(df_absence, df_absence$Substrate=="Sand")
presence_Sand <- filter(df_presence, df_presence$Substrate=="Sand")

absence_Finemud <- filter(df_absence, df_absence$Substrate=="Fine mud")
presence_Finemud <- filter(df_presence, df_presence$Substrate=="Fine mud")

absence_Posidonia_oceanica_meadows <- filter(df_absence, df_absence$Substrate=="Posidonia oceanica meadows")
presence_Posidonia_oceanica_meadows <- filter(df_presence, df_presence$Substrate=="Posidonia oceanica meadows")

absence_Seabed_Sandy_mud <- filter(df_absence, df_absence$Substrate=="Seabed Sandy mud")
presence_Seabed_Sandy_mud<- filter(df_presence, df_presence$Substrate=="Seabed Sandy mud")

absence_Coarse_mixed_sediment <- filter(df_absence, df_absence$Substrate=="Coarse and mixed sediment")
presence_Coarse_mixed_sediment <- filter(df_presence, df_presence$Substrate=="Coarse and mixed sediment")


absence_Muddy_sand <- filter(df_absence, df_absence$Substrate=="Muddy sand")
presence_Muddy_sand<- filter(df_presence, df_presence$Substrate=="Muddy sand")

presence_Dead_mattes_of_Posidonia_oceanica<- filter(df_presence, df_presence$Substrate=="Dead mattes of Posidonia oceanica")
absebce_Dead_mattes_of_Posidonia_oceanica<- filter(df_absence, df_absence$Substrate=="Dead mattes of Posidonia oceanica")

presence_Cymodocea_nodosa_meadows <- filter(df_presence, df_presence$Substrate=="Cymodocea nodosa meadows")
absebce_Cymodocea_nodosa_meadows <- filter(df_absence, df_absence$Substrate=="Cymodocea nodosa meadows")

presence_SeabedSeabed <- filter(df_presence, df_presence$Substrate=="SeabedSeabed")
absebce_SeabedSeabed <- filter(df_absence, df_absence$Substrate=="SeabedSeabed")









# Plot medeitraniean sea

# Trim the plot of mediteranian sea

# Plot diffrents substrate type for absence data


# Perform pca to reduce dimension 




# Plot diffrents substrate type for presence data


# Perform pca to reduce dimension 


# Correlation between presence and absence data









