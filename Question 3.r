getwd()
# loading the data
data<-read.csv('TrainingData.csv')

# Print of the data
print(data)

# Head of the data
head(data)

# view of the data
View(data)

# Summary of the data
summary(data)

# Question 03

# Null Hypothesis : Experimental data is  showing mostly bad road conditions at high speed.
# Alternative Hypothesis : Experimental data is not showing mostly bad road conditions at high speed.

# Sampling

samplesize = 100

data = data[sample(1:nrow(data), size = samplesize),]

data = na.omit(data)

#Anova test for Road Condition 
road_condition_at_high_speed <-aov(Speed~Road_Condition,data=data)
summary(road_condition_at_high_speed)

#In this  question, after applying the anove test, p value of the anova test is 2.59e-14 which is less than alpha value which is 0.05, so we can conclude that Experimental data is not showing mostly bad road conditions at high speed and we are rejected the Null Hypothesis.
