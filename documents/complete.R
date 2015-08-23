complete <- function(directory, idvec = 1:332) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files  dir <- directory
  dir <- directory
  Filelist <- list.files(paste("D:/Course era/R Files/",dir,sep=""))
  data_dir <- paste("D:/Course era/R Files/",dir,sep="")
  
  Alldata <- c()
  completeCases <- data.frame()
  
  
  for (id in idvec)
  {
    Mydata <- read.csv(paste(data_dir,"/",Filelist[id],sep = ""),header = TRUE)
    nobs = nrow(na.omit(Mydata))
    completeCases <- rbind(completeCases, data.frame(id,nobs))
    
    
  }
  return(completeCases)
  
  
 ## return(existingDF)


  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return a data frame of the form:
  ## id nobs
  ## 1  117
  ## 2  1041
  ## ...
  ## where 'id' is the monitor ID number and 'nobs' is the
  ## number of complete cases
}