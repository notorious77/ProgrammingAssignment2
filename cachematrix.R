-## [Put comments here that describe what your functions do]
 +## Put comments here that give an overall description of what your
 +## functions do
 +
 +## Write a short comment describing this function
  
  makeCacheMatrix <- function(x = matrix()) {
	mtx <- NULL
	set <-function(y) {
	x <<- y
	mtx <<-NULL
	}
	get <- function ()x
	setmatrix <- function(solve(x)) mtx <<- solve(x)
	getmatrix <- function () mtx
	list(set = set, get=get, setmatrix=setmatrix, getmatrix=getmatrix)
  
  }
  
  
 +## Write a short comment describing this function
 +
  cacheSolve <- function(x, ...) {
          ## Return a matrix that is the inverse of 'x'
	mtx <- x$getmatrix()
	if(!is.null(mtx)){
		message("getting cached matrix")
		return(mtx)
	}
	data <- x$get()
	mtx <-solve(data, ...)
	x$setmatrix(mtx)
	mtx
  }
