## Functions allowing the creation of a special 'matrix' type that can cache
## its inverse in order to save computation resources.

## We use a function call to create space to cache a matrix's inverse.
## Functions to access that environment are created: (get, set, getinv, setinv)

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL #initialize variable to store inverse
    set <- function(y) {
        #assigns a matrix to this CacheMatrix
        x <<- y
        m <<- NULL
    }
    get <- function() x #gets the matrix currently in this CacheMatrix
    setinv <- function(inv) i <<- inv #assigns an inverse to this CacheMatrix
    getinv <- function() i #gets the inverse currently in this CacheMatrix
    list(set = set, get = get, setinv = setinv, getinv = getinv) #return funcs
}


## Computes the inverse of a CacheMatrix. If the inverse has been
##cached, it retrieves it.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    i <- x$getinv() #get the inverse of a given CacheMatrix
    if(!is.null(i)) {
        message('getting cached data')
        return(i)
    }
    #unless it's null, in which case:
    data <- x$get() #get the matrix
    i <- solve(data) #solve for the inverse
    x$setinv(i) #store the inverse in the CacheMatrix
    i
}
