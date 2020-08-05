## problem 17
v <- as.numeric(readClipboard())
v

## slide 18
hist(v)
range(v)   # Range
c(mean(v) , sd(v))  # Mean AND Std Dev.

##slide22
## setwd('c:/RBootcamp')
stu <- read.table(file='c:/RBootcamp/StudentApplications.csv', header=TRUE, sep = ',',stringsAsFactors = TRUE)
str(stu)

##slide 36
##Use y[]
y <- seq(-111,111,24)
y[y<0] <- 0
y

##Use for() and if()
y <- seq(-111,111,24)
for (i in seq_along(y)) { 
  if (y[i] < 0) {
    y[i] <- 0
  }
}
y


##slide 39
mat <- read.table(file='c:/RBootcamp/matrix.csv',sep=',',header=TRUE,row.names=1)
str(mat)
colnames(mat)
rownames(mat)
mat <- as.matrix(read.table(file='clipboard'))
colnames(mat) <- c()
str(mat)
sum(t(mat)[3,])

##slide 41
# age <- scan()
# myName <- readline()
age <- c(34,67,55,27)


##slide 44
stu.names <- read.table(file='c:/RBootcamp/1.txt',header=T,sep='\t',as.is=TRUE)
stu.class <- read.table(file='c:/RBootcamp/2.txt',header=T,sep='\t')
stu.major <- read.table(file='c:/RBootcamp/3.txt',header=T,sep='\t')
stu.birthyear <- read.table(file='c:/RBootcamp/4.txt',header=T,sep='\t',as.is=TRUE)
stu.class <- factor(stu.class$Year, levels=c('Freshman','Sophomore','Junior','Senior'),ordered = T)
stu <- data.frame(stu.names$Name, stu.class, stu.major$Major, stu.birthyear$BirthYear)
str(stu)

##slide 51
s <- c()
for (i in seq_along(month.abb)) {
  if (i == 1) {
    ending <- 'st'
  } else if (i == 2) {
    ending <- 'nd'
  } else if (i == 3) {
    ending <- 'rd'
  } else {
    ending <- 'th'
  }#if
  s[i] <- sprintf('%s is the %d%s month of the year.',
                  month.abb[i], i, ending)
}#for 
s

##slide 57
#strptime('1776-07-04','%Y-%m-%d',tz='EST')
jul4 <- as.Date('4jul1776', '%d%b%Y')
format(jul4,'%A')

jan1 <- as.Date('1jan2020','%d%b%Y')
sun26 <- (jan1 + 7*26)-3  # 26th week/Sun.
format(sun26, '%A %B %e, %Y')

##Bezos
options(scipen=9999)
USdebt <- '$26,477,240,853,125'
payrate <- 2489

dbt <- as.numeric(paste(unlist(strsplit(substring(USdebt,2),',')),collapse = ''))

maturity <- Sys.Date() + ((dbt / payrate) / (60*60*24))

finalDate <- format(maturity,'%A %B %e, %Y')

##slide 62
periodOfDay <- function() {
  hr <- as.numeric(format(Sys.time(),'%H'))
  if (hr < 5) {
    s <- 'Night'
  } else if (hr < 12) {
    s <- 'Morning'
  } else if (hr < 15) {
    s <- 'Afternoon'
  } else if (hr < 20) {
    s <- 'Evening' 
  } else {
    s <- 'Night'
  }#if
  return (s)
}#periodOfDay

greetings <- function(name) {
  sprintf('Good %s, %s',periodOfDay(),name)
}

greetings('Dr. Koehl!')