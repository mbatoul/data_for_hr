# This file illustrates R commands to: #
# 1. upload data (in csv format) in R 
# 1. calculate summary statistics and correlations of variables of interest in R #
# 2. estimate linear regression models in R #

# Read CSV file in R # 

# Step 1 #

mydata <- read.csv("hiringperformance012020.csv") #read CSV file in R to upload the data

####

# Calculate summary statistics#

# Step 1 #

install.packages("pastecs") # install the package pastecs to compute variables descriptive statistics in R. Installation is only required once. 

library(pastecs) # import the library pastecs. Importing the library is necessary every time a new R session is started. 

# Step 2 #

stat.desc(mydata) # calculate the N, mean, sd, min, max of the variables in the data set mydata #

# Additional sources: https://www.statmethods.net/stats/descriptives.html #

####

# Calculate the correlation among variables#

# Step 1 #

x <- data.frame(mydata$outsideexp, mydata$gpa) # Generate a data frame (i.e. an object) of the variables for which you want to calculate the correlations. The variables listed (i.e. age, gpa) constitute an example. Please type in the names of your variables of interest. #

# Step 2 #

cor(x) # Calculate the correlations among the variables in the data frame specified in Step 1 #

# Additional sources: https://www.rdocumentation.org/packages/stats/versions/3.5.1/topics/cor #

# Additional sources: https://www.statmethods.net/stats/correlations.html#

#####

# Estimate a linear regression model (OLS) #

# Step 1 #

model_name <- lm( formula = performance ~ outsideexp + gpa , data = mydata) #Estimate the linear regression. The variables listed (i.e. age, gpa) constitute an example. Please type in the names of your variables of interest.

# Step 2 # 

summary(model_name) #Review the result

# Additional sources: https://www.datacamp.com/community/tutorials/linear-regression-R #

# Additional sources: https://www.rdocumentation.org/packages/stats/versions/3.5.1/topics/lm # 

