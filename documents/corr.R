corr <- function(directory, threshold = 0) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  dir <- directory
  Filelist <- list.files(paste("D:/Course era/R Files/",dir,sep=""))
  data_dir <- paste("D:/Course era/R Files/",dir,sep="")
  sulfate <-c()
  nitrate <- c()
  
  
  cr <- c()
  
  for (i in 1:332)
  {
    Mydata <- read.csv(paste(data_dir,"/",Filelist[i],sep = ""),header = TRUE)
    data = na.omit(Mydata)
    if (nrow(data) > threshold)
    {
     
      cr <- c(cr, cor(data[,2], data[,3]))
      
      }
    }
  
       
  ## 'threshold' is a numeric vector of length 1 indicating the
  ## number of completely observed observations (on all
  ## variables) required to compute the correlation between
  ## nitrate and sulfate; the default is 0
  
  ## Return a numeric vector of correlations
  ## NOTE: Do not round the result!
  cr
}