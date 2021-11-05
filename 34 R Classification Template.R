
# Classification Template

# Logistic Regression

dataset = read.csv('F://Data_Set/Social_Network_Ads.csv')

# use only age, estimated salary, Purchesed column of this dataset
dataset = dataset[,3:5]

# spliting the dataset into training and testing sets
library(caTools)
set.seed(123)
split = sample.split(dataset$Purchased,SplitRatio = 0.75)
training_set = subset(dataset, split==TRUE)
test_set = subset(dataset, split==FALSE)

# Feature scling
training_set[,1:2] = scale(training_set[,1:2])
test_set[,1:2] = scale(training_set[,1:2])

# Fitting Logistic Regression

classifier = create your classfier here 


# Predict test set result
# Note :- Normaly we are predicting the reult in 1 set but in Logistic regression
#         we are predicting the result in 2 step.
# prob_pred is predicted probablity
# response type gives the probablity in single vector
prob_pred = predict(lr_classifier, type = 'response', newdata = test_set[-3])
print(prob_pred)
# to transform this predicted probablities in 0 & 1 we use if else statement
y_pred = ifelse(prob_pred > 0.5, 1, 0)
# i.e if probablity is greater than 0.5 then return 1 else return 
print(y_pred)

# Confusion Matrix
cm = table(test_set[,3],y_pred)
print(cm)

# Visualizing the training set 
install.packages('ElemStatLearn')
library(ElemStatLearn)
set = training_set
X1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)
X2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)
grid_set = expand.grid(X1, X2)
colnames(grid_set) = c('Age', 'EstimatedSalary')
prob_set = predict(lr_classifier, type = 'response', newdata = grid_set)
y_grid = ifelse(prob_set > 0.5, 1, 0)
plot(set[, -3],
     main = 'Logistic Regression (Training set)',
     xlab = 'Age', ylab = 'Estimated Salary',
     xlim = range(X1), ylim = range(X2))
contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'springgreen3', 'tomato'))
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'green4', 'red3'))

# Visualizing the test set result
library(ElemStatLearn)
set = test_set
X1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)
X2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)
grid_set = expand.grid(X1, X2)
colnames(grid_set) = c('Age', 'EstimatedSalary')
prob_set = predict(lr_classifier, type = 'response', newdata = grid_set)
y_grid = ifelse(prob_set > 0.5, 1, 0)
plot(set[, -3],
     main = 'Logistic Regression (Test set)',
     xlab = 'Age', ylab = 'Estimated Salary',
     xlim = range(X1), ylim = range(X2))
contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'springgreen3', 'tomato'))
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'green4', 'red3'))