test_vector <- c("B", "b")
expected_vector_1 <- c("b", "B")
expected_vector_2 <- 2:1

test_that("base::sort()", {

  sort_base_r <- sort(test_vector)
  cat("\n Base R - sort \n")
  print(sort_base_r)

  cat("\n Expected result \n")
  print(expected_vector_1)

  cat("\n--------------------\n")

  order_base_r <- order(test_vector)

  cat("\n Base R - order \n")
  print(order_base_r)

  cat("\n Expected result \n")
  print(expected_vector_2)

  expect_equal(sort_base_r, expected_vector_1)
  expect_equal(order_base_r, expected_vector_2)

})