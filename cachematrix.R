## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#converted mean function to inv (as inverse) function that as basic function of set and get were same
#set and get value of vector
#set and get value of inverse

makeCacheMatrix <- function(x = matrix())  {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinv <- function(inverse) {inv <<- inverse}
  getinv <- function() {inv}
  list(set = set, get = get, setinv = setinv,getinv = getinv)
}


## Write a short comment describing this function
#converting mean to solve by changing "m" to "s"
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv <- x$getinv()
  if(!is.null(inv)) {
    message("getting inversed matrix")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinv(inv)
  inv
  
}

