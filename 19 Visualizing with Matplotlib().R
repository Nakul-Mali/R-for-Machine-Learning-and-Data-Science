
# Using Basketball Dataset for this practical 

?matplot()
FieldGoals

# I need to plot the row wise of FieldGoals Matrix so we need to transpose MAtrix
# for transposition of Matrix we use t in R
t(FieldGoals)
matplot(t(FieldGoals),type='b',pch = 15:18,col = c(1:4,6))
legend('bottomleft',inset=0.01,legend='players',col=c(1:4,6),pch=15:18,horiz=F)
