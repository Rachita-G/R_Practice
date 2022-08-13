##### Working with directories #####

# clean directory
rm(list = ls())

# working directories
getwd()
setwd("/cloud/project/Basics")

# with directories
color <- "red"
age = 24
gender <- "Male"
ls()
ls(pattern = "g") # search with pattern
ls(all.names = T) # all hidden files as well which starts with dot(.)
rm(gender)
ls()

##### help functions #####
?args
help(log)

args(round) # arguments required for the function

###### installing packages #####
install.packages("readxl")
library("readxl")

data_dic <- read_excel("Excel 102_Assignment_Rachita_Grover_A5043.xlsx", sheet = 2)
data_dic

# list installed packages
installed.packages()

# remove packages
remove.packages("readxl")

# reading data
# read.csv, read_excel, read.delim(with separated by \t, or ",")
# read.fwf (to read file with fixed width format)
# load("...RData")

###### Saving Data ######
?write.table
# remember to add row.names = F, to not take in index column as well.
# save(data, location)