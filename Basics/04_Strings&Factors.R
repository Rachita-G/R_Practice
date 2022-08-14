##### Basic String functions #####
st <- "Rachita"
length(st)
nchar(st)
toupper(st)
tolower(st)
substr(st, 5, 10)

##### Pattern matching and replacement ######
grep("a", st) # find pattern. Returns 1 if found
grepl("a", st) # returns in T/F
regexpr("a", st) # details of only first occurrence
gregexpr("a", st) # details of all occurrences found
regexec("a",st) # first occurrence details

sub("a", "x", st) # replaces only first occurrence
gsub("a", "x", st) # replaces all occurrences found

##### Printing strings in different formats #####
cat("hello", "world!") # like concat! 
paste("hello", "world") # by default seperated by space
paste0("hello", "world") # not sepeated by any space
paste("hello", "world", sep ="") # specify the seperator
paste(c(1,2,"r"), collapse = "-")
sprintf("%s is %f feet tall", "Ashley", 5.1) # formatted printing of string

format(3.17234, digits = 3)
format(3.17234, scientific = T)
format(3.17234, nsmall = 10) # minimum number of digits to the right of decimal point
format(7) # treats everything  as a string
format(13.7, width = 8)
format("hi", width = 8, justify = "c")
format("hi", width = 8, justify = "r")
format("hi", width = 8, justify = "l")

# escape characters
print("this string is\n split \t to neww \b \n\n lines")



# Factors - stores vector along with the distinct valyes of the elements in labels (which are always character)
months <- c("jan", "feb", "mar", "feb", "jan", "jan", "mar")
months
levels_order <- c("jan", "feb", "mar")
factored_months <- factor(months, levels = levels_order, ordered= T)
factored_months
levels(factored_months)
nlevels(factored_months)
sort(factored_months)


factor(1:3)

factor(1:3, levels = 1:5)
factor(1:3, labels = c("a","b","c"))
factor(1:5, exclude = 4)
factor(c(2,4), levels = 2:5)
