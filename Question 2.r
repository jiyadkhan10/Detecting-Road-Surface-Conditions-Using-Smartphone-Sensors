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

# Question 2

# Null hypothesis: Mean of all the factors are equal.
# Alternative hypothesis: At least one pair of mean is different

# Sampling

samplesize = 10000

data = data[sample(1:nrow(data), size = samplesize),]

data = na.omit(data)

# Anova Test for Each Accelerometer. 
road_1 = aov(Road_Condition~Acceleromete_X, data = data)
summary(road_1)

road_2 = aov(Road_Condition~Acceleromete_Y, data = data)
summary(road_2)

road_3 = aov(Road_Condition~Acceleromete_Z,data=data)
summary(road_3)

# Acceleromete_Y readings has the better explain then other reading of the road conditions because Acceleromete_Y has a high F value than other Acceleromete.