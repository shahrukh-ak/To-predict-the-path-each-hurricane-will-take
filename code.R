# Import the data in R
data=read.table("C:\\Users\\Shahrukh Alam Khan\\Desktop\\data.txt",header=T)
head(data,3)
Year Error_24h Error_48h Error_72h
1 1970 84.3 185.8 253.8
2 1971 112.4 242.0 381.9
3 1972 142.3 390.6 689.2

names(data)=c("year","E24","E48","E72")
names(data)
[1] "year" "E24" "E48" "E72


# Display the 24, 48 and 72 hours errors creating appropriate graph.
boxplot(E24,E48,E72,main="boxplot of errors",names=c("E24","E48","E72"),col=c(1,2,3),col.main="blue",col.lab=4,xlab="ERRORS")

# Construct 90% confidence interval for 72 hours prediction errors
t.test(E72,conf.level=0.9)$conf.int
[1] 230.5047 294.0230
attr(,"conf.level")
[1] 0.9
