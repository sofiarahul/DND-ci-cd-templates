library(tidyverse)
my_table <- read_data("example_data.csv", "csv")
my_table
mean(my_table$Height(cm))
