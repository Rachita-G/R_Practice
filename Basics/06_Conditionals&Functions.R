
# Custom functions - Ex: Rolling n number of dice and get the sum 
roll <- function(dice_n = 1){
  die <- 1:6
  dice<- sample(die, size = dice_n, replace = T)
  sum(dice)
}
roll()
roll(10)



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

