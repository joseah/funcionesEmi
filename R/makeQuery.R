makeQuery<-function(filters,values){
  library(RSQLite)
  result <- paste(filters[1]," = \"",values[1],"\"", sep="")
  if(length(filters) > 1){
    i = 2
    while(i<=length(filters)){
      result <- paste(result," AND ",filters[i]," = \"",values[i],"\"", sep="")
      i <- i + 1
    }  
  }
  return(result)
}