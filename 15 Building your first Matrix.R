
# How to genrate matrix by using matrix function

?matrix()
mydata <- 1:20
mydata
A <- matrix(mydata,4,5)
A
A[2,]
A[,3]
A[2,3]

# matrix genrated by using byrow() function 
B <- matrix(mydata,4,5,byrow = T)
B
B[2,5]

# matrix genrated by using rbind() function

r1 <- c('a','b','c')
r2 <- c('d','e','f')
r3 <- c('g','h','i')
c <- rbind(r1,r2,r3)
c


# matrix genrated by using cbind() function

r4 <- 1:5
r5 <- -1:-5
D <- cbind(r4,r5)
D



