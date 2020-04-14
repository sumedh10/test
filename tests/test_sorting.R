test_vector <- c("B", "b")
expected_vector_1 <- c("b", "B")
expected_vector_2 <- 2:1

sort_base_r <- sort(test_vector)
order_base_r <- order(test_vector)

if (!identical(sort_base_r, expected_vector_1)) {
  stop("base::sort() failed")
}

if (!identical(order_base_r, expected_vector_2)) {
  stop("base::order() failed")
}
