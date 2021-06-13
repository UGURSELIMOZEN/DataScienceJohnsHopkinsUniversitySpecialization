library(datasets)
my_data <- iris
my_data1 <- subset(my_data , Species == 'virginica')
my_data1
mean(my_data1[,1])

apply(iris[, 1:4] ,2, mean)


my_data2 <- mtcars
my_data2
tapply(mtcars$mpg , mtcars$cyl , mean)
sapply(split (mtcars$mpg , mtcars$cyl), mean)
with(mtcars ,tapply(mpg,cyl ,mean))


my_data3 <- subset (my_data2 , cyl == 4)
my_data4 <- subset (my_data2 , cyl == 8)
my_data3
my_data4
mean(my_data3 [ , 4])
mean(my_data4 [ , 4])
