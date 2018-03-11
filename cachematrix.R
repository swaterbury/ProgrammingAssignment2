## Put comments here that give an overall description of what your
## functions do

## Creates an object containing the fucntions for Get, set and solving the matrix.  Returns a list

makeCacheMatrix <- function(x = matrix()) {
  m <- null
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) m <<- solve
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## CacheSolve takes a cached MAtrix object and solves it, or returns the previously solved values.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

  
    m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }

  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
}
