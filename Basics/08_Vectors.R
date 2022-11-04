# vectors - only one datatype else coverts them to one!
vec <- c(1,2,"T") # coersion! Takes all as string type
vec
vec3 <- c(1,2,T, F)
vec3 # all as int. True =1, False = 0
vec[-length(vec)] # "-" represents the negation. except the last, print all elements
class(vec)
rev(vec)


age=c(22,27,30)
attributes(age)
names(age)
names(age)=c("rach","sanj","mom")
attributes(age)
names(age)=NULL
attributes(age)


vec2 <- c(1,2,6,8,2,1,2)
length(vec2)
sort(vec2, decreasing = F)
order(vec2, na.last  = F)
rev(vec2)
rank(vec2)
table(vec2)
unique(vec2) 
subset(vec2 , vec2<5)
scale(vec2)
(vec2-mean(vec2))/sd(vec2) # check the scaling

vec3 <- c(NA, NULL,4,3, Inf)
na.omit(vec3) # omit na values
na.fail(vec3) # returns error if vector contains atleast one NA
na.fail(vec2) # otherwise returns the vector
is.na(vec3)
is.null(vec3)
which(is.na(vec3)) # index where element is NA
is.finite(vec3) # na is also not finite
mean(vec3, na.rm = T)

sample(1:10, size = 2) # get 2 samples from set 1:10
sample(1:10, size = 2, replace = T) # get samples with replacement
sort(c(1,4,3,6,2,7), decreasing = T) # sorting values in the vector provided
rep(c(2,4,6), times = 3, each = 2) # repeats each element twice and all of them together thrice!
seq(from = 4,to = 5, length.out = 10) # spread the numbers between 4 to 5 in range of 10 values
replicate(n = 10, expr = sample(1:10, size = 2)) # repeats  expr n times
choose(n = 10, k = 5) # gives the value for nCk in combination - n!/k!(n-k)!



vec4 <- c(3.3, 4.5, 0.1, 8.9, 10)
breaks <- c(0, 2,4,6,8,10)
cut(vec4, breaks)
cut(vec4, breaks, right = F)
cut(vec4, breaks, right = F, include.lowest = T)

vec5 <- letters[1:10]
vec5

# comparisons
8 %in% 1:9
match(x = 2, table = c(8,7,6,2)) # returns index of match found in vector
pmin(c(2,3,1,9), c(5,0,4,1)) # returns min element of each comparing by indexes
pmax(c(2,3,1,9), c(5,0,4,1)) # visa versa
which(c(2,3,5,1,6) == 3) # returns index where match is found
table(c(2,3,1,9), c(5,0,4,1)) # returns continguency table

# Lists - collection of different types of elements
lis <- list(c(1,2,3), TRUE, "HI", 2+9i)
lis
names(lis) <- c("vector", "logical", "charater", "complex")
lis
lis$nested <- list("matrix" = matrix(1:4,2,2), "another_char" = "nested one!")
