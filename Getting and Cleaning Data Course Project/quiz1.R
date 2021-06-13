fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
my_destfile = "C:/Users/Ugur/Desktop/Data_Science_Johns_Hopkins_University_Beginner_Level_Specialization/Course_3_Getting_and_Cleaning_Data/Week_1/my_datas.csv"
download.file(fileurl ,destfile = my_destfile)
my_datas <- read.csv(my_destfile)
my_datas0 <- subset(my_datas, VAL==24)
nrow(my_datas0)
my_datas1 <- my_datas [, 'FES']
my_datas1


fileurl1 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx"
my_destfile1 = "C:/Users/Ugur/Desktop/Data_Science_Johns_Hopkins_University_Beginner_Level_Specialization/Course_3_Getting_and_Cleaning_Data/Week_1/my_datas1.xlsx"
download.file(fileurl1 ,my_destfile1 ,  mode='wb')
library('xlsx')
dat <- read.xlsx( my_destfile1, sheetIndex = 1, rowIndex = 18:23, colIndex = 7:15 )
sum(dat$Zip*dat$Ext,na.rm=T)


library("XML")
fileURL<-"https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"
doc <- xmlTreeParse(sub("s", "", fileURL), useInternal = TRUE)
rootNode <- xmlRoot(doc)
zipcodes <- xpathSApply(rootNode, "//zipcode", xmlValue)
xmlZipcodeDT <- data.table(zipcode = zipcodes)
xmlZipcodeDT[zipcode == "21231", .N]



fileURL1 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv"
my_dest = "C:/Users/Ugur/Desktop/Data_Science_Johns_Hopkins_University_Beginner_Level_Specialization/Course_3_Getting_and_Cleaning_Data/Week_1/my_data.csv"
download.file(fileURL1 ,my_dest)
DT <- data.table::fread(fileURL1)
print(system.time(DT[,mean(pwgtp15),by=SEX]))
print(system.time(tapply(DT$pwgtp15 , DT$SEX ,mean)))
print(system.time(mean(DT$pwgtp15 , by=DT$SEX)))
