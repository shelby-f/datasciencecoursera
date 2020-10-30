## Put comments here that give an overall description of what your
## functions do

## set and get the value of the matrix, set and get the value of the Inverse

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(y){
      x <<- y 
      i <<- NULL
    }
    get <- function() x 
    setInverse <- function(inverse) i <<- inverse
    getInverse <- function() i
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}


## Check for the inverse, compute the inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$getInverse()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setInverse(i)
  i
}
