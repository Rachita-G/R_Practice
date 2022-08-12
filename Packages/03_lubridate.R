install.packages("lubridate")
library("lubridate")
ymd("20220901")
ymd_hms(c("20210905110010", "20210905 11:00:01", "2021/06/05/11/01/01", "2021 september 14th, 11:01:01"))

now <- Sys.time()         
year(now)
month(now)
day(now)
week(now)
yday(now)
mday(now)
wday(now)
wday(now, label = T)
wday(now, label = T, abbr = F)
hour(now)
minute(now)
second(now)

today <- Sys.Date()
today + years(1)
today + months(1)
today - minutes(10)


format(today, "%Y year, %m month, %d day")
format(today, '%c')
format(today, '%D') # American style shorthand
format(today, '%F') # ISO Standard Date Format
format(now, '%z') # numeric timezone
format(now, '%Z') # timezone abbreviation

floor_date(ymd("20211020"), "month") # first day of the month
ceiling_date(ymd("20211020"), "month") # first day of next month
ceiling_date(ymd("20210920"), "month")  - days(1) # last day of the month

ymd(c("20190901", "20180701")) %m+% months(1)
ymd(c("20190901", "20180701")) +months(1)
ymd(c("20190901")) +months(1:4)

ymd(c("20201010", "20210101")) %within% interval(ymd("20190101"), ymd("20201015"))
int_overlaps(interval(ymd("20210101"), ymd("20220809")), 
             interval(ymd("20210809"), ymd("20190101")))


