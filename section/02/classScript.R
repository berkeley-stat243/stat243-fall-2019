###############################################################################
# Assertions/Testing Demonstration
# Jared Bennett
# jared_bennett@berkeley.edu
###############################################################################
###############################################################################
# Assertions
###############################################################################
# basic func, no assertions
isOdd1 <- function(x = NULL) {
  return(x %% 2 == 1)
}


isOdd2 <- function(x = NULL) {
  # check input
  if(is.null(x)){stop("Input was NA")}
  
  return(x %% 2 == 1)
}

isOdd3 <- function(x = NULL) {
  # check input
  assertthat::assert_that(is.numeric(x))
  
  return(x %% 2 == 1)
}












###############################################################################
# Testing
###############################################################################
standardize <- function(x, na.rm = FALSE) {
  z <- (x - mean(x, na.rm = na.rm)) / sd(x, na.rm = na.rm)
  return(z)
}



x <- 1:3
y <- c(1,2,NA)
w <- c(TRUE,FALSE,TRUE)
q <- letters[1:3]



z <- (x - mean(x)) / sd(x)






expect_equal(standardize(x), z)
expect_length(standardize(x), length(x))
expect_type(standardize(x), 'double')






# test that it's wrong
expect_equal(standardize(x = y, na.rm = FALSE), as.numeric(c(NA, NA, NA)))






# missing value complete
test_that("standardize works with missing values", {
  # objects to test against
  y <- c(1, 2, NA)
  z1 <- (y - mean(y, na.rm = FALSE)) / sd(y, na.rm = FALSE)
  z2 <- (y - mean(y, na.rm = TRUE)) / sd(y, na.rm = TRUE)

  
  ## tests
  # "right" answer
  expect_equal(standardize(y, na.rm = TRUE), z2)
  expect_length(standardize(y, na.rm = TRUE), length(y))
  
  # "wrong" answer
  expect_equal(standardize(y, na.rm = FALSE), z1)
  expect_length(standardize(y, na.rm = FALSE), length(y))
  
  # type check
  expect_type(standardize(x = y, na.rm = FALSE), 'double')
  expect_type(standardize(x = y, na.rm = TRUE), 'double')
  
})








