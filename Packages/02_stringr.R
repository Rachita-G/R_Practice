install.packages("stringr")
library("stringr")

st <- "this is HoRribbly typed StrinG! "
str_detect(st, "this")
str_extract(st, "typed.*")
str_replace(st, "typed", "written")
str_replace_all(st, "r", "b")
str_count(st, "[Rr]")

str_extract(st, "[aeiou]") # first vowel
str_detect(st, "[:punct:]$") # string ends in punctuation?
str_detect(st, "[Rr]{2}") # is r twice in a row?


str_split(st, "R")
str_split(st, " ")
str_split(st, boundary("word"))
str_split(st, boundary("sentence"))

str_to_lower(st)
str_to_title(st)
str_to_upper(st)
str_trim(st)

number <- c("02", "11","08", "9")
str_order(number, numeric = T)
str_sort(number, numeric = T)
str_length(number)

install.packages("forcats")
library("forcats")
number %>% map(str_detect, "0")
