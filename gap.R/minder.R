cats <- data.frame(coat = c("calico", "black", "tabby"),
                   weight = c(2.1, 5.0, 3.2),
                   likes_catnip = c(1, 0, 1))
write.csv(x = cats, file = "data/feline-data.csv", row.names = FALSE)
#cbind(data, new column)
#nrows()
#length(data)
#rbind(data, new row)
#removing raw data(-no of row, space. be in sq brackets)
#removing columns data(space,-no of column)
two data frames together: name of new<- rbind(data1,data2)
df <- data.frame(first = c("Grace"),
                 last = c("Hopper"),
                 lucky_number = c(0))
df <- rbind(df, list("Marie", "Curie", 238) )
df <- cbind(df, coffeetime = c(TRUE,TRUE))
gapminder <- read.csv("gapminder_data.csv")
str(gapminder)
summary(gapminder)
typeof(gapminder$country)
length(gapminder)
typeof(gapminder)
nrow(gapminder)
ncol(gapminder)
dim(gapminder)
colnames(gapminder)
head(gapminder)
tail(gapminder, n = 15)
gapminder[sample(nrow(gapminder), 5), ]
x <- c(5.4, 6.2, 7.1, 4.8, 7.5)
names(x) <- c('a', 'b', 'c', 'd', 'e')
x <- c(5.4, 6.2, 7.1, 4.8, 7.5)
names(x) <- c('a', 'b', 'c', 'd', 'e')
x <- c(5.4, 6.2, 7.1, 4.8, 7.5)
names(x) <- c('a', 'b', 'c', 'd', 'e')
x <- c(5.4, 6.2, 7.1, 4.8, 7.5)
names(x) <- c('a', 'b', 'c', 'd', 'e')
x <- c(5.4, 6.2, 7.1, 4.8, 7.5)
names(x) <- c('a', 'b', 'c', 'd', 'e')
x
#Atomic vectors ; square brackets mean get me the nth element
x[1]
x[4]
x[c(1, 3)]
# : creates a sequence of elements from left to right
x[1:4]
c(1, 2, 3, 4)
x[c(1,1,3)]
# skipping and removing elements
x[-2]
x[c(-1, -5)]
x[-c(1,5)]
x[-(1:3)]
x <- x[-4]
x
x <- c(5.4, 6.2, 7.1, 4.8, 7.5)
names(x) <- c('a', 'b', 'c', 'd', 'e')
print(x)
x[c(-1, -5)]
x[-c(1, 5)]
x[2:4]
# subsetting by name
x <- c(a=5.4, b=6.2, c=7.1, d=4.8, e=7.5)
x[c("a", "c")]
# subsetting through other logical operations
x[c(FALSE, FALSE, TRUE, FALSE, TRUE)]
x[x > 7]
x[names(x) == "a"]
# & returns TRUE if both conditions are true
# | returns TRUE if either of the conditions is true
# ! converts TRUE to false and FALSE to true
x_subset <- x[x<7 & x>4]
print(x_subset)
x <- 1:3
x
names(x) <- c('a', 'a', 'a')
x
x['a']
x[names(x) == 'a']
help("%in%")
#skipping named elements
x <- c(a=5.4, b=6.2, c=7.1, d=4.8, e=7.5)
x[names(x) != "a"]
x[names(x)!=c("a","c")]
#handling special values
#is.na returns all vectors containing NA  OR NaN
#is.nan/is.finite will return Nan and infer
#na.omit will filter out all missing values
#Factor subsetting
f <- factor(c("a", "a", "b", "c", "c", "d"))
f[f == "a"]
f[f %in% c("b", "c")]
f[1:3]
f[-3]
#matrix subsetting
set.seed(1)
m <- matrix(rnorm(6*4), ncol=4, nrow=6)
m[3:4, c(3,1)]
m[, c(3,4)]
m[3,]
m[3, , drop=FALSE]
matrix(1:6, nrow=2, ncol=3)
matrix(1:6, nrow=2, ncol=3, byrow=TRUE)
m <- matrix(1:18, nrow=3, ncol=6)
print(m)
m[4:5,2]
m[2,c(4:5)]
#list subsetting
xlist <- list(a = "Software Carpentry", b = 1:10, data = head(mtcars))
xlist
xlist[1]
xlist[1:2]
xlist[[1]]
xlist[[1:2]]
xlist[[-1]]
xlist[["a"]]
xlist$data
xlist$b[2]
xlist[[2]][2]
xlist[["b"]][2]
#residual degrees of freedom
mod <- aov(pop ~ lifeExp, data=gapminder)
mod$df.residual
head(gapminder[ ,3])
head(gapminder)
head(gapminder[["lifeExp"]])
head(gapminder$year)
gapminder[1:3,]
gapminder[gapminder$year == 1957,]
gapminder[,-1:-4]
gapminder[gapminder$lifeExp > 80,]
gapminder[1, 4:5]
gapminder[gapminder$year %in% c(2002, 2007),]
gapminder[gapminder$year == 2002 & gapminder$year == 2007, ]
gapminder[gapminder$year %in% c(2002, 2007), ]
gapminder_small <- gapminder[c(1:9, 19:23),]
#ifif (condition is true) {perform action}
# if ... elseif (condition is true) {perform action} else {  # that is, if the condition is false,perform alternative action}
#CONTROL FLOW
x <- 8
if (x >= 10) {print("x is greater than or equal to 10")}
x <- 8

