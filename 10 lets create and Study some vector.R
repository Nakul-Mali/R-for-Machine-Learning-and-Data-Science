
myfirstvector <- c(3,45,56,732)
myfirstvector
is.numeric(myfirstvector)
is.integer(myfirstvector)
is.double(myfirstvector)

v2 <- c(3L,12L,243L,0L)
is.numeric(v2)
is.integer(v2)

v3 <- c('a','b23','hello')
v3
is.character(v3)
is.numeric(v3)

v4 <- c('a','B23','Hello',7)
v4
is.character(v4)
is.numeric(v4)

# seq() ie sequence function in R 
x <- seq(1,10)

y <- seq(1:10)

a <- seq(1,10,2)

# rep() ie replicate function in R 
n <- rep(3,5)

m <- rep("A",5)

o <- c(12,15)
p <- rep(o,3)













