
# for this practical we use the basketball Dataset

x <- c('a','b','c','d','e')
x
x[c(1,5)]
x[3]

Games
Games[3,]

# Display Subset of Game MAtrix
Games[1:3,1:5]
Games[1:3,6:10]
Games[c(1,10),]
Games[,c(3,4)]
Games[,c('2009','2008')]
Games[1,]
is.matrix(Games[1,])
is.vector(Games[1,])
Games[1,5]
Games[1,]
# Convert one Dimension vector in to 2 dimensional Matrix
Games[1,,drop=F]
is.matrix(Games[1,,drop=F])

Games[1,5,drop=F]
is.matrix(Games[1,5,drop=F])












