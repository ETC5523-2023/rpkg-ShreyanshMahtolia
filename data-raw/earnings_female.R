library(dplyr)

earnings_female <- readr::read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-03-05/earnings_female.csv")  %>%
  rename(Age_Group = group)

age_groups <- unique(earnings_female$Age_Group)

usethis::use_data(earnings_female, overwrite = TRUE)

usethis::use_data(age_groups, overwrite = TRUE)
