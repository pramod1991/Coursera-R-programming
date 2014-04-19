## Put comments here that give an overall description of what your
## functions do
# It has 4 different list of functions embeded
# set(m, nr, nc)
# get()
# setinv(inverse)   where inverse <- checkSolve(m$get())
# getinv()
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
# set(m,nr,nc) -> just sets the matrix 'm' of 'nr' rows and 'nc' columns 
# inverse of matrix in initialized tu NULL value

  set <- function(m,nr,nc) {
    x <<- matrix(m, nr,nc)
    inv <<- NULL
  }
#get() -> retrives the current value
  get <- function() x

# setinv(inverse) -> set the inverse of the matrix using the checkSolve function
  setinv <- function(inverse) inv <<- inverse

# getinv() -> retrives the current value of the inverse of the matrix
  getinv <- function() inv
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
  
}


## Write a short comment describing this function
# This function simply takes one argument as a matrix and returns the inverse
cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x' using solve() function
  solve(x)
}
