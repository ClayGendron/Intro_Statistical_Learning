# packages
library(tidymodels) # model dev and measurement
library(tidyverse)  # data manipulation
library(here)       # reference project folder
library(odbc)       # data base stuff
library(DBI)        # data base stuff
library(rpart)      # tree model
library(rpart.plot) # tree model
library(wrapr)      # formula builder
library(MASS)       # data
library(ISLR)       # data
library(car)

# data pull
advertise <- read.csv(here::here("Data/Advertising.csv"))
auto <- read.csv(here::here("Data/Auto.csv"))
college <- read.csv(here::here("Data/College.csv"))
credit <- read.csv(here::here("Data/Credit.csv"))
heart <- read.csv(here::here("Data/Heart.csv"))
income1 <- read.csv(here::here("Data/Income1.csv"))
income2 <- read.csv(here::here("Data/Income2.csv"))
genes <- read.csv(here::here("Data/Ch10Ex11.csv"), header = F)

# code

# change variable data type
fix(Boston)
names(Boston)

lm_mod <- lm(medv ~ lstat, data = Boston)

summary(lm_mod)

# plot model and line of best fit
plot(Boston$lstat, Boston$medv)
abline(lm_mod)
abline(lm_mod, lwd = 3)
abline(lm_mod, lwd = 3, col = "red")
plot(Boston$lstat, Boston$medv, col = "red")
plot(Boston$lstat, Boston$medv, col = "red", pch = 20)
plot(Boston$lstat, Boston$medv, col = "red", pch = "+")
plot(1:26, 1:26, pch=1:26)

par(mfrow=c(2,2))
plot(lm_mod)

plot(predict(lm_mod), residuals(lm_mod))
plot(predict(lm_mod), rstudent(lm_mod))
plot(hatvalues(lm_mod))
which.max(hatvalues(lm_mod))

# multiple lm model

m_lm_mod <- lm(medv~
                 lstat +
                 age,
               data = Boston
            )
summary(m_lm_mod)

m_lm_mod2 <- lm(medv ~
                  . -tax -age -indus, # removing insignificant variables
                data = Boston
            )
summary(m_lm_mod2)

vif(m_lm_mod2) # coliniearity of varibales in model
