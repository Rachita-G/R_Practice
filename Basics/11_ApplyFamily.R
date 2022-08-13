
##### Apply function ######
apply(mtcars, MARGIN = 1, FUN = sum)
apply(mtcars, MARGIN = 2, FUN = sum)
mtcars$letters <- as.character(as.factor(1:32))
mtcars$letters
apply(mtcars, MARGIN = 1, FUN = sum) # can't as now as we have new column is a character
apply(mtcars[,-length(names(mtcars))], MARGIN = 1, FUN = sum)
mtcars[3,6] <- NA # adding NA
apply(mtcars[,-length(names(mtcars))], MARGIN = 1, FUN = sum) # observe na for datsun
apply(mtcars[,-length(names(mtcars))], MARGIN = 1, FUN = sum, na.rm = T) #na removed!

scaled_data <- function(x){
  (x-mean(x,na.rm = T))/sd(x, na.rm = T)
}
apply(mtcars[,-length(names(mtcars))], MARGIN = 1, FUN = scaled_data) 

##### Lapply function ######
# used to apply in lists, data frame, vector

lis <- list("a" = c(1,2,4), "b" =  c(4,5,7))
lis
lapply(lis, mean) # apply to each vector in the list

df <- as.data.frame(lis)
lapply(df, min) # applies to each column

lapply(c("this" , "is", "random", "vector"), nchar) # in form of list
nchar(c("this" , "is", "random", "vector")) # in form of vector


##### Sapply function #####
# similar to lapply but simplifies the output based on the result

lis
lapply(lis, mean)
sapply(lis, mean)

df <- as.data.frame(lis)
sapply(df, min)
lapply(df, min)

lapply(c("this" , "is", "random", "vector"), nchar) # in form of list
sapply(c("this" , "is", "random", "vector"), nchar) 
nchar(c("this" , "is", "random", "vector")) # in form of vector

sequence <- function(x){
  seq(nchar(x))
}
sapply(c("this" , "is", "random", "vector"), sequence)
