## This function caching the inverse of a Matrix


## This function makes a matrix with a cache

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) m <<- solve ##making inversion of matrix
  getsolve<- function() m ## getting the inversion of matrix
  list(set = set, get = get, ##
       setsolve = setsolve,
       getsolve = getsolve)
  

}


## This function makes inverse of matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
