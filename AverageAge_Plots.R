#average age at which people won an oscar/ nobel prize
plot(csv.data$average_age_Nobel, oscar_data$average_age_Oscar)

boxplot(csv.data$age, oscar_data$age, names= c("Nobel Prize", "Oscars"), col=(c("blue","gold")), main= "Average age per prize", ylab= "Age")

