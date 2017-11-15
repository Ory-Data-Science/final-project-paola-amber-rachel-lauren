#Graphing commands for values for covered in each age range 

#Made new csv with age ranges and the sums that we found from filtering the data

sums <- read.csv("sums of age ranges.csv")
ggplot(data = sums, aes(x = Age.group, y = total)) + geom_point() + labs(x = "Age Range", y= "Number of People")



#graphs to compare age ranges of census to number of age ranges covered

#under 18
#made csv of total under 18 (1425365) and under 18 covered (16753)
compare0.17 <- read.csv("compare under 18.csv")
ggplot(data = compare0.17, aes(x = label, y = people)) +geom_point() +labs(y= "Number of People Under 18", x = "")


#over 65
#made csv of total over 65 (838450) and over 65 and covered (502)
compare65. <- read.csv("compare over 65.csv")
ggplot(data = compare65., aes(x = label, y = people)) +geom_point() +labs(y= "Number of People Over 65", x = "")


#18-64
#made csv total 18-64 (3725112) and covered 18-64 (251536)
compare18.64 <- read.csv("compare everyone else.csv")
ggplot(data = compare18.64, aes(x = label, y = people)) +geom_point() +labs(y= "Number of People 18 to 64", x = "")




#comparing coverage data to census data
v2010 <- load_variables(2010, "sf1")
state_2010 <- get_decennial(geography = "state", variables = "P0010001", year = "2010")
View(state_2010)

#shows the population of missouri as 5988927

#then to ge the total number of people covered
total_covered <- sum(sums$total)
print(total_covered)
[1] 268791

#which is 268791

#to find percentage of missouri citizens offered coverage
percent_covered <- total_covered/5988927 * 100
print(percent_covered)
[1] 4.488133