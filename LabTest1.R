## LAB TEST 1 -- ALISA ZARINA

## To restart R session => Ctrl + Shift + F10
## To comment out a block of code => [CTRL + SHIFT + C]

## TUTORIAL 3 -- CH3: Normal Distribution
## To restart R session => Ctrl + Shift + F10
## To comment out a block of code => [CTRL + SHIFT + C]

# NOTES:
#   pnorm(X value, mean value, std deviation value, lower.tail value)
#     if lower.tail = TRUE => then the question should address the "<" symbol
#     if lower.tail = FALSE => then the question should address the ">" symbol
#   BECAUSE
#     by default, R will take the value under/on the left ("<")
#     
#   qnorm(Z value/quantile, mean value, std deviation value, lower.tail value)


#####

# QUESTION 1
#a -- create a data frame (Name, Age, Gender, GPA)
# Create variables.
Name <- c("Amy", "Bob", "Chuck", "Daisy", "Ellie", "Frank", "George", "Helen")
Age <- c(27, 55, 34, 42, 20, 27, 34, 42)
Gender <- c("F", "M", "M", "F", "F", "M", "M", "F")
GPA <- c(3.26, 3.75, 2.98, 3.4, 2.75, 3.32, 3.68, 3.97)
# Join the variables to create a data frame.
data <- data.frame(Name, Age, Gender, GPA)
data


#####


# QUESTION 2
mean(GPA)


#####


# QUESTION 3
median(GPA)


#####


# QUESTION 4
var(GPA)


#####


# QUESTION 5
sd(GPA)


#####


# QUESTION 6 -- based on data frame, plot the bar chart for GPA vs Name.
barplot(GPA, names.arg = c(Name))

# Design the bar plot.
barplot(GPA, names.arg = c(Name), main = "The Grade Point Average (GPA) for Semester 3 Students",
        xlab = "Student Name", ylab = "Grade Point Average",
        col = "blue",
        space = 0.08,
        ylim = c(0,4))


#####


#   QUESTION 7
#a) -- Create data frame, call it top_ten.
# Create variables.
City <- c("New York", "Los Angeles", "Chicago", "Houston", "Phoenix", "Philadelphia", "San Antonio", "San Diego", "Dallas", "San Jose")
Population <- c(8.60, 4.06, 2.68, 2.40, 1.71, 1.58, 1.57, 1.45, 1.40, 1.03)
# Join the variables to create a data frame.
top_ten <- data.frame(City, Population)
top_ten

#b) use function pie(quantitative_variable) to draw a pie chart.
pie(top_ten[["Population"]])
pie(top_ten[["Population"]], labels = top_ten[["City"]],
    main = "Most Populous US Cities in 2019 (in millions)",
    col = rainbow(length(labels)))


#####


# QUESTION 8 -- given [mean = 70, sd = 3]
pnorm(72, mean = 70, sd = 3, lower.tail = FALSE)


#####


# QUESTION 9 -- given [mean = 70, sd = 3]
qnorm(0.40, mean = 70, sd = 3, lower.tail = TRUE)


#####

# QUESTION 10 -- given [mean = 73.5, sd = 2.5] -- Find sd of samples of p = 30
#QUESTION 10
print(2.5/sqrt(30))

# Formula (using standard error) = [ Z = (p - mean)/std error] --[p = 10%, mean = 8%, sample size = 250]


# step 1: find standard error first
print(sqrt((73.5*(1 - 73.5)/30)))
# 73.5 is mean, 1 is fixed, 30 is sample size

# standard error is 0.017

# step 2: do formula
# Formula = [ Z = (p - mean)/(sqrt(mean)(1-mean)/n) ] 
# Formula (using standard error) = [ Z = (p - mean)/std error]
print((0.1 - 0.08)/0.017)
# 0.1 is p, 0.08 is mean, 0.017 is standard error


print((30 - 73.5)/2.5)


#####

#QUESTION 11
pnorm(72, mean = 73.5, sd = 0.4564355, lower.tail = TRUE)