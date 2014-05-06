#' A date format testing function
#' 
#' A function for testing the format of a column of dates
#' @param mydates An array of dates to be tested
#' @keywords date format
#' @export
#' @examples
#' test_dates()


test_dates<-function(mydates){
  require(lubridate)
  a<-mdy_hm(mydates, quiet=TRUE)
  b<-mdy_hms(mydates, quiet=TRUE)
  c<-dmy_hm(mydates, quiet=TRUE)
  d<-dmy_hms(mydates, quiet=TRUE)
  e<-ymd_hms(mydates, quiet=TRUE)
  f<-ymd_hm(mydates, quiet=TRUE)
  g<-ydm_hms(mydates, quiet=TRUE)
  h<-ydm_hm(mydates, quiet=TRUE)
  
  year_range <- seq(year(now())-10, year(now()))
  

  if(max(year(a)) %in% year_range){
    mydates<-a
  } 
  
  if(max(year(b)) %in% year_range){
    mydates<-b
  } 
  
  if(max(year(c)) %in% year_range){
    mydates<-c
  } 
  
  if(max(year(d)) %in% year_range){
    mydates<-d
  } 
  
  if(max(year(e)) %in% year_range){
    mydates<-e
  }
  
  if(max(year(f)) %in% year_range){
    mydates<-f
  }
  
  if(max(year(g)) %in% year_range){
    mydates<-g
  } 
  
  if(max(year(h)) %in% year_range){
    mydates<-h
  } 
  return(mydates)
}
