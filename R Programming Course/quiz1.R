setwd("~/Desktop/Data_Science_Johns_Hopkins_University_Beginner_Level_Specialization/Course_2_R_Programming/Week_1_Background_Getting_Started_and_Nuts_Bolts/")
my_data <- read.csv(file = 'hw1_data.csv')
head(my_data)
dim(my_data)
my_data[1:2 ,]
my_data[152:153 ,]
my_data[47,1]
my_data1 <- my_data [ ,1]
my_data1
summary(my_data1)
my_data2 <- subset(my_data, Ozone > 31 & Temp > 90)
summary(my_data2)
my_data3 <- subset(my_data ,Month ==6)
summary(my_data3)
my_data4 <- subset(my_data ,Month ==5)
summary(my_data4)
