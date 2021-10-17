
# SVr

# Importing the Dataset
dataset = read.csv('F://Data_Set/Position_Salaries.csv')

# we only work on 2 columns so read only required 2 columns of dataset
dataset = dataset[2:3]

# Fitting the SVR to the Dataset
install.packages('e1071')
library(e1071)

svm_regressor = svm(formula = Salary ~ .,
                    data = dataset,
                    type = 'eps-regression')

# Predict the result
y_pred = predict(svm_regressor,data.frame(Level = 6.5))

# Visualizing SVR result
library(ggplot2)
ggplot()+
  geom_point(aes(x = dataset$Level,y=dataset$Salary),
             color = 'red')+
  geom_line(aes(x = dataset$Level, y = predict(svm_regressor,newdata = dataset)),
            color = 'blue')+
  ggtitle('Truth or Bluff (Support Vector Regression)')+
  xlab('Level')+
  ylab('Salary')









