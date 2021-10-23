
# Decison Tree Regression

# Importing Dataset 
dataset = read.csv('F://Data_Set/Position_Salaries.csv')
dataset = dataset[2:3]

# dividing the dataset into dependent and independent variable


# Fitting Decision tree regressor
install.packages('rpart')
library(rpart)

# DT_regressor = rpart(formula = Salary ~ Level, data = dataset)
#               or
DT_regressor = rpart(formula = Salary ~ .,
                     data = dataset,
                     control = rpart.control(minsplit = 1))

# Predect the result 
y_pred = predict(DT_regressor, data.frame(Level = 6.5))

# Note :- In visualization we can't get the curve because in decision tree 
# regressor we are not spliting the data here and Decision tree regressor take 
# average thats why we get average straight line as a curve so to get actual
# curve in visualization so to get the curve we can split the values and thats 
# why add condition parameter to split. We can have sevral parameters in 
# rpart libeary and we can use this optional parameters to improve the model & 
# make it robust thats why we add contol parameter in rpart
library(ggplot2)
ggplot()+
  geom_point(aes(x = dataset$Level,y=dataset$Salary),
             color = 'red')+
  geom_line(aes(x = dataset$Level, y = predict(DT_regressor,newdata = dataset)),
            color = 'blue')+
  ggtitle('Truth or Bluff (Decision Tree Regression)')+
  xlab('Level')+
  ylab('Salary')

# The above visualalized model is non continous model so we visualize it with 
# high resolution and continus form like as
# Visualizing the result with High resolution
x_grid = seq(min(dataset$Level),max(dataset$Level),0.01)
ggplot()+
  geom_point(aes(x = dataset$Level,y=dataset$Salary),
             color = 'red')+
  geom_line(aes(x = x_grid, y = predict(DT_regressor,newdata = data.frame(Level = x_grid))),
            color = 'blue')+
  ggtitle('Truth or Bluff (Decision Tree Regression)')+
  xlab('Level')+
  ylab('Salary')
  




