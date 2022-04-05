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
#   qnorm(Z value, mean value, std deviation value, lower.tail value)
  

#####


# QUESTION 1 -- given [mean = 0, sd = 1]
#a -- "Z is less than 1.57?"
pnorm(1.57, mean = 0, sd = 1, lower.tail = TRUE)

#b -- "Z is greater than 1.84?"
pnorm(1.84, mean = 0, sd = 1, lower.tail = FALSE)

#c -- "Z is between 1.57 and 1.84?"
pnorm(1.84, mean = 0, sd = 1, lower.tail = TRUE) - pnorm(1.57, mean = 0, sd = 1, lower.tail = TRUE)

#d -- "Z is less than 1.57 or greater than 1.84?"
pnorm(1.57, mean = 0, sd = 1, lower.tail = TRUE) + pnorm(1.84, mean = 0, sd = 1, lower.tail = FALSE)


#####


# QUESTION 2 -- given [mean = 0, sd = 1]
#a -- "Z is between -1.57 and 1.84?"
pnorm(1.84, mean = 0, sd = 1, lower.tail = TRUE) - pnorm(-1.57, mean = 0, sd = 1, lower.tail = TRUE)

#b -- "Z is less than -1.57 or greater than 1.84?"
pnorm(-1.57, mean = 0, sd = 1, lower.tail = TRUE) + pnorm(1.84, mean = 0, sd = 1, lower.tail = FALSE)

#c -- "what is the value of Z if only 2.5% of all possible Z values are larger?"
qnorm(0.025, mean = 0, sd = 1, lower.tail = FALSE)

#*d* -- "Between what two values of Z (symmetrically distributed) will 68.26% of all possible Z values be contained?"
# 68.26% = 0.6826 => (1-0.6826)/2 = 0.1587
## xlower
pnorm(0.1587, mean = 0, sd = 1, lower.tail = TRUE)
## xupper
pnorm(0.1587, mean = 0, sd = 1, lower.tail = FALSE)


#####


# QUESTION 3 -- given [mean = 0, sd = 1]
#a -- "Z is less than 1.08?"
pnorm(1.08, mean = 0, sd = 1, lower.tail = TRUE)

#b -- "Z is greater than -0.21?"
pnorm(-0.21, mean = 0, sd = 1, lower.tail = FALSE)

#c -- "Z is less than -0.21 or greater than the mean?"
pnorm(-0.21, mean = 0, sd = 1, lower.tail = TRUE) + pnorm(0, mean = 0, sd = 1, lower.tail = FALSE)

#d -- "Z is less than -0.21 or greater than 1.08?"
pnorm(-0.21, mean = 0, sd = 1, lower.tail = TRUE) + pnorm(1.08, mean = 0, sd = 1, lower.tail = FALSE)


#####


# QUESTION 4 -- given [mean = 0, sd = 1]
#a -- "P(Z > 1.08)?"
pnorm(1.08, mean = 0, sd = 1, lower.tail = FALSE)

#b -- "P(Z < -0.21)?"
pnorm(-0.21, mean = 0, sd = 1, lower.tail = TRUE)

#c -- "P(-1.96 < Z < -0.21)?"
pnorm(-0.21, mean = 0, sd = 1, lower.tail = TRUE) - pnorm(-1.96, mean = 0, sd = 1, lower.tail = TRUE)

#d -- "What is the value of Z if only 15.87% of all possible Z values are larger?"
qnorm(0.1587, mean = 0, sd = 1, lower.tail = FALSE)


#####


# QUESTION 5 -- given [mean = 100, sd = 10]
#a -- "P(X > 75)?"
pnorm(75, mean = 100, sd = 10, lower.tail = FALSE)

#b -- "P(X < 70)?"
pnorm(70, mean = 100, sd = 10, lower.tail = TRUE)

#c -- "P(X < 80) or P(X > 110)?"
pnorm(80, mean = 100, sd = 10, lower.tail = TRUE) + pnorm(110, mean = 100, sd = 10, lower.tail = FALSE)

#d -- "Between what two X values (symmetrically distributed at mean) are 80% of the values?"
# 80% = 0.80 => (1-0.80)/2 = 0.10
## xlower
qnorm(0.10, mean = 0, sd = 1, lower.tail = TRUE)      # -1.28
## xupper
qnorm(0.10, mean = 0, sd = 1, lower.tail = FALSE)     # 1.28


#####


# QUESTION 6 -- given [mean = 50, sd = 4]
#a -- "P(X > 43)?"
pnorm(43, mean = 50, sd = 4, lower.tail = FALSE)

#b -- "P (X < 42)?"
pnorm(42, mean = 50, sd = 4, lower.tail = TRUE)

#c -- "5% of the values are less than what X value?"
qnorm(0.05, mean = 50, sd = 4, lower.tail = FALSE)    # ?? WHY IS IT FALSE?

#d -- "Between what two X values (symmetrically distributed at mean) are 60% of the values?"
# 60% = 0.60 => (1-0.60)/2 = 0.20
## xlower
qnorm(0.20, mean = 0, sd = 1, lower.tail = TRUE)      # -0.84
## xupper
qnorm(0.20, mean = 0, sd = 1, lower.tail = FALSE)     # 0.84


#####


# QUESTION 7 -- given [mean = 9.24, sd = 3]
#a -- "P (X > 10)?"
pnorm(10, mean = 9.24, sd = 3, lower.tail = FALSE)

#b -- "P (3 < X < 5)?"
pnorm(5, mean = 9.24, sd = 3, lower.tail = TRUE) - pnorm(3, mean = 9.24, sd = 3, lower.tail = TRUE)

#c -- "P(X < 5)?"
pnorm(5, mean = 9.24, sd = 3, lower.tail = TRUE)

#d -- "99% of Sarawak people consumed less than how many kg of coffee?"       ## 1 - 0.99 = 0.10
qnorm(0.01, mean = 9.24, sd = 3, lower.tail = FALSE)


#####


# QUESTION 8 -- given (mean = 21, sd = 5)
#a -- "P(X > 25)?"
pnorm(25, mean = 21, sd = 5, lower.tail = FALSE)

#b -- "P(10 < X < 20)?"
pnorm(20, mean = 21, sd = 5, lower.tail = TRUE) - pnorm(10, mean = 21, sd = 5, lower.tail = TRUE)

#c -- "What are the two values between them that 95% of the amounts of cash be spent completely?"  ##
# 95% = 0.95 => (1-0.95)/2 = 0.025
## xlower
qnorm(0.025, mean = 21, sd = 5, lower.tail = TRUE)      # 11.20
## xupper
qnorm(0.025, mean = 21, sd = 5, lower.tail = FALSE)     # 30.79

