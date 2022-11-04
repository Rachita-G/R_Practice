
# Custom functions - Ex: Rolling n number of dice and get the sum 
roll <- function(dice_n = 1){
  die <- 1:6
  dice<- sample(die, size = dice_n, replace = T)
  sum(dice)
}
roll()
roll(10)

Add_mul = function(x,y){
  Cal = x + y
  cal1 = x*y
  return(c(Cal, cal1))
}
Add_mul(5, 3)




# Conditional Statements
x <- -1
if(x > 0){
  print("positive number")
} else if (x == 0) {
  print("zero number")
} else {
  print("negative number")
}

ifelse(x >= 0, "positive", "negative")

switch(EXPR = 1, "first", "second", "third", "forth")

count =  0
repeat{
  print(count)
  count <- count+1
  if (count > 3){
    break
  }
}

# Fibonacci sequence - Comma sepearted
fib.a=1
fib.b=1
cat(fib.b,",",sep="")
repeat{
  temp=fib.a+fib.b
  fib.a=fib.b
  fib.b=temp
  cat(fib.b,",",sep="") # print comma after printing the fib number
  if(fib.b>200){cat("break now")
    break
  }
}


print(count)
while(count > 0){
  print(count)
  count <- count - 1
}
print(count)


for (i in letters[1:5]){
  print(i)
}

for (i in letters[1:5]){
  if ( i == "d"){
    break
  }
  print(i)
}

for (i in letters[1:5]){
  if ( i == "d"){
    next
  }
  print(i)
}

which(c(3,-8,2,-1) > 0)


##### Trycatch
ls_vec = list(1, 2, 5, 6, "India", 7, 4, 5)

for(i in ls_vec){
  print(5 + i)
}

# Use try catch to skip this error
for(i in ls_vec){
  tryCatch({
    print(5 + i)
  }, error = function(e){print("Non-Numeric")})
}



