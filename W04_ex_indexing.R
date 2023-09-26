###################################
####### Sep.26, 2023 S.Park #######
##  in-class exercise: indexing  ##
###################################

### indexing a vector (vector: 1 dimension!)
c("a", "b", "c")[] # 3rd element
c("a", "b", "c")[] # 2nd and 3rd elements using ':'
c("a", "b", "c")[2,3] # why wrong????? 
c("a", "b", "c")[] # 2nd and 3rd elements using vector
c("a", "b", "c")[] # 2nd and 3rd elements using logical vector
#----------------------------------------------------------------------#
#----------------------------------------------------------------------#
### indexing a matrix (matrix: 2 dimension!)
# matrix(data in vector, nrow= number of row, ncol= number of column)
matrix(c("a", "b", "c", "d", "e", "f"), nrow=2) # automatically, ncol = 3
#----------------------------------------------------------------------#
matrix(c("a", "b", "c", "d", "e", "f"), nrow=2)[] # 2nd element
matrix(c("a", "b", "c", "d", "e", "f"), nrow=2)[c(2,3)] # 
matrix(c("a", "b", "c", "d", "e", "f"), nrow=2)[2,3] # 
matrix(c("a", "b", "c", "d", "e", "f"), nrow=2)[] # 2nd row and all columns
matrix(c("a", "b", "c", "d", "e", "f"), nrow=2)[,3] # all rows and 3rd column
matrix(c("a", "b", "c", "d", "e", "f"), nrow=2)[c(T,F)] # repeat T,F to make 6 logical elements == c(T,F,T,F,T,F).
matrix(c("a", "b", "c", "d", "e", "f"), nrow=2)[T,F] # all rows and no column
#----------------------------------------------------------------------#
#----------------------------------------------------------------------#
#----------------------------------------------------------------------#
### indexing a dataframe (dataframe: 2 dimension(rows and columns), element = column = list)
sleep
?sleep
str(sleep)
# sleep has 3 variables (elements) == sleep has 3 columns
# sleep has 20 observations == sleep has 20 rows
summary(sleep)
#----------------------------------------------------------------------#
sleep[] # select 2nd column
sleep[] # select the column named 'group'
sleep[] # 1st and 2nd columns 
sleep$group # values in 2nd column
#'[]' vs '$'?

#----------------------------------------------------------------------#
sleep$group
sleep$group==1
sleep[c(1:10),]
sleep[sleep$group==1,]
sleep[sleep[2]==1,]
#----------------------------------------------------------------------#


