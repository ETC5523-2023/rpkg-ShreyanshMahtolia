#' Women's Earnings Throughout The Years
#'
#'
#' @format A data frame with 264 observations and 3 variables.
#' \describe{
#'   \item{Year}{Female Earnings For A Particular Year}
#'   \item{Age_Group}{Various Age Groups of Females}
#'   \item{percent}{Percentage Earnings of Females}
#' }
#' @source \url{https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-03-05/earnings_female.csv}
"earnings_female"

#' Employment Rate For Both Males and Females
#'
#'
#' @format A data frame with 196 observations on 3 variables .
#' \describe{
#'   \item{year}{Employment Rate For A Particular Year}
#'   \item{Job_Type}{Types of Job - Part-Time/Full-Time}
#'   \item{Percentage}{Percentage Employment Rate For Each Gender}
#' }
#' @source \url{https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-03-05/employed_gender.csv}
"employed_gender"

#' Earnings For Each Gender By Occupation
#'
#'
#' @format A data frame with 4176 observations on 5 variables .
#' \describe{
#'   \item{year}{Earnings For A Job Category For That Particular Year}
#'   \item{occupation}{Occupation Name}
#'   \item{minor_category}{Category Under Which Occupation Is A Part Of}
#'   \item{Gender}{Male or Female}
#'   \item{Earnings}{Total Earnings Made}
#' }
#' @source \url{https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-03-05/jobs_gender.csv}
"jobs_earnings"

#' Workforce For Each Gender By Occupation
#'
#'
#' @format A data frame with 4176 observations on 5 variables .
#' \describe{
#'   \item{year}{Earnings For A Job Category For That Particular Year}
#'   \item{occupation}{Specific Job Name}
#'   \item{minor_category}{Lower-Level/Fine Category Of Occupation}
#'   \item{Gender}{Male or Female}
#'   \item{Workforce}{Total Workforce Present}
#' }
#' @source \url{https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-03-05/jobs_gender.csv}
"jobs_workforce"

#' Workforce, Earnings For Each Gender By Occupation
#'
#'
#' @format A data frame with 2088 observations on 12 variables .
#' \describe{
#'   \item{year}{Earnings For A Job Category For That Particular Year}
#'   \item{occupation}{Specific Job Name}
#'   \item{major_category}{Top-Level/Broad Category Of Occupation}
#'   \item{minor_category}{Lower-Level/Fine Category Of Occupation}
#'   \item{total_workers}{Total Estimated Full-Time Workers}
#'   \item{workers_male}{Estimated Male Full-Time Workers}
#'   \item{workers_female}{Estimated Female Full-Time Workers}
#'   \item{percent_female}{Percentage Of Females For Specific Occupation}
#'   \item{total_earnings}{Total Estimated Earnings For Full-Time Workers}
#'   \item{total_earnings_male}{Total Estimated Earnings For Male Full-Time Workers}
#'   \item{total_earnings_female}{Total Estimated Earnings For Female Full-Time Workers}
#'   \item{wage_percent_of_male}{Female Wages As Percent Of Male Wages}
#' }
#' @source \url{https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-03-05/jobs_gender.csv}
"jobs_gender"

#' Female Age Group Categories
#'
#'
#' @format A vector with 8 observations.
#' \describe{
#'   \item{age_groups}{Age Groups For Female Earnings Dataset}
#' }
#' @source \url{https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-03-05/earnings_female.csv}
"age_groups"
