
here::i_am("R/clean_data.R")

rawdata = read.table("rawdata.txt", header = TRUE)
attach(rawdata)


#Taking the variables that we want
finaldata=rawdata[c(1:12,18,22:31)]

finaldata = data.frame(finaldata)
attach(finaldata)

write.table(finaldata, "finaldata.txt")