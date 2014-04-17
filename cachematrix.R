## Put comments here that give an overall description of what your
## functions do

## Using a function call to create space to cache a matrix's inverse.
## Functions to access that space are created: (get, set, getinv, setinv)

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL #initialize variable to store inverse
    set <- function(y) {
        #assign a matrix to this CacheMatrix
        x <<- y
        m <<- NULL
    }
    get <- function() x #get the matrix currently in this CacheMatrix
    setinv <- function(inv) i <<- inv #assign an inverse to this CacheMatrix
    getinv <- function() i #get the inverse currently in this CacheMatrix
    list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## Computes the inverse of a makeCacheMatrix 'matrix'. If the inverse has been
##cached, it retrieves it.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
