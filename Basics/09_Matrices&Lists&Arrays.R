# creating 2d array - called matrix
m1 <- matrix(1:6, nrow = 2, ncol = 3, byrow = TRUE, dimnames = list(c("a", "b"), c("x","y","z")))
m1
colnames(m1)

# slicing
m1[,3]
m1[,3,drop = F] # retain the matrix form
m1[,c(1,3)]
m1[,2:3]
m1["b", "y"]
m1[-2,] # excludes 2nd row

# manipulating/changing element values
m1[1,3] <- 100
m1

# functions
diag(m1) # diagonal elements
diag(2) # gives 2*2 identity matrix

m3 <- diag(2)
diag(m3) <- 10
m3

diag(c(10,20))
diag(2.1, nrow = 2)
diag(2.1, nrow = 2, ncol = 3)


dimnames(m1)[[1]] <- c("k", "l") # or colnames as below!
m1["k",]

colnames(m1)
rownames(m1) <- c("a","b")
m1["a", "x"]

dim(m1)
nrow(m1)
ncol(m1)
rowSums(m1)
colSums(m1)
rowMeans(m1)
colMeans(m1)
t(m1) # transpose
2*m1# scalar multiplication
m1*m2 # element wise multiplication
m1 %*% t(m1) # inner matrix multiplication
m1 %o% t(m1) # outer matrix multiplication - every scalar with different 
m2<- matrix(4:9, 2,2)
solve(m2) # inverse of matrix such that a*a_inverse = identity matrix
m2 %*% solve(m2) # approximates to identity matrix

rbind(1:3, 4:6)
cbind(c(1,4), c(8,10))   




# multidimensional matrix is array
arr <- array(1:24, dim= c(2,2,3,2)) # 3*2 matrix of 2*2 size each
arr
dimnames(arr) <- list(c("a","b"), c("c","d"), c("k","l","m"), c("s","t"))
arr


