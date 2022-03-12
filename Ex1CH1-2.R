#Q1
score=c(464, 463, 448, 545, 422, 502,
        483, 488, 502, 504, 557, 602,
        773, 590, 460, 567, 602, 579,
        491, 460, 448, 500, 712, 737,
        488, 600, 769, 773, 540, 443)

mean(score)
median(score)
range(score)
var(score)
sd(score)

library(modeest)
mfv(score)   #mode


#Q2
days=c(11, 14, 18, 7, 11, 16, 31, 6, 11, 8, 9)

mean(days)
median(days)
range(days)
r = 31-6 #RANGE
r #PRINT RANGE
var(days)
sd(days)

library(modeest)
mfv(days)  #mode

#To find interquartile range.
summary(days)
IQR(days.na.rm=FALSE) #Interquartile
IQR_1 = 15 - 8.5
IQR_1
