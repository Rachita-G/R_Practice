##### Working with directories #####

# clean directory
rm(list = ls())

# clear the console
# press ctrl+L

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

# Flush memory
install.packages("DataCombine")
library(DataCombine)
rmExcept(c("color")) # remove except

##### Help Functions #####
?args
??sample # if dont know the function name type keyword with double ?
help(log) # help(functionname)
help(package='dplyr') # opens package documentation
help.search("weighted mean") 

args(round) # arguments required for the function
example(round)
# vignette("tidyr")

ls("package:graphics") # this lists all the packages in the graphics environment
search() # list of environments that R will run when an object is requested.
environment(seq) # shows that "base" is the owner of the sequence function
environment(arrows) #shows that graphics is the owner of the arrows function

###### Installing Packages #####
install.packages(c("readxl","dplyr")) # install the packages
library("readxl") # load the package

data_dic <- read_excel("Excel 102_Assignment_Rachita_Grover_A5043.xlsx", sheet = 2)
data_dic

library("dplyr")
dplyr:select # use particular function from the package

detach("package:readxl") # unload the package
remove.packages("readxl") # remove package in installation list

## PACKAGES IN DATA MANIPULATION
# 1. tidyverse - designed for data science
# 2. dplyr - data manipulation - filter, arrange, mutate
# 3. tidyr - creates a tidy, meaningful arranged data
# 4. tibble - a lighter and useful version of data frame.
# 5. readr - provides alternative way of importing data in R
# 6. ggplot - data visualization package
# 7. purr - used for better functional programming


###### Reading Data #####

# read.csv() has arguments header, colnames, 
# read_excel(), read.delim(filename.csv with separated by \t, or ",")
# read.table('file_name.csv', sep = ",", header = T, stringAsFactors = F)
# read.fwf (to read file with fixed width format)
# load("...RData")
# read.csv2(), read.delim2() when table is seperated by semicolons
# In read.csv, skip_n argument skips the number of rows written
# In read.csv, nrow reads the data till that row number


###### Saving Data ######
?write.table
# write.csv, write.excel
# remember to add row.names = F, to not take in index column as well.
# save(data, location)