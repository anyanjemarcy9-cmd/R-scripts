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
library(ggplot2)
ggplot(data = gapminder)
ggplot(data = gapminder, mapping = aes(x = gdpPercap, y = lifeExp))
ggplot(data = gapminder, mapping = aes(x = gdpPercap, y = lifeExp)) +
  geom_point(color = "blue")
ggplot(data = gapminder, mapping = aes(x = year, y = lifeExp)) + geom_point()
ggplot(data = gapminder, mapping = aes(x = year, y = lifeExp, color =continent)) +
  geom_point()
ggplot(data = gapminder, mapping = aes(x = year, y = lifeExp, color=continent)) +
  geom_point()
ggplot(data = gapminder, mapping = aes(x=year, y=lifeExp, color=continent)) +
  geom_line()
ggplot(data = gapminder, mapping = aes(x=year, y=lifeExp, group=country, color=continent)) +
  geom_line()
ggplot(data = gapminder, mapping = aes(x=year, y=lifeExp, group=country, color=continent)) +
  geom_line() + geom_point()
ggplot(data = gapminder, mapping = aes(x=year, y=lifeExp, group=country)) +
  geom_line(mapping = aes(color=continent)) + geom_point()
ggplot(data = gapminder, mapping = aes(x=year, y=lifeExp, group=country)) +
  geom_point() + geom_line(mapping = aes(color=continent))
ggplot(data = gapminder, mapping = aes(x = gdpPercap, y = lifeExp)) +
  geom_point()
ggplot(data = gapminder, mapping = aes(x = gdpPercap, y = lifeExp)) +
  geom_point(alpha = 0.5) + scale_x_log10()
ggplot(data = gapminder, mapping = aes(x = gdpPercap, y = lifeExp)) +
  geom_point(alpha = 0.5) + scale_x_log10() + geom_smooth(method="lm")
ggplot(data = gapminder, mapping = aes(x = gdpPercap, y = lifeExp)) +
  geom_point(alpha = 0.5) + scale_x_log10() + geom_smooth(method="lm", linewidth=1.5)
ggplot(data = gapminder, mapping = aes(x = gdpPercap, y = lifeExp)) +
  geom_point(size=3, color="orange") + scale_x_log10() +
  geom_smooth(method="lm", linewidth=1.5)
ggplot(data = gapminder, mapping = aes(x = gdpPercap, y = lifeExp, color = continent)) +
  geom_point(size=3, shape=17) + scale_x_log10() +
  geom_smooth(method="lm", linewidth=1.5)
colors()
americas <- gapminder[gapminder$continent == "Americas",]
ggplot(data = americas, mapping = aes(x = year, y = lifeExp)) +
  geom_line() +
  facet_wrap( ~ country) +
  theme(axis.text.x = element_text(angle = 45))
library(ggplot2)
ggplot(data = americas, mapping = aes(x = year, y = lifeExp, color=continent)) +
  geom_line() + facet_wrap( ~ country) +
  labs(
    x = "Year",              # x axis title
    y = "Life expectancy",   # y axis title
    title = "Figure 1",      # main title of figure
    color = "Continent"      # title of legend
  ) +
  theme(axis.text.x = element_text(angle = 90, hjust = 1))
lifeExp_plot <- ggplot(data = americas, mapping = aes(x = year, y = lifeExp, color=continent)) +
  geom_line() + facet_wrap( ~ country) +
  labs(
    x = "Year",              # x axis title
    y = "Life expectancy",   # y axis title
    title = "Figure 1",      # main title of figure
    color = "Continent"      # title of legend
  ) +
  theme(axis.text.x = element_text(angle = 90, hjust = 1))
ggsave(filename = "gap.R/pop_millions.png", plot = lifeExp_plot, width = 12, height = 10, dpi = 300, units = "cm")
ggplot(data = gapminder, mapping = aes(x = continent, y = lifeExp, fill = continent)) +
  geom_boxplot() + facet_wrap(~year) +
  ylab("Life Expectancy") +
  theme(axis.title.x=element_blank(),
        axis.text.x = element_blank(),
        axis.ticks.x = element_blank())
x <- 1:4
x * 2
y <- 6:9
x + y
output_vector <- c()
for (i in 1:4) {
  output_vector[i] <- x[i] + y[i]
}
output_vector
sum_xy <- x + y
sum_xy
gapminder$pop_millions <- gapminder$pop / 1e6
head(gapminder)
ggplot(gapminder, aes(x = year, y = pop_millions)) +
  geom_point(color = "purple")
