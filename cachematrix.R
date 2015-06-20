##the first section of this code does the following:
## 1. Sets the value of the matrix 
## 2. Gets the value of the matrix
## 3. Sets the value of the inverse
## 4. Gets the value of the inverse

makeCacheMatrix <- function(x = matrix()){ 
  m <- NULL
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

## The function calculates the inverse of the matrix
## First the function checks to see if the inverse matrix has been calculated
## If calculated, the cached data is used and the computation is skipped 
## Calculates the inverse of matrix, sets the value of the inverse in set_inverse function.

cacheSolve <- function(x, ...){
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
  ## Returns a matrix that is the inverse of 'x'
}  

##testing 
x<-5
solve(x)
