
# for this practical we use basketball dataset
myplot <- function(){
  Data <- MinutesPlayed[1,,drop=F]
  matplot(t(Data),type='b',pch=15:18,col=c(1:4,6))
  legend("bottomleft",inset=0.01,legend=Players[1],col=c(1:4,6),pch=15:18,horiz=F)
}

myplot()


myplot1 <- function(rows){
  Data <- MinutesPlayed[rows,,drop=F]
  matplot(t(Data),type='b',pch=15:18,col=c(1:4,6))
  legend("bottomleft",inset=0.01,legend=Players[rows],col=c(1:4,6),pch=15:18,horiz=F)
}
myplot1(1:5)


myplot2 <- function(rows){
  Data <- Games[rows,,drop=F]
  matplot(t(Data),type='b',pch=15:18,col=c(1:4,6))
  legend("bottomleft",inset=0.01,legend=Players[rows],col=c(1:4,6),pch=15:18,horiz=F)
}
myplot2(1:10)


myplot3 <- function(rows){
  Data <- Points[rows,,drop=F]
  matplot(t(Data),type='b',pch=15:18,col=c(1:4,6))
  legend("bottomleft",inset=0.01,legend=Players[rows],col=c(1:4,6),pch=15:18,horiz=F)
}
myplot3(1:5)



myplot4 <- function(Data,rows){
  Data <- Data[rows,,drop=F]
  matplot(t(Data),type='b',pch=15:18,col=c(1:4,6))
  legend("bottomleft",inset=0.01,legend=Players[rows],col=c(1:4,6),pch=15:18,horiz=F)
}
myplot4(Salary,1:5)



# Set default parameter
myplot5 <- function(Data,rows=1:5){
  Data <- Data[rows,,drop=F]
  matplot(t(Data),type='b',pch=15:18,col=c(1:4,6))
  legend("bottomleft",inset=0.01,legend=Players[rows],col=c(1:4,6),pch=15:18,horiz=F)
}
myplot5(Salary)






























