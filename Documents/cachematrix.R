	#Contains two functions which return the inverse of a matrix 
	
	
	#Input the matrix and set it in an object
	#Calculate the inverse of the input matrix


	makeCacheMatrix <- function(x = matrix()) {
		matrix<-NULL
		set <- function(y) {
			x <<- y
			matrix <<- NULL
		}
		get <- function() x
	
		setInverse<-function(x){
			matrix<<-solve(x)
		}
	 
		getInverse<-function()matrix
	
		list(set=set,get=get,setInverse=setInverse,getInverse=getInverse)
	}
	
	
	#Return the inverse of the matrix from cache if available
	#Set the inverse of matrix if cache is empty
	
	cacheSolve <- function(x, ...) {
	
		matrix<-x$getInverse()
	
		if(!is.null(matrix)){
			matrix
		}else
		{
			y<-x$get()
	
			matrix<-list$setInverse(y)
			matrix
		}
	}

