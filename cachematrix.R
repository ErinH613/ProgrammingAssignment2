## Allows you to create a new square matrix and return it's inverse - will not work on non-square matrix

## first function creates the matrix

makeCacheMatrix <- function(mymatrix = matrix()) {
  inversematrix <- NULL ##sets inversematrix to NULL so old data doesn't interfer
  
  set <- function(newmatrix) {
    
    mymatrix <<- newmatrix ##new matrix will overright old matrix data
    
    inversematrix <<- NULL ##inversematrix is initially set to NULL
    
  }
  
  get <- function() mymatrix
  
  setinverse <- function(newinverse) inverse <<- newinverse
  
  getinverse <- function() inverse 
  
  list (set = set, get = get,
        
        setinverse = setinverse,
        
        getinverse = getinverse) 
  
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
  
  myinversematrix <- solve(data) 
  
  mymatrix$setinverse(myinversematrix)
  
  myinversematrix
}
