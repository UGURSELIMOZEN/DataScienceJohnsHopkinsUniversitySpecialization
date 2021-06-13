args(list.files)
old.dir <- getwd()
testdir <- dir.create()
dir.create('testdir')
testdir <- setwd()
setwd('testdir')
file.create('mytest.R')
ls()
list.files()
file.exists()
file.exists('mytest.R')
file.info('mytest.R')
file.rename('mytest.R','mytest2.R')
file.copy('mytest2.R' ,'mytest3.R')
file.path('mytest3.R')
file.path('mytest3.R','folder1','folder2')
file.path('folder1','folder2')
?dir.create
dir.create(file.path('testdir2','testdir3'),recursive = TRUE)
setwd('old.dir')
old.dir <- setwd()
setwd('old.dir')
getwd('old.dir')
help()
setwd()
getwd()
setwd(old.dir)
1:20
pi:10
15:1
?':'
seq(1,20)
seq(0,10,by =0.5)
my_seq <- seq(5,10,length =30)
length(my_seq)
1:length(my_seq)
seq(along.with = my_seq)
seq_along(my_seq)
rep (0 ,times=40)
rep (c(0,1,2), times = 10)
rep(c(0,1,2), each=10)
num_vect <- c(0.5,55,-10,6)
tf <- num_vect < 1
tf
num_vect >=6
my_char <- c('My', 'name' ,'is')
my_char
paste(my_char, collapse = '')
paste(my_char, collapse = ' ')
my_name <- c(my_char ,'Ugur Selim Ozen')
my_name
paste(my_name, collapse = ' ')
paste('Hello' , 'World!' , sep =' ')
paste('Hello' , 'world!' , sep =' ')
paste (1:3 , c('X','Y','Z') , sep =' ')
paste (1:3 , c('X','Y','Z') , sep ='')
paste(LETTERS ,1:4 , sep ='-')
swirl now.
bye()
quit()
swirl()
packageVersion("swirl")
library(swirl)
swirl()
swirl()
x <- c(44, NA , 5 , NA)
x*3
y <- rnorm(1000)
z <- rep (NA , 1000)
my_data <- sample(c(y,z),100)
my_na <- is.na(my_data)
my_na
my_data == NA
sum(my_na)
my_data
0/0
Inf/Inf
Inf-Inf
x
x[1:10]
x[is.na(x)]
y <- x[!is.na(x)]
y
y[ y > 0 ]
x[x > 0 ]
x [ !is.na(x)  &  x>0 ]
x[c(3,5,7)]
x[0]
x[3000]
x [c(-2 ,-10)]
x [-c(2 ,10)]
vect <- c(foo =11 , bar = 2 , norf = NA)
vect
names()
names(vect)
vect <- c(11,2,NA)
vect2 <- c(11,2,NA)
names(vect2) <- c ('foo' , 'bar' , 'norf')
identical(vect,vect2)
vect ['bar']
vect [c('foo' , 'bar' )]
my_vector <- c(1:20)
my_vector <- 1:20
my_vector
dim(my_vector)
length(my_vector)
dim(my_vector) <- c(4,5)
dim(my_vector)
attributes(my_vector)
my_vector
class(my_vector)
my_matrix <- my_vector
?matrix
my_matrix2 <- matrix(1:20 , nrow = 4 , ncol = 5)
identical(my_matrix,my_matrix2)
patients <- c('Bill' , 'Gina' , 'Kelly' , 'Sean')
cbind(my_matrix , patients)
cbind(patients , my_matrix)
my_data <- data.frame(patients , my_matrix)
my_data
class(my_data)
cnames <- c('patient', 'age', 'weight' , 'bp' , 'rating' , 'test')
colnames(my_data)
colnames(my_data) <- cnames
my_data
quit()
##### MY WRITTEN CODES BEGINS HERE ####
x<-1
x
x <-1
x
x <_1
print(x)
msg <- 'Hello World'
msg
x <- # burada degisken tanımlamak için sola bakan ok tanımlıyoruz.
#
##
x
comtributors()
contributors()
##Merhaba Dunya#
y <- 13  ## y burada 13 olur.
y
print (x+y)
print (x/y)
print (x*y)
print (x-y)
x+y
z <- 1:2:20
z <- 1:20
z
a <- c (0.3 ,0.9) ## numeric objects
a <- c (TRUE ,FALSE) ## logical objects
a <- c (T ,F) ## logical objects
a <- c ("b" ,"c","d") ## character objects
a <- 5:12 ## integer objects
a <- c (1+2i , 3-4i) ## complex objects
a
a <- 5:12 ## integer objects
a
a <- c ("b" ,"c","d") ## character objects
a
a <- c (T ,F) ## logical objects
a
a <- c (TRUE ,FALSE) ## logical objects
a
a <- c (0.3 ,0.9) ## numeric objects
a
a1 <- vector ('numeric' , length = 10)
a1
a2 <- vector ('integer' , length = 3)
a2
a3 <- vector ('complex' , length = 4)
a3
a4 <- vector ('character' , length = 2)
a4
a5 <- vector ('logical' , length = 5)
a5
mixed_vector <- c (0.3 , TRUE) ## numeric and logical objects
mixed_vector
mixed_vector1 <- c (FALSE , 1.34) ## numeric and logical objects
mixed_vector1
mixed_vector2 <- c (FALSE , 34) ## integer and logical objects
mixed_vector2
mixed_vector3 <- c ('character' , 3) ## integer and character objects
mixed_vector3
mixed_vector4 <- c (3 , 'character') ## integer and character objects
mixed_vector4
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
missing_values1 <- c(2, 3.4 , NA , 'c' , TRUE , NAN)
missing_values1 <- c(2, 3.4 , NA , 'c' , TRUE , NaN)
is.nan(missing_values1)
missing_values2 <- c(2, 3.4 , NA , 'c' , TRUE , NaN)
is.nan(missing_values2)
is.nan(missing_values1)
missing_values3 <- c(2, 3.4 , NA , 'c' , TRUE , NaN)
is.na(missing_values3)
is.nan(missing_values3)
q()
x<-1
x
x <-1
x
x <_1
print(x)
msg <- 'Hello World'
msg
x <- # burada degisken tanımlamak için sola bakan ok tanımlıyoruz.
#
##
x
comtributors()
contributors()
##Merhaba Dunya#
y <- 13  ## y burada 13 olur.
y
print (x+y)
print (x/y)
print (x*y)
print (x-y)
x+y
z <- 1:2:20
z <- 1:20
z
a <- c (0.3 ,0.9) ## numeric objects
a <- c (TRUE ,FALSE) ## logical objects
a <- c (T ,F) ## logical objects
a <- c ("b" ,"c","d") ## character objects
a <- 5:12 ## integer objects
a <- c (1+2i , 3-4i) ## complex objects
a
a <- 5:12 ## integer objects
a
a <- c ("b" ,"c","d") ## character objects
a
a <- c (T ,F) ## logical objects
a
a <- c (TRUE ,FALSE) ## logical objects
a
a <- c (0.3 ,0.9) ## numeric objects
a
a1 <- vector ('numeric' , length = 10)
a1
a2 <- vector ('integer' , length = 3)
a2
a3 <- vector ('complex' , length = 4)
a3
a4 <- vector ('character' , length = 2)
a4
a5 <- vector ('logical' , length = 5)
a5
mixed_vector <- c (0.3 , TRUE) ## numeric and logical objects
mixed_vector
mixed_vector1 <- c (FALSE , 1.34) ## numeric and logical objects
mixed_vector1
mixed_vector2 <- c (FALSE , 34) ## integer and logical objects
mixed_vector2
mixed_vector3 <- c ('character' , 3) ## integer and character objects
mixed_vector3
mixed_vector4 <- c (3 , 'character') ## integer and character objects
mixed_vector4
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
