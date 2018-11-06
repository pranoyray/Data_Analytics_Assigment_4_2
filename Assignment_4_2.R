#Assignment_4_2 - Session 4:

#Q1: Write a program to create barplots for all the categorical columns in mtcars.

#Solution 1
head(mtcars)
#cyl, vs, am, gear, carb are categorical variable in the dataset
barplot(table(mtcars$cyl) ,main ="bar plot of cylinder",xlab="cyl",ylab = "Freq",col="green")
barplot(table(mtcars$carb) ,main ="bar plot of carb",xlab="carb",ylab = "Freq",col="red")
barplot(table(mtcars$gear) ,main ="bar plot of gear",xlab="gear",ylab = "Freq",col="yellow")
barplot(table(mtcars$am) ,main ="bar plot of am",xlab="am",ylab = "Freq",col="red")
barplot(table(mtcars$vs) ,main ="bar plot of vs",xlab="vs",ylab = "Freq",col="blue")


#Q2: Create a scatterplot matrix by gear types in mtcars dataset.

#Solution 2:
library(ggplot2)
#Using function scatterplotMatrix()
scatterplotMatrix(~mpg+disp+drat+hp+wt+qsec+vs|gear,data=mtcars, main="Scatterplot by gear types")


#Q3: Write a program to create a plot density by class variable.

#Solution 3:
#Using data iris to create density plot by class variable (Species in this case)
#using package ggplot2
library(ggplot2)
ggplot(iris, aes(x = Sepal.Length, color = Species)) + geom_density()

