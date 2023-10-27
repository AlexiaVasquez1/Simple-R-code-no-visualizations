#histogram visualization
#data

library(ggplot2)

#data
set.seed(123)  
data <- data.frame(Values = rnorm(1000)) 

#hitogram
ggplot(data, aes(x = Values)) +geom_histogram(binwidth = 0.5, fill = "pink", color = "purple") +
  labs(title = "Histogram Visualization", x = "X-axis (Values)", y = "Frequency") +
  theme_minimal()

----------------------------------------------------------------------------------
#density plot
#data  
  
  library(ggplot2)

#random data
set.seed(123)  
data <- data.frame(Values = rnorm(1000)) 

ggplot(data, aes(x = Values)) +
  geom_density(aes(y = ..scaled..), fill = "pink", color = "purple") +
  labs(title = "density plot visualization", x = "x-axis (Values)", y = "density") +
  theme_minimal()


----------------------------------------------------------------------------------
  #boxplot ggplot
  library(ggplot2)

#random data 
set.seed(42)
data <- data.frame( Category = rep(c("Category 1", "Category 2", "Category 3"), each = 100),
                    Value = c(rnorm(100, mean = 0, sd = 1), rnorm(100, mean = 1, sd = 1), rnorm(100, mean = 2, sd = 1)))

#plot
ggplot(data, aes(x = Category, y = Value, fill = Category)) +
  geom_boxplot() +labs(title = "box plot visualization",
                       x = "Categories", y = "Values") + scale_fill_manual(values = c("purple", "pink", "lightcoral")) +
  theme_minimal()

----------------------------------------------------------------------------------
  #violin plot
  
library(ggplot2)
#data
set.seed(42)  
data <- data.frame(Category = rep(c("Category 1", "Category 2", "Category 3"),
each = 100), Value = c( rnorm(100, mean = 0, sd = 1), rnorm(100, mean = 1, sd = 1),
 rnorm(100, mean = 2, sd = 1)))

ggplot(data, aes(x = Category, y = Value, fill = Category)) +
  geom_violin(trim = FALSE, scale = "width", width = 0.7) +
  labs(title = "violin plot visualization", x = "categories", y = "values") +
  scale_fill_manual(values = c("pink", "purple", "lightcoral")) +
  theme_minimal()

-----------------------------------------------------------------------------------------
  