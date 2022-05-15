## Lab -- 27/4/2022
# CH5: Hypothesis Testing

## one sample t-test

## Exercise 1
# import data
x = c(101,	130,	100,	145,	135,
     120,	100,	130,	135,	140,
     130,	120,	135,	140,	130,
     140,	135,	145,	130,	150,
     135,	145,	149,	104,	126)

# test whether hypothesis is correct or not
# for 2 tail test = "two.sided"
# for 1 tail test -- for upper tail = "greater" / for lower tail = "less"
# mu = hypothesis
# confidence level = conf. level
t.test(x, alternative = "two.sided", mu = 100, conf.level = 0.95)
## results: t-test = 10.006, df = degree of freedom = 24...
## alpha = 0.05, p-value = 4.862e-10 (= 0.00000000004862)
## therefore, p-value < alpha, so REJECT H0 (H null), ACCEPT H1 (is not equal to $100)
# from console -> "alternative hypothesis: true mean is not equal to 100"

## "95 percent confidence interval: 123.8117 136.1883"
## = 95% of the sales is between $123.8117 to $136.1883 (so more than H0 = $100)

### so, answer = reject H0, accept H1


#####


## Exercise 2

# call the imported file - Bottles.csv
# in normal situations (or default), confidence level = 0.95 (95%)
attach(Bottles)
t.test(Bottles$Volume, alternative = "two.sided", mu = 500, conf.level = 0.95)
# as 491.5705 is in between (ie within Acceptance region of H0) confidence interval range
# ie values 479.9667 and 503.1743
# or [p-value > alpha (t value)] -- [0.1449 > -1.5205]
# then, accept H0. ie a bottle filling machine is consistent in filling in the bottles.


#####


## Exercise 3
# $ -> drop down will appear -> choose wg
# if no conf.level, also ok because default will be 0.95 anyway.
attach(Data_wg)
t.test(Data_wg$wg, alternative = "greater", mu = 10)
# answer = since the  p-value < 0.05, therefore reject H0 and accept H1 (mean > 10)
# sample mean of x = 16 (>10)


#####

## Exercise 4 -- [MS: 01:01:00]
## TWO SAMPLE T-TEST ##
## Data set below contains the weight of 18 individuals (9 women and 9 men)
## Test at 5% significant level whether the average men’s weight is less than the average women’s weight


# from Q -> H0 : mu (women) >= mu (men) / H1 : mu (women) < mu (men)

# import data
women_weight = c(38.9, 61.2, 73.3, 21.8, 63.4, 64.6, 48.4, 48.8, 48.5)
men_weight = c(67.8, 60, 63.4, 76, 89.4, 73.3, 67.3, 61.3, 62.4)

# create a data frame
my_data <- data.frame(group = rep(c("Woman", "Man"), each = 9),
                      weight = c(women_weight, men_weight))

# look at data
print(my_data)

# test / mu = 0 because there is no equal/no difference(??)
t.test(weight~group, data = my_data, alternative = "less", mu = 0, conf.level = 0.95)
# answer = p-value (0.9923) > 0.05 so cannot reject H0(??)
# mean in group Man = 68.98889 // mean in group Woman = 52.1000
# so, even tho there is a difference, the gap is small, so cant reject H0(??)
# hypothesis (Men < Women) is true (based on range given)


#####

## Exercise 5
t.test(wg~Gender, data = Data_wg, alternative = "two.sided", mu = 0, conf.level = 0.95)
# answer = accept H0 (because there is not much diff between the two samples)


#####

## Exercise 6 (do ourselves -- homework)


#####

## Exercise 7 -- Paired t-test

attach(mice)
t.test(Weight ~ Group, data = mice, paired = TRUE, conf.level = 0.95)

# answer = reject H0, so there is a diff (194.49) before and after the treatment (accept H1)
# because the gap is very large
