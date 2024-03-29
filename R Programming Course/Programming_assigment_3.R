my_data <- read.csv('outcome-of-care-measures.csv' ,colClasses ='character' )
head(my_data)
my_data [,11] <- as.numeric(my_data[,11])  ### BU SEREFSIZ SATIRLAR COOOOOK ONEMLI ####
my_data [,17] <- as.numeric(my_data[,17])  ### BU SEREFSIZ SATIRLAR COOOOOK ONEMLI ####
my_data [,23] <- as.numeric(my_data[,23])  ### BU SEREFSIZ SATIRLAR COOOOOK ONEMLI ####
### hist(my_data[,11])


best <- function(state ,outcome){
  
  if (outcome == 'heart attack'){
          my_data1 <- my_data [ , c(2 , 7 , 11)]
          my_data2 <- subset(my_data1 , state == my_data$State)
          my_data2 <- na.omit(my_data2)
          result <-subset(my_data2 , my_data2[,3]==min(my_data2[,3]))
          print(result[,1])
          
  }
  
  else if (outcome == 'pneumonia'){
            my_data3 <- my_data [ , c(2 , 7 , 23)]
            my_data4 <- subset(my_data3 , state == my_data$State)
            my_data4 <- na.omit(my_data4)
            result1 <-subset(my_data4 , my_data4[,3]==min(my_data4[,3]))
            result1
            
    
    
  }
  
  
}

best('SC', 'heart attack')
best('NY', 'pneumonia')
best("AK", "pneumonia")


rankhospital <- function (state , outcome , num )
{
  
    if (outcome == 'heart attack')
  {
          my_data1 <- my_data [ , c(2 , 7 , 11)]
          my_data2 <- subset(my_data1 , state == my_data$State )
          my_data2 <- na.omit(my_data2)
          my_data2 <- my_data2[order(my_data2[,3]) , ]
          my_data2$Rank <-NA
          my_data2$Rank[] <- 1:nrow(my_data2)
          if(num == 'best')
          {
            my_data2 [1,]
          }
          else if (num=='worst')
          {
            my_data2[nrow(my_data2) , ]
          }
          
          else
          {
            my_data2 <- subset(my_data2 , num == my_data2$Rank)
            my_data2
          }
          
          
          
          
    }
  
  if (outcome == 'pneumonia')
  {
    my_data1 <- my_data [ , c(2 , 7 , 23)]
    my_data2 <- subset(my_data1 , state == my_data$State )
    my_data2 <- na.omit(my_data2)
    my_data2 <- my_data2[order(my_data2[,3]) , ]
    my_data2$Rank <-NA
    my_data2$Rank[] <- 1:nrow(my_data2)
    if(num == 'best')
    {
      my_data2 [1,]
    }
    else if (num=='worst')
    {
      my_data2[nrow(my_data2) , ]
    }
    
    else
    {
      my_data2 <- subset(my_data2 , num == my_data2$Rank)
      my_data2
    }
    
    
    
    
  }
  

  
}

rankhospital('NY','heart attack' ,8)
rankhospital('NY','heart attack' ,'best')
rankhospital('NY','heart attack' ,'worst')
rankhospital("NC", "heart attack", "worst")
rankhospital("WA", "heart attack", 7)
rankhospital("TX", "pneumonia", 11)
rankhospital("TX", "pneumonia", 10)
rankhospital("TX", "pneumonia", 9)



rankall <- function(outcome, num = "best") {
  ## Read outcome data
  data <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
  data <- data[c(2, 7, 11, 17, 23)]
  names(data)[1] <- "name"
  names(data)[2] <- "state"
  names(data)[3] <- "heart attack"
  names(data)[4] <- "heart failure"
  names(data)[5] <- "pneumonia"
  
  ## Validate the outcome string
  outcomes = c("heart attack", "heart failure", "pneumonia")
  if( outcome %in% outcomes == FALSE ) stop("invalid outcome")
  
  ## Validate the num value
  if( num != "best" && num != "worst" && num%%1 != 0 ) stop("invalid num")
  
  ## Grab only rows with data in our outcome
  data <- data[data[outcome] != 'Not Available', ]
  
  ## Order the data
  data[outcome] <- as.data.frame(sapply(data[outcome], as.numeric))
  data <- data[order(data$name, decreasing = FALSE), ]
  data <- data[order(data[outcome], decreasing = FALSE), ]
  
  ## Helper functiont to process the num argument
  getHospByRank <- function(df, s, n) {
    df <- df[df$state==s, ]
    vals <- df[, outcome]
    if( n == "best" ) {
      rowNum <- which.min(vals)
    } else if( n == "worst" ) {
      rowNum <- which.max(vals)
    } else {
      rowNum <- n
    }
    df[rowNum, ]$name
  }
  
  ## For each state, find the hospital of the given rank
  states <- data[, 2]
  states <- unique(states)
  newdata <- data.frame("hospital"=character(), "state"=character())
  for(st in states) {
    hosp <- getHospByRank(data, st, num)
    newdata <- rbind(newdata, data.frame(hospital=hosp, state=st))
  }
  
  ## Return a data frame with the hospital names and the (abbreviated) state name
  newdata <- newdata[order(newdata['state'], decreasing = FALSE), ]
  newdata
}

r <- rankall("heart attack", 4)
as.character(subset(r, state == "HI")$hospital)
r <- rankall("pneumonia", "worst")
as.character(subset(r, state == "NJ")$hospital)
r <- rankall("heart failure", 10)
as.character(subset(r, state == "NV")$hospital)



