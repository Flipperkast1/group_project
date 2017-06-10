
plot(csv.data4$year, csv.data4$gender)
plot(csv.data4$gender, csv.data4$year)
table.data <- table(csv.data4$year, csv.data4$gender)
table.data
plot(rownames(table.data), table.data[,1],type = 'l')

award_age <- (csv.data4$year - csv.data4$birthyear)
t.test(award_age, average_age_oscar)
plot(award_age~(csv.data4$year))
cor.test(award_age, (csv.data4$year))
plot(csv.data4$gender, main="Number of males and females awarded the Nobel Prize", xlab="Gender", ylab="Frequency")
plot(rownames(table.data), table.data[,2], type = "l", main= "Number of males awarded the Nobel Prize over years", xlab="years", ylab="Frequency")
plot(rownames(table.data), table.data[,1], type = "l", main= "Females awarded the Nobel Prize over years", xlab="years", ylab="Frequency")
plot(average_age_oscar~(oscar.data$year), main= "Average age of Academy Award winner over years", xlab="Years", ylab="Age of winners")
plot(award_age~(csv.data4$year), main= "Average age of Nobel Prize winnerw over years", xlab="Years", ylab="Age of winners")
t.test(award_age, average_age_oscar) 
plot(csv.data4$gender~csv.data4$category, main="Gender of Nobel Prize winners according to category", xlab="Category", ylab="Gender")
plot(csv.data4$category, csv.data4$gender, col=c("coral1", "cadetblue3"), main= "Gender of Nobel Prize winners by category", xlab="Category", ylab="Gender")
plot(rownames(table.data), table.data[,1], type = "l",main= "Females awarded the Nobel Prize over years",xlab="Years", ylab="Frequency"
cor.test(award_age, (csv.data4$year))
