# Assignment 2

Error Message: "Error in myMean(assignment2) : object 'assignment' not found"

Explanation: The error message references the argument "assignment", found in the function definition for "myMean". The function fails because the variable names inside the function (both "assignment" and "someData") do not match the input argument ("assignment2"). R is case-sensitive and does not automatically “guess” what you mean, so it throws an error when it can’t find objects named "assignment" or "someData".

Corrected Code: 
myMean <- function(x) {
  return(sum(x) / length(x))

Result:
myMean(assignment2)
[1] 19.25

Blog Post: https://rprogrammingfall25.blogspot.com/2025/09/module-2-assignment-importing-data-and.html 
