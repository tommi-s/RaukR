#!/usr/bin/env Rscript

# 1

mydata <- rnorm( n = 1000 )

print( "" )
print( "1" )
print( "" )

print( summary( mydata ) )

# 2

firstarg <- as.numeric( commandArgs( trailingOnly = TRUE )[ 1 ] )

mydata <-
  rnorm(
    n = 1000,
    mean = firstarg
    )

print( "" )
print( "2" )
print( "" )

print( summary( mydata ) )

# 3

suppressPackageStartupMessages( require( optparse ) )

option_list = list(
  optparse::make_option( 
    opt_str = c( "-m", "--mean" ), 
    default = 0 )
  # you could put the next option here
)

options <- 
  optparse::parse_args( 
    object = OptionParser( 
      option_list = option_list 
      ) 
    )

mean <- as.numeric( options$mean )

mydata <- 
  rnorm(
    n = 1000,
    mean = mean
    )

print( "" )
print( "3" )
print( "" )

print( summary( mydata ) )