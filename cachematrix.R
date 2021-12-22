## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(mat = matrix()) {
       ## initialize inverse
        m_inv <- NULL
        ##set matrix
        set <- function(y) {
                mat <<- y
                m_inv <<- NULL
        }
        ##get matrix
        get <- function() x
        ##set inverse
        setinverse <- function(inverse) m_inv <<- inverse
        ##get inverse
        getinverse <- function() m_inv
        ##return list of outputs
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = inverse)
     }


## Write a short comment describing this function

cacheSolve <- function(mat, ...) {
        #get inverse from cache
        m_inv <- x$getinverse()
        # check if it's already computed in cache, if so print inverse without doing any extra calculations
        if(!is.null(m_inv)) {
                message("getting cached data")
                return(m_inv)
        }
        # if not computer get matrix
        matrix_data <- mat$get()
        # compute it using solve()-------- It's works for general matrixes but 
        #if you have specific matrix we can use sparse solvers or qr.solve(), chol2inv() or pd.solve() there are much more faster that just solve()
        m_inv <- solve(matrix_data)
        #set inverse to use later
        x$setiverse(m_inv)
        #print out inverse
        m_inv
}
