library(testthat)

context("dicts-generics")

test_that("[] getters/setters work for single number", {
  x <- dict("a"=1, "b"=2, "c"=3)
  x[1] = 100
  x[iris] = 200
  expect_that(x["a"], equals(1))
  expect_that(x["b"], equals(2))
  expect_that(x["c"], equals(3))
  expect_that(x[1], equals(100))
  expect_that(x[iris], equals(200))
})

test_that("length counts the number of items", {
  x <- dict("a"=1, "b"=2, "c"=3)
  expect_that(length(x), equals(3))
})

test_that("dict returns a dictionary", {
	x <- dict("a"=1)
  expect_that(x, is_a("pydict"))
})

test_that("is.dict can identify a dict", {
  x <- dict("a"=1, "b"=2, "c"="a")
  y <- 1:100
  z <- list(1, 2, 3)
  expect_that(is.dict(x), is_true())
  expect_that(is.dict(y), is_false())
  expect_that(is.dict(z), is_false())
})