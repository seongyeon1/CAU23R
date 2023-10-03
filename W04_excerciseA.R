str(WorldPhones) # check the type of data and brief summary
summary(WorldPhones)

WorldPhones[,c(1,4,7)] # index?

# mean of each continent
mean(WorldPhones[,1])
mean(WorldPhones[,2])
mean(WorldPhones[,3])
mean(WorldPhones[,4])
mean(WorldPhones[,5])
mean(WorldPhones[,6])
mean(WorldPhones[,7])

# percentage of each continent in 1960
WorldPhones["1960",]
total1960<- sum(WorldPhones["1960",])
WorldPhones["1960",]/total1960*100


###trees
head(trees)
str(trees)
summary(trees)

# Select rows where Height > 80
trees[trees$Height>80,]

# Select rows where Volume is larger than the average
volAvg <- mean(trees$Volume)
str(trees) # check if it works correct

trees[trees$Volume>volAvg,]

