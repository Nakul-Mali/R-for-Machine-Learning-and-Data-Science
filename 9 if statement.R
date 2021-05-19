rnorm(2)
sqrt(4)

rm(answer)
x <- rnorm(1)
x
if(x>1){
  answer <- 'X is Greater than 1'
}else{
  answer <- 'X is Less than 1'
}

rm(answer1)
x1 <- rnorm(1)
x1
if(x1>1){
  answer1 <- 'X1 is Greater than 1'
}else if(x1 >= -1){
  answer1 <- 'X1 is between -1 and 1'
}else{
  answer1 <- 'X1 is less than -1'
}
