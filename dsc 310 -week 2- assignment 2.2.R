#heat map visualization
#ggplot lib

library(ggplot2)

#random data
data <- data.frame(Category = c("fruits", "vegetables", "sweets", "meat"),
Value = c(30, 45, 60, 25))

#build chart
ggplot(data, aes(x = Category, y = Value, fill = Category)) +
  geom_bar(stat = "identity") 
  labs( title = "Elementary children favorite food types", x = "food types",
 y = "# of children")
  theme_minimal() 
  theme(legend.position = "none") 
  scale_fill_manual(values = c("fruits" = "blue", "vegetables" = "green",
                               "sweets" = "pink", "meat" = "purple")
----------------------------------------------------------------------------
#stacked bar chart
#ggplot2 load
library(ggplot2)

#data

data <- data.frame(Category = rep(c("Work from home", "work in office", "hybrid"), each = 4),
  Subcategory = rep(c("data employees", "admin employees", "HR employees", "managment"), times = 3),
  Value = c(30, 45, 60, 25, 40, 55, 20, 35, 50, 65, 30, 45))

#chart info
ggplot(data, aes(x = Category, y = Value, fill = Subcategory)) +
  geom_bar(stat = "identity", position = "dodge") 
  labs(title = "Work locations employees prefer", x = "work locations",y = "Employees prefer" ) 
  theme_minimal() 
  scale_fill_manual(values = c("Sub1" = "blue", "Sub2" = "green", "Sub3" = "red", "Sub4" = "purple"))

                  
  --------------------------------------------------------------------------
    #vertical bar chart
    #ggplot2 library
    library(ggplot2)
  
  #random data
  data <- data.frame(Category = c("not at all", "some", "moderately", "preferred"), Value = c(60, 19, 1, 3))
  
  #bar chart info
  ggplot(data, aes(x = Category, y = Value)) +
    geom_bar(stat = "identity", fill = "blue")
    labs(title = "People that enjoy using r over jupytr", x = "users", y = "preference")
    theme_minimal()
  
                    