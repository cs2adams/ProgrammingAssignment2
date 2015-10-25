## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# Create list of matrix command

makeCacheMatrix <- function(x = matrix()) {
        
        inv <- NULL
        
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        
        get <- function() x
        
        set.inv <- function(y) {
                inv <<- y
        }
        
        get.inv <- function() inv
        list(set = set, get = get, set.inv = set.inv, get.inv = get.inv)
}


## Write a short comment describing this function
#Yayy

cacheSolve <- function(x, ...) {
        inv <- x$get.inv()
        if(is.null(inv)) {
                message('This may take a while...')
                datmat <- x$get()
                inv <- solve(datmat)
                x$set.inv(inv)
                inv
        }
        else {
                message('Here you go... hot off the cache!')
                inv
        }
}