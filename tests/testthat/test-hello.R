library(stringr)
library(dplyr)

test_vector <- c("B", "b")
expected_vector <- c("b", "B")

test_df <- data.frame(test_col = test_vector, stringsAsFactors = FALSE)
expected_df <- data.frame(test_col = expected_vector, stringsAsFactors = FALSE)


test_that("dplyr::arrange()", {

  arrange_df <- arrange(test_df, test_col)

  cat("\n df - arrange \n")
  print(arrange_df)

  cat("\n Expected result \n")
  print(expected_df)

  expect_equal(arrange_df, expected_df)
  # The test will pass if we use a tibble instead of a dataframe because
  # dplyr's masked version of all.equal() ignores row order by default
})


test_that("base::sort() vs stringr::str_sort()", {

  sort_base_r <- sort(test_vector)
  sort_stringr <- str_sort(test_vector)

  cat("\n--------------------\n")
  cat("\n Base R - sort \n")
  print(sort_base_r)

  cat("\n stringr - sort \n")
  print(sort_stringr)

  cat("\n Expected result \n")
  print(expected_vector)

  expect_equal(sort_base_r, expected_vector)
  # stringr::str_sort() works as expected
  expect_equal(sort_stringr, expected_vector)

})