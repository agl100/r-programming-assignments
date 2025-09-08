# Assignment 3 code in R

library(ggplot2)

# Create vectors (correcting any syntax issues)
Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Bernie")
ABC_poll <- c(4,62,51,21,2,14,15)
CBS_poll <- c(12,75,43,19,1,21,19)

# Combine into a data frame
df_polls <- data.frame(Name, ABC_poll, CBS_poll)

# Inspect the data frame
str(df_polls)
head(df_polls)

# Compute the mean, median, and range for each poll
mean(df_polls$ABC_poll)
median(df_polls$CBS_poll)
range(df_polls[, c("ABC_poll","CBS_poll")])

# Add a column for the difference between CBS and ABC
df_polls$Diff <- df_polls$CBS_poll - df_polls$ABC_pol

# Create combined data frame with name, poll type, and value
df_long <- rbind(
  data.frame(Name = df_polls$Name, Poll = "ABC",  Value = df_polls$ABC_poll),
  data.frame(Name = df_polls$Name, Poll = "CBS",  Value = df_polls$CBS_poll),
  data.frame(Name = df_polls$Name, Poll = "Diff", Value = df_polls$Diff)
)

# Make bar chart from combined data frame
ggplot(df_long, aes(x = Name, y = Value, fill = Poll)) +
  geom_col(position = "dodge") +
  labs(title = "Poll Results by Candidate",
       x = "Candidate", y = "Value")

# link to blog: https://rprogrammingfall25.blogspot.com/2025/09/module-3-assignment-data-structures-in-r.html 
