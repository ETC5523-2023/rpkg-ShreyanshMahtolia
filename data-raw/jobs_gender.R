library(dplyr)

jobs_gender <- readr::read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-03-05/jobs_gender.csv")


jobs_earnings <- jobs_gender %>%
  rename(Male = total_earnings_male,
         Female = total_earnings_female) %>%
  select(1, 2, 4, 10, 11) %>%
  pivot_longer(cols = Male:Female,
               names_to = "Gender",
               values_to = "Earnings")

jobs_workforce <- jobs_gender %>%
  rename(Male = workers_male,
         Female = workers_female) %>%
  select(1, 2, 4, 6, 7) %>%
  pivot_longer(cols = Male:Female,
               names_to = "Gender",
               values_to = "Workforce")

usethis::use_data(jobs_earnings, overwrite = TRUE)

usethis::use_data(jobs_workforce, overwrite = TRUE)

usethis::use_data(jobs_gender, overwrite = TRUE)
