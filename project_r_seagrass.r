
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

#extract 9 substrates 
#filter the specific part of data (learn it from statistic)
# this symbol $ when i want choose feature from dataset
# == to check the condition

#adding the package for function filter(it doesnt work without this so i find it in google)
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
#for latitude longitude of all over the world
#install.packages(c("rnaturalearth","rnaturalearthdata" ))
library("rnaturalearth")
library("rnaturalearthdata")
worldmap <- ne_countries(scale = 'medium', type = 'map_units',
                         returnclass = 'sf')
library(ggplot2)
#plot absence sand
ggplot() + geom_sf(data = worldmap, color = "white", fill = "gray") +
  coord_sf(xlim = c(-5.6, 36.29), ylim = c(30.18, 45.97), expand = FALSE) + 
  geom_point(data = absence_Sand, aes(x = LONGITUDE, y = LATITUDE), size = 0.5, 
             shape = 21, fill = "red") +
  theme(
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    panel.background = element_rect(fill = "darkturquoise"))
#plot absence_Finemud
ggplot() + geom_sf(data = worldmap, color = "white", fill = "gray") +
  coord_sf(xlim = c(-5.6, 36.29), ylim = c(30.18, 45.97), expand = FALSE) + 
  geom_point(data = absence_Finemud, aes(x = LONGITUDE, y = LATITUDE), size = 0.5, 
             shape = 21, fill = "red") +
  theme(
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    panel.background = element_rect(fill = "darkturquoise"))
#absence_Posidonia_oceanica_meadows 
ggplot() + geom_sf(data = worldmap, color = "white", fill = "gray") +
  coord_sf(xlim = c(-5.6, 36.29), ylim = c(30.18, 45.97), expand = FALSE) + 
  geom_point(data = absence_Posidonia_oceanica_meadows , aes(x = LONGITUDE, y = LATITUDE), size = 0.5, 
             shape = 21, fill = "red") +
  theme(
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    panel.background = element_rect(fill = "darkturquoise"))
#absence_Seabed_Sandy_mud 
ggplot() + geom_sf(data = worldmap, color = "white", fill = "gray") +
  coord_sf(xlim = c(-5.6, 36.29), ylim = c(30.18, 45.97), expand = FALSE) + 
  geom_point(data = absence_Seabed_Sandy_mud , aes(x = LONGITUDE, y = LATITUDE), size = 0.5, 
             shape = 21, fill = "red") +
  theme(
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    panel.background = element_rect(fill = "darkturquoise"))
#absence_Coarse_mixed_sediment 
ggplot() + geom_sf(data = worldmap, color = "white", fill = "gray") +
  coord_sf(xlim = c(-5.6, 36.29), ylim = c(30.18, 45.97), expand = FALSE) + 
  geom_point(data = absence_Coarse_mixed_sediment , aes(x = LONGITUDE, y = LATITUDE), size = 0.5, 
             shape = 21, fill = "red") +
  theme(
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    panel.background = element_rect(fill = "darkturquoise"))
#absence_Muddy_sand
ggplot() + geom_sf(data = worldmap, color = "white", fill = "gray") +
  coord_sf(xlim = c(-5.6, 36.29), ylim = c(30.18, 45.97), expand = FALSE) + 
  geom_point(data = absence_Muddy_sand, aes(x = LONGITUDE, y = LATITUDE), size = 0.5, 
             shape = 21, fill = "red") +
  theme(
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    panel.background = element_rect(fill = "darkturquoise"))
#absebce_Dead_mattes_of_Posidonia_oceanica
ggplot() + geom_sf(data = worldmap, color = "white", fill = "gray") +
  coord_sf(xlim = c(-5.6, 36.29), ylim = c(30.18, 45.97), expand = FALSE) + 
  geom_point(data = absebce_Dead_mattes_of_Posidonia_oceanica, aes(x = LONGITUDE, y = LATITUDE), size = 0.5, 
             shape = 21, fill = "red") +
  theme(
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    panel.background = element_rect(fill = "darkturquoise"))
#absebce_Cymodocea_nodosa_meadows
ggplot() + geom_sf(data = worldmap, color = "white", fill = "gray") +
  coord_sf(xlim = c(-5.6, 36.29), ylim = c(30.18, 45.97), expand = FALSE) + 
  geom_point(data = absebce_Cymodocea_nodosa_meadows, aes(x = LONGITUDE, y = LATITUDE), size = 0.5, 
             shape = 21, fill = "red") +
  theme(
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    panel.background = element_rect(fill = "darkturquoise"))
#absebce_SeabedSeabed
ggplot() + geom_sf(data = worldmap, color = "white", fill = "gray") +
  coord_sf(xlim = c(-5.6, 36.29), ylim = c(30.18, 45.97), expand = FALSE) + 
  geom_point(data = absebce_SeabedSeabed, aes(x = LONGITUDE, y = LATITUDE), size = 0.5, 
             shape = 21, fill = "red") +
  theme(
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    panel.background = element_rect(fill = "darkturquoise"))
#presence_Sand
ggplot() + geom_sf(data = worldmap, color = "white", fill = "gray") +
  coord_sf(xlim = c(-5.6, 36.29), ylim = c(30.18, 45.97), expand = FALSE) + 
  geom_point(data = presence_Sand, aes(x = LONGITUDE, y = LATITUDE), size = 0.5, 
             shape = 21, fill = "yellow") +
  theme(
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    panel.background = element_rect(fill = "darkturquoise"))
#presence_Finemud
ggplot() + geom_sf(data = worldmap, color = "white", fill = "gray") +
  coord_sf(xlim = c(-5.6, 36.29), ylim = c(30.18, 45.97), expand = FALSE) + 
  geom_point(data = presence_Finemud, aes(x = LONGITUDE, y = LATITUDE), size = 0.5, 
             shape = 21, fill = "yellow") +
  theme(
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    panel.background = element_rect(fill = "darkturquoise"))
#presence_Posidonia_oceanica_meadows
ggplot() + geom_sf(data = worldmap, color = "white", fill = "gray") +
  coord_sf(xlim = c(-5.6, 36.29), ylim = c(30.18, 45.97), expand = FALSE) + 
  geom_point(data =presence_Posidonia_oceanica_meadows, aes(x = LONGITUDE, y = LATITUDE), size = 0.5, 
             shape = 21, fill = "yellow") +
  theme(
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    panel.background = element_rect(fill = "darkturquoise"))
#presence_Seabed_Sandy_mud
ggplot() + geom_sf(data = worldmap, color = "white", fill = "gray") +
  coord_sf(xlim = c(-5.6, 36.29), ylim = c(30.18, 45.97), expand = FALSE) + 
  geom_point(data = presence_Seabed_Sandy_mud, aes(x = LONGITUDE, y = LATITUDE), size = 0.5, 
             shape = 21, fill = "yellow") +
  theme(
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    panel.background = element_rect(fill = "darkturquoise"))
#presence_Coarse_mixed_sediment
ggplot() + geom_sf(data = worldmap, color = "white", fill = "gray") +
  coord_sf(xlim = c(-5.6, 36.29), ylim = c(30.18, 45.97), expand = FALSE) + 
  geom_point(data = presence_Coarse_mixed_sediment, aes(x = LONGITUDE, y = LATITUDE), size = 0.5, 
             shape = 21, fill = "yellow") +
  theme(
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    panel.background = element_rect(fill = "darkturquoise"))
#presence_Muddy_sand
ggplot() + geom_sf(data = worldmap, color = "white", fill = "gray") +
  coord_sf(xlim = c(-5.6, 36.29), ylim = c(30.18, 45.97), expand = FALSE) + 
  geom_point(data = presence_Muddy_sand, aes(x = LONGITUDE, y = LATITUDE), size = 0.5, 
             shape = 21, fill = "yellow") +
  theme(
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    panel.background = element_rect(fill = "darkturquoise"))
#presence_Dead_mattes_of_Posidonia_oceanica
ggplot() + geom_sf(data = worldmap, color = "white", fill = "gray") +
  coord_sf(xlim = c(-5.6, 36.29), ylim = c(30.18, 45.97), expand = FALSE) + 
  geom_point(data = presence_Dead_mattes_of_Posidonia_oceanica, aes(x = LONGITUDE, y = LATITUDE), size = 0.5, 
             shape = 21, fill = "yellow") +
  theme(
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    panel.background = element_rect(fill = "darkturquoise"))
#presence_Cymodocea_nodosa_meadows
ggplot() + geom_sf(data = worldmap, color = "white", fill = "gray") +
  coord_sf(xlim = c(-5.6, 36.29), ylim = c(30.18, 45.97), expand = FALSE) + 
  geom_point(data = presence_Cymodocea_nodosa_meadows, aes(x = LONGITUDE, y = LATITUDE), size = 0.5, 
             shape = 21, fill = "yellow") +
  theme(
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    panel.background = element_rect(fill = "darkturquoise"))
#presence_SeabedSeabed
ggplot() + geom_sf(data = worldmap, color = "white", fill = "gray") +
  coord_sf(xlim = c(-5.6, 36.29), ylim = c(30.18, 45.97), expand = FALSE) + 
  geom_point(data = presence_SeabedSeabed, aes(x = LONGITUDE, y = LATITUDE), size = 0.5, 
             shape = 21, fill = "yellow") +
  theme(
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    panel.background = element_rect(fill = "darkturquoise"))






# Plot diffrents substrate type for absence data


# Perform pca to reduce dimension 




# Plot diffrents substrate type for presence data


# Perform pca to reduce dimension 


# Correlation between presence and absence data









