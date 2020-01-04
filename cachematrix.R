## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

#makeCacheMatrix function creates a matrix which is essentially a list containing functions to set the value of the matrix,get the value of 
#matrix, set the inverse of the matrix and get the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
      setmatrix <- function(y)
      {
            x<<-y
            inv<<- NULL
      }
      
      getmatrix <-function()x
      setinverse <- function(solve) inv <<- solve
      getinverse <- function() inv
      list(setmatrix=setmatrix,getmatrix=getmatrix,
           setinverse=setinverse,getinverse=getinverse)

}


## Write a short comment describing this function

#cacheSolve is a function to get the inverse of the matrix if its already stored in the cache, otherwise it will find the inverse of the
#matrix using the solve function and set the inverse in the cache so that in the next run it can be fetched from the cache
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
         inv <-x$getinverse()
      if(!is.null(inv))
      {
            message("getting cached inverse")
            return(inv)
      }
      data <- x$getmatrix()
      inv <- solve(data)
      x$setinverse(inv)
      return(inv)
}
