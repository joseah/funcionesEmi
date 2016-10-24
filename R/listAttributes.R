listAttributes<-function(mart){
  library(RSQLite)
  db<-datasetsDb()
  result<-dbListFields(db,mart)
  dbDisconnect(db)
  return(result)
}