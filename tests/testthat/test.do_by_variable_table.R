test_that(".do_by_variable_table: 1 location mode", {
  
  res <- demo_objects_data(100)
  res$location_mode <- "exact"
  res <- .do_by_variable_table(res, "object_type", "exact")
  
  expect_equal(class(res), "data.frame")
  expect_equal(typeof(res), "list")
  expect_true(is.integer(res[, 1]))
})


test_that(".do_by_variable_table: 2 location modes", {
  res <- demo_objects_data(100)
  res$location_mode <- sample(c("exact", "fuzzy"), nrow(res), replace = T)
  res <- .do_by_variable_table(res, "object_type", c("exact", "fuzzy"))
  
  expect_equal(class(res), "data.frame")
  expect_equal(colnames(res),  c("exact", "fuzzy", "Total"))
  expect_true(is.integer(res[, 3]))
})
