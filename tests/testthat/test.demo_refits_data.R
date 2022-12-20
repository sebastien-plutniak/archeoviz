test_that("demo_refits_data", {
  
  res <- demo_refits_data(1000)
  
  expect_equal(dim(res), c(25, 2))
  expect_equal(typeof(res), "integer")
})
