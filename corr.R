## setwd("C:/Users/eshajain/Desktop/Lowe's/Personal Docs/Coursera")

corr <- function(directory, threshold = 0)
		{ lf  <- list.files(directory, full.names= TRUE)
		  nobsd <- complete(directory)
		  nobsd <- nobsd[nobsd$nobs > threshold , ]
		  asd <- vector("numeric")
		  
		  for ( i in nobsd$i)
			  { c   <- read.csv(lf[i])
		    	    k   <- c[complete.cases(c),]
			    if ( nrow(k) >  threshold ) 
				 { asd <- c(asd, cor(k[,2],k[,3]))}
		        }
		asd
		}


				