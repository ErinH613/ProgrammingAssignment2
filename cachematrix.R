## Allows you to create a new square matrix and return it's inverse - will not work on non-square matrix

## first function creates the matrix

makeCacheMatrix <- function(my.matrix = matrix()) {
  inverse.matrix <- NULL ##sets inverse_matrix to NULL so old data doesn't interfere
  set <- function(new.matrix) {
    my.matrix <<- new.matrix ##new matrix will overright old matrix data
    inverse.matrix <<- NULL ##inversematrix is initially set to NULL   
  }
  get <- function() my.matrix
  set.inverse <- function(new.inverse) inverse.matrix <<- new.inverse
  get.inverse <- function() inverse.matrix 
  list (set = set, get = get, 
        set.inverse = set.inverse,
        get.inverse = get.inverse) 
}


## This function creates an inverse of the square maxtrix, 
## if myinversematrix is called and already exists if returns the cached data

cacheInverse <- function(mymatrix, ...) {
  
  myinversematrix <- mymatrix$getinverse()
  
  if(!is.null(myinversematrix)) { 
    
    message("getting cached data") 
    
    return(myinversematrix) 
    
  }
  
  data <- mymatrix$get()
  
  myinversematrix <- solve(data, ...) 
  
  mymatrix$setinverse(myinversematrix)
  
  myinversematrix
}