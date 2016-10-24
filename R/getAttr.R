getAttr<-function(attributes, filters, values, mart){
  library(RSQLite)
  db<-datasetsDb() #Connect to database
  query<-paste("SELECT * FROM ", mart, " WHERE ", makeQuery(filters, values), sep="") #Construct query
  complete_table<-dbGetQuery(db, query) #Get table 
  result<-complete_table[,attributes]#get relevant columns
  dbDisconnect(db)
  return(result)
}