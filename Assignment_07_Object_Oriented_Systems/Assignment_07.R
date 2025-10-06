# Step 1: Choose Dataset and show
data("mtcars")

head(mtcars)
str(mtcars)

# Test Generic Functions
summary(mtcars)
plot(mtcars$mpg, mtcars$hp)

# Explore S3 vs. S4
# S3 Example
s3_obj <- list(name = "Avery", age = 23, GPA = 3.8)
class(s3_obj) <- "student_s3"

# S4 Example
setClass("student_s4",
         slots = c(name = "character", age = "numeric", GPA = "numeric"))
s4_obj <- new("student_s4", name = "Avery", age = 23, GPA = 3.8)


# Demonstrate Generic Function Dispatch
print(s3_obj)

print(s4_obj)
