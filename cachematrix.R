## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix is a function that returns a list of functions for getting, setting values of matrix and their Inverse

makeCacheMatrix <- function(x){
  I <- NULL
  set <- function(y){
    x <<- y
    I <<- NULL
  }
  
  get <- function() x
  
  setInverse <- function(Inverse) I <<- Inverse
 
  getInverse <- function() I
  
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

## This function calculates the inverse of matrix if not calulated beforhand.
## It first gets the inverse from makeCacheMatrix function. 
## If the given inverse is null then inverse is calulated using solve()

cacheSolve <- function(x, ...){
 
  I <- x$getInverse()
 
  if(!is.null(I)){
      message("getting chached data")
      return(m)
  }
  
 
  I <- solve(x$get, ...)
  x$setInverse(I)
  I
  
}
