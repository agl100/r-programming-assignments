# 1. Matrix Addition & Subtraction

# Define the variables
A <- matrix(c(2, 0, 1, 3), ncol = 2)
B <- matrix(c(5, 2, 4, -1), ncol = 2)

A
B
# Compute 'A + B' and 'A - B', then display the result
A + B
A - B


# 2. Create a Digital Martix

# Use 'diag()' to build a 4×4 matrix with diagonal entries '4, 1, 2, 3'
D <- diag(c(4, 1, 2, 3))

# Show the code and the resulting matrix
D


# 3. Construct a Custom 5×5 Matrix

M <- diag(3, 5)

# First row as a separate matrix
row1 <- matrix(c(3, 1, 1, 1, 1), nrow = 1)

# Replace row 1 of M with row1
M[1, ] <- row1

# Replace first column of rows 2–5 with 2s
M[2:5, 1] <- 2

M
