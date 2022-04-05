## SELF TEST -- CH3 & CH4 (focus on CH4)
# For CH4, we use the same pnorm and qnorm.
# The difference is only the mean we replace by sample mean and sd replace by standard error.

## pnorm(X value, mean value, std deviation value, lower.tail value)
## qnorm(Z value/quantile, mean value, std deviation value, lower.tail value)


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

#e -- "Z is between -1.57 and 1.84?"
# pnorm(-1.57, mean = 0, sd = 1, lower.tail = TRUE) + pnorm(1.84, mean = 0, sd = 1, lower.tail = FALSE)
pnorm(1.84, mean = 0, sd = 1, lower.tail = TRUE) - pnorm(-1.57, mean = 0, sd = 1, lower.tail = TRUE)

#f -- "2.5% of all possible Z values are larger?"   # 2.5% = 0.025
qnorm(0.025, mean = 0, sd = 1, lower.tail = FALSE)


#####


# QUESTION 2 -- given [mean = 527, sd = 112]
#a -- "Z is greater than 500?"
pnorm(500, mean = 527, sd  = 112, lower.tail = FALSE)

#b -- "5% of all possible Z values are larger?"   # 5% = 0.05
qnorm(0.05, mean = 527, sd = 112, lower.tail = FALSE)


######


# QUESTION 3 -- given [mean = 266, sd = 16]
#a -- "240 < Z < 270"
pnorm(270, mean = 266, sd = 16, lower.tail = TRUE) - pnorm(240, mean = 266, sd = 16, lower.tail = TRUE)

#b -- "70% of all possible Z values are smaller?"   # 70% = 0.7
qnorm(0.7, mean = 266, sd = 16, lower.tail = TRUE)



######


# QUESTION 4 -- given [mean = 4300, sd = 750]
#a -- "2500 < Z < 4200"
pnorm(4200, mean = 4300, sd = 750, lower.tail = TRUE) - pnorm(2500, mean = 4300, sd = 750, lower.tail = TRUE)

#b -- "38th percentile"   # 38% = 0.38
qnorm(0.38, mean = 4300, sd = 750, lower.tail = TRUE)


######


# QUESTION 5 -- given [mean = 100, sd = 20, n = 225]
# "Find the mean and standard deviation of the sample mean."
# sample mean = mean = 100
# standard error:
print(20/sqrt(225))               # ans = 1.33 // use formula: [ std error = (sd/sqrt(n)) ]


#####

# QUESTION 6 -- given [mean = 75, sd = 12]
#a -- "Find mean and sd of sample mean." [n = 121]
# sample mean = mean = 75
# standard error:
print(12/sqrt(121))               # ans = 1.09 // use formula: [ std error = (sd/sqrt(n)) ]

#b -- "How would the ans change if size of samples were 400 instead of 121?"
# sample mean stays the same = 75
# standard error:
print(12/sqrt(400))               # ans = 0.6, therefore the std error decreases (as n increases, std error decreases)


#####


# QUESTION 7 -- [sample mean = 128, sd = 22] -- from (a) std error = 3.67 (use this as replacement for sd value in b)
#a -- "Find the mean and std deviation, sample size = 36."
# sample mean = mean = 128
# standard error:
print(22/sqrt(36))                # ans = 3.67 // use formula: [ std error = (sd/sqrt(n)) ]

# std error = 3.67 (use in b)

#b -- "Find the probability that the mean of a sample of size 36 will be between 118 and 138."
pnorm(138, mean = 128, sd = 3.67, lower.tail = TRUE) - pnorm(118, mean = 128, sd = 3.67, lower.tail = TRUE)


#####


# QUESTION 8 -- given [sample mean = 73.5, sd = 2.5]
#a -- "Find the mean and standard error, sample size = 30."
print(2.5/sqrt(30))               # 2.5 is sd, 30 is sample size

# ANSWER (CTRL + ENTER at Print func)
# mean = 73.5, std error = 0.456 (use in b)

#b -- "Find the probability that the mean of a sample of size 30 will be less than 72."
pnorm(72, mean = 73.5, sd = 0.456, lower.tail = TRUE)


#####


# QUESTION 9 -- given [p = 10%, mean = 8%, sample size = 250]
# note: p is % from sample

# find probability

# 10% = 0.1, 8% = 0.08

# step 1: find standard error first
print(sqrt((0.08*(1 - 0.08)/250)))
# 0.08 is mean, 1 is fixed, 250 is sample size

# standard error is 0.017

# step 2: do formula
# Formula = [ Z = (p - mean)/(sqrt(mean)(1-mean)/n) ] 
# Formula (using standard error) = [ Z = (p - mean)/std error]
print((0.1 - 0.08)/0.017)
# 0.1 is p, 0.08 is mean, 0.017 is standard error

# gets 1.176
# put 1.176 into table and find the Z-value

# final answer = 0.12
# note = question says "at least", meaning Z > 10%


#####


# QUESTION 10 -- given [proportion = 0.37 (same as mean?), sample size = 1600]
# find mean and standard error of proportion

# mean (pi symbol) = 0.37

# to calculate standard error of proportion:
# 1 minus the mean, and then multiply that with the mean, then divide with the sample size, then sqrt it.

print(sqrt((0.37*(1 - 0.37)/1600)))
# 0.37 is mean, 1 is fixed, 1600 is sample size


#####


# QUESTION 11 -- given [p = ?, mean = 2%, sample size 1500]
# 40 calls out of 1500 will be dropped (sample)
print(40/1500)
# ans = 0.0267
# p = 0.0267
# mean = 0.02

# step 1: find standard error first
print(sqrt((0.02*(1 - 0.02)/1500)))
# 0.02 is mean, 1 is fixed, 1500 is sample size

# standard error is 0.0036

# step 2: do formula
print((0.0267 - 0.02)/0.0036)
# 0.0267 is p, 0.02 is mean, 0.0036 is standard error

# gets 1.86
# put 1.86 into table and find the Z-value

# answer = 0.0314

# because "at most 40", meaning Z < 40
# then 1 - 0.0314
print(1-0.0314)
# final answer = 0.9686


#####


# QUESTION 12 -- given [mean = 0.72, n = 30, X = 19]
#a -- "Calculate the sample proportion -- 19 flights out of 30 were on time"
print(19/30)                      # ans = 0.63 // formula: [ (P = X/N) ]

#b -- "Find probability of a sample of size 30 producing a sample proportion so low as observed in this sample."
# "Find P(P <0.63)"
                                  
# find sample proportion
# p = sample proportion
# 0.633

# find probability
# step 1: find standard error first
print(sqrt((0.72*(1 - 0.72)/30)))
# 0.72 is mean, 1 is fixed, 30 is sample size

# standard error is 0.08197561

# step 2: do formula
print((0.633 - 0.72)/0.08197561)
# 0.63 is p, 0.72 is mean, 0.082 is standard error

# gets 1.06
# put 1.06 into table and find z-value

# answer = 0.1446
# note = question says "so low as observed", the phrase "so low as" means Z > 19

