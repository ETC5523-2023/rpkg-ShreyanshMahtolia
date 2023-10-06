#' Line Plot For Female Earnings For Particular Age Group
#'
#' @description
#' Generates a line plot for percentage earnings made by females throughout
#' 1979-2011 for the particular age group entered.
#'
#'
#' @param age_group A string containing age group of females
#'
#'
#' @return A line plot of entered age group
#'
#'
#' @examples
#' earningsplot("16-19 years")
#'
#' @export
earningsplot <- function(age_group){
  if (!age_group %in% WomInWorkShiny::age_groups){
    stop("Please Enter Correct Age Group. Available Age Groups Can Be Found By
         Executing 'age_groups' Command")
  } else{
      plot1 <- WomInWorkShiny::earnings_female |>
      dplyr::filter(Age_Group == age_group) |>
      ggplot2::ggplot(ggplot2::aes(x = Year, y = percent)) +
      ggplot2::geom_line(color = "red") +
      ggplot2::labs(x = "Year", y = "Percentage") +
      ggplot2::labs(title = "Earnings of Females From 1979-2011") +
      ggplot2::theme_bw()
    return(plot1)
  }

}

