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
library(car)        # vif

# data pull
advertise <- read.csv(here::here("Data/Advertising.csv"))
auto <- read.csv(here::here("Data/Auto.csv"))
college <- read.csv(here::here("Data/College.csv"))
credit <- read.csv(here::here("Data/Credit.csv"))
heart <- read.csv(here::here("Data/Heart.csv"))
income1 <- read.csv(here::here("Data/Income1.csv"))
income2 <- read.csv(here::here("Data/Income2.csv"))
genes <- read.csv(here::here("Data/Ch10Ex11.csv"), header = F)


