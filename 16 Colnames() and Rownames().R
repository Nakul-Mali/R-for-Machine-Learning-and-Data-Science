
# NAmed vector

A = 1:5
A

# giving name to the vector

names(A) = c('a','b','c','d','e')
A

A['b']
names(A)

# Clear Names
names(A) <- NULL
names(A)
A

# Naming Matrix Dimension 1 
temp.vec <- rep(c('x','y','z'),each=3)
temp.vec

M = matrix(temp.vec,3,3)
M
# assign rownames
rownames(M) <- c('How','are','you')
M
# assign Column Names
colnames(M) <- c('Where','are','they')
M

M['are','are']

M['are','are'] = 0
M

rownames(M)
colnames(M)






