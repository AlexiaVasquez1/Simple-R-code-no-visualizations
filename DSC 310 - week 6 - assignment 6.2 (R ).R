#Linegraph 

#load ggplot, install if it doesnt work
#install.packages("ggplot2")
library(ggplot2)

#example data
df <- data.frame(year = c(2010, 2011, 2012, 2013, 2014),sales = c(500, 530, 590, 620, 680))

#line graph
ggplot(df, aes(x = year, y = sales)) + 
  geom_line() + 
  labs(title="sales over the years", x="year", y="sales") +
  theme_minimal()
------------------------------------------------------------------------------
  
#areagraph
library(ggplot2)

#example data
df <- data.frame(year = c(2010, 2011, 2012, 2013, 2014), sales = c(500, 530, 590, 620, 680))

#area graph
ggplot(df, aes(x = year, y = sales)) + 
  geom_area(fill="purple", alpha=0.5) +   # fill specifies the color, alpha controls transparency
  labs(title="sales over the years", x="year", y="sales") +
  theme_minimal()
-------------------------------------------------------------------------------
#multiple time series line graph
#load ggplot, tidyr 
  library(ggplot2)
library(tidyr)

#example data
df <- data.frame(year = c(2010, 2011, 2012, 2013, 2014),sales_A = c(500, 530, 590, 620, 680),sales_B = c(450, 480, 500, 550, 570))

#long format
df_long <- df %>%
  gather(key="series", value="sales", -year)

#multiple time series line graph
#add +
ggplot(df_long, aes(x = year, y = sales, color = series)) + 
  geom_line() + scale_color_manual(values=c("sales_A"="purple", "sales_B"="pink")) +
  labs(title="sales over the years by series", x="year", y="sales") +
  theme_minimal()
------------------------------------------------------------------------------------------------------------------
#LOESS
  
#load ggplot
  library(ggplot2)

#scatterplot? use LOESS curve
ggplot(mtcars, aes(x = hp, y = mpg)) + geom_point() + 
  geom_smooth(method = "loess", color="purple") + 
  labs(title="LOESS for horse power vs. MPG", x="horsepower", y="MPG") +
  theme_minimal()
