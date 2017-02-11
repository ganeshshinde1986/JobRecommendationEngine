#This file is to explore the available data

#First we will explore user data
userRawDataPath <- "./Data/Users/users.tsv"
userHistoryPath <- "./Data/Users/user_history.tsv"
  
userRawData <- read.csv(userRawDataPath, sep = "\t", header = TRUE)

#Viewing data in Spreadsheet format
fix(userRawData)

#Viewing the dimensions of the data
dim(userRawData) #Rows : 389708     columns: 15

#Viewing the feature names of the data
names(userRawData)

#Viewing summary of users data
summary(userRawData)

#Will verify and summerize each feature now.
#First UserID column
attach(userRawData)
is.na(UserID)
summary(CurrentlyEmployed)

#Splitting Users
splitUser1 <- userRawData[WindowID==1,]
splitUser2 <- userRawData[WindowID==2,]
splitUser3 <- userRawData[WindowID==3,]
splitUser4 <- userRawData[WindowID==4,]
splitUser5 <- userRawData[WindowID==5,]
splitUser6 <- userRawData[WindowID==6,]
splitUser7 <- userRawData[WindowID==7,]

#UserHistory
userHistory <- read.csv(userHistoryPath, sep = "\t", header = TRUE)
splitUserHistory1 <- userHistory[WindowID==1,]
splitUserHistory2 <- userHistory[WindowID==2,]
splitUserHistory3 <- userHistory[WindowID==3,]
splitUserHistory4 <- userHistory[WindowID==4,]
splitUserHistory5 <- userHistory[WindowID==5,]
splitUserHistory6 <- userHistory[WindowID==6,]
splitUserHistory7 <- userHistory[WindowID==7,]

