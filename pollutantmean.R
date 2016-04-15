pollutantmean <- function(directory, pollutant, id = 1:332){
    mydata <- c()
    for (i in id) {
        name <- paste("/home/saul/RStudioProjects/",directory, "/", sprintf("%03d", i), ".csv", sep="")
        mydata<-rbind(mydata,read.csv(name))
    }
    return(round(mean(mydata[ , pollutant], na.rm = T),3))
}