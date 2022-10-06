# Loading Packages
install.packages("lubridate")
library("lubridate")

# Parsing components
now()
today()
date_decimal(2017.5)
fast_strptime('9/1/05', '%y/%m/%d') # faster
parse_date_time("09-01-02", "y/m/d") # easier
ymd_hms("2017-11-28T14:02:00")
ydm_h("20172811T14")
ymd("20220901")
ymd_hms(c("20210905110010", "20210905 11:00:01", "2021/06/05/11/01/01", "2021 september 14th, 11:01:01"))
yq("2001: Q3")
my("07-2020")
ym("202009")
hms::hms(sec = 0, min= 1,hours = 2)

# Formatting dates
format(today, "%Y year, %m month, %d day")
format(today, '%c')
format(today, '%D') # American style shorthand
format(today, '%F') # ISO Standard Date Format
format(now, '%z') # numeric timezone
format(now, '%Z') # timezone abbreviation

# get and set components
now <- Sys.time()  
now
date(now)
year(now)
leap_year(now) # is it a leap year?
isoyear(now) # The ISO 8601 year.
epiyear(now) # Epidemiological year.
month(now)
day(now)
quarter(now)
semester(now)
week(now)
yday(now)
mday(now)
qday(now) # day of quarter
wday(now)
wday(now, label = T)
wday(now, label = T, abbr = F)
hour(now)
minute(now)
second(now)
am(now)
pm(now) # is it am/pm?
dst(now) # daylight savings?
tz(now) # timezone - should be "UTC"
now
update(now, mday = 1, hour = 3) # update it to, change month to 1st - Jan and hour to 3 hours 

# Operations on dates
today <- Sys.Date()
today + years(1)
today + months(1)
today - minutes(10)
ymd(c("20190901", "20180701")) %m+% months(1)
ymd(c("20190901", "20180701")) +months(1)
ymd(c("20190901"))+months(1:4)
ymd(c("20201010", "20210101")) %within% interval(ymd("20190101"), ymd("20201015"))
int_overlaps(interval(ymd("20210101"), ymd("20220809")), 
             interval(ymd("20210809"), ymd("20190101")))

# Rounding date times
# Valid units - second, minute, hour, day, week, month, bimonth, quarter, season, halfyear and year.
dt <- ymd("20211020")
floor_date(dt, "month") # first day of the month
ceiling_date(dt, "month") # first day of next month
ceiling_date(dt, "month")  - days(1) # last day of the month
round_date(dt, "month")
rollback(dt) # rollback to previous month
rollback(dt, roll_to_first = T, preserve_hms = F)

# Stamp is used to derive a template from an example string and return a new function that will apply the template to date-times.
sf <- stamp("Created Sunday, Jan 17, 1999 3:34")
sf(ymd("2010-04-05"))

# Time zones
dt <- now()
with_tz(dt, "US/Pacific") # Get the same date-time in a new time zone (a new clock time).
force_tz(dt, "US/Pacific") # Get the same clock time in a new time zone (a new date-time).
force_tzs(dt, "US/Pacific") # without Tz in date
local_time(dt) # time difference

