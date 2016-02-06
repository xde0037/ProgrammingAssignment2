cacheSolve <- function(x, ...) {
## @x: output of makeCacheMatrix()
## return: inverse of the original matrix input to makeCacheMatrix()
     inv = x$getinv()
     # if the inverse has already been done or not
     if (!is.null(inv)){
     # get it from the cache and skips the computation. 
        message("getting cached data")
        return(inv)
     }
     # otherwise, do the inverse 
     mat.data = x$get()
     inv = solve(mat.data, ...)
							        
     # sets the value of the inverse in cache with setinv function.
     x$setinv(inv)
     return(inv)
}
