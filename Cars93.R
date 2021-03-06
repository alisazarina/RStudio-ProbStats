# NOTE: You need to run EACH LINE of code (CTRL + ENTER)

library(MASS)                                                                         # call the library "MASS"
data("Cars93")                                                                        # use the data "Cars93"

png(file = "graph.jpg")

#construct a table
table(Cars93$Type)

#draw barplot
barplot(table(Cars93$Type))
barplot(table(Cars93$Type), main = "Frequency vs Types of Cars93",
        ylab = "Frequency", xlab = "Types of Cars",
        ylim = c(0, 25), axis.lty = "solid",
        col = c("red", "blue", "yellow", "black", "green", "purple"),
        space = 0.05)

#draw piechart
pie(table(Cars93$Type))
pie(table(Cars93$Type), main = "Types of Cars93")

lbls = paste(names(table(Cars93$Type)), "\n", table(Cars93$Type), sep = "")           # sep = separate the values
pie(table(Cars93$Type), labels = lbls, main = "Types of Cars93 \n (with frequency)",
    border = "red", lty = "dotted")

lbls2 = paste(table(Cars93$Type))
pie(table(Cars93$Type), labels = lbls2, main = "Types of Cars93 \n (with frequency)",
    border = "red", lty = "dotted", col = rainbow(length(table(Cars93$Type))))

lgd = names(table(Cars93$Type))                                                       # insert legend
legend("topright", lgd, cex = 0.5, fill = rainbow(length(table(Cars93$Type))) )       # decorate the legend

library(plotrix)                                                                      # change to 3D
pie3D(table(Cars93$Type), labels = lbls, main = "Types of Cars93 \n (with frequency)",
    border = "red", lty = "dotted")

#Histogram
hist(Cars93$Price)
hist(Cars93$Price, xlab = "Price (x $1,000)", xlim = c(0,70),
     main = "Prices of 93 Models of 1993 Cars", probability = TRUE)
lines(density(Cars93$Price))                                                          # insert lines into histogram

#Scatter plot
plot(Cars93$Horsepower~Cars93$MPG.city)                                               # need 2 data for scatter plot (use "~" to connect)
plot(Cars93$Horsepower~Cars93$MPG.city, xlab = "Horsepower", ylab = "MPG City",
     main = "MPG City vs Horsepower")

#Boxplot
boxplot(Cars93$Horsepower~Cars93$Cylinders)
boxplot(Cars93$Horsepower~Cars93$Cylinders, xlab = "Cylinders", ylab = "Horsepower",
        main = "Horsepower vs Number of cylinders")

dev.off()
