complete <- function(directory, id = 1:332){
    nobs = c()
    dataframe <- data.frame()
    for (i in id) {
        name <- paste("/home/saul/RStudioProjects/",directory, "/", sprintf("%03d", i), ".csv", sep="")
        mydata<-read.csv(name)
        NONAs = sum(complete.cases(mydata))
        nobs <- c(nobs, NONAs)
    }
    dataframe<-data.frame(id, nobs)
    names(dataframe) <- c("id", "nobs")
    return(dataframe)
    }