if (x >= 10) {
  print("x is greater than or equal to 10")
} else {
  print("x is less than 10")
}
x <- 8
if (x >= 10) {
  print("x is greater than or equal to 10")
} else if (x > 5) {
  print("x is greater than 5, but less than 10")
} else {
  print("x is less than 5")
}
x  <-  4 == 3
if (x) {
  "4 equals 3"
} else {
  "4 does not equal 3"
}
x <- 4 == 3
x
gapminder[(gapminder$year == 2002),]
rows2002_number <- nrow(gapminder[(gapminder$year == 2002),])
rows2002_number <- nrow(gapminder[(gapminder$year == 2002),])
rows2002_number >= 1
if(nrow(gapminder[(gapminder$year == 2002),]) >= 1){
  print("Record(s) for the year 2002 found.")
}
if(any(gapminder$year == 2002)){
  print("Record(s) for the year 2002 found.")
}
y <- -3
ifelse(y < 0, "y is a negative number", "y is either positive or zero")
#repeating operations
#for() loops
for (i in 1:10) {
  print(i)
}
for (i in 1:5) {
  for (j in c('a', 'b', 'c', 'd', 'e')) {
    print(paste(i,j))
  }
}
output_vector <- c()
for (i in 1:5) {
  for (j in c('a', 'b', 'c', 'd', 'e')) {
    temp_output <- paste(i, j)
    output_vector <- c(output_vector, temp_output)
  }
}
output_vector
output_matrix <- matrix(nrow = 5, ncol = 5)
j_vector <- c('a', 'b', 'c', 'd', 'e')
for (i in 1:5) {
  for (j in 1:5) {
    temp_j_value <- j_vector[j]
    temp_output <- paste(i, temp_j_value)
    output_matrix[i, j] <- temp_output
  }
}
output_vector2 <- as.vector(output_matrix)
output_vector2
#while loops while this condition is true, do a thing
z <- 1
while(z > 0.1){
  z <- runif(1)
  cat(z, "\n")
}
all(output_vector == output_vector2)
all(output_vector %in% output_vector2)
all(output_vector2 %in% output_vector)
output_vector2 <- as.vector(output_matrix)
output_vector2 <- as.vector(t(output_matrix))
output_matrix[i, j] <- temp_output
output_matrix[j, i] <- temp_output
lowerThreshold <- 50
upperThreshold <- 70

for (iCountry in unique(gapminder$country)) {
  tmp <- mean(gapminder[gapminder$country == iCountry, "lifeExp"])
  
  if(tmp < lowerThreshold) {
    cat("Average Life Expectancy in", iCountry, "is less than", lowerThreshold, "\n")
  } else if(tmp > lowerThreshold && tmp < upperThreshold) {
    cat("Average Life Expectancy in", iCountry, "is between", lowerThreshold, "and", upperThreshold, "\n")
  } else {
    cat("Average Life Expectancy in", iCountry, "is greater than", upperThreshold, "\n")
  }
  rm(tmp)
}
grep("^B", unique(gapminder$country))
grep("^B", unique(gapminder$country), value = TRUE)
thresholdValue <- 50
candidateCountries <- grep("^B", unique(gapminder$country), value = TRUE)

for (iCountry in candidateCountries) {
  tmp <- mean(gapminder[gapminder$country == iCountry, "lifeExp"])
  
  if (tmp < thresholdValue) {
    cat("Average Life Expectancy in", iCountry, "is less than", thresholdValue, "plotting life expectancy graph... \n")
    
    with(subset(gapminder, country == iCountry),
         plot(year, lifeExp,
              type = "o",
              main = paste("Life Expectancy in", iCountry, "over time"),
              ylab = "Life Expectancy",
              xlab = "Year"
         ) # end plot
    ) # end with
  } # end if
  rm(tmp)
}
git init
git add .
git commit -m "My first upload"
git branch -M main
git remote add origin https://github.com/anyanjemarcy9-cmd/R-scripts
git push -u origin main