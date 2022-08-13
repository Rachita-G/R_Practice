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