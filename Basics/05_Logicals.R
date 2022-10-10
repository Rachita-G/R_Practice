# Note that 1 = true and 0 = false
1>2
"a"<"b"
1|0 # logical OR
1||0 
1&&0 # logical AND
1&0
!T # logical NOT
c(T, F) | c(F,F)
c(T, F) || c(F,F)
c(T, F) & c(F,F)
c(T, F) && c(F,F)



# functions

any(c(F, T, F))
all(c(F, T, F))
xor(c(F, T))
example(xor)

identical(10, 5+5, 90-80)
all.equal(3, 2+1, 9-7)


identical(0.9, 1.1-0.2)
all.equal(0.9, 1.1-0.2)
all.equal(0.9, 1.1-0.2, tolerance = 1e-16)


is.na(c(NA, 1,2,3))