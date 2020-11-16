## The assignment is to write a pair of functions that cache the inverse of a 
##matrix.

## First I have to create a matrix that would cache its reverse, adjusting the 
##given example to my case

makeCacheMatrix <- function(x = matrix()) {
        mt <- NULL
        set <- function(y) {
        x <<- y
        mt <<- NULL
       }
           get <- function() x
           setinv <- function(inverse) mt <<- inverse
           getinv <- function() mt
           list(set = set, get = get,
           setinv = setinv,
           getinv = getinv)
}


## Finally I would cache the matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
       mt <- x$getinv()
       if(!is.null(mt)){
       message("Getting cached data")
       return(mt)
       }
         mat <- x$get()
         mt <- solve(mat,...)
         x$setinv(mt)
         mt
  }
