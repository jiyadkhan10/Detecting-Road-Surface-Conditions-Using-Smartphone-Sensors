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

# Question 5

# Sampling

# Null hypothesis: Mean of all the factors are equal.
# Alternative hypothesis: At least one pair of mean is different

samplesize = 10000

data = data[sample(1:nrow(data), size = samplesize),]

data = na.omit(data)

# Anova Test for All Road Condition. 

anova_test <- aov(Acceleromete_X ~ Road_Condition, data = data)
summary(anova_test)

anova_test <- aov(Acceleromete_Y ~ Road_Condition, data = data)
summary(anova_test)

anova_test <- aov(Acceleromete_Z ~ Road_Condition, data = data)
summary(anova_test)

anova_test <- aov(Gyroscope_X ~ Road_Condition, data = data)
summary(anova_test)

anova_test <- aov(Gyroscope_Y ~ Road_Condition, data = data)
summary(anova_test)

anova_test <- aov(Gyroscope_Z~ Road_Condition, data = data)
summary(anova_test)

anova_test <- aov(gravity_X ~ Road_Condition, data = data)
summary(anova_test)

anova_test <- aov(gravity_Y ~ Road_Condition, data = data)
summary(anova_test)

anova_test <- aov(gravity_Z ~ Road_Condition, data = data)
summary(anova_test)

anova_test <- aov(Magnetic_X ~ Road_Condition, data = data)
summary(anova_test)

anova_test <- aov(Magnetic_Y ~ Road_Condition, data = data)
summary(anova_test)

anova_test <- aov(Magnetic_Z ~ Road_Condition, data = data)
summary(anova_test)

anova_test <- aov(Orientation_X ~ Road_Condition, data = data)
summary(anova_test)

anova_test <- aov(Orientation_Y ~ Road_Condition, data = data)
summary(anova_test)

anova_test <- aov(Orientation_Z ~ Road_Condition, data = data)
summary(anova_test)

# We will choose Magnetic_Y (F Value is 550.5), Orientation_X (F Value is 196.4), gravity_Z (F Value is 70), Magnetic_Y (F Value is 37.54) and Magnetic_Z (F Value is 27.21) beace their F value is greater than any other F value and they have are best road condition. 