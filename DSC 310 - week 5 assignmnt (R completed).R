#DSC 310- week 5

#scatterplot

#ggplot2 should already be loaded but if error, load it
#use ggplot2
library(ggplot2)

#random data
data <- data.frame(x = rnorm(100), y = rnorm(100))

#make the plot
custom_scatter <- function(data, x_var, y_var, title="", xlab="", ylab="", point_color="pink", point_size=3) {
plot <- ggplot(data, aes_string(x=x_var, y=y_var)) +
geom_point(aes(color=point_color, size=point_size)) +
labs(title=title, x=xlab, y=ylab) +
theme_minimal() +
scale_color_identity() +
scale_size_identity()
return(plot)}


custom_scatter(data, "x", "y", 
               title="Age vs. blood pressure", 
               xlab="Age",
               ylab="Blood pressure",
               point_color="purple",
               point_size=3)
----------------------------------------------------------------------------------------------
  #Correlogram
  
#if error returns for corrplot, load it)
#install.packages("corrplot")
library(corrplot)
set.seed(123) 

#random grocery data
groceries <- data.frame(Fruits = rnorm(100, mean = 50, sd = 10),Vegetables = rnorm(100, mean = 60, sd = 15) + rnorm(100, mean = 0, sd = 5),
Dairy = rnorm(100, mean = 40, sd = 10) + rnorm(100, mean = 0, sd = 5),Meat = rnorm(100, mean = 70, sd = 20),
Bakery = rnorm(100, mean = 55, sd = 15))

#correlogram
custom_correlogram <- function(data, method = "pearson", type = "upper", order = "original", diag = FALSE, title = "Grocery Sales") {
cor_matrix <- cor(data, method = method)
#make graph
corrplot(cor_matrix, method = "color", type = type, order = order, diag = diag, tl.cex = 0.7, title = title)}
custom_correlogram(groceries)

---------------------------------------------------------------------------------------------
#Slope graph
  
#load ggplot2
library(ggplot2)
 
data <- data.frame(Product = c("A", "B", "C", "D"),Sales_2021 = c(100, 120, 90, 110),Sales_2022 = c(105, 115, 95, 112))
 
#slopegraph info
 plot_slopegraph <- function(data, x1, x2, label_col, title="Medical stats", 
                    xlab="Before treatment/after treatment", ylab="Patient recovery rates", color1="purple", color2="pink") {
   data_long <- tidyr::gather(data, key = "Year", value = "Value", c(x1, x2))
   ggplot(data_long, aes(x = Year, y = Value, group = label_col)) +
     geom_line(aes(color = label_col), size = 1) +
     geom_point(aes(color = label_col), size = 3) +
     geom_text(aes(label = label_col, y = Value + 2), hjust = 0.5) +  
    labs(title = title, x = xlab, y = ylab) +
     scale_color_manual(values = c(color1, color2)) +  
    theme_minimal() + 
     theme(legend.position = "none")}
 plot_slopegraph(data, "Sales_2021", "Sales_2022", "treatment")

  
