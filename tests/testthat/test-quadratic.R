test_that("Function Returns Expected Output", {
  a <- 1
  b <- 5
  c <- 6
  quad <- quadratic(a,b,c)
  expect_equal(quad$Roots,c(-2,-3))
  expect_equal(quad$Root_Type, c("Real & Distinct", "Real & Distinct"))
})

test_that("Functions Returns 2 Roots and 2 Roots Only",{
  a <- 5
  b <- 6
  c <- 7
  d <- 1
  e <- 0
  f <- -4
  rootlen <- quadratic(a,b,c)
  rootlen1 <- quadratic(d,e,f) #Testing Even when Other Inputs Besides 'a' is 0.
  expect_equal(length(rootlen$Roots),2)
  expect_equal(length(rootlen1$Roots),2)
})

test_that("Ensuring 3 Values Are Provided in Input", {
  a <- 5
  b <- 6
  c <- 7
  coeff <- c(a,b,c)
  expect_equal(length(coeff),3)
  expect_error(quadratic(a,b))
  expect_no_error(quadratic(a,b,c))
})

test_that("Testing Miscellaneous Cases Which Should Not Exist In A Quadratic Function",{
  a <- 0
  b <- 5
  c <- 9
  d <- NA
  e <- NULL
  expect_error(quadratic(a,b,c)) # a!=0 as the equation becomes linear instead of quadratic
  expect_error(quadratic(b,c,d))
  expect_error(quadratic(b,c,e))
})
