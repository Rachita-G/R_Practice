# Data frames - tabular data objects
df <- data.frame(code = c(1,2,3), 
                 gender = c("m", "f", "m"),
                 age = c(12,22,15), 
                 stringsAsFactors = F) # if not last one - strings are factors then!
colnames(df)
names(df)
df$gender
dim(df)

# all possible combinations of values 
df2 <- expand.grid(h = c(10, 20), w = c(100, 300), sex = c("m", "f"))
class(df2)
df2$h

# merging datasets
iris1 <- data.frame(species = c("setosa", "virginica", "VERSICOLOR"), color = c("Red", "Green", "Blue"))
merge(iris, iris1, by.x = "Species", by.y = "species", all.x = T) # left
merge(iris, iris1, by.x = "Species", by.y = "species", all.x = T, all.y = T) #outer
merge(iris, iris1, by.x = "Species", by.y = "species") # inner

# summarising data - like = group_by or summarise in dplyr
aggregate(iris$Sepal.Length, by = list(iris$Species), FUN = sum)
library(dplyr)
iris %>% group_by(Species) %>% summarise(sum = sum(Sepal.Length))
