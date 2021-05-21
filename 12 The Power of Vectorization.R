
x <- nrom(5)

x

y <- rnorm(5)
y

for(i in y){
  print(i)
}

print(y[1])
print(y[2])
print(y[3])
print(y[4])
print(y[5])

for(j in 1:5){
  print(x[j])
}

n <- 5
a <- rnorm(n)
b <- rnorm(n)

# Vectorized approch
c <- a+b
d <- a*b
e <- a/b
f <- a-b

# De-vectorized approch
g <- rep(NA,n)    # To create null vector space for storing result
for (i in 1:n) {
  g[i] <- a[i]+b[i]
}





