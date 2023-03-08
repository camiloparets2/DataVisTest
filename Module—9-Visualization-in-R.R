# Load the dataset
mydata <- read.csv("https://vincentarelbundock.github.io/Rdatasets/csv/datasets/PlantGrowth.csv")

# create a boxplot
boxplot(weight ~ group, data = mydata, 
        main = "Plant Growth by Treatment Group",
        xlab = "Treatment Group", ylab = "Plant Weight (g)",
        col = c("lightblue", "pink"), border = "black")
# Load the dataset
mydata <- read.csv("https://vincentarelbundock.github.io/Rdatasets/csv/datasets/PlantGrowth.csv")

# create a dot plot
library(lattice)
dotplot(group ~ weight, data = mydata, 
        main = "Plant Growth by Treatment Group",
        xlab = "Plant Weight (g)", ylab = "Treatment Group",
        pch = 16, cex = 1.5, col = "darkblue")
# Load the dataset
mydata <- read.csv("https://vincentarelbundock.github.io/Rdatasets/csv/datasets/PlantGrowth.csv")

# create a bar plot
library(ggplot2)
ggplot(data = mydata, aes(x = group, y = weight, fill = group)) + 
  geom_bar(stat = "identity") +
  ggtitle("Plant Growth by Treatment Group") +
  xlab("Treatment Group") + ylab("Plant Weight (g)") +
  scale_fill_manual(values = c("lightblue", "pink", "lightgreen"))
