test_that(".do_by_layer_table: 1 location mode", {
  ui.terms <- .load_interface_terms("fr")
  shinyOptions("objects.df"  = df, "ui.terms" = ui.terms)
  
  res <- demo_objects_data(100)
  res$location_mode <- "exact"
  res <- .do_by_layer_table(res, "exact")
  
  expect_equal(class(res), "data.frame")
  expect_equal(colnames(res), "Exacte")
  expect_equal(typeof(res), "list")
  expect_true(is.integer(res[, 1]))
})


test_that(".do_by_layer_table: 2 location modes", {
  ui.terms <- .load_interface_terms("en")
  shinyOptions("objects.df"  = df, "ui.terms" = ui.terms)
  
  
  res <- demo_objects_data(100)
  res$location_mode <- sample(c("exact", "fuzzy"), nrow(res), replace = T)
  res <- .do_by_layer_table(res, c("exact", "fuzzy"))
  
  expect_equal(class(res), "data.frame")
  expect_equal(colnames(res),  c("Exact", "Fuzzy", "Total"))
  expect_equal(c(sapply(res[1,], typeof), use.names=F), c("integer", "integer", "integer"))
})
