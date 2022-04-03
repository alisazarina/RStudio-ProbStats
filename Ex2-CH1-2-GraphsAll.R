## Exercise (Week3_2)
## To restart R session => Ctrl + Shift + F10

## Specify path to save PDF to
destination = 'D:\\UniKL\\Sem2\\IGB20303-ProbabilityandStatsforIT\\Week3\\Ex2-CH1-2-GraphsAll.pdf'

## File name
pdf(file = destination)

## Save plots to PDF
for (i in 1:4) {
  x=rnorm(i)
  y=rnorm(i)
  plot(x, y)
}

#####

#Q1
comaDays=c(11, 14, 18, 7, 11, 16, 31, 6, 11, 8, 9)

# #construct a table                                              // [CTRL + SHIFT + C] = to comment out
# table(comaDays)                                                 // don't need to construct a table!!

#draw bar chart/barplot
barplot(comaDays)

#design the bar chart
barplot(comaDays, main = "Number of Days Posttraumatic Amnesia Patients in Coma",
        ylab = "Number of Days", xlab = "Patients",
        col = "dark green",
        space = 0.08)

#####


#Q2
slices = c(21, 62, 10, 53)
lbls = c("London", "New York", "Singapore", "Mumbai")               #can also be: labels = c("London", "New York",.)
#draw a pie chart + design
pie(slices, labels = lbls, main = "City Pie Chart",
    col=rainbow(length(lbls)))
#add legend
legend("topright", c(lbls), fill = rainbow(length(lbls)))           #cex => to adjust the size of the legend, eg. "cex = 0.4"


#####


#Q3
statsStudents1=c(59, 60, 61, 62, 62, 63, 63, 64, 64, 64, 65,65, 65, 65, 65, 
                 65, 65, 65, 65, 66, 66, 67, 67, 68, 68, 69, 70, 70, 70, 70,
                 70, 71, 71, 72,72, 73, 74, 74, 75, 77)
#construct a table
table(statsStudents1)
#draw a box plot
boxplot(table(statsStudents1))
#change colour of box to blue
boxplot(statsStudents1, ylab = "Height", xlab = "Students",
        main = "Height vs Number of students", col = "light blue")


#####


#Q4
statsStudents2=c(59, 60, 61, 62, 62, 63, 63, 64, 64, 64, 65,65, 65, 65, 65, 
                 65, 65, 65, 65, 66, 66, 67, 67, 68, 68, 69, 70, 70, 70, 70,
                 70, 71, 71, 72,72, 73, 74, 74, 75, 77)
#construct a table
table(statsStudents2)
#draw a scatter plot
plot(statsStudents2)
#design the scatter plot
plot(statsStudents2, ylab = "Marks", xlab = "Students",
     pch = 8, cex = 1.5, col = c("blue", "green"),
     main = "Marks vs Students")

#Notes on scatter plot design
## pch : point shapes/plot symbols
## col : color (code or name) to use for the points
## bg : the background (or fill) color for the open plot symbols. It can be used only when pch = 21:25.
## cex : the size of pch symbols
## lwd : the line width for the plotting symbols


## Turn off PDF plotting and save the file
dev.off()
