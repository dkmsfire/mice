library(mice)
##exersice from https://rpubs.com/mhanauer/mice
data("nhanes2")
head(nhanes2)
nhances2.imp = mice(nhanes2, seed = 12345)
summary(nhances2.imp)
fit = with(nhances2.imp, lm(chl ~ age + bmi))
round(summary(pool(fit)),2)
