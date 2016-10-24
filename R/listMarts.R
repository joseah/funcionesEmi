listMarts<-function(){
  library(RSQLite)
  db<-datasetsDb()
  result<-dbListTables(db)
  dbDisconnect(db)
  return(result)
}