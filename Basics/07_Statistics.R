###### time series #####
?ts
ts(1:10, start = 1989)
ts(1:10, frequency = 12, start = 1989)
ts(1:10, frequency = 4, start = 1989)


###### expression #####
x <- 3 
y <- 2
exp <- expression(y/x)
exp
eval(exp)

# D returns partial derivative
D(exp, "y")
D(exp, "x")


###### Statistical distribution #####
rpois(10, lambda = 5) # 10 random poisson distribution with lambda as 5
pchisq(3.65,1) # chi square distribution
qnorm(0.25) # normal distribution
qnorm(0.75)

summary(mtcars)

###### Models ######
lm(Sepal.Length~Sepal.Width, iris)
glm(Sepal.Length~Sepal.Width, iris)

# t.test()
# pairwise.test()
# prop.test()
# aov