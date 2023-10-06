library(tidyverse)

employed_gender <- readr::read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-03-05/employed_gender.csv")  %>%
  select(1, 4, 5, 6, 7) %>%
  pivot_longer(
    cols = full_time_female:part_time_male,
    names_to = "Job_Type",
    values_to = "Percentage"
  )


usethis::use_data(employed_gender, overwrite = TRUE)
