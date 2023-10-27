#pie chart
#random data
data <- c(30, 20, 15, 10, 25)  

# random labels?
labels <- c("fruits", "vegetables", "grain", "dairy", "dessert")

#pie chart
pie(data, labels = labels, main = "food groups at the store")
#no legend, gets in the way
---------------------------------------------------------------------------

#stacked side by side bar chart
  
#load ggplot
  library(ggplot2)

#ran parameter
num_groups <- 4
num_categories <- 5
min_value <- 10
max_value <- 100

#chart labels
group_names <- c("college", "elementary", "high school", "middle school")
category_names <- c("fruits", "vegetables", "grain", "dairy", "dessert")

#random data
set.seed(123)
data <- data.frame(Group = rep(group_names, each = num_categories),
  Category = rep(category_names, times = num_groups),
  Value = runif(num_groups * num_categories, min = min_value, max = max_value))

#bar chart
# add +
ggplot(data, aes(x = Group, y = Value, fill = Category)) + geom_col(position = "dodge") +
  labs(title = "favorite food groups by school grouped children", x = "Groups", y = "Value") +
  theme_minimal()
---------------------------------------------------------------------------------------------
  
#load tree map and d3treeR
  #d3treeR wont load and neither will plotly
library(treemap)
library(d3treeR)

#random data
group <- c(rep("group-1",4),rep("group-2",2),rep("group-3",3))
subgroup <- paste("subgroup" , c(1,2,3,4,1,2,1,2,3), sep="-")
value <- c(13,5,22,12,11,7,3,1,23)
data <- data.frame(group,subgroup,value)

#treemap
p <- treemap(data,
             index=c("group","subgroup"), vSize="value", type="index", palette = "Set2",
             bg.labels=c("white"), align.labels=list(c("center", "center"), c("right", "bottom")))            


inter <- d3tree2( p ,  rootname = "General" )

# save the widget
# library(htmlwidgets)
# saveWidget(inter, file=paste0( getwd(), "/HtmlWidget/interactiveTreemap.html"))

#code from https://r-graph-gallery.com/237-interactive-treemap.html but i cant execute it 
  
