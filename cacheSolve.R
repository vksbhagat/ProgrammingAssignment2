## cacheSolve calculates the inverse of a matrix for the first time or retrieves it from cache
## if the values have already been parsed into the previous function
cacheSolve <- function(x, ...)
{
        s <- x$getsolve()
        if(!is.null(s))
        {
                message("getting cached data")
                return(s)
        }
        
        data <- x$get()
        s <- solve(data, ...)
        x$setsolve(s)
        s
}