countryset <- c("China","India","Indonesia")
ggplot(gapminder[gapminder$country %in% countryset,],
       aes(x = year, y = pop_millions)) +
  geom_point()
#VECTORISATION
x > 2
a <- x > 3  # or, for clarity, a <- (x > 3)
a
x <- 1:4
log(x)
m <- matrix(1:12, nrow=3, ncol=4)
m * -1
m %*% matrix(1, nrow=4, ncol=1)
matrix(1:4, nrow=1) %*% matrix(1:4, ncol=1)
m <- matrix(1:12, nrow=3, ncol=4)
m
m ^ -1
m * c(1, 0, -1)
m > c(0, 20)
x = 1/(1^2) + 1/(2^2) + 1/(3^2) + ... + 1/(n^2)
sum(1/(1:100)^2)
sum(1/(1:1e04)^2)
n <- 10000
sum(1/(1:n)^2)
inverse_sum_of_squares <- function(n) {
  sum(1/(1:n)^2)
}
inverse_sum_of_squares(100)
inverse_sum_of_squares(10000)
n <- 10000
inverse_sum_of_squares(n)
x <- c(1, 2, 3)
y <- c(1, 2, 3, 4, 5, 6, 7)
x + y
#DEFINING FUNCTIONS
my_function <- function(parameters) {
  # perform action
  # return value
}
fahr_to_kelvin <- function(temp) {
  kelvin <- ((temp - 32) * (5 / 9)) + 273.15
  return(kelvin)
}
fahr_to_kelvin(32)
fahr_to_kelvin(212)
kelvin_to_celsius <- function(temp) {
  celsius <- temp - 273.15
  return(celsius)
}
fahr_to_kelvin <- function(temp) {
  kelvin <- ((temp - 32) * (5 / 9)) + 273.15
  return(kelvin)
}

kelvin_to_celsius <- function(temp) {
  celsius <- temp - 273.15
  return(celsius)
}
fahr_to_celsius <- function(temp) {
  temp_k <- fahr_to_kelvin(temp)
  result <- kelvin_to_celsius(temp_k)
  return(result)
}
#DEFENSIVE PROGRAMMING
fahr_to_celsius <- function(temp) {
  temp_k <- fahr_to_kelvin(temp)
  result <- kelvin_to_celsius(temp_k)
  return(result)
}
fahr_to_kelvin <- function(temp) {
  stopifnot(is.numeric(temp))
  kelvin <- ((temp - 32) * (5 / 9)) + 273.15
  return(kelvin)
}
fahr_to_kelvin(temp = 32)
fahr_to_kelvin(temp = as.factor(32))
fahr_to_celsius <- function(temp) {
  stopifnot(is.numeric(temp))
  temp_k <- fahr_to_kelvin(temp)
  result <- kelvin_to_celsius(temp_k)
  return(result)
}
calcGDP <- function(dat) {
  gdp <- dat$pop * dat$gdpPercap
  return(gdp)
}
calcGDP(head(gapminder))
calcGDP <- function(dat, year=NULL, country=NULL) {
  if(!is.null(year)) {
    dat <- dat[dat$year %in% year, ]
  }
  if (!is.null(country)) {
    dat <- dat[dat$country %in% country,]
  }
  gdp <- dat$pop * dat$gdpPercap
  
  new <- cbind(dat, gdp=gdp)
  return(new)
}
head(calcGDP(gapminder, year=2007))
calcGDP(gapminder, country="Australia")
calcGDP(gapminder, year=2007, country="Australia")
calcGDP <- function(dat, year=NULL, country=NULL) 
  if(!is.null(year)) {
  dat <- dat[dat$year %in% year, ]
}
  if (!is.null(country)) {
    dat <- dat[dat$country %in% country,]
  }
