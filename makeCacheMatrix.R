## makeCacheMatrix created a list of functions including setting inverse and getting inverse
## calculate the inverse for the first time run and save it for the cache use.
makeCacheMatrix <- function(x = numeric())
{
        s <- NULL
        set <- function(y) 
        {
                x <<- y
                s <<- NULL
        }
        
        get <- function() x
        setsolve <- function(solve) s <<- solve
        getsolve <- function() s
        list(set = set, get = get, setsolve = setsolve, getsolve = getsolve)
}
