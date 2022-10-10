# Data frames - tabular data objects
df <- data.frame(code = c(1,2,3, NA), 
                 gender = c("m", "f", "m", "f"),
                 age = c(12,22,15,20), 
                 stringsAsFactors = F) # if not last one - strings are factors then!
colnames(df) # or names(df)
rownames(df)
dim(df)
nrow(df)
ncol(df)
str(df) # data structure
summary(df)
class(df) # data type
head(df) # tail(df)
View(df)
sum(is.na(df)) # records with na as value

##### Slicing
df[1:3,]
df[c(1,4),]


##### Exploring from variables
df$gender
unique(df$gender)
uniqueN(df$gender)
order(df$age)
length(unique(df$gender))
table(df$gender) # data distribution
summary(df$gender)
print(df)


# rbind(), cbind()

##### all possible combinations of values 
df2 <- expand.grid(h = c(10, 20), w = c(100, 300), sex = c("m", "f"))
head(df2)

##### Merging datasets
iris1 <- data.frame(species = c("setosa", "virginica", "VERSICOLOR"), color = c("Red", "Green", "Blue"))
merge(iris, iris1, by.x = "Species", by.y = "species", all.x = T) # left
merge(iris, iris1, by.x = "Species", by.y = "species", all.x = T, all.y = T) #outer
merge(iris, iris1, by.x = "Species", by.y = "species") # inner

###### summarizing data - like = group_by or summarise in dplyr
aggregate(iris$Sepal.Length, by = list(iris$Species), FUN = sum)
library(dplyr)
iris %>% group_by(Species) %>% summarise(sum = sum(Sepal.Length))
iris %>% group_by(Species) %>% summarise_if(is.numeric, sum)
# df[df$age %in% c(12,55)]
