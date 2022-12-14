##### Arithmetic Operators ####

# R follows order of operations i.e, mult, div, add , sub
5+5 # add
6-3 # sub
2*5 # multiply
10%%3 # modulo
2^3 # power
10%/%3 # quotient ie, integer devision
2**3 # also exponent!

# complex numbers 
?is.complex()
z=3+4i
z
typeof(z)
Re(z)
Im(z)
Mod(z)
Arg(z)
Conj(z)
?is.raw()
raw(length=2) 


##### Numerical functions #####
length(1:7)
sum(1:7) 
mean(c(1:7, NA, 10), na.rm = T)
median(1:7)

cumsum(1:3)
cumprod(1:3)
cummin(1:3)
cummax(1:3)


max(1:7)
min(1:7)
which.max(c(1,3,9,2)) # return index of maximum number in vector
which.min(c(2,1,4,7))
rank(c(3,2,5,7,9,1))
quantile(c(3,2,5,7,9,1), 0.25)

prod(1:7)
factorial(7)
range(1, 10)
round(3.71542, 3)
signif(3.167843, 4) 
log(1)
log(3, base  = 10)
exp(0)
sin(90)
sqrt(9)


mean(c(3,2,1,3))
median(c(3,2,1,3))
#mode is not available, thus we try to get it as:
x=c(1,2,3,3,3,4,4,4,5,6,7,8,11)
t=table(x) # kinda like a continguency tabke giving the frequencies. mostly used in categorical data
names(t)[which(t==max(t))] # can be unimodal, bimodal or multiple modes(<3 is okay!)
var(c(3,2,1,3,4))
sd(c(3,2,1,3,4))
cov(c(3,2,1,3,4), c(3,2,1,3,4)) # cov(x,x) = var(x)
cor(c(3,2,1,3,4), c(3,2,1,3,4)) # cor(x,x) = 1

sequence(2:4) # creates a sequence of numbers each ebding by the number in argument
gl(3,4) # generate levels 3 numbers (1 to 3), 4 times!
gl(3,4, length = 10)
gl(3,4, length = 15) # if more, repeats!
gl(2,4, label = c("male", "female"))

sample(1:10, size = 2) # get 2 samples from set 1:10
sample(1:10, size = 2, replace = T) # get samples with replacement
sort(c(1,4,3,6,2,7), decreasing = T) # sorting values in the vector provided
rep(c(2,4,6), times = 3, each = 2) # repeats each element twice and all of them together thrice!
seq(from = 4,to = 5, length.out = 10) # spread the numbers between 4 to 5 in range of 10 values
replicate(n = 10, expr = sample(1:10, size = 2)) # repeats  expr n times
choose(n = 10, k = 5) # gives the value for nCk in combination - n!/k!(n-k)!


roll <- function(dice_n = 1){
  die <- 1:6
  dice <- sample(die, size = dice_n, replace = T)
  sum(dice)
}
roll()
roll(5)

replicate(n = 10, expr = roll()) # repeat roll() function/command 10 times
