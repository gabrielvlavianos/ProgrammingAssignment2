
## The function was based on the "mean" example. But instead of calculating the mean
## it calculates de inverse of a matrix

  makeCacheMatrix <- function(x = matrix()) {
    z <- NULL
    set <- function(y){
      x <<- y
      z <<- NULL
    }
    get <- function()x
    set_inverse <- function(inverse) z <<- inverse
    get_inverse <- function() z 
    list(set = set, get = get, 
         set_inverse = set_inverse, 
         get_inverse = get_inverse)
  }


## This functions checks if the inverse of the matrix was already calculated. If so, it get's the outcome and print it. 
  ##if not, it calculates it and prints the result.
 

cacheSolve <- function(x, ...) {

  z <- x$get_inverse()
  if(!is.null(z)){
    message("getting cache data")
    return(z)
  }
  m <- x$get()
  z <- solve(m,...)
  x$set_inverse(z)
  z
}
