#' Shiny App
#'
#' @description
#' Launches the Shiny App For the Project, Women In The Workplace where the
#' user is able to gain insights on how women perform in the workplace with
#' respect to earnings, employment rate, and when various job categories are
#' factored in. It also shows how they stack up against men for comparison
#' and whether gender discrimination is prevalent or not. The app also allows
#' the user to interact with the visualizations and filter the plots depending
#' on the inputs selected.
#'
#' @return Shiny App
#'
#' @export
run_app <- function() {
  app_dir <- system.file("wominwork-app", package = "WomInWorkShiny")
  shiny::runApp(app_dir, display.mode = "normal")
}
