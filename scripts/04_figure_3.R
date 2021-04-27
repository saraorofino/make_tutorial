######################################################
#                make figure 1                       #
######################################################
# 
# Make a graph with more data 
#
######################################################

# Load packages
suppressPackageStartupMessages({
  library(here)
  library(tidyverse)
})

# Read-in the data
fish_data <- readRDS(here("data", "clean_fish_data.rds"))

# Make a new plot 
p <- ggplot(data = fish_data,
       mapping = aes(x=year, y=count, fill=fish)) + 
  geom_jitter(height=0, width=0.1, shape=21) + 
  theme_minimal()

ggsave(filename = here("results", "img", "more_data.png"),
       width=6, height=4)