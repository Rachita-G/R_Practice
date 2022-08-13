# 5 atomic classes
class(9)
class(9L)
class(8+9i)
class("char")
class(TRUE)
class(charToRaw("Hello")) # "hello" stored as 48 65 6c 6c 6f

# data types
typeof(-9)
typeof(9L)
typeof(9+8i)
typeof("char")
typeof(TRUE)

# Special operators
log(0)
1/0
1/Inf
-Inf+Inf
0/0



# check for data types
x <- 9
is.integer(x)
is.numeric(x)

x <- 9L
is.integer(x)
is.numeric(x)

x <- Inf
is.finite(x)
is.infinite(x)

x <- NaN
is.finite(x)
is.infinite(x)
is.nan(x)
is.na(x)

x <- NA
is.finite(x)
is.infinite(x)
is.nan(x)
is.na(x)

x <- NULL
is.finite(x)
is.infinite(x)
is.nan(x)
is.na(x)
is.null(x)


# converting datatypes
as.character(9)
as.character(TRUE)

as.logical(0) # apart from 0 all are TRUE numbers!
as.logical(100)
as.logical("FALSE")
as.logical("CHAR")

as.numeric(FALSE)
as.numeric("1")
as.numeric("a")

as.integer(9)

as.factor(c("m", "f"))
as.factor(c(1,10))

# others - as.matrix, as.data.frame, as.ts, as.expression
