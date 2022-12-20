test_that("demo_timeline_data", {
  
  res <- demo_timeline_data()
  
  expect_equal(dim(res), c(240, 3))
  expect_equal(colnames(res), c("year", "square_x", "square_y"))
})
