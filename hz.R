setwd("/home/iger/R/Rproj")
df = read.csv('grants.csv')
str(df)

df$status = factor(df$status, labels = c('Not funded', 'Funded'))
levels(df$status)

t1 <-  table(df$status)
t1
t2 <- table(df$status, df$field)

prop.table(t2, 2)

t3 <- table(Year = df$years_in_uni, Field = df$field, Status = df$status)
t3



df2 = HairEyeColor
dim(df2)
df2[ , ,'Male']
dimnames(df2)
df2[ , 'Blue' ,'Male']
red_men <- prop.table(df2[ , 'Blue' ,'Male'])[3]
red_men

df2[ , ,'Female']
sum(df2[ , 'Green' ,'Female'])

barplot(df2, legend.text = T, args.legend = list(x="topright"), beside = T)
mosaicplot(df2)


mydata <- as.data.frame(HairEyeColor)
str(mydata)


obj <- ggplot(data = mydata[mydata$Sex == "Female", c(1, 2, 4)], aes(x = Hair, y = Freq, fill =  Eye)) + 
  geom_bar(stat="identity", position = "dodge") + 
  scale_fill_manual(values=c("Brown", "Blue", "Darkgrey", "Darkgreen"))
obj


ggplot(mydata[mydata$Sex == "Female", c(1, 2, 4)], aes(x = Month, y = Ozone, group = Month))+
  geom_boxplot()


xi_rasp = HairEyeColor['Brown', , "Female"]
chisq.test(xi_rasp)

t1 <- table(diamonds$cut, diamonds$color)
main_stat <- chisq.test(t1)
main_stat$statistic

df = diamonds
df['factor_price'] <- ifelse((df$price >= mean(df$price)), 1, 0)

df['factor_carat'] <- ifelse((df$carat >= mean(df$carat)), 1, 0)

df$factor_price = factor(df$factor_price)
df$factor_carat <- factor(df$factor_carat)


main_stat <- chisq.test(df$factor_carat, df$factor_price)[1]



df2 <- mtcars
str(df2)
df2$vs <- factor(df2$vs)
df2$am <- factor(df2$am)
setfi <- fisher.test(df2$vs, df2$am)
fisher_test <- setfi$p.value









