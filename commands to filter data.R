#goal is to find the amount of missouri residents covered in each age range and compare it to the census 


# to get the state to be missouri
data <- read.csv("county-level-data-2-22-2015_1.csv", na.strings = ".")
mo_data <- filter(data, State.Name == "MO")

# to get the sum of the missouri patients covered ages 0-17
mo_data$X0.17 <- as.numeric(mo_data$X0.17)
sum0.17 <- sum(mo_data$X0.17, na.rm = TRUE)
print(sum0.17)
[1] 16753

#to get the sum of the missouri patients covered ages 18-25
mo_data$X18.25 <- as.numeric(mo_data$X18.25)
sum18.25 <- sum(mo_data$X18.25, na.rm = TRUE)
print(sum18.25)
[1] 36373

#to get the sum of the missouri patients covered ages 26-34
mo_data$X26.34 <- as.numeric(mo_data$X26.34)
sum26.34 <- sum(mo_data$X26.34, na.rm = TRUE)
print(sum26.34)
[1] 52093

#to get the sum of the missouri patients covered ages 35-44
mo_data$X35.44 <- as.numeric(mo_data$X35.44)
sum35.44 <- sum(mo_data$X35.44, na.rm = TRUE)
print(sum35.44)
[1] 49535

#to get the sum of the missouri patients covered ages 45-54
mo_data$X45.54 <- as.numeric(mo_data$X45.54)
sum45.54 <- sum(mo_data$X45.54, na.rm = TRUE)
print(sum45.54)
[1] 56545

#to get the sum of the missouri patients covered ages 55-64
mo_data$X55.64 <- as.numeric(mo_data$X55.64)
sum55.64 <- sum(mo_data$X55.64, na.rm = TRUE)
print(sum55.64)
[1] 56990

#to get the sum of the missouri patients covered ages 65 and older
mo_data$X65. <- as.numeric(mo_data$X65.)
sum65. <- sum(mo_data$X65., na.rm = TRUE)
print(sum65.)
[1] 502