# Setting up library
install.packages("dplyr")
library("dplyr")

# Basic functionalities 
iris %>% head() %>% nrow()

# Filtering columns
iris %>% select(Species, Sepal.Length) %>% head()
iris %>% select(-Sepal.Length) %>% head()
iris %>% select(Sepal.Length:Petal.Length) %>% head()
iris %>% select(starts_with("s")) %>% head()
iris %>% select(ends_with("Length")) %>% head()
iris %>% select(contains("Petal")) %>% head()
iris %>% select(matches("petal")) %>% head()
iris %>% select_if(is.numeric) %>% head()
iris %>% top_n(n = 10, wt = Sepal.Length) # top values based on wt param

# we can use ~ for conditional statements and then providing code which results in boolean
# column of the data should go by dot (.) symbol 
iris %>% select_if(~is.numeric(.) & n_distinct(.) > 30)

# filtering rows
iris %>% slice(2:5)
iris %>% slice(100:n())
iris %>% slice(-(1:floor(n()/3))) # n() represents the row count

iris %>% filter(Species == "setosa")
iris %>% filter(Species == "setosa", Sepal.Width  > mean(Sepal.Width))  

iris %>% filter_all(any_vars(.>mean(.))) # filter for any row with column value >  mean of column
iris %>% filter_all(any_vars(abs(.-mean(.)) > 2*sd(.)))


iris %>% filter_if(is.numeric, all_vars(. < mean(.)))
iris %>% filter_at(vars(ends_with("Length")))


# Working with colnames
iris %>% colnames()
iris %>% rename(sepal_length = Sepal.Length) %>% head()
str_to_lower <- function(x) { tolower(x)}
iris %>% select_all(str_to_lower) %>% head()
iris %>% rename_if(is.numeric, str_to_lower) %>% head()
iris %>% rename_at(vars(starts_with("P")), str_to_lower) %>% head()


install.packages("tibble")
library("tibble")
mtcars %>% rownames_to_column("car") %>% head() # getting index as column with column name as "car"



# Re - arranging the data
iris %>% arrange(desc(Species), Sepal.Length) %>% head()
iris %>% arrange_all() %>% head()
iris %>% arrange_if(is.character, desc) %>% head()
iris %>% arrange_at(vars(Species, starts_with("P")), desc) %>% head()

iris %>% select(starts_with("P"), everything()) %>% head() # everything -> all back!
iris %>% select(sort(current_vars())) %>% head()



# changing your data
iris %>% mutate(Sepal.Area = Sepal.Length* Sepal.Width) %>% head()
iris %>% mutate(Sepal.Width = NULL) %>% head() # deleting a column by assigning as null
iris %>% mutate(Sepal.Area = Sepal.Length* Sepal.Width,
                Sepal.Width = NULL,
                Sepal.Length = Sepal.Length*0.9) %>% head()
iris %>% mutate(id = row_number()) %>% head()
iris %>% mutate(prev = lag(Sepal.Length), future = lead(Sepal.Length)) %>% head()
iris %>% mutate(sp_cd = case_when(Species == "setosa" ~"s", 
                                  Species == "versicolor"~ "vs",
                                  Species == "virginica"~ "vr"
)) %>% select(Species, sp_cd) %>% distinct()
iris %>% transmute(Sepal.Length, Sepal.Width = floor(Sepal.Width)) %>% head() # selects only needed

# Summarising your data
iris %>% summarise(mean(Sepal.Length), mean_sepal_length = mean(Sepal.Width))
iris %>% summarise(n = n(), 
                   unique = n_distinct(Species), 
                   first = first(Species),
                   last = last(Species),
                   `51st` = nth(Species, 51))
iris %>% summarise_all(n_distinct)
iris %>% summarise_if(is.numeric, sum)
iris %>% summarise_at(vars(Sepal.Length:Petal.Length), mean)


# Summarising on different groups
iris %>% group_by(Species) %>% summarise(mean(Sepal.Length))
iris %>% group_by(Species) %>% mutate(avg.sepal.length = mean(Sepal.Length))
iris %>% group_by(Species) %>% slice(1)
iris %>% head(3)
iris %>% group_by(Species) %>% arrange(desc(Sepal.Length))
iris %>% group_by(Species) %>% mutate(n= n()) %>% 
  group_by(Sepal.Length, add = TRUE) %>% mutate(n_sepal_length = n())
iris %>% group_by(Species) %>% mutate(n= n()) %>% ungroup() %>% head()
iris %>% group_by_all() %>% summarise(nrows = n())
iris %>% group_by_if(~n_distinct(.) < 30) %>% summarise(n = n())
iris %>% group_by_at(vars(starts_with("S"))) %>% summarise(n=n())

# Combing datasets
iris1 <- data_frame(species = c("setosa", "virginica", "VERSICOLOR"), color = c("Red", "Green", "Blue"))

# 1. CROSS JOIN
iris %>% mutate(dummy = 1) %>% full_join({iris1 %>% mutate(dummy = 1)}, by = "dummy") %>% select(-dummy) # the cross join!
# or for cross join, we can create a function
cross_join <- function(x,y){
  x %>%
    mutate(dummy_col = 1) %>%
    full_join ({
      y%>%
        mutate(dummy_col = 1)
    }, by = "dummy_col") %>%
    select(-dummy_col)
}
cross_join(iris, iris1)

# 2. Others
iris %>% left_join(iris1, c("Species" = "species"))
iris %>% inner_join(iris1, c("Species" = "species"))
iris %>% full_join(iris1, c("Species" = "species"))
iris %>% anti_join(iris1, c("Species" = "species")) # filters out where match is found in leftjoin
iris %>% cross_join(iris1)

iris1[, 1] %>% bind_cols(iris1[, 2]) # same rows? combine the two!
iris1[1,] %>% bind_rows(iris1[2,]) # same rows? combine the two!

iris %>%
  cross_join(iris) %>%
  filter(Species.x == Species.y, 
         Sepal.Length.x < Sepal.Length.y) %>% head()

iris %>% sample_n(50) # pick random sample of rows
iris %>% sample_n(50) %>% union(sample_n(iris, 75))
iris %>% sample_n(50) %>% select(-Species) %>% bind_rows(sample(iris, 50, replace = T))

iris2 <- iris[1:50, 1:4]
iris4 <- iris[100:150, 1:4]

list(iris2, iris4) %>% bind_rows() %>% nrow()


# Pivoting the data
install.packages("tidyr")
library("tidyr")

mtcars2 <- mtcars %>% rownames_to_column("car") 
mtcars2
mtcars2 %>% gather(measure, value, -car)

cyl_am_grped <- mtcars2 %>% group_by(cyl, am) %>% summarise(avg = mean(mpg))
cyl_am_grped
cyl_am_grped %>% spread(am, avg)
cyl_am_grped %>% spread(am, avg , sep = ":")

data_temp <- data_frame(measure = c("net 2017", "gross 2017"))
data_temp %>% separate(measure, c("type", "year"), sep = " ", remove = F)
data_temp %>% separate(measure, c("type", "year"), sep = " ", remove = F, convert = T) # convert dtype