gdp <- dat$pop * dat$gdpPercap
new <- cbind(dat, gdp=gdp)
return(new)
calcGDP(gapminder, year = c(1952, 1987), country = "New Zealand")
best_practice <- c("Write", "programs", "for", "people", "not", "computers")
paste(best_practice, collapse=" ")
fence(text=best_practice, wrapper="***")
fence <- function(text, wrapper){
  text <- c(wrapper, text, wrapper)
  result <- paste(text, collapse = " ")
  return(result)
}
best_practice <- c("Write", "programs", "for", "people", "not", "computers")
fence(text=best_practice, wrapper="***")
pdf("Life_Exp_vs_time.pdf", width=12, height=4)
ggplot(data=gapminder, aes(x=year, y=lifeExp, colour=country)) +
  geom_line() +
  theme(legend.position = "none")
dev.off()
pdf("Life_Exp_vs_time.pdf", width = 12, height = 4)
p <- ggplot(data = gapminder, aes(x = year, y = lifeExp, colour = country)) +
  geom_line() +
  theme(legend.position = "none")
p
p + facet_grid(~continent)
dev.off()
aust_subset <- gapminder[gapminder$country == "Australia",]
write.table(aust_subset,
            file="cleaned-data/gapminder-aus.csv",
            sep=",")
head(cleaned-data/gapminder-aus.csv)
?write.table
write.table(
  gapminder[gapminder$country == "Australia",],
  file="cleaned-data/gapminder-aus.csv",
  sep=",", quote=FALSE, row.names=FALSE
)
#DPLYR
mean(gapminder$gdpPercap[gapminder$continent == "Africa"])
mean(gapminder$gdpPercap[gapminder$continent == "Americas"])
mean(gapminder$gdpPercap[gapminder$continent == "Asia"])
library(dplyr)
year_country_gdp <- select(gapminder, year, country, gdpPercap)
smaller_gapminder_data <- select(gapminder, -continent)
year_country_gdp <- gapminder %>% select(year, country, gdpPercap)
tidy_gdp <- year_country_gdp %>% rename(gdp_per_capita = gdpPercap)
head(tidy_gdp)
year_country_gdp_euro <- gapminder %>%
  filter(continent == "Europe") %>%
  select(year, country, gdpPercap)
europe_lifeExp_2007 <- gapminder %>%
  filter(continent == "Europe", year == 2007) %>%
  select(country, lifeExp)
year_country_lifeExp_Africa <- gapminder %>%
  filter(continent == "Africa") %>%
  select(year, country, lifeExp)
str(gapminder)
str(gapminder %>% group_by(continent))
gdp_bycontinents <- gapminder %>%
  group_by(continent) %>%
  summarize(mean_gdpPercap = mean(gdpPercap))
lifeExp_bycountry <- gapminder %>%
  group_by(country) %>%
  summarize(mean_lifeExp = mean(lifeExp))
lifeExp_bycountry %>%
  filter(mean_lifeExp == min(mean_lifeExp) | mean_lifeExp == max(mean_lifeExp))
lifeExp_bycountry %>%
  arrange(mean_lifeExp) %>%
  head(1)
lifeExp_bycountry %>%
  arrange(desc(mean_lifeExp)) %>%
  head()
lifeExp_bycountry %>%
  arrange(desc(country)) %>%
  head()
gdp_bycontinents_byyear <- gapminder %>%
  group_by(continent, year) %>%
  summarize(mean_gdpPercap = mean(gdpPercap))
gdp_pop_bycontinents_byyear <- gapminder %>%
  group_by(continent, year) %>%
  summarize(mean_gdpPercap = mean(gdpPercap),
            sd_gdpPercap = sd(gdpPercap),
            mean_pop = mean(pop),
            sd_pop = sd(pop))
gapminder %>%
  filter(year == 2002) %>%
  count(continent, sort = TRUE)
gapminder %>%
  group_by(continent) %>%
  summarize(se_le = sd(lifeExp)/sqrt(n()))
gapminder %>%
  group_by(continent) %>%
  summarize(
    mean_le = mean(lifeExp),
    min_le = min(lifeExp),
    max_le = max(lifeExp),
    se_le = sd(lifeExp)/sqrt(n()))
gdp_pop_bycontinents_byyear <- gapminder %>%
  mutate(gdp_billion = gdpPercap*pop/10^9) %>%
  group_by(continent,year) %>%
  summarize(mean_gdpPercap = mean(gdpPercap),
            sd_gdpPercap = sd(gdpPercap),
            mean_pop = mean(pop),
            sd_pop = sd(pop),
            mean_gdp_billion = mean(gdp_billion),
            sd_gdp_billion = sd(gdp_billion))
