makeVector <- function(x = matrix()) {
        ## intialisation of inverse 
        i <- NULL
        ## Method to set the matrix
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
        ## Method to get the Matrix
        get <- function(){
                ## Return the matrix
                x
        }
        ## Method to set the inverse of a matrix
                setinverse <- function(Inverse) {
                i <<- Inverse
        }
        ## Method to get the inverse of a matrix
        getInverse <- function() {
        i
        ## Return inverse of the matrix
        }
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}

cacheSolve <- function(x, ...) {
        ## Return matrix which is inverse of x
        i <- x$getIverse()
        if(!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        ## Get the matrix from our data
        data <- x$get()
        ## Calculate the inverse of a matrix
        i <- Solve(data)
        ## Set the inverse to the object
        x$setInverse(i)
        i
}
