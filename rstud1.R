#setwd(""/home/iger/R/Rproj"")


mydata <- read.csv('~/igor/rlessons/evals.csv', stringsAsFactors=TRUE)

head(mydata)
str(mydata)
View(mydata)
summary(mydata)
names(mydata)

b <- mydata$score
mean(b)
summary(b)
mydata$score2 <- mydata$score * 10
ncol(mydata)
newd <- mydata[2:4, 1:5]

mtcars
mtcars$even_gear <- abs(mtcars$gear %% 2 - 1)
mpg_4 <- mtcars[mtcars$cyl == 4, 'mpg']
mpg_4
View(mtcars)

vyb = c(3, 7, 10, 12, nrow(mtcars))
mini_mtcars <- mtcars[c(3, 7, 10, 12, nrow(mtcars)), ]
mini_mtcars

mtcars$new_var <- ifelse(mtcars$carb >= 4 | mtcars$cyl > 6 , 1, 0)


if (mean(my_vector)) > 20 {
  result <- 'My mean is great'
} else {
  result <- 'My mean is not so great'
} 

good_months <- c()
aaa <- as.vector(AirPassengers)
for (i in 2:length(aaa)){
  if (aaa[i] > aaa[i - 1]){
    good_months <- append(good_months, aaa[i])  
  }
}


?cumsum
cumsum(1:5)



moving_average <- numeric(135)
for (i in 1:135){
  moving_average[i] <- mean(AirPassengers[i:(i+9)])
}

?mean






df <- mtcars
str(df)
df$vs <- factor(df$vs, labels = c("V", "S"))
df$am <- factor(df$am, labels = c("Auto", "Manual"))

result <- mean(df$qsec[df$cyl != 3 & df$mpg > 20])
result


descriptions_stat <- aggregate( x = df[c("hp", "disp")], by = list(df$am), FUN = sd)


library(psych)

library(ggplot2)
describeBy(df$qsec, group = list(df$vs, df$am), mat = T, fast = T, digits = 1)


df = airquality

df$Month == c(7, 8, 9)

df2 = airquality[df$Month %in% c(7, 8, 9), ]

length(df2[, 1])

aggregate(df2$Ozone, list(df$Month), mean)

aggregate(Ozone ~ Month , df2, length)

tabl <- describeBy(df, group = df$Month, mat = T, digits = 1)
describeBy(df, group = df$Month, digits = 1)


ddf = describe(iris[iris$Species == 'virginica',])
sort(ddf, decreasing = T)

?replace



my_vector <- rnorm(30)

my_vector[sample(1:30, 10)] <- NA 

my_vector


na_vac <- is.na(my_vector)
mean_in_vec = mean(my_vector[!na_vac])
new_vec <- replace(my_vector, na_vac, mean_in_vec)
new_vec











