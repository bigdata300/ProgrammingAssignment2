makeCacheMatrix <- function(x = matrix()) {
inverse <- NULL             
set <- function(y){
  x <<- y
  inverse <<- NULL
}
get <- function() x # get is the function to get the matrix
setinverse <- function(solve) inverse <<- solve
getinverse <- function() inverse #function that give us the inverse
list(set = set, get = get, 
     setinverse = setinverse,
     getinverse = getinverse)
}




i$getinverse()

cacheSolve <- function(x, ...) {
        inverse <- x$getinverse()
          if(!is.null(inverse)) {  #check if the inverse is null
            message("getting cached data")
            return(inverse) #return the inverse matrix
          }
          data <- x$get()
            inverse <- solve(data, ...) ##calculate the inverse value
            x$setinverse(inverse)
            inverse                     ## return a matrix inverse value
}
