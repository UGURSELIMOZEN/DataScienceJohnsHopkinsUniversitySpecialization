library("data.table")
communities <- data.table::fread("http://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv")
varNamesSplit <- strsplit(names(communities), "wgtp")
varNamesSplit[[123]]



# Removed the s from https to be compatible with windows computers. 
# Skip first 5 rows and only read in relevent columns
GDPrank <- data.table::fread('http://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv'
                             , skip=5
                             , nrows=190
                             , select = c(1, 2, 4, 5)
                             , col.names=c("CountryCode", "Rank", "Country", "GDP")
)
# Remove the commas using gsub
# Convert to integer after removing commas. 
# Take mean of GDP column (I know this code may look a little confusing)
GDPrank[, mean(as.integer(gsub(pattern = ',', replacement = '', x = GDP )))]






grep("^United",GDPrank[, Country])






GDPrank <- data.table::fread('http://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv'
                             , skip=5
                             , nrows=190
                             , select = c(1, 2, 4, 5)
                             , col.names=c("CountryCode", "Rank", "Country", "GDP")
)
eduDT <- data.table::fread('http://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv')
mergedDT <- merge(GDPrank, eduDT, by = 'CountryCode')
mergedDT[grepl(pattern = "Fiscal year end: June 30;", mergedDT[, `Special Notes`]), .N]







library("quantmod")
amzn <- getSymbols("AMZN",auto.assign=FALSE)
sampleTimes <- index(amzn) 
timeDT <- data.table::data.table(timeCol = sampleTimes)

# How many values were collected in 2012? 
timeDT[(timeCol >= "2012-01-01") & (timeCol) < "2013-01-01", .N ]


# How many values were collected on Mondays in 2012?
timeDT[((timeCol >= "2012-01-01") & (timeCol < "2013-01-01")) & (weekdays(timeCol) == "Monday"), .N ]
