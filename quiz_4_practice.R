library(tidyverse)
library(apaTables)
library(pwr)

# Analysis Plan A

# H1:

# (1) To test the null hypothesis 
# that there is no relationship between 
# self-esteem and academic performance, 
# I will run a traditional power analysis to estimate 
# the sample size I need to obtain an effect size 
# of .5 (which is suggested to be the 
# population correlation from an extensive meta-analysis). 

pwr.r.test(r=.50,power=.80)
# The sample size I would need is approximately 28 people.
# n = 28.24842
# r = 0.5
# sig.level = 0.05
# power = 0.8
# alternative = two.sided


# H2: 

# (2) To test the null hypothesis that 
# there is no relationship between self-esteem and 
# the quality of dating relationships, I will run a 
# traditional power analysis to estimate the sample size 
# I need to obtain an effect size of -.3 
# (which is suggested to be the correlation between 
# these two variables from a previous study). 

pwr.r.test(r=-.30,power=.80)
# The sample size I would need is approximately 84 people.
# n = 84.07364
# r = 0.3
# sig.level = 0.05
# power = 0.8
# alternative = two.sided
# pwr.r.test(r=0.30,power=.80)

# H3:

# (3) To test the null hypothesis that there is 
# no relationship between self-esteem and the quality 
# of friendships, I will run a traditional power analysis 
# to estimate the sample size I need to obtain a 
# weak positive effect size of .07 (which is suggested 
# to be the correlation between these two variables 
# from theory papers; Bosco, Aguinis, Singh, Field, & 
# Pierce, 2015). 

pwr.r.test(r=.07,power=.80)
# The sample size I would need is approximately 1599 people.
# n = 1598.674
# r = 0.07
# sig.level = 0.05
# power = 0.8
# alternative = two.sided

# Analysis Plan B

# H1: 

# (1) To investigate the relationship between 
# self-esteem and academic performance, I will conduct 
# an analysis in the following manner: I will use a 
# sample size analysis that involves trial-and-error 
# to find the sample size necessary to produce a 
# confidence interval width that does not exceed the 
# population effect size estimate of .5. 

psych::r.con(r=.50, n=100)
psych::r.con(r=.50, n=50)
psych::r.con(r=.50, n=40)
psych::r.con(r=.50, n=37)

# psych::r.con(r=.50, n=37)
# [1] 0.2100036 0.7091328
# This calculation reveals that a sample size of 37 
# is necessary to provide a confidence interval 
# width less than .5, 
# r = .5. 95% CI [.21, .71].

# H2:

# (2) To investigate the relationship between 
# self-esteem and quality of dating relationships, 
# I will conduct an analysis in the following manner: 

# first, I will calculate a confidence interval based 
# on the single published study that investigated 
# the relation between self-esteem and quality of 
# dating relationships; 

psych::r.con(r=-.30,n=100)
# > psych::r.con(r=-.30,n=100)
# [1] -0.4687942 -0.1100677

# second, I will use the lower-bound of the 
# confidence interval in a sample size analysis that 
# involves trial-and-error to find the sample size 
# necessary to produce a confidence interval width that 
# does not exceed the lower-bound of the effect size estimate. 

# [1] -0.1100677
psych::r.con(r=-.11, n=100)
psych::r.con(r=-.11, n=1000)
psych::r.con(r=-.11, n=1100)
psych::r.con(r=-.11, n=1200)
psych::r.con(r=-.11, n=1250)
psych::r.con(r=-.11, n=1230)
psych::r.con(r=-.11, n=1235)

psych::r.con(r=-.11, n=1240)
# > 0.16466076-0.05466568
# [1] 0.1099951

# A calculation of the lower bound of the confidence 
# interval surrounding r = -.3, N = 100 was r = -.11. 
# The sample size necessary to provide a confidence 
# interval width less than .11 was 1240, 
# r = -.11. 95% CI [-.16, -.05].

# H3:

# (3) To investigate between self-esteem and 
# quality of friendships, I will conduct a power analysis 
# in the following manner: I will use a sample size 
# analysis that involves trial-and-error to find the 
# sample size necessary to produce a confidence interval 
# width that does not exceed the effect size estimate 
# of .07 (which is a weak positive correlation according 
# to Bosco et al., 2015). 

psych::r.con(r=.07, n=100)
psych::r.con(r=.07, n=1000)
psych::r.con(r=.07, n=2000)
psych::r.con(r=.07, n=2500)
psych::r.con(r=.07, n=2800)
psych::r.con(r=.07, n=3000)
psych::r.con(r=.07, n=3100)
psych::r.con(r=.07, n=3120)
psych::r.con(r=.07, n=3110)
psych::r.con(r=.07, n=3105)
psych::r.con(r=.07, n=3108)

# This calculation reveals that a sample size of 3150 
# is necessary to provide a confidence interval width 
# less than .07, r = .07. 95% CI [.03, .10].




