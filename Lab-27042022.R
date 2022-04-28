## Lab -- 27/4/2022

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


#####


## Exercise 3
# $ -> drop down will appear -> choose wg
# if no conf.level, also ok because default will be 0.95 anyway.
attach(Data_wg)
t.test(Data_wg$wg, alternative = "greater", mu = 10)
# answer = since the  p-value < 0.05, therefore reject H0 and accept H1
# sample mean of x = 16 (>10), conf.level is between 15.


#####

## Exercise 4
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
# answer = 


#####

## Exercise 5
t.test(wg~Gender, data = Data_wg, alternative = "two.sided", mu = 0, conf.level = 0.95)
# answer =


#####

## Exercise 6 (do ourselves -- homework)


#####

## Exercise 7 -- Paired t-test

attach(mice)
t.test(Weight ~ Group, data = mice, paired = TRUE, conf.level = 0.95)

# answer = reject H0, so there is a diff (194.49) before and after the treatment (accept H1)
