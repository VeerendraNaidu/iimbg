# Dates in R

Sys.timezone()## [1] "Asia/Calcutta"
Sys.Date() ## [1] "2019-xx-xx"
Sys.time() ## [1] "20xx-xx-xx xx:xx:x IST"

#Date Classess

#Date- This is the class to use if you have only dates, but no times, in your data.
Sys.Date()  #todays Date

dt1 <- as.Date("2019-12-22")
dt1

#different format of date : Course start
dt2 <- as.Date("02/16/2020", format = "%m/%d/%Y")
dt2

dt3 <- as.Date("December 12, 2019", format = "%B %d, %Y")
dt3

#see list of format symbols:
`?`(strptime)

#calculations with dates:
dt1; dt2
#find the difference between dates:
dt1 - dt2

## in weeks
difftime(dt1, dt2, units = "weeks")

#Add or subtract days:
dt1 + 10
dt2 + 1:20
as.character(dt2 + 0:5, format = '%A, %d %b %B week-%W %Y')
dt1 - 10

dt3 <- as.Date("March 01, 1993", format = "%B %d, %Y")
as.character(dt3 + 0:5, format = '%A, %d %b %B')

dt4 <- Sys.Date() + seq(0,199,2)  #100 dates alternating from current date
#how many dates are in jul and aug
as.character(dt4, '%b')
table(as.character(dt4, '%b'))
month.abb[1:5]

#create a vector of dates and find the intervals between them:
three.dates <- as.Date(c("2019-10-15", "2019-12-22", "2020-01-15"))
three.dates

(sales = trunc(rnorm(100, mean = 60, sd = 10)))
runif(100, min = 50, max = 100)
diff(sales)
diff(sales)
plot(diff(sales), type = 'l')
diff(c(1,2,3,4))
diff(c(1,2,5,4))
diff(three.dates)
diff(three.dates[c(1,3)])

#------
dt2
#create a sequence of dates:
six.weeks <- seq(dt2, length = 6, by = "week")  #diff of 1 week
as.character(six.weeks)
six.weeks

six.weeks <- seq(dt2, length = 6, by = 14) #biweekly (14 days)
six.weeks

six.weeks <- seq(dt2, length = 6, by = "2 weeks")
six.weeks

three.months <- seq(dt2, length = 3, by = "month")
three.months

#see the internal integer representation
unclass(dt2)
dt2 - as.Date("1970-01-01")
## Time difference of x days from Reference Date
# use a different origin, for instance imp
as.Date(1, origin = "2019-01-01")
dt2
as.Date(10, origin = "1970-01-01")  #10 days from origin

#Multiple Dates
x <- c("2015-07-01", "2015-08-01", "2015-09-01")
as.Date(x)

#Time----------------------
#POSIXct:If you have times in your data, this is usually the best class to use.

#create some POSIXct objects:
tm1 <- as.POSIXct("2019-12-22 10:10:00")
tm1

tm2 <- as.POSIXct("221219 11:30:00", format = "%d%m%y %H:%M:%S")
tm2


#specify the time zone:
tm3 <- as.POSIXct("2019-12-22 10:00:00", tz = "GMT")
tm3

#some calculations with times : compare times:
tm2 ; tm1
tm2 > tm1
#ass or substract secons;
tm1
tm1 + 30 #seconds
tm1 - 30
tm1 + 60 *60*2 #hours

#find the difference between times:
tm2 - tm1 #hours
