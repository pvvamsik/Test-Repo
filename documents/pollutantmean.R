pollutantmean <- function(directory, pollutant, id = 1:332) 
{
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  dir <- directory
  Filelist <- list.files(paste("D:/Course era/R Files/",dir,sep=""))
  
  data_dir <- paste("D:/Course era/R Files/",dir,sep="")
  Alldata <- c()
  
  for (i in id)
  {
    Mydata <- read.csv(paste(data_dir,"/",Filelist[i],sep = ""),header = TRUE)
    Alldata <- rbind(Alldata,Mydata)
  }
  

  result <- mean(Alldata[,pollutant],na.rm = TRUE)
  return(result)
  

  ## 'pollutant' is a character vector of length 1 indicating
  ## the name of the pollutant for which we will calculate the
  ## mean; either "sulfate" or "nitrate".
  
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return the mean of the pollutant across all monitors list
  ## in the 'id' vector (ignoring NA values)
  ## NOTE: Do not round the result!
}