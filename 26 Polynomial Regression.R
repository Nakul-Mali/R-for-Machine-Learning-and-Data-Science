
# Polynomial Regression

# Importing Dataset
dataset = read.csv('F://Data_Set/Position_Salaries.csv')

# we only work on 2 columns so read only required 2 columns of dataset
dataset = dataset[2:3]

#Our Dataset is so small so we are not spliting the dataset in trainaing and testing

# Spliting the dataset into training set and test set
#install.packages('caTools')
#library(caTools)
#set.seed(123)
#split = sample.split(dataset$Salary,SplitRatio = 0.8)
#training_set = subset(dataset,split == TRUE)
#testing_set = subset(dataset,split==FALSE)


# we dont need feature scaling in polynoial regression because polynomial 
#    regression is actually Multiple linear regression model.

# Fitting the linear regession model on dataset
lin_reg = lm(formula = Salary ~ .,
             data = dataset)
summary(lin_reg)

# Fitting the Polynomial Regression model on dataset
# in polynomial regression we have x,x^2,x^3......power so we add new ^2, ^3
#       Uptp ^4 (degree = 4) column in dataset
dataset$Level2 = dataset$Level^2
dataset$Level3 = dataset$Level^3
dataset$Level4 = dataset$Level^4

poly_reg = lm(formula = Salary ~ .,
              data = dataset)

summary(poly_reg)
# Level 2, Level 3 and Level 4 created are stastically significant 

# Visualize linear regression result
install.packages('ggplot2')
library(ggplot2)
ggplot()+
  geom_point(aes(x = dataset$Level, y = dataset$Salary), color = 'red')+
  geom_line(aes(x=dataset$Level, y = predict(lin_reg, newdata = dataset)),
            color = 'blue')+
  ggtitle('Truth or Bluff (Linear Regression)')+
  xlab('Level')+
  ylab('Salary')

# Visualizing Polynomial regression result
ggplot()+
  geom_point(aes(x = dataset$Level, y = dataset$Salary), color = 'red')+
  geom_line(aes(x=dataset$Level, y = predict(poly_reg, newdata = dataset)),
            color = 'blue')+
  ggtitle('Truth or Bluff (Plynomial Regression)')+
  xlab('Level')+
  ylab('Salary')

# Predict new result with linear regression model
lin_pred = predict(lin_reg, data.frame(Level = 6.5))

# Predict new result with polynomial regression model
polyy_pred = predict(poly_reg, data.frame(Level = 6.5,
                                     Level2 = 6.5^2,
                                     Level3 = 6.5^3,
                                     Level4 = 6.5^4))




























