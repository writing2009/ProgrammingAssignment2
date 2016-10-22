## Put comments here that give an overall description of what your
## functions do
# 
# Matrix inversion is usually a costly computation and there may be 
# some benefit to caching the inverse of a matrix rather than compute 
# it repeatedly (there are also alternatives to matrix inversion that
# we will not discuss here). Your assignment is to write a pair of 
# functions that cache the inverse of a matrix.

# Assumptions 
# If the inverse has already been calculated (and the matrix has not changed), 
# then the cachesolve should retrieve the inverse from the cache.

# Computing the inverse of a square matrix can be done with the solve function in R. 
# For example, if X is a square invertible matrix, then solve(X) returns its inverse.

# For this assignment, assume that the matrix supplied is always invertible.


## Write a short comment describing this function
# makeCacheMatrix: This function creates a special "matrix" object that 
# can cache its inversion

# Variables 
# x - the matrix
# y - the new matrix
# a - the receptical

makeCacheMatrix <- function(x = matrix()) {

# Create the initial object and assign a NULL
# Avoids unwaned NA object at begining of list

  a <- NULL

# Setup an object for copying function objects
# Create a global matric object X 
    set <- function(y) {

    # x is is set to a global environment object outside the environment using the superassignment 
    # operator to pass the y object 
    x <<- y

    # Create the initial object and assign a NULL
    # Avoids unwaned NA object at begining of list
    a <<- NULL
  }
  
# Create the matrix I am going to copy the values 
# Create get object which has matrix and has the global object
  get <- function() x
  setinverse <- function(solve) a <<- solve
  getinverse <- function() a

# Create a vector of objects 
  list (set=set, get=get, setinverse = setinverse, getinverse = getinverse)
}

## Write a short comment describing this function
# cacheSolve: This function computes the inverse of the special "matrix" 
# returned by makeCacheMatrix above.
# Note: requires makeCacheMatrix to run first because of the global environmental object assigned

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
# Assign the @getinverse object (matrix) to a local object
  a <- x$getinverse()

# If a null object, then return whatever is in the object (because it's inverted already or
# the object is null) and return the value
  if(!is.null(a)) {
    # Return whatever is in the object
    message("Ah hah! This is the already inverted matrix. This was cached, so I'm returning cached data instead.")
    return(a)
  }

# The object is  not a null object, assign setinv to invert the matrix using solve()
# Get the global enviroment object made by  the makeCacheMatrix global environment object 

data <- x$get()

# Finally! - solve the invert and pass all the objects

a <- solve(data, ...)

# Assign the set inverse object to the object a

x$setinverse(a)

# Return the object a
a

}
