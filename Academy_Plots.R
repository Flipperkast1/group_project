#Load the data
read.csv("Oscar_try_1.csv")
oscar_data <- read.csv("Oscar_try_1.csv")
#Calculate the age of the winners 
award_age <- (oscar_data$year - oscar_data$birthyear)
#Add a column to the oscar_data 
oscar_data$age <- award_age
#Plot the age and gender (boxplot, also shows average)
plot(oscar_data$gender, oscar_data$age, col=(c("coral1", "cadetblue3")),main="Oscar - Age by gender", xlab="Gender", ylab="Age")
#Calculate the average age of all the males and all the females 
average_age_Oscar <- aggregate( age ~ gender, oscar_data, mean )
#Run a t test to see whether the difference is significant
t.test(subset(oscar_data$age, oscar_data$gender=="F"), subset(oscar_data$age, oscar_data$gender == "M"))


plot(oscar_data$year, oscar_data$age)
#ggplot(data=csv.data, aes(x=csv.data$year)) +
  #geom_bar(stat="count")


ggplot(oscar_data, aes(x=oscar_data$year, y=oscar_data$age,col=c("coral1", "cadetblue3"), fill=gender)) +
  geom_point(shape=1)

qplot(data=oscar_data, year, age, col=gender)




