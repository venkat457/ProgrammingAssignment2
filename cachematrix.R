## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	im <- NULL
	set <- function(sm) {
		
		x <<- sm
		im <<- NULL
	}
	get <- function() x
	setinverse <- function(i) im <<- i
	getinverse <- function() im
	list(set = set, get = get,
	setinverse=setinverse,
	getinverse=getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
                im <- x$getinverse()
        if(!is.null(im)) {
                message("getting cached data")
                return(im)
        }
        data <- x$get()
        im <- solve(data, ...)
        x$setinverse(im)
        im
}
