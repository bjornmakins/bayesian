## Task 1: Task 1: Let X1, . . . , X10 be 10 independent and identically distributed (i.i.d.) random variables, each having a standard normal distribution.


# bullet point 1
# https://www.math24.net/probability-density-function
# P(z=1.96) - P(z=-1.96)

P_within <- pnorm(1.96) - pnorm(-1.96)

# Probability of success, that one of the X's will not fall into the interval [-1.96, 1.96]
P_out <- 1 - P_in

# Bullet point solutions in order

# At least 1 X will not fall in interval (at least one success)
pbinom(9, 10, P_in)

# Exactly one Xi's will not fall in interval
dbinom(1, 10, P_out)

# Exactly two Xi's will not fall in interval
dbinom(2, 10, P_out)


## Task 2(written in BUGS or Stan).Find the probability with which each of the above events happen using a simulation study

library(rstan)
library(bayesplot)

normal_rng(0.0, 1.0)
std_normal_rng()

generated quantities{
  real y;
  real p;
  
  y = binomial_rng(8, 0.5);
  p = y <= 2;
}


