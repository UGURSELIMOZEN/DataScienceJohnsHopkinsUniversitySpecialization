add_numbers <- function (x,y){x+y}

above_ten <- function(x)
  { 
    cond <- x > 10
    x[cond]
}

above_ten1 <- function(x ,n)
{ 
  cond <- x > n
  x[cond]
}

above_ten2 <- function(x ,n = 10)
{ 
  cond <- x > n
  x[cond]
}

columnmean <- function (y){
  nc    <- ncol(y)
  means <- numeric(nc)
  for (i in 1:nc) {
     means[i] <- mean(y[,i])
  }
  means
}

columnmean1 <- function (y , removeNA =TRUE){
  nc    <- ncol(y)
  means <- numeric(nc)
  for (i in 1:nc) {
    means[i] <- mean(y[,i] , na.rm = removeNA)
  }
  means
}

columnmean1(airquality , FALSE)


###





y <- 10

f <- function(x)
{
   y <- 2
   y^2 + g(x)
}

g <- function(x)
{
  x*y
}

f(3)


###



make.power <- function(n)
{
  pow <- function(x)
  {
     x^n
  }
  pow
}

cube   <- make.power(3)
square <- make.power(2)
fourth <- make.power(4)

cube(4)
square(4)
fourth(4)




###


fixed = c(TRUE ,TRUE)
params <-fixed
params[!fixed] <- 4
mu <- params[1]
sigma <- params[2]
mu  ### burada !fixed false olduğundan ilk hali
sigma ### olan (T,T) yani (1,1 i alacak).

fixed1 = c(TRUE ,FALSE)
params1 <-fixed1
params1[!fixed1] <- 4
mu1 <- params1[1]
sigma1 <- params1[2]
mu1
sigma1