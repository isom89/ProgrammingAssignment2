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
  list(set = set, get = get, ## cached matrix to list
       setsolve = setsolve,
       getsolve = getsolve)
  

}


## This function makes inverse of matrix - if matrix already exist it takes it from cache

cacheSolve <- function(x, ...) {
       
  m <- x$getsolve() 
  
  if(!is.null(m)) {  ##if matrix already exist let's take it from cache
    message("getting cached data")
    return(m)
  }
  
  data <- x$get()
  
  m <- solve(data, ...)  ##if matrix didn't exist - inverse it
  
  x$setsolve(m) ##add it to cache
  
  m ## returning inverse matrix
  
}
