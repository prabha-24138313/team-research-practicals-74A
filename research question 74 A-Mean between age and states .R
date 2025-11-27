# Read the data
df <- read.csv("UH/R works/adult income1.csv")

# Create a new grouping column for United-States vs Other Country
df$isUS <- ifelse(df$native.country == "United-States", "United States", "Other Country")

# Remove unrealistic age values (optional, e.g., age > 100)
df2 <- subset(df, age > 15 & age < 63)
#is this normal data?  
hist(df2$age,breaks = 10,xlab = "age",ylab = "total number of people")

#if it were normal data
t.test(df2$age ~ df2$isUS)  
#if it were not normal data
wilcox.test(df2$age ~ df2$isUS)    

# Boxplot for visualization
boxplot(df2$age ~ df2$isUS, xlab = "Country Group", ylab = "Age", main = "Age Comparison")


