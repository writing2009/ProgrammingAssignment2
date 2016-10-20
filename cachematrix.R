## Put comments here that give an overall description of what your
## functions do

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
# can cache its inverse.

# Variables 
# x - the matrix
# y - the new matrix
# i - the receptical

makeCacheMatrix <- function(x = matrix()) {

# Create a invertion receptical for functions passed into this function (So much for dynamic assignment in R?)
  i < - NULL
  
# Copy the functions being passed into the matrix into recepticals (Is this a MA rated function?)

  set <- function(y) {
    #(Is this a MA rated function?)
    x <<- y
    i <<- NULL
  }
  
    
# Create the matrix I am going to copy the values (ooh yah!)
  
# Copy the values (Was it good for oui?)
  
# 
  
}

## Write a short comment describing this function
# cacheSolve: This function computes the inverse of the special "matrix" 
# returned by makeCacheMatrix above.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  
}
