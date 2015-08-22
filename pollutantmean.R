pollutantmean <- function (directory, pollutant, id = 1:332) {
			setwd(directory)
			m <- 0
			n <- 0
		      for (i in id) {
						if( i < 10) 
						{ c<-read.csv(paste("00",i,".csv", sep = ""))} 
						 else { 
						if ( i > 9 & i < 100)
						 { c<-read.csv(paste("0",i,".csv", sep = ""))} 
						else
						{ c<-read.csv(paste(i,".csv", sep = ""))} 
							}

						bad<- is.na(c[ ,pollutant])
						r <- c[!bad ,pollutant]
						
						k<-length(r)
						l<-sum(r)
						
						m<- m + k
						n<- n + l
						
						}
			Answ <- round(n/m, digits = 3)
			Answ
					}

##Else if condition. Use of Curl braces. 
## Round to decimals check. 
##Mean(c[,pollutant],na.rm=TRUE)

