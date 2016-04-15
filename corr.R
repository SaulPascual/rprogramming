source("/home/saul/RStudioProjects/complete.R")
corr<-function(directory, threshold=0){
    setwd(paste("/home/saul/RStudioProjects/",directory,"/",sep=""))
    temp<-list.files(pattern="*.csv")
    cont<-0
    correlation<-c()
    
    for (fname in temp) {
        cont<-cont+1
        threstest<-complete(directory, cont)
        if (threstest$nobs>threshold){
            fdata<-read.csv(fname)
            correlation <- c(correlation, cor(fdata$sulfate, fdata$nitrate, use="complete.obs"))
        }
    }
    return(correlation)
}