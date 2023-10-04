#' Roots of A Quadratic Equation
#'
#' @description
#' Calculates the roots of a quadratic equation and returns either 2 distinct
#' real roots, 1 repeated real root, or 2 imaginary roots depending on the
#' discriminant calculated. The order of the roots entered is important as each
#' input variable corresponds to the coefficient in a simple quadratic equation.
#' The values `a,b,c` are coefficients of the equation and follow the
#' nomenclature of `ax^2 + bx + c` where `a!=0`.
#'
#' @param a A real numeric coefficient
#' @param b A real numeric coefficient
#' @param c A real numeric coefficient
#'
#'
#' @return A tibble consisting of 2 variables, `Roots` and `Root_Type`
#'
#' @examples
#' quadratic(1,5,6)
#' quadratic(1,-6,9)
#' quadratic(5,2,1)
#'
#' @export
quadratic <- function(a, b, c) {
  discriminant <- b ^ 2 - 4 * a * c
  if (is.na(a) || is.na(b) || is.na(c)) {
    stop("Please Enter Numeric Coefficients Only")
  } else if (a == 0) {
    stop("Please Enter Proper Coefficients Where a!=0")
  } else if (discriminant > 0) {
    root1 <-
      (-b + sqrt(discriminant)) / (2 * a)  #Two distinct real roots identified
    root2 <- (-b - sqrt(discriminant)) / (2 * a)
    Roots <- c(root1, root2)
    Root_Type <- c("Real & Distinct", "Real & Distinct")
    quad_root <- tibble::tibble(Roots, Root_Type)
    return(quad_root)
  } else if (discriminant == 0) {
    root <- -b / (2 * a)  #One distinct root, repeated
    Roots <- c(root, root)
    Root_Type <- c("Real & Repeated", "Real & Repeated")
    quad_root <- tibble::tibble(Roots, Root_Type)
    return(quad_root)
  } else {
    real_root <- -b / (2 * a)
    imaginary_root <-
      sqrt(-discriminant) / (2 * a)  #Imaginary Roots Identified
    Roots <-
      c(
        complex(real = real_root, imaginary = imaginary_root),
        complex(real = real_root, imaginary = -imaginary_root)
      )
    Root_Type <- c("Imaginary", "Imaginary")
    quad_root <- tibble::tibble(Roots, Root_Type)
    return(quad_root)
  }
}


#References: https://www.mathsisfun.com/algebra/quadratic-equation.html
#References: https://stat.ethz.ch/R-manual/R-devel/library/base/html/complex.html
