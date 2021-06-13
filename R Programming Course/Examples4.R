mixed_vector5 <- c (2 , 3.14) ## integer and numeric objects
mixed_vector5
mixed_vector6 <- c (T , 'True' ) ## logical and character objects
mixed_vector6
t <- 0 : 6
class (t)
as.numeric (t)
as.integer(t)
as.logical(t)
as.complex(t)
as.character(t)
w <- c("a","v","d")
class(w)
as.numeric(w)
as.logical(w)
as.integer(w)
as.complex(w)
my_list <- list (2.0 , TRUE  , 'Whatsapp'  , 3-4i  , 4  , F)
my_list
matrices_1 <- matrix(nrow = 2 , ncol = 3)
matrices_1
dim(matrices_1)
attributes(matrices_1)
matrices_2 <- matrix( 2:7 ,nrow = 2 , ncol = 3)
matrices_2
matrices_3 <- 1:9
matrices_3
dim(matrices_3) <- c(3,3)
matrices_3
e1 <- 3:6
e2 <- 7:10
cbind(e2,e1)
rbind(e1,e2)
my_factor <- factor (c('yes','yes','no','yes','no'))
my_factor
table(my_factor)
unclass(my_factor)
my_factor1 <- factor(c('yes','yes','no','yes','no'), levels = c('yes','no'))
my_factor1
table(my_factor1)
unclass(my_factor1)
missing_values <- c(2, 3.4 , NA , 'c' , TRUE)
is.na(missing_values)
is.nan(missing_values)
missing_values1 <- c(2, 3.4 , NA , 'c' , TRUE , NaN)
is.na(missing_values1)
is.nan(missing_values1)
missing_values2 <- c(2, 3.4 , NA , 'c' , 'd' , NaN)
is.nan(missing_values2)
m <- c(1 ,2 , NA , 10 ,3)
is.na(m)
is.nan(m)
m <- c(1 ,2 , NaN , NA , 10 ,3)
is.na(m)
is.nan(m)
m <- c(1 ,2 , NaN , 10 ,3 , NA)
is.na(m)
is.nan(m)
df <- data.frame (numbers = 1:5 , status = c(T,F,T,T,F))
df
nrow(df)
ncolumn(df)
ncol(df)
ndim(df)
dim(df)
f <- 1:4
names(f)
names(f) <- c('one','two','three','four')
f
names(f)
g <- list (e = 2.3 , q = TRUE , r ='d')
g
g1 <- list (e = 2.3 , q = TRUE , r =d)
matrice <- matrix (1:6 , nrow = 2 , ncol = 3)
matrice
dimnames(matrice) <- list(c('row1','row2'),c('col1','col2','col3'))
matrice
dimnames(matrice)
x1 <- c('a' , 'b' , 'c' , 'd' , 'e')
x1[3]
x1[-1]
x1[-2]
x1[0]
x1[6]
x1[5]
x1[2:4]
x1[x1 >'b']
u <-  x1 > 'c'
u
x1[u]
u1 <-  x1 < 'c'
u1
x1[u1]
u2 <- x1 <= 'b'
u2
x1[u2]
y1 <- list (foo = 1:5 , bar = 1.97)
y1[1]
y1[[1]]
y1$bar
y1['bar']
y1[['bar']]
y2 <- list (foo = 1:5 , bar = 1.97 , msg = 'Hello')
y2 [c(1,3)]
y2 [[c(1,3)]]
y2 [[c(1,2)]]
y3 <- list (foo = 1:5 , bar = 1.97 , msg = 'Hello')
name <- 'foo'
y3[[name]]
y3[name]
y3$name
y3$foo
y4 <- list (a0 = list(1,2,3,4,5) , b = c (3.14 , 2.71 , 9.81))
y4[2,1]
y4[c(2,1)]
y4[[c(2,2)]]
y4[[c(2,3)]]
y4[[c(1,3)]]
y4[[2]][[1]]
z1 <- matrix (1:9 , 3 , 3)
z1
z1[2,3]
z1[1,2]
z1[1,]
z1[ ,3]
z1[1 , 2 , drop = FALSE]
z1[1 , 2 , drop = TRUE]
z1[2 , 3 , drop = FALSE]
z1[2 , 3 , drop = TRUE]
z1[2 ,  , drop = FALSE]
z1[ , 2 , drop = TRUE]
z2 <- list(arwark = 1:4)
x$a
z2$a
z2$w
z2$r
z2[['a']]
z2[['a' , exact = FALSE]]
z2[['k' , exact = FALSE]]
z3 <- c(1 , 2.2 , NA , 3 , NA , 2.09)
missing <- is.na(z3)
z3[!missing]
z3
z4 <- z3[!missing]
z4
z3 <- z3[!missing]
z3
t1
t1 <- c(1,2,NA,4,5,NA,6)
t2 <- c('a', 'b' , NA ,NA, 'c' , NA)
combine <- complete.cases(t1 ,t2)
t2 <- c('a', 'b' ,NA ,NA , 'c', 'd', NA)
combine <- complete.cases(t1 ,t2)
combine
t1[combine]
t2[combine]
w1 <- 1:4 ; w2 <- 7:10
w1+w2
w1 > 2
w2 >= 8
w1 = 8
w1 == 8
w1+w2
w1
w1 / w2
w1*w2
m1 <- matrix (1:4 , 2 , 2)
m1
m2 <- matrix (rep (5,4) , 2 , 2)
m2
m1*m2
m1 / m2
m1 %% m2
m1 %*% m2
v1 <- 4
if(v1 > 3)
{
v2 <- 10
}
v2
if(v1 > 5){v2 <- 10} ; else {v2 <- 0}
if(v1 > 5){v2 <-
if(v1 > 5){v2 <- 10}
else {v2 <- 0}
else if {v2 <- 0}
if(v1 < 5){v2 <- 0}
v2
for (i in 1:12) {print(i)}
x1 <- c('a' ,'b','c' ,'d')
for(i in 1:4) {print(x1[i])}
for(i in seq_along(x1)) {print(x1[i])}
for(letter in x1) {print(letter)}
x2 <- matrix (1:6 , 2 ,3)
x2
for(i in seq_len(nrow(x2))) {for(j in seq_len(ncol(x2))) {print(x2[i,j])} }
count <- 0
while (count < 10) { print(count) ; count <- count +1  }
while (count < 10) { print(count) ; count <- count *2 + 1  }
while (count < 100) { print(count) ; count <- count *2 + 1  }
z <-5
while (z >= 5 &&  z<= 10) { print(z); coin <- rbinom(1,1,0.5) ; if(coin ==1) {z <- z+1} ; else {z <- z-1} }
while (z >= 5 &&  z<= 10) { print(z); coin <- rbinom(1,1,0.5) ; if(coin ==1) {z <- z+1} ; else {z <- z-1}
while (z >= 5 &&  z<= 10) { print(z); coin <- rbinom(1,1,0.5) ; if(coin ==1) {z <- z+1} ; if {z <- z-1} }
while (z >= 5 &&  z<= 10) { print(z); coin <- rbinom(1,1,0.5) ; if(coin ==1) {z <- z+1} ; if {z <- z-1} }
while (z >= 5 &&  z<= 10) { print(z); coin <- rbinom(1,1,0.5) ; if(coin ==1) {z <- z+1} }
while (z >= 5 &&  z<= 10) { print(z); coin <- rbinom(1,1,0.5) ; if(coin !=1) {z <- z-1} }
while (z >= 5 &&  z<= 20) { print(z); coin <- rbinom(1,1,0.5) ; if(coin !=1) {z <- z-1} }
q()
q()
library(swirl)
swirl()
submit()
submit()
remainder(5)
remainder(11,5)
remainder(divisor = 11 , num = 5)
remainder(4, div = 2)
args(remainder)
submit()
submit()
submit()
submit()
help()
submit()
evaluate(rnorm , c(1.4 ,3.6 ,7.9 ,8.8))
evaluate(sd , c(1.4 ,3.6 ,7.9 ,8.8))
evaluate(function(x){x+1} , 6)
evaluate(function(x) {x<- c(8,4,0) ; x[1]})
evaluate(function(x) {x[1]} , c(8,4,0))
evaluate(function(x) {x[3]} , c(8,4,0))
evaluate(function(x) {x[length(x)]} , c(8,4,0))
?paste
paste('Programming' , 'is' , 'fun!')
submit()
submit()
submit()
submit()
submit()
telegram('Hello' , 'World !')
submit()
mad_libs('New York City' , 'Johns Hopkins University' , 'class rules')
submit()
"%p%"('I' ,'love' ,'R!' )
"I love %p% R!"
"I %p% love %p% R!"
"I" %p% "love" %p% "R!"
d1 <- Sys.Date()
class(d1)
unclass(d1)
d1
d2 <- as.Date('1969 -01-01')
d2 <- as.Date("1969-01-01")
unclass(d2)
Sys.time()
t1 <- Sys.time()
t1
class(t1)
unclass(t1)
t2 <- as.POSIXlt(Sys.time())
class(t2)
t2
unclass
unclass(t2)
str(unclass(t2))
t2$min
weekdays(t1)
weekdays(d1)
months(t1)
quarters(t2)
t3 <- 'October 17, 1986 08:24'
strptime(t3 ,'%B %d , %Y %H:%M')
strptime(t3 ,"%B %d , %Y %H:%M")
t4 <- strptime(t3 ,"%B %d , %Y %H:%M")
t4 <- strptime(t3, "%B %d, %Y %H:%M")
t4
class(t4)
Sys.time() > t1
Sys.time() - t1
difftime(Sys.time(), t1, units = 'days')
quit()
x <- list (a=1:5 , b= rnorm(10))
lapply (x ,mean)
lapply (x ,sum)
lapply (x ,length)
y <- 1:4
lpally (y , runif)
lapally (y , runif)
laplly (y , runif)
lapply (y , runif)
lapply ( y, runif , min = 0 , max = 10)
z <- list (a=matrix(1:4 ,2,2) , b=matrix(1:6 , 3 ,2))
z
lapply (z , function(elt) , elt[ , 1])
lapply (z , function(elt) elt[ , 1])
lapply (z , function(elt1) elt1[  , :2])
lapply (z , function(elt1) elt1[  , 3])
lapply (z , function(elt1) elt1[  , 2])
x <- list (a=1:5 , b= rnorm(10))
lapply (x, mean)
sapply (x, mean)
r <- matrix (rnorm (200), 20 ,10)
r
apply(r , 2 ,mean)
apply(r , 1 ,mean)
apply(r , 2 , sum)
apply(r , 1 , sum)
w <- matrix (rnorm(200) ,20 ,10)
apply (w ,1 , quantile , probs = c(0.25 ,0.75))
apply (w , 2 , quantile , probs = c(0.25 ,0.75))
a <- array ( rnorm(2*2*10) , c(2,2,10))
a
apply(a ,c(1,2) ,mean)
apply(a ,c(1,2) ,sum)
rowMeans (a ,dims = 2)
q <- list (rep(1,4) , rep (2,3) ,rep(3,2) , rep(4,1))
q
mapply (rep , 1:4 , 4:1)
noise <- function (n, mean ,sd) {rnorm(n,mean,sd)}
noise(5, 1 ,2)
noise(1:5, 1:5 ,2)
mapply(noise ,1:5 , 1:5 , 2)
e <- c ( rnorm(10) , runif(10) , rnorm(10 ,1))
f <- gl(3, 10)
f
tapply (e ,f ,mean)
e
tapply (e ,f ,mean , simplify = FALSE)
tapply (e ,f , range)
split (e ,f)
lapply (split(e ,f) , mean)
library (datasets)
head (airquality)
s <- split (airquality , airquality$Month)
s
s <- split (airquality , airquality$Month)
lapply (s ,function(x) colMeans(x[ , c('Ozone' , 'Solar.R' , 'Wind')]))
sapply (s ,function(x) colMeans(x [ , c('Ozone' , 'Solar.R' , 'Wind')]))
sapply (s ,function(x) colMeans(x [ , c('Ozone' , 'Solar.R' , 'Wind')] ,na.rm =TRUE))
x1 <- rnorm(10)
f1 <- gl(2,5)
f2 <- gl(5,2)
f1
f2
interaction(f1 , f2)
str (split (x , list(f1,f2)))
str (split (e , list(f1,f2)))
str (split (e , list(f1,f2) , drop = TRUE))
save.image("C:\\Users\\Ugur\\Desktop\\Data_Science_Johns_Hopkins_University_Beginner_Level_Specialization\\Course_2_R_Programming\\Week_3_Loop_Functions_and_Debugging\\Examples.R")
quit()
library(swirl)
swirl()
head(flags)
dim(flags)
class(flags)
cls_list <- lapply (flags , class)
cls_list
class(cls_list)
as.character(cls_list)
?sapply
cls_vect <- sapply(flags , class)
cls_vect
class(cls_vect)
sum(flags&orange)
sum(flags$orange)
flag_colors <- flags[ , 11:17]
head(flag_colors)
lapply(flag_colors , sum)
sapply(flag_colors ,sum)
sapply(flag_colors, mean)
flag_shapes <- flags[ , 19:23]
lapply(flag_shapes, range)
shape_mat <- sapply(flag_shapes, range)
shape_mat
class(shape_mat)
unique(c (3,4,5,5,5,6,6))
unique_vals <- lapply(flags , unique)
unique_vals
length(unique_vals)
sapply(unique_vals ,length)
sapply(unique_vals  , unique)
sapply(flags,unique )
lapply(unique_vals , function(elem) elem[2])
sapply(flags , unique)
vapply(flags  ,unique , numeric(1))
ok()
sapply(flags , class)
vapply(flags ,class , character(1))
?tapply
table(flags$landmass)
table(flags$animate)
tapply(flags$animate , flags$landmass , mean)
tapply(flags$population , flags$red , summary)
tapply(flags$population , flags$landmass , summary)
quit()
library(datasets)
data("iris")
force(iris)
force(iris)
library(datasets)
data(iris)
library(datasets)
data("iris")
force(iris)
force(iris)
library(datasets)
my_data <- data("iris")
my_data
iris
library(datasets)
my_data <- iris
my_data
my_data <- iris
my_data1 <- my_data [  , Species = 'virginica']
my_data1 <- my_data [  , virginica]
my_data1 <- my_data [  , "virginica"]
my_data1 <- my_data [[  , "virginica"]]
View(my_data)
my_data1 <- subset(my_data , Species == 'virginica')
my_data1
mean(my_data1[,1])
apply(iris[, 1:4] ,2, mean)
apply(my_data1[ , 1], 2 , mean)
apply(my_data1[ , 1], mean)
apply(iris[, 1:4] ,2, mean)
apply(iris ,2 ,mean)
x <- matrix(1:9 ,3 ,3)
solve(x)
x
x <- matrix(1:9 ,3 ,3)
solve(x)
x <- matrix(c(1,3,6,12,5,0,2,-1,8) ,3 ,3)
solve(x)
x
str (str)
str(lm)
x <- rnorm (100 ,2 ,4)
summary (x)
str (x)
f <- gl (40 ,10)
str (f)
summary (f)
librar (datasets)
library (datasets)
head (airquality)
str (airquality)
m <- matrix (rnorm(100) , 10 ,10)
str(m)
m [ ,1]
s <- saplit (airquality ,airquality$Month)
s <- split (airquality ,airquality$Month)
s
str (s)
 y <- rnorm (10)
y
 y1 <- rnorm (10 , 20 ,2)
y1
summary (y1)
set.seed (1)
rnorm(5)
rnorm (5)
set.seed(1)
rnorm(5)
rpois(10 ,1)
rpois(10 ,2)
rpois(10 ,20)
ppois (2 ,2)
ppois (4 ,2)
ppois (6 ,2)
ppois (9 ,2)
ppois (119 ,2)
ppois (100 ,2)
ppois (99 ,2)
ppois (50 ,2)
ppois (20 ,2)
ppois (15 ,2)
ppois (10 ,2)
ppois (11 ,2)
ppois (12 ,2)
ppois (13 ,2)
set.seed(20)
z <- rnorm (100)
e <- rnorm(100 ,0 ,2)
t <- 0.5 + 2*z + e
summary (t)
plot (z , y)
x <- rnorm (100)
e <- rnorm(100 ,0 ,2)
y <- 0.5 + 2*x + e
summary (y)
plot (x , y)
r <- rbinom (100 ,1 , 0.5)
e <- rnorm(100 ,0 ,2)
y <- 0.5 + 2*r + e
summary (y)
plot (x = r ,y)
set.seed (1)
w <- rnorm (100)
log.mu <- 0.5 + 0.3 *w
y1 <- rpois(100  ,exp(log.mu))
summary(y1)
plot (x = w , y = y1)
set.seed (1)
sample (1:10  ,4)
sample (1:10  ,4)
sample (letters ,5)
sample (letters ,2)
sample (1:10) ## gives us permutation
sample (1:10)
sample (1:10  ,replace = TRUE) ## sample 2/replacement
system.time (readLines ("http://www.jhsph.edu"))
hilbert < -function(n) {i <-1:n  ; 1/outer (i-1 , i ,"+") }
system.time({n <- 1000 ; r <- numeric(n) ; for(i in 1:n) {x <- rnorm(n) ; r[i] <-mean(x)}})