gdp_pop_bycontinents_byyear_above25 <- gapminder %>%
  mutate(gdp_billion = ifelse(lifeExp > 25, gdpPercap * pop / 10^9, NA)) %>%
  group_by(continent, year) %>%
  summarize(mean_gdpPercap = mean(gdpPercap),
            sd_gdpPercap = sd(gdpPercap),
            mean_pop = mean(pop),
            sd_pop = sd(pop),
            mean_gdp_billion = mean(gdp_billion),
            sd_gdp_billion = sd(gdp_billion))
gdp_future_bycontinents_byyear_high_lifeExp <- gapminder %>%
  mutate(gdp_futureExpectation = ifelse(lifeExp > 40, gdpPercap * 1.5, gdpPercap)) %>%
  group_by(continent, year) %>%
  summarize(mean_gdpPercap = mean(gdpPercap),
            mean_gdpPercap_expected = mean(gdp_futureExpectation))
ggplot(data = americas, mapping = aes(x = year, y = lifeExp)) +
  geom_line() +
  facet_wrap( ~ country) +
  theme(axis.text.x = element_text(angle = 45))
gapminder %>%
  # extract first letter of country name into new column
  mutate(startsWith = substr(country, 1, 1)) %>%
  # only keep countries starting with A or Z
  filter(startsWith %in% c("A", "Z")) %>%
  # plot lifeExp into facets
  ggplot(aes(x = year, y = lifeExp, colour = continent)) +
  geom_line() +
  facet_wrap(vars(country)) +
  theme_minimal()
lifeExp_2countries_bycontinents <- gapminder %>%
  filter(year==2002) %>%
  group_by(continent) %>%
  slice_sample(n=2) %>%
  summarize(mean_lifeExp=mean(lifeExp)) %>%
  arrange(desc(mean_lifeExp))
library(tidyr)
str(gapminder)
gap_wide <- read.csv("gapminder_data.csv", stringsAsFactors = FALSE)
str(gap_wide)
gap_long <- gap_wide %>%
  pivot_longer(
    cols = c(starts_with('pop'), starts_with('lifeExp'), starts_with('gdpPercap')),
    names_to = "obstype_year", values_to = "obs_values"
  )
str(gap_long)
gap_long <- gap_wide %>%
  pivot_longer(
    cols = c(-continent, -country),
    names_to = "obstype_year", values_to = "obs_values"
  )
str(gap_long)
gap_long <- gap_long %>% separate(obstype_year, into = c('obs_type', 'year'), sep = "_")
gap_long$year <- as.integer(gap_long$year)
gap_long %>% group_by(continent, obs_type) %>%
  summarize(means=mean(obs_values))
gap_normal <- gap_long %>%
  pivot_wider(names_from = obs_type, values_from = obs_values)
dim(gap_normal)
dim(gapminder)
names(gap_normal)
names(gapminder)
gap_normal <- gap_normal[, names(gapminder)]
all.equal(gap_normal, gapminder)
gap_normal <- gap_long %>%
  pivot_wider(names_from = obs_type, values_from = obs_values)
dim(gap_normal)
gap_temp <- gap_long %>% unite(var_ID, continent, country, sep = "_")
str(gap_temp)
gap_temp <- gap_long %>%
  unite(ID_var, continent, country, sep = "_") %>%
  unite(var_names, obs_type, year, sep = "_")
str(gap_temp)
gap_wide_new <- gap_long %>%
  unite(ID_var, continent, country, sep = "_") %>%
  unite(var_names, obs_type, year, sep = "_") %>%
  pivot_wider(names_from = var_names, values_from = obs_values)
str(gap_wide_new)
gap_ludicrously_wide <- gap_long %>%
  unite(var_names, obs_type, year, country, sep = "_") %>%
  pivot_wider(names_from = var_names, values_from = obs_values)
gap_wide_betterID <- separate(gap_wide_new, ID_var, c("continent", "country"), sep="_")
gap_wide_betterID <- gap_long %>%
  unite(ID_var, continent, country, sep = "_") %>%
  unite(var_names, obs_type, year, sep = "_") %>%
  pivot_wider(names_from = var_names, values_from = obs_values) %>%
  separate(ID_var, c("continent","country"), sep = "_")
str(gap_wide_betterID)
all.equal(gap_wide, gap_wide_betterID)
