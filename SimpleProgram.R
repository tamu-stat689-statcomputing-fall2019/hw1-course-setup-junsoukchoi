# Generate data from linear regression model and calculate the least squares vector of coefficients
#####################################################################################################
# clear
rm(list = ls())
# load necessary functions
source("FunctionsLM.R")

# Model parameters
n = 100 # sample size
p = 10 # number of covariates
sigma = 2 # noise standard deviation
beta = rep(2,p) # true vector of coefficients
X = matrix(rnorm(n*p), n, p) # n by p matrix of predictors

# [ToDo] Use generateY function to generate Y
Y = generateY(X = X, beta = beta, sigma = sigma)
Y

# [ToDo] Use calculateBeta function to calculate beta_LS
beta_LS = calculateBeta(X = X, Y = Y)
beta_LS

# [ToDo] Use calculateMSE to assess the estimation error measured by squared eucledian distance - ||beta - beta_LS||_2^2
MSE = calculateMSE(beta = beta, beta_LS = beta_LS)
MSE