## select america columns only

str(WorldPhones) # check the type of data and brief summary
summary(WorldPhones)

WorldPhones[,c(1,4,7)] # index?
colnames(WorldPhones)

vecAmer<-grep("Amer", colnames(WorldPhones))

WorldPhones[, vecAmer]


## mean of each continent
nCont<- ncol(WorldPhones)

for (i in 1:nCont){
  continent<- colnames(WorldPhones)[i]
  contAvg<- mean(WorldPhones[,i])
  print(paste(continent, contAvg))
}

## percentage of each continent in 1960?
WorldPhones
WorldPhones["1960",]
contNames<- colnames(WorldPhones)

sum1960<- sum(WorldPhones["1960",])

for (i in 1:length(contNames)){
  contName<- contNames[i]
  contPerc<- WorldPhones["1960", contNames[i]]/sum1960
  print(paste(contName, contPerc))
}


###trees

##Select rows where Height > 80
heightOver80row <- c()

for (i in 1:nrow(trees)){
  if (trees$Height[i]>80){
    heightOver80row <- cbind(heightOver80row, i)
  }
}
trees[heightOver80row,]

trees[trees$Height>80,]


## Select rows where Volume is larger than the average
summary(trees)
volAvg<-mean(trees$Volume)

largeVolTrees<- c()

for (i in 1:nrow(trees)){
  if(trees$Volume[i]>volAvg){
    largeVolTrees<- cbind(largeVolTrees, i)
  }
}

trees[largeVolTrees,]
