## Function to set and get the matrix
## Functon to set and get the inverse of matrix

makeCacheMatrix <- function(x = matrix()) {
  # set the value of matrix
  # get the value of matrix
  # set the inverse of matrix
  # get the inverse of matrix
  
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinversematrix <- function(inverse) i <<- inverse
  getinversematrix <- function() i
  list(set = set, get = get,
       setinversematrix = setinversematrix,
       getinversematrix = getinversematrix)
  
}


## function to return cached matrix if exists or else returns the inversed matrix 

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  
  i <- x$getinversematrix()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinversematrix(i)
  i
  
}

