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

# Question 4

# Null Hypothesis: Time of recording and the road conditton are independent
# Alternative hypothesis: Time of recording and the road condition are dependent

# Sampling

samplesize = 10000
data = data[sample(1:nrow(data), size = samplesize),]

data = subset(data, select = c("Timer", "Road_Condition"))

data = na.omit(data)


for (i in 1:nrow(data))
{
  minutes <- strsplit(data$Timer[i], ":")[[1]][1]
  minutes <- as.numeric(minutes)
  seconds <- as.numeric(strsplit(data$Timer[i], ":")[[1]][2])
  seconds <- as.numeric(seconds)
  total_time = (minutes) + seconds/60
  
  data$Timer[i] = total_time
}

timer_of_road_condition <- aov(data$Road_Condition~data$Timer, data = data,)

summary(timer_of_road_condition)

TukeyHSD(timer_of_road_condition)

# In this  question, after applying the anove test, p value of the anova test is 2e-16 which is less than alpha value which is 0.05, so we can conclude that time of recording and road conditions are dependent and we are rejected the Null Hypothesis.


