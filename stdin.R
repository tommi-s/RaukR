#!/usr/bin/env Rscript

input_con <- file( description = "stdin")

open( con = input_con )

oneline <- 
  readLines( 
    con = input_con, 
    n = 1, 
    warn = FALSE
  )

print( oneline )

close( con = input_con )

mean <- as.numeric( oneline )

mydata <- 
  rnorm( 
    n = 1000, 
    mean = mean )

y <- summary( mydata )

print( y )

# write( y, file = stderr() )
# write( y, file = stdout() ) 