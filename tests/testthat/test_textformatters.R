context("test_textformatters.R")

test_that("Proper case formatter", {
  expect_equal(to_proper_case("Abc"), "Abc")
  expect_equal(to_proper_case("abc"), "Abc")
  expect_equal(to_proper_case("ABC"), "Abc")
})
