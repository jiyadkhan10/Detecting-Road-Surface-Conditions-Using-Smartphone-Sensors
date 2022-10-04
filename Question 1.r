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

# Question 1

# Null Hypothesis: For each response variable, the means of all groups are equal
# Alternative hypothesis: For at least one response variable, the means of all groups are equal

# Sampling

samplesize = 10000

data = data[sample(1:nrow(data), size = samplesize),]

data = na.omit(data)

res<-manova(cbind(Acceleromete_X,Acceleromete_Y,Acceleromete_Z,Gyroscope_X,Gyroscope_Y,Gyroscope_Z)~Road_Condition,data=data)
summary(res)
summary.aov(res)

# In this  question, after applying the anove test, every p value of the anova test is less than alpha value which is 0.05, so we can conclude that For at least one response variable, the means of all groups are equal and we are rejected the Null Hypothesis.

