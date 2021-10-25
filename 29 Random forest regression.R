

### Random forest regression

# Note = Random forest regression is team of Decision Trees where each one making
# decision and ultimate prediction is average of each decision tree predictions


# Regression Template

# Importing the dataset
dataset = read.csv('F://Data_Set/Position_Salaries.csv')
dataset = dataset[2:3]

# Splitting the dataset into the Training set and Test set
# # install.packages('caTools')
# library(caTools)
# set.seed(123)
# split = sample.split(dataset$Salary, SplitRatio = 2/3)
# training_set = subset(dataset, split == TRUE)
# test_set = subset(dataset, split == FALSE)

# Feature Scaling
# training_set = scale(training_set)
# test_set = scale(test_set)

# Fitting the Random Forest Regression Model to the dataset
install.packages('randomForest')
library(randomForest)
# seed is used to get the same result
set.seed(1234)
# to increase value of ntree accuracy of model is increased
# dataset[1] gives dataframe and dataset$salary gives vector
rf_regressor = randomForest(x=dataset[1],
                            y=dataset$Salary,
                            ntree = 500)


# Predicting a new result
y_pred = predict(rf_regressor, data.frame(Level = 6.5))

# Visualising the Random Forest Regression Model results (for higher resolution and smoother curve)
# install.packages('ggplot2')
library(ggplot2)
x_grid = seq(min(dataset$Level), max(dataset$Level), 0.01)
ggplot() +
  geom_point(aes(x = dataset$Level, y = dataset$Salary),
             colour = 'red') +
  geom_line(aes(x = x_grid, y = predict(rf_regressor, newdata = data.frame(Level = x_grid))),
            colour = 'blue') +
  ggtitle('Truth or Bluff (Random Forest Regression Model) with high resolution') +
  xlab('Level') +
  ylab('Salary')