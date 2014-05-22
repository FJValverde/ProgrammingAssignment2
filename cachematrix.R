## Put comments here that give an overall description of what your
## functions do

<<<<<<< HEAD
## This function resembles the makeVector, function:
## It is to be used in two steps: first store the data with set(data) then
## obtain the inverse for the first time with solve or else get it from 
## getinverse.
makeCacheMatrix <- function(x = matrix()) {
    i <- NULL #caches the inverse after computation
    set <- function(y){ #setter for the matrix to invert
        x <<- y
        i <<- NULL
    }
    get <- function() x # getter for the matrix
    
    setinverse <- function(inv) i <<- inv
    
    getinverse <- function() i
    
    #return the caches and the accessor functions
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
=======
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

>>>>>>> 7f657dd22ac20d22698c53b23f0057e1a12c09b7
}


## Write a short comment describing this function
<<<<<<< HEAD
## Follows the pattern of cachemean:
## - takes an extended matrix object from the previous function and tries to 
## lookup the cached inverse.
## - if it has not been previously calculated, then do and return the inverse.
cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    inv <- x$getinverse()
    if(!is.null(inv)) {
        message("getting cached data")
        return(inv)
    }
    message("calculating inverse")
    data <- x$get()
    inv <- solve(data, ...)
    x$setinverse(inv)
    inv
}

## Some test code
eye <- 2 * diag(3)
ceye <- makeCacheMatrix(eye)
iceye <- cacheSolve(ceye)
=======

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
>>>>>>> 7f657dd22ac20d22698c53b23f0057e1a12c09b7
