# vectors - only one datatype else coverts them to one!
vec <- c(1,2,"T") # coersion!
vec
vec[-length(vec)] # "-" represents the negation. except the last, print all elements
class(vec)
rev(vec)

vec2 <- c(1,2,6,8,2,1,2)
sort(vec2, decreasing = F)
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


vec4 <- c(3.3, 4.5, 0.1, 8.9, 10)
breaks <- c(0, 2,4,6,8,10)
cut(vec4, breaks)
cut(vec4, breaks, right = F)
cut(vec4, breaks, right = F, include.lowest = T)

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