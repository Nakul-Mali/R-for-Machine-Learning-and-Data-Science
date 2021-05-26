
# for this practical we use 

Games

Data <- MinutesPlayed[1:3,]
matplot(t(Data),type='b',pch=15:18,col=c(1:4,6))
legend("bottomleft",inset=0.01,legend=Players[1:3],col=c(1:4,6),pch=15:18,horiz=F)


Data <- MinutesPlayed[1,,drop=F]
matplot(t(Data),type='b',pch=15:18,col=c(1:4,6))
legend("bottomleft",inset=0.01,legend=Players[1],col=c(1:4,6),pch=15:18,horiz=F)

Data <- MinutesPlayed[2,,drop = F]
matplot(t(Data),type='b',pch=15:18,col=c(1:4,6))
legend("bottomleft",inset=0.01,legend=Players[2],col=c(1:4,6),pch=15:18,horiz=F)