

# Multiple Linear Regression

# Importing the dataset
dataset = read.csv("F://Data_Set/50_Startups.csv")

# Encoding Categorical Data of dataset
dataset$State = factor(dataset$State,
                       levels = c('New_York','California','Florida'),
                       labels = c(1,2,3))


# Dividing the dataset into training set and test set
# To divide the dataset we need to install caTool libeary
install.packages('caTools')
# To activate the installed pacjage caTools
library(caTools)
set.seed(123)
split = sample.split(dataset$Profit,SplitRatio = 0.8)
training_set = subset(dataset,split=TRUE)
test_set = subset(dataset,split=FALSE)

# Fitting Mutiple Linear Regression Model
# the space in R DSpend is write as R.DSpend
#lr = lm(formula = Profit ~ R.DSpend + Administration + MarketingSpend + State)
# or we write this model equation by using .
lr = lm(formula = Profit~.,data=training_set)
# In console we write summary(lr) we get significance of independent variable
#       on dependent varible significance meanse impact
# *** mens having stastical significance and highly significant
# ** means having stastical significant and medium significance
# * means having stastical significant and low significance
# '.' having stastical significance but not that much impact
# ' ' No significance,No impact

# Predicting test set result
y_pred = predict(lr,newdata = test_set)


