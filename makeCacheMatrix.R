makeCacheMatrix <- function(x = matrix()) {
## @x: an invertible matrix
## return: a list containing functions to set/get matrix 
## and set/get inverted matrix
## This list is used as the input to cacheSolve()
   inv = NULL
   set = function(y) {
     # use `<<-` to assign a value to an object in an environment 
     # different from the current environment. 
     x <<- y
     inv <<- NULL
   }
   get = function() x
   setinv = function(inverse) inv <<- inverse 
   getinv = function() inv
   list(set=set, get=get, setinv=setinv, getinv=getinv)
}
