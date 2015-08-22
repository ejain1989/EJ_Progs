complete <- function(directory, id = 1:332)
	         { lf<- list.files(directory, full.names= TRUE)
		    dat <- data.frame()
		    for ( i in id)
		      { c   <- read.csv(lf[i])
			  k   <- complete.cases(c)
			  dat<- rbind(dat, data.frame( id = c[1,4], nobs = sum(k))) 
			}
			dat
		    }
## setwd("C:/Users/eshajain/Desktop/Lowe's/Personal Docs/Coursera")
					