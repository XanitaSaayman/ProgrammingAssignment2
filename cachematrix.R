## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## makeCacheMatrix is a function that stores the calculated matrix (m). m is defaulted as NULL and set is implemented as a debugging tool to reinforce that. get gives the input matrix and both setmatrix and getmatrix are used to solve and show the matrix through cacheSolve. 

makeCacheMatrix<-function(x=matrix()){
        m<-NULL
        set<-function(y){
                x<<-y
                m<<-NULL
        }
        get<-function(){x}
        setmatrix<-function(solve){m<<-solve}
        getmatrix<-function(){m}
        list(set=set, get=get,
             setmatrix = setmatrix,
             getmatrix = getmatrix)
}


## Write a short comment describing this function
## cacheSolve is a function that uses the sub-functions set up in makeCacheMatrix. It initially checks if the matrix is previously cached and, if m is not NULL, returns a previously calculated matrix stored the global environment. Otherwise, it will retrieve the input matrix, solve, and set as a new value of m, returning this new value. 

}
cacheSolve<-function(x,...){
        m<-x$getmatrix()
        if(!is.null(m)){
                message("getting cached data")
                return(m)
        }
        matrix<-x$get()
        m<-solve(matrix,...)
        x$setmatrix(m)
        m
}
